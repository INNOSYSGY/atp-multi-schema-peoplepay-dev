prompt --application/shared_components/plugins/dynamic_action/uc_download_files_da
begin
--   Manifest
--     PLUGIN: UC_DOWNLOAD_FILES_DA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(556967058086866299)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'UC_DOWNLOAD_FILES_DA'
,p_display_name=>'UC - Download File(s)'
,p_category=>'EXECUTE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','UC_DOWNLOAD_FILES_DA'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#js/script#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/style#MIN#.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- globals & contants',
'c_plugin_name                constant varchar2(100) := ''UC - Download File(s)'';',
'c_cookie_name                constant varchar2(100) := ''UC_DOWNLOAD_FILE'';',
'c_download_request           constant varchar2(100) := ''DOWNLOAD_FILES'';',
'',
'g_in_error_handling_callback boolean := false;',
'',
'procedure p',
'  ( p_str in varchar2',
'  )',
'as',
'begin',
'    sys.htp.p(p_str);',
'end p;',
'',
'-- helper function for converting clob to blob',
'function clob_to_blob',
'  ( p_clob in clob',
'  )',
'return blob',
'as',
'    l_blob         blob;',
'    l_clob         clob   := empty_clob();',
'    l_dest_offset  number := 1;',
'    l_src_offset   number := 1;',
'    l_lang_context number := dbms_lob.default_lang_ctx;',
'    l_warning      number := dbms_lob.warn_inconvertible_char;',
'begin',
'',
'    if p_clob is null or dbms_lob.getlength(p_clob) = 0',
'    then',
'        dbms_lob.createtemporary',
'          ( lob_loc => l_clob',
'          , cache   => true',
'          );',
'    else',
'        l_clob := p_clob;',
'    end if;',
'',
'    dbms_lob.createtemporary',
'      ( lob_loc => l_blob',
'      , cache   => true',
'      );',
'',
'    dbms_lob.converttoblob',
'      ( dest_lob      => l_blob',
'      , src_clob      => l_clob',
'      , amount        => dbms_lob.lobmaxsize',
'      , dest_offset   => l_dest_offset',
'      , src_offset    => l_src_offset',
'      , blob_csid     => dbms_lob.default_csid',
'      , lang_context  => l_lang_context',
'      , warning       => l_warning',
'      );',
'',
'   return l_blob;',
'end clob_to_blob;',
'',
'-- helper function for raising errors',
'procedure raise_error',
'  ( p_message in varchar2',
'  , p0        in varchar2 default null',
'  , p1        in varchar2 default null',
'  , p2        in varchar2 default null',
'  )',
'as',
'begin',
'    raise_application_error(-20001, apex_string.format(c_plugin_name || '' - '' || p_message, p0, p1, p2));',
'end raise_error;',
'',
'--------------------------------------------------------------------------------',
'-- private function to include the apex error handling function, if one is',
'-- defined on application or page level',
'--------------------------------------------------------------------------------',
'function error_function_callback',
'  ( p_error in apex_error.t_error',
'  )  return apex_error.t_error_result',
'is',
'  l_error_handling_function apex_application_pages.error_handling_function%type;',
'  l_statement               varchar2(32767);',
'  l_result                  apex_error.t_error_result;',
'',
'  procedure log_value',
'    ( p_attribute_name in varchar2',
'    , p_old_value      in varchar2',
'    , p_new_value      in varchar2',
'    )',
'  is',
'  begin',
'      if    p_old_value <> p_new_value',
'         or (p_old_value is not null and p_new_value is null)',
'         or (p_old_value is null     and p_new_value is not null)',
'      then',
'          apex_debug.info(''%s: %s'', p_attribute_name, p_new_value);',
'      end if;',
'  end log_value;',
'',
'begin',
'    if not g_in_error_handling_callback',
'    then',
'        g_in_error_handling_callback := true;',
'',
'        begin',
'            select /*+ result_cache */',
'                   coalesce(p.error_handling_function, f.error_handling_function)',
'              into l_error_handling_function',
'              from apex_applications f,',
'                   apex_application_pages p',
'             where f.application_id     = apex_application.g_flow_id',
'               and p.application_id (+) = f.application_id',
'               and p.page_id        (+) = apex_application.g_flow_step_id',
'            ;',
'        exception',
'            when no_data_found then null;',
'        end;',
'    end if;',
'',
'    if l_error_handling_function is not null',
'    then',
'',
'        l_statement := ''declare ''||',
'                           ''l_error apex_error.t_error; ''||',
'                       ''begin ''||',
'                           ''l_error := apex_error.g_error; ''||',
'                           ''apex_error.g_error_result := ''||l_error_handling_function||'' ( ''||',
'                               ''p_error => l_error ); ''||',
'                       ''end;'';',
'',
'        apex_error.g_error := p_error;',
'',
'        begin',
'            apex_exec.execute_plsql (',
'                p_plsql_code      => l_statement );',
'        exception when others then',
'            apex_debug.error(''error in error handler: %s'', sqlerrm);',
'            apex_debug.error(''backtrace: %s'', dbms_utility.format_error_backtrace);',
'        end;',
'',
'        l_result := apex_error.g_error_result;',
'',
'        if l_result.message is null',
'        then',
'            l_result.message          := nvl(l_result.message,          p_error.message);',
'            l_result.additional_info  := nvl(l_result.additional_info,  p_error.additional_info);',
'            l_result.display_location := nvl(l_result.display_location, p_error.display_location);',
'            l_result.page_item_name   := nvl(l_result.page_item_name,   p_error.page_item_name);',
'            l_result.column_alias     := nvl(l_result.column_alias,     p_error.column_alias);',
'        end if;',
'    else',
'        l_result.message          := p_error.message;',
'        l_result.additional_info  := p_error.additional_info;',
'        l_result.display_location := p_error.display_location;',
'        l_result.page_item_name   := p_error.page_item_name;',
'        l_result.column_alias     := p_error.column_alias;',
'    end if;',
'',
'    if l_result.message = l_result.additional_info',
'    then',
'        l_result.additional_info := null;',
'    end if;',
'',
'    g_in_error_handling_callback := false;',
'',
'    return l_result;',
'',
'exception',
'    when others then',
'        l_result.message             := ''custom apex error handling function failed !!'';',
'        l_result.additional_info     := null;',
'        l_result.display_location    := apex_error.c_on_error_page;',
'        l_result.page_item_name      := null;',
'        l_result.column_alias        := null;',
'        g_in_error_handling_callback := false;',
'        return l_result;',
'end error_function_callback;',
'',
'-- file download handler',
'procedure download_files',
'  ( p_dynamic_action    in apex_plugin.t_dynamic_action',
'  , p_preview_download  in boolean default false',
'  )',
'as',
'    --attributes',
'    l_source_type           p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;',
'    l_is_mode_plsql         boolean                            := (l_source_type = ''plsql'');',
'',
'    l_sql_query             p_dynamic_action.attribute_02%type := p_dynamic_action.attribute_02;',
'    l_plsql_code            p_dynamic_action.attribute_03%type := p_dynamic_action.attribute_03;',
'    l_archive_name          p_dynamic_action.attribute_04%type := p_dynamic_action.attribute_04;',
'    l_always_zip            boolean                            := (p_dynamic_action.attribute_15 like ''%always-zip%'');',
'    l_additional_plsql_code p_dynamic_action.attribute_06%type := p_dynamic_action.attribute_06;',
'    l_content_disposition   p_dynamic_action.attribute_09%type := case when p_preview_download then ''attachment'' else nvl(p_dynamic_action.attribute_09, ''attachment'') end;',
'',
'    -- used by the sql mode',
'    l_context               apex_exec.t_context;',
'',
'    l_pos_name              number;',
'    l_pos_mime              number;',
'    l_pos_blob              number;',
'    l_pos_clob              number;',
'',
'    l_blob_col_exists       boolean := false;',
'    l_clob_col_exists       boolean := false;',
'',
'    l_temp_file_name        varchar2(1000);',
'    l_temp_mime_type        varchar2(1000);',
'    l_temp_blob             blob;',
'    l_temp_clob             clob;',
'',
'    -- column names expected in the sql mode',
'    c_alias_file_name       constant varchar2(20) := ''FILE_NAME'';',
'    c_alias_mime_type       constant varchar2(20) := ''FILE_MIME_TYPE'';',
'    c_alias_blob            constant varchar2(20) := ''FILE_CONTENT_BLOB'';',
'    c_alias_clob            constant varchar2(20) := ''FILE_CONTENT_CLOB'';',
'',
'    -- used by the plsql mode',
'    c_collection_name       constant varchar2(20) := ''UC_DOWNLOAD_FILES'';',
'',
'    -- both modes',
'    l_final_file            blob;',
'    l_final_mime_type       varchar2(1000);',
'    l_final_file_name       varchar2(1000);',
'',
'    l_file_count            number;',
'    l_zipping               boolean;',
'',
'    procedure show_invalid_file_type_html',
'    is',
'      l_image_prefix varchar2(4000);',
'      l_theme_prefix varchar2(4000);',
'      --',
'      function get_translated_message',
'          ( p_id         in varchar2',
'          , p_null_value in varchar2',
'          ) return varchar2',
'      is',
'          l_message varchar2(4000);',
'      begin',
'          l_message := apex_lang.message(p_name => p_id, p_application_id => nv(''APP_ID''));',
'          return case when l_message = p_id then p_null_value else nvl(l_message, p_null_value) end;',
'      end get_translated_message;',
'',
'    begin',
'        l_image_prefix := apex_plugin_util.replace_substitutions(''#IMAGE_PREFIX#'');',
'        l_theme_prefix := apex_plugin_util.replace_substitutions(''#THEME_IMAGES#'');',
'        p(''<html><head>'');',
'        p(''<meta http-equiv="x-ua-compatible" content="IE=edge" />'');',
'        p(''<meta charset="utf-8">'');',
'        p(''<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'');',
'        p(''<meta http-equiv="Pragma" content="no-cache" />'');',
'        p(''<meta http-equiv="Expires" content="-1" />'');',
'        p(''<meta http-equiv="Cache-Control" content="no-cache" />'');',
'        p(''<meta name="viewport" content="width=device-width, initial-scale=1.0" />'');',
'        p(''<link rel="stylesheet" href="''||l_image_prefix||''libraries/font-apex/2.1/css/font-apex.min.css" type="text/css" />'');',
'        p(''<link rel="stylesheet" href="''||l_theme_prefix||''css/core/Alert.css" type="text/css" />'');',
'        p(''<link rel="stylesheet" href="''||l_theme_prefix||''css/core/Icon.css" type="text/css" />'');',
'        p(''<style>body {font: 500 13px/19px "Open Sans", "Helvetica Neue", helvetica, arial, verdana, sans-serif;}'');',
'        p(''.t-Alert--warning .t-Alert-icon .fa-Icon {color: #FBCE4A;font-size:64px;}'');',
'        p(''.t-Alert--defaultIcons.t-Alert--warning .t-Alert-icon .fa-Icon:before{content: "\f071";}'');',
'        p(''.t-Alert--wizard .t-Alert-body{text-align:center}'');',
'        p(''.t-Alert--horizontal, .t-Alert--wizard {border: none !important;box-shadow:none}</style>'');',
'        p(''</head><body>'');',
'        p(''<div class="t-Alert t-Alert--wizard t-Alert--defaultIcons t-Alert--warning">'');',
'        p(''<div class="t-Alert-wrap">'');',
'        p(''<div class="t-Alert-icon">'');',
'        p(''<span class="fa-Icon fa fa-warning"></span>'');',
'        p(''</div>'');',
'        p(''<div class="t-Alert-content"><div class="t-Alert-header">'');',
'        p(''<h2 class="t-Alert-title">''||get_translated_message(p_id => ''UC.DOWNLOAD.PREVIEW_NA.TITLE'', p_null_value => ''Preview not available!'')||''</h2>'');',
'        p(''</div>'');',
'        p(''<div class="t-Alert-body">''||get_translated_message(p_id => ''UC.DOWNLOAD.PREVIEW_NA.MESSAGE'', p_null_value => ''The file cannot be previewed. Please download and open it on your device.'')||''</div>'');',
'        p(''</div><div class="t-Alert-buttons"></div></div></div></body></html>'');',
'        p('''');',
'    end show_invalid_file_type_html;',
'',
'    function is_allowed_preview_type',
'      ( p_mime_type in varchar2',
'      ) return boolean',
'    is',
'    begin',
'        return p_mime_type in (''application/pdf'',''application/json'',''application/xml'') or p_mime_type like ''image/%'' or p_mime_type like ''text/%'';',
'    end is_allowed_preview_type;',
'',
'begin',
'    -- When we open in a new window the disposition must be inline',
'    if l_content_disposition = ''window''',
'    then',
'        l_content_disposition := ''inline'';',
'    end if;',
'',
'    -- creating a sql query based on the collection so we can reuse the logic for the sql mode',
'    if l_is_mode_plsql',
'    then',
'        apex_collection.create_or_truncate_collection(c_collection_name);',
'        apex_exec.execute_plsql(l_plsql_code);',
'        l_sql_query := ''',
'            select c001    as file_name',
'                 , c002    as file_mime_type',
'                 , blob001 as file_content_blob',
'                 , clob001 as file_content_clob',
'              from apex_collections',
'             where collection_name = '''''' || c_collection_name || '''''''';',
'    end if;',
'',
'    l_context := apex_exec.open_query_context',
'                   ( p_location          => apex_exec.c_location_local_db',
'                   , p_sql_query         => l_sql_query',
'                   , p_total_row_count   => true',
'                   )',
'    ;',
'',
'    l_file_count := apex_exec.get_total_row_count(l_context);',
'',
'    if l_file_count = 0',
'    then',
'        raise_error(''At least 1 file must be provided'');',
'    end if;',
'',
'    -- we zip if there are more than 1 file or if always zip is turned on',
'    l_zipping := ((l_file_count > 1) or l_always_zip);',
'',
'    -- result set sanity checks',
'    begin',
'        l_pos_name := apex_exec.get_column_position',
'                        ( p_context     => l_context',
'                        , p_column_name => c_alias_file_name',
'                        , p_is_required => true',
'                        , p_data_type   => apex_exec.c_data_type_varchar2',
'                        );',
'    exception',
'        when others then',
'            raise_error(''A %s column must be defined'', c_alias_file_name);',
'    end;',
'',
'    begin',
'        l_pos_mime := apex_exec.get_column_position',
'                        ( p_context     => l_context',
'                        , p_column_name => c_alias_mime_type',
'                        , p_is_required => true',
'                        , p_data_type   => apex_exec.c_data_type_varchar2',
'                        );',
'    exception',
'        when others then',
'            raise_error(''A %s column must be defined'', c_alias_mime_type);',
'    end;',
'',
'    -- looping through all columns as opposed to using get_column_position',
'    -- as get_column_position writes an error to the logs if the column is not found',
'    -- even if the exception is handled',
'    l_blob_col_exists := false;',
'    l_clob_col_exists := false;',
'    for idx in 1 .. apex_exec.get_column_count(l_context)',
'    loop',
'        if apex_exec.get_column(l_context, idx).name = c_alias_blob',
'        then',
'            l_pos_blob := idx;',
'            l_blob_col_exists := true;',
'        end if;',
'',
'        if apex_exec.get_column(l_context, idx).name = c_alias_clob',
'        then',
'            l_pos_clob := idx;',
'            l_clob_col_exists := true;',
'        end if;',
'    end loop;',
'',
'    -- raise an error if neither a blob nor a clob source was provided',
'    if not (l_blob_col_exists or l_clob_col_exists)',
'    then',
'        raise_error(''Either a %s or a %s column must be defined'', c_alias_blob, c_alias_clob);',
'    end if;',
'',
'    -- looping through all files',
'    while apex_exec.next_row(l_context)',
'    loop',
'        if l_blob_col_exists',
'        then',
'            l_temp_blob := apex_exec.get_blob(l_context, l_pos_blob);',
'            if l_temp_blob is null',
'            then',
'              l_temp_blob := empty_blob();',
'            end if;',
'        end if;',
'',
'        if l_clob_col_exists',
'        then',
'            l_temp_clob := apex_exec.get_clob(l_context, l_pos_clob);',
'            if l_temp_clob is null',
'            then',
'              l_temp_clob := empty_clob();',
'            end if;',
'        end if;',
'',
'        l_temp_file_name := apex_exec.get_varchar2(l_context, l_pos_name);',
'        l_temp_mime_type := apex_exec.get_varchar2(l_context, l_pos_mime);',
'',
'        -- logic for choosing between the blob an clob',
'        if    (l_blob_col_exists and not l_clob_col_exists)',
'           or (l_blob_col_exists and     l_clob_col_exists and dbms_lob.getlength(l_temp_blob) > 0)',
'        then',
'            if apex_application.g_debug',
'            then',
'                apex_debug.info(''%s - BLOB - %s bytes'', l_temp_file_name, dbms_lob.getlength(l_temp_blob));',
'            end if;',
'',
'            if l_zipping',
'            then',
'                apex_zip.add_file',
'                  ( p_zipped_blob => l_final_file',
'                  , p_file_name   => l_temp_file_name',
'                  , p_content     => l_temp_blob',
'                  );',
'            else',
'                -- there''s only 1 file in the result set',
'                l_final_file_name := l_temp_file_name;',
'                l_final_mime_type := l_temp_mime_type;',
'                l_final_file      := l_temp_blob;',
'            end if;',
'        else',
'            if apex_application.g_debug',
'            then',
'                apex_debug.info(''%s - CLOB - %s bytes'', l_temp_file_name, dbms_lob.getlength(l_temp_clob));',
'            end if;',
'',
'            if l_zipping',
'            then',
'                apex_zip.add_file',
'                  ( p_zipped_blob => l_final_file',
'                  , p_file_name   => l_temp_file_name',
'                  , p_content     => clob_to_blob(l_temp_clob)',
'                  );',
'            else',
'                -- there''s only 1 file in the result set',
'                l_final_file_name := l_temp_file_name;',
'                l_final_mime_type := l_temp_mime_type;',
'                l_final_file      := clob_to_blob(l_temp_clob);',
'            end if;',
'        end if;',
'    end loop;',
'',
'    apex_exec.close(l_context);',
'',
'    if l_is_mode_plsql',
'    then',
'        apex_collection.delete_collection(c_collection_name);',
'    end if;',
'',
'    if l_zipping',
'    then',
'        apex_zip.finish(l_final_file);',
'        if l_file_count = 1',
'        then',
'            l_final_file_name := nvl(apex_application.g_x01, nvl(l_archive_name, l_temp_file_name || ''.zip''));',
'        else',
'            l_final_file_name := nvl(apex_application.g_x01, nvl(l_archive_name, ''files.zip''));',
'        end if;',
'',
'        l_final_mime_type := ''application/zip'';',
'',
'        if l_final_file_name not like ''%.zip''',
'        then',
'            l_final_file_name := l_final_file_name || ''.zip'';',
'        end if;',
'    end if;',
'',
'    if l_additional_plsql_code is not null',
'    then',
'        apex_exec.execute_plsql(''begin ''||l_additional_plsql_code||'' commit; end;'');',
'    end if;',
'',
'    if          l_content_disposition = ''inline''',
'        and not is_allowed_preview_type(l_final_mime_type)',
'    then',
'        show_invalid_file_type_html;',
'    else',
'        sys.htp.init;',
'        sys.owa_util.mime_header(l_final_mime_type, false);',
'        --',
'        -- We send a cookie so we can determine when a file has been downloaded',
'        -- https://stackoverflow.com/questions/1106377/detect-when-browser-receives-file-download',
'        owa_cookie.send',
'          ( name    => apex_application.g_x10',
'          , value   => ''{"count":''||l_file_count||'',"name":"''||apex_escape.json(l_final_file_name)||''","mimeType":"''||apex_escape.json(l_final_mime_type)||''","size":"''||trim(apex_escape.json(apex_util.filesize_mask(dbms_lob.getlength(l_final_file))))'
||'||''"}''',
'          , expires => current_date + 2/1440',
'          );',
'        p(''Content-Length: '' || dbms_lob.getlength(l_final_file));',
'        p(''Content-Disposition: ''||l_content_disposition||''; filename="'' || l_final_file_name || ''";'');',
'        sys.owa_util.http_header_close;',
'',
'        sys.wpg_docload.download_file(l_final_file);',
'        apex_application.stop_apex_engine;',
'    end if;',
'exception',
'  -- this is the exception thrown by stop_apex_engine',
'  -- catching it here so it won''t be handled by the others handlers',
'  when apex_application.e_stop_apex_engine then',
'      raise;',
'  when others then',
'      -- delete the collection in case the error occurred between opening and closing it',
'      if apex_collection.collection_exists(c_collection_name)',
'      then',
'          apex_collection.delete_collection(c_collection_name);',
'      end if;',
'      -- always close the context in case of an error',
'      apex_exec.close(l_context);',
'      raise;',
'end download_files;',
'',
'--------------------------------------------------------------------------------',
'-- Main plug-in render function',
'--------------------------------------------------------------------------------',
'function render',
'  ( p_dynamic_action in apex_plugin.t_dynamic_action',
'  , p_plugin         in apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_dynamic_action_render_result',
'as',
'    l_result                 apex_plugin.t_dynamic_action_render_result;',
'',
'    --general attributes',
'    l_ajax_identifier        varchar2(4000)                     := apex_plugin.get_ajax_identifier;',
'    l_static_id              varchar2(4000)                     := nvl(p_dynamic_action.attribute_07, p_dynamic_action.id);',
'    l_suppress_errors        boolean                            := (p_dynamic_action.attribute_15 like ''%suppress-error-messages%'');',
'    l_content_disposition    p_dynamic_action.attribute_09%type := nvl(p_dynamic_action.attribute_09, ''download'');',
'',
'    -- spinner settings',
'    l_show_spinner           boolean                            := instr(p_dynamic_action.attribute_15, ''show-spinner'') > 0;',
'    l_show_spinner_overlay   boolean                            := instr(p_dynamic_action.attribute_15, ''show-spinner-overlay'') > 0;',
'    l_show_spinner_on_region boolean                            := instr(p_dynamic_action.attribute_15, ''spinner-position'') > 0;',
'',
'    -- page items to submit settings',
'    l_items_to_submit        varchar2(4000)                     := apex_plugin_util.page_item_names_to_jquery(p_dynamic_action.attribute_05);',
'',
'    -- Javascript Initialization Code',
'    l_init_js_fn             varchar2(32767)                    := nvl(apex_plugin_util.replace_substitutions(p_dynamic_action.init_javascript_code), ''undefined'');',
'',
'begin',
'    if apex_application.g_debug and substr(:DEBUG,6) >= 6',
'    then',
'        apex_plugin_util.debug_dynamic_action',
'          ( p_dynamic_action => p_dynamic_action',
'          , p_plugin         => p_plugin',
'          );',
'    end if;',
'',
'    -- create a json object holding the dynamic action settings',
'    apex_json.initialize_clob_output;',
'    apex_json.open_object;',
'    apex_json.write(''id''                   , p_dynamic_action.id);',
'    apex_json.write(''staticId''             , l_static_id);',
'    apex_json.write(''ajaxIdentifier''       , l_ajax_identifier);',
'    apex_json.write(''itemsToSubmit''        , l_items_to_submit);',
'    apex_json.write(''suppressErrorMessages'', l_suppress_errors);',
'    apex_json.write(''previewMode''          , l_content_disposition = ''inline'');',
'    apex_json.write(''newWindow''            , l_content_disposition = ''window'');',
'',
'    apex_json.open_object(''spinnerSettings'');',
'    apex_json.write(''showSpinner''          , l_show_spinner);',
'    apex_json.write(''showSpinnerOverlay''   , l_show_spinner_overlay);',
'    apex_json.write(''showSpinnerOnRegion''  , l_show_spinner_on_region);',
'    apex_json.close_object;',
'',
'    -- close JSON settings',
'    apex_json.close_object;',
'',
'    -- defines the function that will be run each time the dynamic action fires',
'    l_result.javascript_function := ''function() { uc.utils.download(this, ''|| apex_json.get_clob_output||'', ''||l_init_js_fn||''); }'';',
'',
'    apex_json.free_output;',
'    return l_result;',
'end render;',
'',
'--------------------------------------------------------------------------------',
'-- Main plug-in AJAX function',
'--------------------------------------------------------------------------------',
'function ajax',
'  ( p_dynamic_action in apex_plugin.t_dynamic_action',
'  , p_plugin         in apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_dynamic_action_ajax_result',
'as',
'    -- error handling',
'    l_apex_error               apex_error.t_error;',
'    l_result                   apex_error.t_error_result;',
'',
'    -- return type',
'    l_return                   apex_plugin.t_dynamic_action_ajax_result;',
'',
'    --general attributes',
'    l_ajax_identifier          varchar2(4000)                     := replace(coalesce(apex_application.g_request, apex_plugin.get_ajax_identifier), ''PLUGIN='', '''');',
'    l_static_id                varchar2(4000)                     := nvl(p_dynamic_action.attribute_07, p_dynamic_action.id);',
'    l_suppress_errors          boolean                            := (p_dynamic_action.attribute_15 like ''%suppress-error-messages%'');',
'    l_content_disposition      p_dynamic_action.attribute_09%type := nvl(p_dynamic_action.attribute_09, ''download'');',
'',
'    -- preview mode, we can alos download the file in preview mode so we need to be able to switch the download type dynamically (settings are static)',
'    l_preview_download         varchar2(255)                      := nvl(apex_application.g_x02, ''NO'');',
'    l_preview_mode             boolean                            := case when l_preview_download = ''YES'' then false else l_content_disposition = ''inline'' end;',
'    l_preview_new_window       boolean                            := case when l_preview_download = ''YES'' then false else l_content_disposition = ''window'' end;',
'',
'    -- preview settings',
'    l_prv_close_on_escape      boolean                            := instr(p_dynamic_action.attribute_10, ''close-on-escape'')           > 0;',
'    l_prv_draggable            boolean                            := instr(p_dynamic_action.attribute_10, ''draggable'')                 > 0;',
'    l_prv_modal                boolean                            := instr(p_dynamic_action.attribute_10, ''modal'')                     > 0;',
'    l_prv_resizable            boolean                            := instr(p_dynamic_action.attribute_10, ''resizable'')                 > 0;',
'    l_prv_show_file_info       boolean                            := instr(p_dynamic_action.attribute_10, ''show-file-info'')            > 0;',
'    l_prv_show_download_btn    boolean                            := instr(p_dynamic_action.attribute_10, ''show-download-button'')      > 0;',
'    l_prv_custom_file_info_tpl boolean                            := instr(p_dynamic_action.attribute_10, ''custom-file-info-template'') > 0;',
'',
'    l_prv_file_info_template   p_dynamic_action.attribute_12%type := p_dynamic_action.attribute_12;',
'    l_prv_title                p_dynamic_action.attribute_11%type := p_dynamic_action.attribute_11;',
'',
'    -- spinner settings',
'    l_show_spinner             boolean                            := instr(p_dynamic_action.attribute_15, ''show-spinner'')              > 0;',
'    l_show_spinner_overlay     boolean                            := instr(p_dynamic_action.attribute_15, ''show-spinner-overlay'')      > 0;',
'    l_show_spinner_on_region   boolean                            := instr(p_dynamic_action.attribute_15, ''spinner-position'')          > 0;',
'',
'    -- page items to submit settings',
'    l_items_to_submit          varchar2(4000)                     := apex_plugin_util.page_item_names_to_jquery(p_dynamic_action.attribute_05);',
'',
'    function get_preview_url',
'    return varchar2',
'    as',
'    begin',
'        return ''wwv_flow.show?p_flow_id=''||v(''app_id'')||''&p_flow_step_id=''||v(''app_page_id'')||''&p_instance=''||v(''app_session'')||',
'               ''&p_debug=''||v(''debug'')||''&p_request=PLUGIN=''||l_ajax_identifier||''&p_widget_name=''||p_plugin.name||''&p_widget_action=''||c_download_request||',
'               ''&x02=''||apex_application.g_x02||''&x10=''||apex_application.g_x10',
'        ;',
'    end get_preview_url;',
'begin',
'    -- standard debugging intro, but only if necessary',
'    if apex_application.g_debug and substr(:DEBUG,6) >= 6',
'    then',
'      apex_plugin_util.debug_dynamic_action',
'        ( p_plugin         => p_plugin',
'        , p_dynamic_action => p_dynamic_action',
'        );',
'    end if;',
'',
'    if apex_application.g_widget_action = c_download_request',
'    then',
'        -- Hand off to our download routine',
'        download_files',
'          ( p_dynamic_action   => p_dynamic_action',
'          , p_preview_download => apex_application.g_x02 = ''YES''',
'          );',
'    else',
'        apex_json.open_object;',
'        apex_json.write(''status''                 , ''success'');',
'        apex_json.open_object(''data'');',
'        apex_json.write(''previewMode''            , l_preview_mode);',
'',
'        if l_preview_mode or l_preview_new_window',
'        then',
'            -- settings for download button in preview dialog',
'            apex_json.write(''id''                 , p_dynamic_action.id);',
'            apex_json.write(''staticId''           , l_static_id);',
'            apex_json.write(''ajaxIdentifier''     , l_ajax_identifier);',
'            apex_json.write(''itemsToSubmit''      , l_items_to_submit);',
'            apex_json.write(''suppressErrorMessages'', l_suppress_errors);',
'',
'            -- preview settings',
'            apex_json.write(''previewSrc''         , get_preview_url);',
'            apex_json.write(''previewId''          , ''preview-''||apex_application.g_x01);',
'',
'            -- preview dialog settings',
'            apex_json.open_object(''previewOptions'');',
'            apex_json.write(''closeOnEscape''      , l_prv_close_on_escape);',
'            apex_json.write(''draggable''          , l_prv_draggable);',
'            apex_json.write(''modal''              , l_prv_modal);',
'            apex_json.write(''resizable''          , l_prv_resizable);',
'            apex_json.write(''showFileInfo''       , l_prv_show_file_info);',
'            apex_json.write(''showDownloadBtn''    , l_prv_show_download_btn);',
'            apex_json.write(''title''              , l_prv_title);',
'',
'            if l_prv_custom_file_info_tpl',
'            then',
'                apex_json.write(''fileInfoTpl''    , l_prv_file_info_template);',
'            end if;',
'',
'            apex_json.close_object;',
'',
'            -- spinner settings',
'            apex_json.open_object(''spinnerSettings'');',
'            apex_json.write(''showSpinner''        , l_show_spinner);',
'            apex_json.write(''showSpinnerOverlay'' , l_show_spinner_overlay);',
'            apex_json.write(''showSpinnerOnRegion'', l_show_spinner_on_region);',
'            apex_json.close_object;',
'        end if;',
'',
'',
'        apex_json.write(''formId''                 , ''form-''||apex_application.g_x01);',
'        apex_json.write(''iframeId''               , ''iframe-''||apex_application.g_x01);',
'        apex_json.write(''appId''                  , v(''APP_ID''));',
'        apex_json.write(''pageId''                 , v(''APP_PAGE_ID''));',
'        apex_json.write(''sessionId''              , v(''APP_SESSION''));',
'        apex_json.write(''debug''                  , v(''DEBUG''));',
'        apex_json.write(''request''                , l_ajax_identifier);',
'        apex_json.write(''widgetName''             , p_plugin.name);',
'        apex_json.write(''action''                 , c_download_request);',
'        apex_json.write(''previewDownload''        , l_preview_download);',
'        apex_json.close_object;',
'        apex_json.close_object;',
'    end if;',
'',
'    return l_return;',
'',
'exception',
'    -- this is the exception thrown by stop_apex_engine',
'    -- we catch it here because we are catching all errors',
'    -- but we allow/ignore the stop engine error',
'    when apex_application.e_stop_apex_engine then',
'      return l_return;',
'    -- for any other error we must return an error message',
'    when others then',
'      apex_json.initialize_output;',
'      l_apex_error.message             := sqlerrm;',
'      l_apex_error.ora_sqlcode         := sqlcode;',
'      l_apex_error.ora_sqlerrm         := sqlerrm;',
'      l_apex_error.error_backtrace     := dbms_utility.format_error_backtrace;',
'',
'      l_result := error_function_callback(l_apex_error);',
'',
'      apex_json.open_object;',
'      apex_json.write(''status'' , ''error'');',
'      apex_json.write(''message''         , l_result.message);',
'      apex_json.write(''additional_info'' , l_result.additional_info);',
'      apex_json.write(''display_location'', l_result.display_location);',
'      apex_json.write(''page_item_name''  , l_result.page_item_name);',
'      apex_json.write(''column_alias''    , l_result.column_alias);',
'      apex_json.close_object;',
'      return l_return;',
'end ajax;',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_execution_function=>'execution'
,p_standard_attributes=>'ITEM:BUTTON:REGION:JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION:TRIGGERING_ELEMENT:WAIT_FOR_RESULT:INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>UC - Download File(s)</strong> dynamic action plug-in enables the downloading of one or multiple database-stored BLOBs or CLOBs. You don''t have to worry about setting HTTP headers, converting CLOBs to BLOBs, or zipping the files. It''s '
||'all done for you. Just specify which files to download via a SQL query, or a more dynamic PL/SQL code block. Multiple files are zipped automatically, but a single file can optionally be zipped as well.</p>',
'<p>The benefits of downloading a file using a dynamic action include:',
'<ol>',
'    <li>You have the flexibility of using SQL to decide what file(s) to download including filtering based on page item values</li>',
'    <li>You can have further actions defined after the download action for improved workflow</li>',
'    <li>You can wait for the result of the file to download before continuing your next action</li>',
'    <li>You do NOT issue a page submit or redirect, which means you can handle errors better i.e. you won''t be redirected to an error page</li>',
'</ol>    ',
'</p>',
'<p><strong>Note:</strong> in "some cases" you may need to change your security setting "Embed in Frames" and set it to either "Allow from same origin" or "Allow" for this action to work correctly in preview mode. This is because the file will be down'
||'loaded in a hidden iFrame on the page. If your setting is set to "Deny" you may see a message in the console like: "Load denied by X-Frame-Options". We evaluated a number of techniques to download files and found that this technique has the best perf'
||'ormance with larger files.</p>',
'</p>'))
,p_version_identifier=>'23.1.0'
,p_about_url=>'https://plug-ins-pro.com'
,p_files_version=>702
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556967340052866298)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Source Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'sql'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose how you wish to compile the list of files to download.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556967728345866298)
,p_plugin_attribute_id=>wwv_flow_imp.id(556967340052866298)
,p_display_sequence=>10
,p_display_value=>'SQL Query'
,p_return_value=>'sql'
,p_help_text=>'<p>The files should be based on a SQL query.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556968216274866297)
,p_plugin_attribute_id=>wwv_flow_imp.id(556967340052866298)
,p_display_sequence=>20
,p_display_value=>'PL/SQL Code'
,p_return_value=>'plsql'
,p_help_text=>'<p>The files should procedurally be added to an APEX collection in a PL/SQL code block.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556968689687866297)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>3
,p_sql_max_column_count=>4
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(556967340052866298)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'sql'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'select file_name    as file_name',
'     , mime_type    as file_mime_type',
'     , blob_content as file_content_blob',
'  from some_table',
'</pre>',
'<pre>',
'select file_name    as file_name',
'     , mime_type    as file_mime_type',
'     , clob_content as file_content_clob',
'  from some_table',
'</pre>',
'<pre>',
'select file_name    as file_name',
'     , mime_type    as file_mime_type',
'     , blob_content as file_content_blob',
'     , null         as file_content_clob',
'  from some_table',
'',
' union all',
'',
'select file_name    as file_name',
'     , mime_type    as file_mime_type',
'     , null         as file_content_blob',
'     , clob_content as file_content_clob',
'  from some_table',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Provide the SQL query source for the files to be downloaded.</p>',
'<p>Columns <strong><code>file_name</code></strong> and <strong><code>file_mime_type</code></strong> are mandatory. Additionally, either <strong><code>file_content_blob</code></strong> or <strong><code>file_content_clob</code></strong> must be provide'
||'d. If both are provided, the first non-null one will be picked. This allows you to mix and match files from various sources.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556969078082866296)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'PL/SQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(556967340052866298)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'plsql'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'apex_collection.add_member',
'    ( p_collection_name => ''FOS_DOWNLOAD_FILES''',
'    , p_c001            => ''README.md''',
'    , p_c002            => ''text/plain''',
'    , p_clob001         => ''This zip contains *all* application files!''',
'    );',
'',
'for f in (',
'    select *',
'      from apex_application_static_files',
'     where application_id = :APP_ID',
') loop',
'    apex_collection.add_member',
'        ( p_collection_name => ''FOS_DOWNLOAD_FILES''',
'        , p_c001            => f.file_name',
'        , p_c002            => f.mime_type',
'        , p_blob001         => f.file_content',
'        );',
'end loop;',
'',
'-- pro tip: you can override the zip file name by assigning it to the apex_application.g_x01 global variable',
'apex_application.g_x01 := ''all_files.zip'';',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Provide the PL/SQL code block that compiles the files to be downloaded.</p>',
'<p>The files should be added one by one to the <strong><code>FOS_DOWNLOAD_FILES</code></strong> collection via the <code>apex_collection</code> API.</p>',
'<p>This special collection will be created and removed automatically.</p>',
'<p>Parameter <strong><code>p_c001</code></strong> is the file name, <strong><code>p_c002</code></strong> is the mime_type, <strong><code>p_blob001</code></strong> is the BLOB source and <strong><code>p_clob001</code></strong> is the CLOB source. <cod'
||'e>p_c001</code> and <code>p_c002</code> are both mandatory, and either <code>p_blob001</code> or <code>p_clob001</code> must be provided as well.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556969505139866296)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Zip File Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'<code>db_files_export.zip</code>'
,p_help_text=>'<p>Enter the zip file name to be used in case multiple files are returned.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556969925627866296)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>35
,p_prompt=>'Items to Submit'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the uppercase page items submitted to the server, and therefore, available for use within your <strong>PL/SQL Code</strong>.</p>',
'<p>You can type in the item name or pick from the list of available items.',
'If you pick from the list and there is already text entered then a comma is placed at the end of the existing text, followed by the item name returned from the list.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556970290923866296)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>160
,p_prompt=>'PL/SQL (Executed Before Download)'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'execute-plsql'
,p_help_text=>'<p>Enter the PL/SQL code you would like to execute just prior to the download e.g. perhaps you want to track the download count in a table etc.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556970669600866296)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>170
,p_prompt=>'Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'(no spaces or punctuation)'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the static ID which you would like to identify this particular download which can be used within a dynamic action client-side condition when listening to the plug-in events e.g.</p>',
'<pre>this.data.staticId === ''MY_UNIQUE_ID''</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556971149616866295)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>5
,p_prompt=>'File Mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'attachment'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the file mode, you currently have 2 options:</p>',
'<ul>',
'<li>Download - the file will be downloaded as an attachment</li>',
'<li>Preview - the file will be downloaded and shown inline in a modal dialog</li>',
'<li>New Window - the file will be downloaded and shown in a new browser window/tab (depends on the browser implementation for window.open)</li>',
'</ul>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556971521714866295)
,p_plugin_attribute_id=>wwv_flow_imp.id(556971149616866295)
,p_display_sequence=>10
,p_display_value=>'Download'
,p_return_value=>'attachment'
,p_help_text=>'<p>Download the file to the file system</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556972050154866295)
,p_plugin_attribute_id=>wwv_flow_imp.id(556971149616866295)
,p_display_sequence=>20
,p_display_value=>'Preview'
,p_return_value=>'inline'
,p_help_text=>'<p>Preview the file in a dialog window. <strong>Note:</strong> only a limited number of file types are supported e.g. text files, images, and PDF files. If the file cannot be previewed a warning message will be shown. You still have the option to dow'
||'nload a file when using preview mode.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556972553864866295)
,p_plugin_attribute_id=>wwv_flow_imp.id(556971149616866295)
,p_display_sequence=>30
,p_display_value=>'Preview in New Window'
,p_return_value=>'window'
,p_help_text=>'<p>Preview the file in a new browser window/tab. <strong>Note:</strong> only a limited number of file types are supported e.g. text files, images, and PDF files. If the file cannot be previewed a it will be automatically downloaded instead.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556973040891866294)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>7
,p_prompt=>'Preview Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'close-on-escape:draggable:modal:resizable:show-file-info:show-download-button'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(556971149616866295)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'inline'
,p_lov_type=>'STATIC'
,p_help_text=>'<p>When previewing a file you have a number of settings you can customize.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556973403799866294)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>10
,p_display_value=>'Close on Escape'
,p_return_value=>'close-on-escape'
,p_help_text=>'<p>Check this option to close the dialog window when the "ESC" key is pressed.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556973948980866294)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>20
,p_display_value=>'Custom File Info Tooltip Template'
,p_return_value=>'custom-file-info-template'
,p_help_text=>'<p>Check this option if you would like to override the default file information tooltip e.g. if you want to translate the English labels.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556974400229866294)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>30
,p_display_value=>'Draggable'
,p_return_value=>'draggable'
,p_help_text=>'<p>Check this option to allow the user to be able to drag the window around and reposition it.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556974952326866294)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>40
,p_display_value=>'Modal'
,p_return_value=>'modal'
,p_help_text=>'<p>Check this option to make the preview dialog window modal.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556975427623866293)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>50
,p_display_value=>'Resizable'
,p_return_value=>'resizable'
,p_help_text=>'<p>Check this option to allow the user to resize the preview dialog window.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556975920190866293)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>60
,p_display_value=>'Show Download Button'
,p_return_value=>'show-download-button'
,p_help_text=>'<p>Check this option to show a download button that allows the user to download the file from within the preview window/dialog.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556976375278866293)
,p_plugin_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_display_sequence=>70
,p_display_value=>'Show File Info'
,p_return_value=>'show-file-info'
,p_help_text=>'<p>Check this option to show a button that will show the file information within a tooltip on button click.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556976919219866293)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>8
,p_prompt=>'Preview Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'File Preview'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(556971149616866295)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'inline'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the name of the dialog title. This setting is translatable.</p>',
'<p><strong>Note:</strong> if you would like to change the preview title and message when a file cannot be previewed you can create the following text messages for your application language(s)</p>',
'<pre>',
'FOS.DOWNLOAD.PREVIEW_NA.TITLE',
'FOS.DOWNLOAD.PREVIEW_NA.MESSAGE',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556977332245866293)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>9
,p_prompt=>'File Info Tooltip Template'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Name:</strong> #NAME#<br />',
'<strong>Size:</strong> #SIZE#<br />',
'<strong>Mime Type:</strong> #MIME_TYPE#'))
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(556973040891866294)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'custom-file-info-template'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can provide a custom HTML template for the file information button. The following substitutions are supported:</p>',
'<ul>',
'<li><strong>#NAME#</strong> - the file name</li>',
'<li><strong>#SIZE#</strong> - the file size (it is already pre-formatted)</li>',
'<li><strong>#MIME_TYPE#</strong> - the file mime type e.g. image/png</li>',
'</ul>',
'<p><strong>Note:</strong> The default template is:</p>',
'<pre>',
'<strong>Name:</strong> #NAME#<br />',
'<strong>Size:</strong> #SIZE#<br />',
'<strong>Mime Type:</strong> #MIME_TYPE#',
'</pre>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(556977730861866293)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Extra Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Choose from the following available options:</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556978065894866292)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>10
,p_display_value=>'Always Zip'
,p_return_value=>'always-zip'
,p_help_text=>'If the result set contains multiple files they will always be zipped. By default, if the result set contains only one file, it will not be zipped. Choose this option if a single file should be zipped as well.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556978586025866292)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>20
,p_display_value=>'Execute PL/SQL Prior to Download'
,p_return_value=>'execute-plsql'
,p_help_text=>'<p>Check this option to run some PL/SQL code e.g. to track download counts. <strong>Note:</strong> it will be wrapped in an autonomous transaction and automatically committed or rolled back if an exception is detected.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556979117444866291)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>50
,p_display_value=>'Show Spinner/Processing Icon'
,p_return_value=>'show-spinner'
,p_help_text=>'<p>Check this option if you want to have a Spinner/Processing Icon to be displayed while waiting the execution to complete.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556979662660866291)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>60
,p_display_value=>'Show Spinner with Modal Overlay Mask'
,p_return_value=>'show-spinner-overlay'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Shows the spinner with a modal overlay stopping the user from interacting with the content behind the overlay mask.</p>',
'<p><strong>Note:</strong> this setting has no effect if you do not check "Show Spinner"</p>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556980163561866291)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>70
,p_display_value=>'Show Spinner on Region'
,p_return_value=>'spinner-position'
,p_help_text=>'<p>Check this option to only show the spinner on a particular region. If you do not check this option then it will be shown at the page level. If you have also checked the "Show Spinner Overlay Mask" it will only mask the region you have defined in t'
||'he "Affected Elements".</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(556980580442866290)
,p_plugin_attribute_id=>wwv_flow_imp.id(556977730861866293)
,p_display_sequence=>80
,p_display_value=>'Suppress Error Messages'
,p_return_value=>'suppress-error-messages'
,p_help_text=>'<p>Select "Yes" to hide any notification messages when errors are encountered downloading the file. You would most likely only check this option when you want to display your own custom error notifications.</p>'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(556990497417866284)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
,p_depending_on_has_to_exist=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Changing the Preview Dialog Settings</h3>',
'<p>You may want to change the preview dialog height/width or whether it''s modal e.g.</p>',
'<code>',
'function(options) {',
'   options.previewOptions = {',
'      height: ''800'',',
'      width: ''1020'',',
'      maxWidth: ''1500'',',
'      modal: false',
'   }',
'   return options;',
'}',
'</code>'))
,p_help_text=>'<p>You can use this attribute to define a function that will allow you to change/override the plugin settings. This gives you added flexibility of controlling the settings from a single Javascript function defined in an "Static Application File"</p>'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(556990948415866284)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_name=>'uc-download-file-complete'
,p_display_name=>'UC - Download File(s) - File Downloaded'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(556991330936866283)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_name=>'uc-download-file-error'
,p_display_name=>'UC - Download File(s) - Download Error'
);
wwv_flow_imp_shared.create_plugin_event(
 p_id=>wwv_flow_imp.id(556991690014866283)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_name=>'uc-download-preview-complete'
,p_display_name=>'UC - Download File(s) - Preview Downloaded'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A20676C6F62616C732061706578202A2F0A0A766172207563203D2077696E646F772E7563207C7C207B7D3B0A75632E7574696C73203D2077696E646F772E75632E7574696C73207C7C207B7D3B0A0A2F2A2A0A202A20546869732066756E6374696F';
wwv_flow_imp.g_varchar2_table(2) := '6E20736574732075702074686520646F776E6C6F61642066696C652068616E646C6572204A6176617363726970740A202A0A202A2040706172616D207B6F626A6563747D2020206461436F6E746578742020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(3) := '202044796E616D696320416374696F6E20636F6E746578742061732070617373656420696E20627920415045580A202A2040706172616D207B6F626A6563747D202020636F6E66696720202020202020202020202020202020202020202020202020436F';
wwv_flow_imp.g_varchar2_table(4) := '6E66696775726174696F6E206F626A65637420686F6C64696E672074686520646F776E6C6F61642066696C6520636F6E6669670A2A2F0A2866756E6374696F6E20282429207B0A0A0976617220646F776E6C6F616454696D657273203D207B7D3B0A0976';
wwv_flow_imp.g_varchar2_table(5) := '617220646F776E6C6F61645370696E6E657273203D207B7D3B0A097661722066696C65496E666F203D207B7D3B0A0976617220617474656D707473203D207B7D3B0A0976617220464F524D5F505245464958203D2027666F726D2D273B0A097661722049';
wwv_flow_imp.g_varchar2_table(6) := '4652414D455F505245464958203D2027696672616D652D273B0A0976617220505245564945575F505245464958203D2027707265766965772D273B0A0976617220544F4B454E5F505245464958203D20275543273B0A0A0966756E6374696F6E20636C65';
wwv_flow_imp.g_varchar2_table(7) := '616E557028646F776E6C6F6164466E4E616D652C20707265766965774D6F646529207B0A0909766172207072657669657724203D202428272327202B20505245564945575F505245464958202B20646F776E6C6F6164466E4E616D65292C0A0909096966';
wwv_flow_imp.g_varchar2_table(8) := '72616D6524203D202428272327202B20494652414D455F505245464958202B20646F776E6C6F6164466E4E616D65292C0A090909666F726D24203D202428272327202B20464F524D5F505245464958202B20646F776E6C6F6164466E4E616D65293B0A0A';
wwv_flow_imp.g_varchar2_table(9) := '090969662028747970656F6620646F776E6C6F61645370696E6E6572735B646F776E6C6F6164466E4E616D655D203D3D3D202266756E6374696F6E2229207B0A090909646F776E6C6F61645370696E6E6572735B646F776E6C6F6164466E4E616D655D28';
wwv_flow_imp.g_varchar2_table(10) := '293B202F2F20746869732066756E6374696F6E2072656D6F76657320746865207370696E6E65720A09090964656C65746520646F776E6C6F61645370696E6E6572735B646F776E6C6F6164466E4E616D655D3B0A09097D0A090969662028666F726D2429';
wwv_flow_imp.g_varchar2_table(11) := '20666F726D242E72656D6F766528293B0A0A09092F2F20576520646F6E27742072656D6F76652074686520707265766965772F696672616D6520696E2070726576696577206D6F646520666F72206F6276696F757320726561736F6E7320692E652E2061';
wwv_flow_imp.g_varchar2_table(12) := '732074686579206172652076696577696E672069740A09096966202821707265766965774D6F646529207B0A09090969662028696672616D65242920696672616D65242E72656D6F766528293B0A09090969662028707265766965772429207072657669';
wwv_flow_imp.g_varchar2_table(13) := '6577242E72656D6F766528293B0A09097D0A097D0A0A0966756E6374696F6E20736574437572736F7228656C242C207374796C6529207B0A09092F2F656C242E6373732822637572736F72222C207374796C65293B202F2F207765206861766520646973';
wwv_flow_imp.g_varchar2_table(14) := '61626C6564207468697320666F72206E6F770A097D0A0A092F2F20436F6F6B69652068616E646C696E6720636F6D65732066726F6D3A2068747470733A2F2F737461636B6F766572666C6F772E636F6D2F7175657374696F6E732F313130363337372F64';
wwv_flow_imp.g_varchar2_table(15) := '65746563742D7768656E2D62726F777365722D72656365697665732D66696C652D646F776E6C6F61640A0966756E6374696F6E20676574436F6F6B6965286E616D6529207B0A0909766172207061727473203D20646F63756D656E742E636F6F6B69652E';
wwv_flow_imp.g_varchar2_table(16) := '73706C6974286E616D65202B20223D22293B0A09096966202870617274732E6C656E677468203D3D2032292072657475726E207B206E616D653A206E616D652C2076616C75653A2070617274735B315D2E73706C697428223B22292E7368696674282920';
wwv_flow_imp.g_varchar2_table(17) := '7D3B0A097D0A0A0966756E6374696F6E20657870697265436F6F6B696528636F6F6B69654E616D6529207B0A0909646F63756D656E742E636F6F6B6965203D0A090909656E636F6465555249436F6D706F6E656E7428636F6F6B69654E616D6529202B20';
wwv_flow_imp.g_varchar2_table(18) := '223D64656C657465643B20657870697265733D22202B206E657720446174652830292E746F555443537472696E6728293B0A097D0A0A092F2F20547261636B207768656E20776520726563656965766520636F6F6B69652066726F6D2074686520736572';
wwv_flow_imp.g_varchar2_table(19) := '76657220746F2064657465726D696E652066696C6520697320646F776E6C6F6164696E670A0966756E6374696F6E20747261636B446F776E6C6F616428636F6E6669672C20646F776E6C6F6164466E4E616D6529207B0A0909736574437572736F722863';
wwv_flow_imp.g_varchar2_table(20) := '6F6E6669672E74726967676572696E67456C656D656E74242C20227761697422293B0A0909617474656D7074735B646F776E6C6F6164466E4E616D655D203D2033303B0A0909646F776E6C6F616454696D6572735B646F776E6C6F6164466E4E616D655D';
wwv_flow_imp.g_varchar2_table(21) := '203D2077696E646F772E736574496E74657276616C2866756E6374696F6E202829207B0A09090976617220746F6B656E203D20676574436F6F6B696528646F776E6C6F6164466E4E616D65293B0A0A0909096966202828746F6B656E20262620746F6B65';
wwv_flow_imp.g_varchar2_table(22) := '6E2E6E616D65203D3D20646F776E6C6F6164466E4E616D6529207C7C2028617474656D7074735B646F776E6C6F6164466E4E616D655D203D3D20302929207B0A0909090969662028746F6B656E29207B0A0909090909636F6E6669672E66696C65496E66';
wwv_flow_imp.g_varchar2_table(23) := '6F203D204A534F4E2E706172736528746F6B656E2E76616C7565293B0A090909090966696C65496E666F5B646F776E6C6F6164466E4E616D655D203D20636F6E6669672E66696C65496E666F3B0A090909097D0A0909090973746F70547261636B696E67';
wwv_flow_imp.g_varchar2_table(24) := '446F776E6C6F616428636F6E6669672C20646F776E6C6F6164466E4E616D65293B0A0909097D0A0A090909617474656D7074735B646F776E6C6F6164466E4E616D655D2D2D3B0A09097D2C2031303030293B0A0A090972657475726E20646F776E6C6F61';
wwv_flow_imp.g_varchar2_table(25) := '64466E4E616D653B0A097D0A0A0966756E6374696F6E2073746F70547261636B696E67446F776E6C6F616428636F6E6669672C20646F776E6C6F6164466E4E616D6529207B0A0909766172206576656E744E616D65203D2028636F6E6669672E70726576';
wwv_flow_imp.g_varchar2_table(26) := '6965774D6F646529203F202775632D646F776E6C6F61642D707265766965772D636F6D706C65746527203A202775632D646F776E6C6F61642D66696C652D636F6D706C657465273B0A0909636C65616E557028646F776E6C6F6164466E4E616D652C2063';
wwv_flow_imp.g_varchar2_table(27) := '6F6E6669672E707265766965774D6F6465293B0A090977696E646F772E636C656172496E74657276616C28646F776E6C6F616454696D6572735B646F776E6C6F6164466E4E616D655D293B0A0909657870697265436F6F6B696528646F776E6C6F616446';
wwv_flow_imp.g_varchar2_table(28) := '6E4E616D65293B0A090964656C65746520646F776E6C6F616454696D6572735B646F776E6C6F6164466E4E616D655D3B0A090964656C65746520617474656D7074735B646F776E6C6F6164466E4E616D655D3B0A090969662028636F6E6669672E66696C';
wwv_flow_imp.g_varchar2_table(29) := '65496E666F29207B0A090909617065782E6576656E742E7472696767657228646F63756D656E742E626F64792C206576656E744E616D652C20636F6E666967293B0A09090964656C65746520636F6E6669672E66696C65496E666F3B0A09097D0A090973';
wwv_flow_imp.g_varchar2_table(30) := '6574437572736F7228636F6E6669672E74726967676572696E67456C656D656E74242C2027706F696E74657227293B0A097D0A0A092F2F204D61696E20706C75672D696E20656E74727920706F696E740A0975632E7574696C732E646F776E6C6F616420';
wwv_flow_imp.g_varchar2_table(31) := '3D2066756E6374696F6E20286461436F6E746578742C206F7074696F6E732C20696E6974466E29207B0A090976617220636F6E6669672C20706C7567696E4E616D65203D20275543202D20446F776E6C6F61642046696C65287329272C0A0909096D6520';
wwv_flow_imp.g_varchar2_table(32) := '3D20746869732C0A090909646F776E6C6F6164466E4E616D65203D20676574446F776E6C6F61644964286F7074696F6E732E6964292C0A0909096166456C656D656E7473203D206461436F6E746578742E6166666563746564456C656D656E74732C0A09';
wwv_flow_imp.g_varchar2_table(33) := '090974726967676572696E67456C656D656E74203D206461436F6E746578742E74726967676572696E67456C656D656E743B0A0A0909636F6E666967203D20242E657874656E64287B7D2C206F7074696F6E73293B0A0A0909617065782E64656275672E';
wwv_flow_imp.g_varchar2_table(34) := '696E666F28706C7567696E4E616D652C20636F6E666967293B0A0A090966756E6374696F6E20676574446F776E6C6F6164496428696429207B0A09090972657475726E20544F4B454E5F505245464958202B206964202B206E6577204461746528292E67';
wwv_flow_imp.g_varchar2_table(35) := '657454696D6528293B0A09097D0A0A09092F2F2067656E657261746520612064796E616D696320666F726D2077697468206F75722066696C6520646F776E6C6F616420636F6E7465787420696E666F0A090966756E6374696F6E20676574466F726D5470';
wwv_flow_imp.g_varchar2_table(36) := '6C286461746129207B0A09090972657475726E20273C666F726D20616374696F6E3D227777765F666C6F772E73686F7722206D6574686F643D22706F73742220656E63747970653D226D756C7469706172742F666F726D2D64617461222069643D222720';
wwv_flow_imp.g_varchar2_table(37) := '2B20646174612E666F726D4964202B202722207461726765743D2227202B20646174612E696672616D654964202B202722206F6E6C6F61643D22223E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F666C';
wwv_flow_imp.g_varchar2_table(38) := '6F775F6964222076616C75653D2227202B20646174612E6170704964202B2027222069643D2270466C6F7749643222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F666C6F775F737465705F6964';
wwv_flow_imp.g_varchar2_table(39) := '222076616C75653D2227202B20646174612E706167654964202B2027222069643D2270466C6F775374657049643222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F696E7374616E636522207661';
wwv_flow_imp.g_varchar2_table(40) := '6C75653D2227202B20646174612E73657373696F6E4964202B2027222069643D2270496E7374616E63653222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F72657175657374222076616C75653D';
wwv_flow_imp.g_varchar2_table(41) := '22504C5547494E3D27202B20646174612E72657175657374202B2027222069643D2270526571756573743222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F6465627567222076616C75653D2227';
wwv_flow_imp.g_varchar2_table(42) := '202B2028646174612E6465627567207C7C20272729202B2027222069643D227044656275673222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F7769646765745F6E616D65222076616C75653D22';
wwv_flow_imp.g_varchar2_table(43) := '27202B2028646174612E7769646765744E616D65207C7C20272729202B2027222069643D22705769646765744E616D653222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22705F7769646765745F6163';
wwv_flow_imp.g_varchar2_table(44) := '74696F6E222076616C75653D2227202B2028646174612E616374696F6E207C7C20272729202B2027222069643D2270576964676574416374696F6E3222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22';
wwv_flow_imp.g_varchar2_table(45) := '705F7769646765745F616374696F6E5F6D6F64222076616C75653D2227202B2028646174612E616374696F6E4D6F64207C7C20272729202B2027222069643D2270576964676574416374696F6E4D6F643222202F3E27202B0A09090909273C696E707574';
wwv_flow_imp.g_varchar2_table(46) := '20747970653D2268696464656E22206E616D653D22783031222076616C75653D2227202B2028646174612E783031207C7C20272729202B2027222069643D2278303122202F3E27202B0A09090909273C696E70757420747970653D2268696464656E2220';
wwv_flow_imp.g_varchar2_table(47) := '6E616D653D22783032222076616C75653D2227202B2028646174612E70726576696577446F776E6C6F6164207C7C20274E4F2729202B2027222069643D2278303222202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E';
wwv_flow_imp.g_varchar2_table(48) := '616D653D22783033222076616C75653D2227202B2028646174612E783033207C7C20272729202B2027222069643D2278303322202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22783034222076616C7565';
wwv_flow_imp.g_varchar2_table(49) := '3D2227202B2028646174612E783034207C7C20272729202B2027222069643D2278303422202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22783035222076616C75653D2227202B2028646174612E783035';
wwv_flow_imp.g_varchar2_table(50) := '207C7C20272729202B2027222069643D2278303522202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22783036222076616C75653D2227202B2028646174612E783036207C7C20272729202B202722206964';
wwv_flow_imp.g_varchar2_table(51) := '3D2278303622202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22783037222076616C75653D2227202B2028646174612E783037207C7C20272729202B2027222069643D2278303722202F3E27202B0A0909';
wwv_flow_imp.g_varchar2_table(52) := '0909273C696E70757420747970653D2268696464656E22206E616D653D22783038222076616C75653D2227202B2028646174612E783038207C7C20272729202B2027222069643D2278303822202F3E27202B0A09090909273C696E70757420747970653D';
wwv_flow_imp.g_varchar2_table(53) := '2268696464656E22206E616D653D22783039222076616C75653D2227202B2028646174612E783039207C7C20272729202B2027222069643D2278303922202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22';
wwv_flow_imp.g_varchar2_table(54) := '783130222076616C75653D2227202B2028646174612E746F6B656E207C7C20272729202B2027222069643D2278313022202F3E27202B0A09090909273C696E70757420747970653D2268696464656E22206E616D653D22663130222076616C75653D2227';
wwv_flow_imp.g_varchar2_table(55) := '202B2028646174612E663130207C7C20272729202B2027222069643D2266313022202F3E27202B0A09090909273C2F666F726D3E273B0A09097D0A0A09092F2F2067656E657261746520612064796E616D696320696672616D65206261736564206F6E20';
wwv_flow_imp.g_varchar2_table(56) := '6F757220646F776E6C6F616420636F6E7465787420696E666F20616E642070726F76696465206120756E69717565206F6E6C6F61642068616E646C65722066756E6374696F6E0A090966756E6374696F6E20676574496672616D6554706C28636F6E6669';
wwv_flow_imp.g_varchar2_table(57) := '672C20646F776E6C6F6164466E4E616D6529207B0A0909097661722074706C3B0A09090969662028636F6E6669672E707265766965774D6F646529207B0A0909090974706C203D20273C696672616D652069643D2227202B20636F6E6669672E69667261';
wwv_flow_imp.g_varchar2_table(58) := '6D654964202B202722206E616D653D2227202B20636F6E6669672E696672616D654964202B2027222077696474683D223130302522206865696768743D223130302522207374796C653D226D696E2D77696474683A203935253B6865696768743A313030';
wwv_flow_imp.g_varchar2_table(59) := '253B22207363726F6C6C696E673D226175746F2220636C6173733D2275632D707265766965772D6D6F646520752D68696464656E22206F6E6C6F61643D2275632E7574696C732E646F776E6C6F61642E27202B20646F776E6C6F6164466E4E616D65202B';
wwv_flow_imp.g_varchar2_table(60) := '2027287468697329223E3C2F696672616D653E273B0A0909097D20656C7365207B0A0909090974706C203D20273C696672616D652069643D2227202B20636F6E6669672E696672616D654964202B202722206E616D653D2227202B20636F6E6669672E69';
wwv_flow_imp.g_varchar2_table(61) := '6672616D654964202B20272220636C6173733D22752D68696464656E22206F6E6C6F61643D2275632E7574696C732E646F776E6C6F61642E27202B20646F776E6C6F6164466E4E616D65202B2027287468697329223E3C2F696672616D653E273B0A0909';
wwv_flow_imp.g_varchar2_table(62) := '097D0A09090972657475726E2074706C3B0A09097D0A0A09092F2F20726567756C61722066696C6520646F776E6C6F61640A090966756E6374696F6E206174746163686D656E74446F776E6C6F616428666F726D4461746129207B0A0909097661722066';
wwv_flow_imp.g_varchar2_table(63) := '6F726D54706C2C20696672616D6554706C2C20666F726D2C20696672616D65242C0A0909090963616E63656C526573756D65203D2066616C73653B0A0A090909666F726D446174612E74726967676572696E67456C656D656E7424203D20242874726967';
wwv_flow_imp.g_varchar2_table(64) := '676572696E67456C656D656E74293B0A090909666F726D446174612E746F6B656E203D20747261636B446F776E6C6F616428666F726D446174612C20646F776E6C6F6164466E4E616D65293B0A090909666F726D54706C203D20676574466F726D54706C';
wwv_flow_imp.g_varchar2_table(65) := '28666F726D44617461293B0A090909696672616D6554706C203D20676574496672616D6554706C28666F726D446174612C20646F776E6C6F6164466E4E616D65293B0A0A090909696620282428272327202B20666F726D446174612E666F726D4964292E';
wwv_flow_imp.g_varchar2_table(66) := '6C656E67746829207B0A090909092428272327202B20666F726D446174612E666F726D4964292E72656D6F766528290A0909097D0A090909666F726D203D202428646F63756D656E742E626F6479292E617070656E6428666F726D54706C292026262024';
wwv_flow_imp.g_varchar2_table(67) := '28272327202B20666F726D446174612E666F726D4964295B305D3B0A090909696672616D6524203D202428272327202B20666F726D446174612E696672616D654964293B0A09090969662028696672616D65242E6C656E677468203D3D3D203029207B0A';
wwv_flow_imp.g_varchar2_table(68) := '090909092428646F63756D656E742E626F6479292E617070656E6428696672616D6554706C293B0A0909097D20656C7365207B0A09090909696672616D65242E6174747228276F6E6C6F6164272C202775632E7574696C732E646F776E6C6F61642E2720';
wwv_flow_imp.g_varchar2_table(69) := '2B20646F776E6C6F6164466E4E616D65202B202728746869732927293B0A0909097D0A0909092F2F207375626D6974206F757220666F726D20746F20646F776E6C6F6164207468652066696C650A09090969662028666F726D20262620666F726D2E7375';
wwv_flow_imp.g_varchar2_table(70) := '626D697429207B0A09090909666F726D2E7375626D697428293B0A0909097D20656C7365207B0A0909090963616E63656C526573756D65203D20747275653B0A0909097D0A0909092F2F207468697320697320726571756972656420666F72207768656E';
wwv_flow_imp.g_varchar2_table(71) := '20776520617265206F70656E696E67206D6F64616C206469616C6F67732C20666F722061637475616C2072656469726563747320746865207061676520756E6C6F616473206D616B696E67207468697320726564756E64616E740A09090969662028636F';
wwv_flow_imp.g_varchar2_table(72) := '6E6669672E70726576696577446F776E6C6F616420213D20275945532729207B0A09090909617065782E64612E726573756D65286461436F6E746578742E726573756D6543616C6C6261636B2C2063616E63656C526573756D65293B0A0909097D0A0909';
wwv_flow_imp.g_varchar2_table(73) := '7D0A0A09092F2F2066696C65207072657669657720696E2061206469616C6F672077697468206F7074696F6E616C20646F776E6C6F616420627574746F6E0A090966756E6374696F6E2070726576696577496E4469616C6F6728636F6E66696729207B0A';
wwv_flow_imp.g_varchar2_table(74) := '090909766172207072657669657724203D202428272327202B20636F6E6669672E707265766965774964292C0A09090909696672616D6524203D202428272327202B20636F6E6669672E696672616D654964292C0A090909097072657669657742757474';
wwv_flow_imp.g_varchar2_table(75) := '6F6E73203D205B5D2C0A09090909707265766965774F7074696F6E73203D20636F6E6669672E707265766965774F7074696F6E733B0A0A0909092F2F20416C6C6F772074686520646576656C6F70657220746F20706572666F726D20616E79206C617374';
wwv_flow_imp.g_varchar2_table(76) := '202863656E7472616C697A656429206368616E676573207573696E67204A61766173637269707420496E697469616C697A6174696F6E20436F64652073657474696E670A0909092F2F20696E206164646974696F6E20746F206F757220706C7567696E20';
wwv_flow_imp.g_varchar2_table(77) := '636F6E6669672077652077696C6C207061737320696E206120326E64206F626A65637420666F7220636F6E6669677572696E6720746865205543206E6F74696669636174696F6E730A09090969662028696E6974466E20696E7374616E63656F66204675';
wwv_flow_imp.g_varchar2_table(78) := '6E6374696F6E29207B0A09090909696E6974466E2E63616C6C286461436F6E746578742C20636F6E666967293B0A0909097D0A0A09090966756E6374696F6E2067657446696C65496E666F2829207B0A090909097661722066696C6544657461696C7320';
wwv_flow_imp.g_varchar2_table(79) := '3D2066696C65496E666F5B646F776E6C6F6164466E4E616D655D3B0A0909090972657475726E202866696C6544657461696C7329203F2028707265766965774F7074696F6E732E66696C65496E666F54706C207C7C20273C7374726F6E673E4E616D653A';
wwv_flow_imp.g_varchar2_table(80) := '3C2F7374726F6E673E20234E414D45233C6272202F3E27202B0A0909090909273C7374726F6E673E53697A653A3C2F7374726F6E673E202353495A45233C6272202F3E27202B0A0909090909273C7374726F6E673E4D696D6520547970653A3C2F737472';
wwv_flow_imp.g_varchar2_table(81) := '6F6E673E20234D494D455F545950452327290A09090909092E7265706C616365282F5C234E414D455C232F2C2066696C6544657461696C732E6E616D65290A09090909092E7265706C616365282F5C2353495A455C232F2C2066696C6544657461696C73';
wwv_flow_imp.g_varchar2_table(82) := '2E73697A65290A09090909092E7265706C616365282F5C234D494D455F545950455C232F2C2066696C6544657461696C732E6D696D6554797065290A09090909093A2028707265766965774F7074696F6E732E6C6F6164696E674D7367207C7C20275468';
wwv_flow_imp.g_varchar2_table(83) := '652066696C6520696E666F726D6174696F6E206973207374696C6C206C6F6164696E672E2E2E2E27293B0A0909097D0A0A0909096966202870726576696577242E6C656E677468203D3D3D203029207B0A090909092428646F63756D656E742E626F6479';
wwv_flow_imp.g_varchar2_table(84) := '292E617070656E6428273C6469762069643D2227202B20636F6E6669672E707265766965774964202B2027223E27202B20676574496672616D6554706C28636F6E6669672C20646F776E6C6F6164466E4E616D6529202B20273C2F6469763E27293B0A09';
wwv_flow_imp.g_varchar2_table(85) := '090909696672616D6524203D202428272327202B20636F6E6669672E696672616D654964293B0A090909097072657669657724203D202428272327202B20636F6E6669672E707265766965774964293B0A0909097D0A090909696672616D65242E72656D';
wwv_flow_imp.g_varchar2_table(86) := '6F7665436C6173732827752D68696464656E27293B0A0A0909092F2F2046697265666F7820706F73744D6573736167652068616E646C657220666F722063726F7373206F726967696E20736563757269747920657863657074696F6E732073686F77696E';
wwv_flow_imp.g_varchar2_table(87) := '67205044462066696C65730A090909242877696E646F77292E6F6E28226D657373616765222C2066756E6374696F6E20286529207B0A090909097661722064617461203D20652E6F726967696E616C4576656E742E646174613B0A090909096966202864';
wwv_flow_imp.g_varchar2_table(88) := '61746120262620646174612E696672616D654964203D3D3D20636F6E6669672E696672616D65496429207B0A0909090909242874686973292E6F66662865293B202F2F20756E62696E6420746865206576656E742068616E646C6572206173206974206D';
wwv_flow_imp.g_varchar2_table(89) := '6174636865730A090909090964656C6574652075632E7574696C732E646F776E6C6F61645B646F776E6C6F6164466E4E616D655D3B202F2F2064656C657465206F75722066756E6374696F6E2068616E646C65720A0909090909617065782E64612E7265';
wwv_flow_imp.g_varchar2_table(90) := '73756D65286461436F6E746578742E726573756D6543616C6C6261636B2C2066616C7365293B202F2F20726573756D6520666F6C6C6F77696E6720616374696F6E730A090909097D0A0909097D293B0A0A09090970726576696577242E6F6E2822646961';
wwv_flow_imp.g_varchar2_table(91) := '6C6F67726573697A65222C2066756E6374696F6E202829207B0A090909097661722068203D2070726576696577242E68656967687428292C0A090909090977203D2070726576696577242E776964746828293B0A090909092F2F20726573697A65206966';
wwv_flow_imp.g_varchar2_table(92) := '72616D6520736F20746861742061706578206469616C6F67207061676520676574732077696E646F7720726573697A65206576656E740A090909092F2F2075736520776964746820616E6420686569676874206F66206469616C6F6720636F6E74656E74';
wwv_flow_imp.g_varchar2_table(93) := '20726174686572207468616E2075692E73697A6520736F2074686174206469616C6F67207469746C652069732074616B656E20696E20746F20636F6E73696465726174696F6E0A0909090970726576696577242E6368696C6472656E2822696672616D65';
wwv_flow_imp.g_varchar2_table(94) := '22292E77696474682877292E6865696768742868293B0A0909097D293B0A0A09090969662028707265766965774F7074696F6E732E73686F7746696C65496E666F29207B0A0909090970726576696577427574746F6E732E70757368287B0A0909090909';
wwv_flow_imp.g_varchar2_table(95) := '746578743A202220222C0A090909090969636F6E3A202266612066612D696E666F2075632D6469616C6F672D66696C652D696E666F222C0A0909090909636C69636B3A2066756E6374696F6E20286529207B0A0909090909092428652E74617267657429';
wwv_flow_imp.g_varchar2_table(96) := '2E746F6F6C746970287B0A090909090909096974656D733A20652E7461726765742C0A09090909090909636F6E74656E743A2067657446696C65496E666F28292C0A09090909090909706F736974696F6E3A207B0A09090909090909096D793A20226365';
wwv_flow_imp.g_varchar2_table(97) := '6E74657220626F74746F6D222C202F2F207468652022616E63686F7220706F696E742220696E2074686520746F6F6C74697020656C656D656E740A090909090909090961743A202263656E74657220746F702D3130222C202F2F2074686520706F736974';
wwv_flow_imp.g_varchar2_table(98) := '696F6E206F66207468617420616E63686F7220706F696E742072656C617469766520746F2073656C656374656420656C656D656E740A090909090909097D2C0A09090909090909636C61737365733A207B0A09090909090909092275692D746F6F6C7469';
wwv_flow_imp.g_varchar2_table(99) := '70223A202275632D6469616C6F672D66696C652D696E666F2D746F6F6C74697020746F702075692D636F726E65722D616C6C2075692D7769646765742D736861646F77220A090909090909097D0A0909090909097D293B0A0909090909092428652E7461';
wwv_flow_imp.g_varchar2_table(100) := '72676574292E746F6F6C74697028226F70656E22293B0A09090909097D0A090909097D293B0A0909097D0A09090969662028707265766965774F7074696F6E732E73686F77446F776E6C6F616442746E29207B0A0909090970726576696577427574746F';
wwv_flow_imp.g_varchar2_table(101) := '6E732E70757368287B0A0909090909746578743A2022446F776E6C6F6164222C0A090909090969636F6E3A202266612066612D646F776E6C6F6164222C0A0909090909636C69636B3A2066756E6374696F6E202829207B0A09090909090975632E757469';
wwv_flow_imp.g_varchar2_table(102) := '6C732E646F776E6C6F6164286461436F6E746578742C0A09090909090909242E657874656E64287B7D2C0A0909090909090909636F6E6669672C207B0A0909090909090909707265766965774D6F64653A2066616C73652C0A0909090909090909707265';
wwv_flow_imp.g_varchar2_table(103) := '76696577446F776E6C6F61643A202759455327202F2F20746F20696E6469636174652077652061726520646F776E6C6F6164696E672066726F6D2077697468696E2070726576696577206D6F64650A090909090909097D290A090909090909293B0A0909';
wwv_flow_imp.g_varchar2_table(104) := '0909097D2C0A0909090909636C61737365733A207B0A0909090909092275692D746F6F6C746970223A202275632D6469616C6F672D66696C652D646F776E6C6F61642D62746E20752D686F742075692D636F726E65722D616C6C2075692D776964676574';
wwv_flow_imp.g_varchar2_table(105) := '2D736861646F77220A09090909097D0A090909097D293B0A0909097D0A0909092F2F20696E697469616C697A65207468652070726576696577206469616C6F670A09090970726576696577242E6469616C6F6728242E657874656E64287B0A0909090974';
wwv_flow_imp.g_varchar2_table(106) := '69746C653A202746696C652050726576696577272C0A09090909636C61737365733A207B0A09090909092275692D6469616C6F67223A202275632D66696C652D707265766965772D6469616C6F67220A090909097D2C0A090909096865696768743A2027';
wwv_flow_imp.g_varchar2_table(107) := '363030272C0A0909090977696474683A2027373230272C0A090909092F2F6D617857696474683A2027393630272C0A090909096D6F64616C3A20747275652C0A090909096175746F4F70656E3A20747275652C0A090909096469616C6F673A206E756C6C';
wwv_flow_imp.g_varchar2_table(108) := '2C0A09090909627574746F6E733A2070726576696577427574746F6E730A0909097D2C20707265766965774F7074696F6E73207C7C207B7D29293B0A0909092F2F2068696465207363726F6C6C6261727320696E2063617365206F6620616E7920686569';
wwv_flow_imp.g_varchar2_table(109) := '676874206D69736D6174636820776974682074686520696672616D652026206469616C6F670A09090970726576696577242E63737328276F766572666C6F77272C202768696464656E27293B0A0909092F2F206368616E6765207468652069636F6E7320';
wwv_flow_imp.g_varchar2_table(110) := '746F20666F6E742D617065780A09090970726576696577242E706172656E7428292E66696E6428272E75692D627574746F6E202E666127292E72656D6F7665436C617373282775692D627574746F6E2D69636F6E2075692D69636F6E27293B0A0909092F';
wwv_flow_imp.g_varchar2_table(111) := '2F2073686F77207468652066696C6520707265766965770A090909696672616D65242E617474722827737263272C20636F6E6669672E70726576696577537263293B0A09097D0A0A09092F2F20696672616D65206F6E6C6F6164206576656E742068616E';
wwv_flow_imp.g_varchar2_table(112) := '646C65722C206974206669726573206F6E6C7920696620746865726520697320616E206572726F72206F722069662077652061726520696E2070726576696577206D6F64650A09092F2F207765206861766520746F20747261636B206120636F6F6B6965';
wwv_flow_imp.g_varchar2_table(113) := '20666F7220726567756C61722066696C6520646F776E6C6F6164206576656E747320617320746865206F6E6C6F6164206576656E7420646F6573206E6F7420666972650A090975632E7574696C732E646F776E6C6F61645B646F776E6C6F6164466E4E61';
wwv_flow_imp.g_varchar2_table(114) := '6D655D203D2066756E6374696F6E2028696672616D6529207B0A09090976617220726573756C742C0A09090909726573706F6E73652C0A0909090963616E63656C526573756D65203D2066616C73652C0A090909096661696C7572654A534F4E203D207B';
wwv_flow_imp.g_varchar2_table(115) := '7D2C0A0909090977696E203D2028696672616D652E636F6E74656E7457696E646F77207C7C20696672616D652E636F6E74656E74446F63756D656E74293B0A090909747279207B0A090909092F2F2057652077616E7420746F2061646420736F6D652073';
wwv_flow_imp.g_varchar2_table(116) := '74796C696E6720746F207468652048544D4C20666F7220696D6167657320652E672E2063656E746572207468656D20686F72697A6F6E74616C6C79202620766572746963616C6C790A0909090969662028636F6E6669672E707265766965774D6F646529';
wwv_flow_imp.g_varchar2_table(117) := '207B0A09090909092866756E6374696F6E202877696E2C20646F6329207B0A0909090909097661722063737331203D2027696D677B2077696474683A2027202B204D6174682E6D617828646F632E646F63756D656E74456C656D656E742E636C69656E74';
wwv_flow_imp.g_varchar2_table(118) := '5769647468207C7C20302C2077696E2E696E6E65725769647468207C7C203029202B202770783B207D272C0A09090909090909637373203D2027696D677B6D617267696E2D6C6566743A206175746F3B206D617267696E2D72696768743A206175746F3B';
wwv_flow_imp.g_varchar2_table(119) := '2077696474683A203530253B20766572746963616C2D616C69676E3A206D6964646C653B6865696768743A206175746F3B7D20272C0A0909090909090968656164203D20646F632E68656164207C7C20646F632E676574456C656D656E74734279546167';
wwv_flow_imp.g_varchar2_table(120) := '4E616D6528276865616427295B305D2C0A09090909090909626F6479203D20646F632E626F6479207C7C20646F632E676574456C656D656E747342795461674E616D652827626F647927295B305D2C0A090909090909096973496D616765203D20646F63';
wwv_flow_imp.g_varchar2_table(121) := '2E676574456C656D656E747342795461674E616D652827696D6727292E6C656E677468203E20302C0A090909090909097374796C65203D20646F632E637265617465456C656D656E7428277374796C6527293B0A0A090909090909696620286865616429';
wwv_flow_imp.g_varchar2_table(122) := '207B0A09090909090909686561642E617070656E64287374796C65293B0A0A090909090909097374796C652E74797065203D2027746578742F637373273B0A09090909090909696620287374796C652E7374796C65536865657429207B0A090909090909';
wwv_flow_imp.g_varchar2_table(123) := '09092F2F205468697320697320726571756972656420666F722049453820616E642062656C6F772E0A09090909090909097374796C652E7374796C6553686565742E63737354657874203D206373733B0A090909090909097D20656C7365207B0A090909';
wwv_flow_imp.g_varchar2_table(124) := '09090909097374796C652E617070656E644368696C6428646F632E637265617465546578744E6F64652863737329293B0A090909090909097D0A0A0909090909097D0A09090909097D292877696E2C2077696E2E646F63756D656E74293B0A090909097D';
wwv_flow_imp.g_varchar2_table(125) := '0A090909092F2F20636C6F6E652074686520636F6E6669670A09090909726573756C74203D20242E657874656E64287B7D2C20636F6E666967293B0A090909096966202877696E2E646F63756D656E742E6C6F636174696F6E2E68726566203D3D3D2022';
wwv_flow_imp.g_varchar2_table(126) := '61626F75743A626C616E6B2229207B0A090909090972657475726E2066616C73653B0A090909097D0A090909092F2F20636865636B206F757220726573706F6E73652C2069662069742773206F7572206F776E20657863657074696F6E2069742077696C';
wwv_flow_imp.g_varchar2_table(127) := '6C2062652061204A534F4E206F626A6563740A09090909747279207B0A0909090909726573706F6E7365203D2077696E2E646F63756D656E742E676574456C656D656E747342795461674E616D65282270726522295B305D2E696E6E657248544D4C3B0A';
wwv_flow_imp.g_varchar2_table(128) := '09090909096661696C7572654A534F4E203D204A534F4E2E706172736528726573706F6E7365293B0A090909097D20636174636820286529207B0A0909090909726573756C742E726573706F6E7365203D2077696E2E646F63756D656E743B0A09090909';
wwv_flow_imp.g_varchar2_table(129) := '7D0A0A09090909726573756C742E6572726F72203D206661696C7572654A534F4E2E6D6573736167653B0A0A0909090969662028726573756C742E6572726F722026262021726573756C742E73757070726573734572726F724D6573736167657329207B';
wwv_flow_imp.g_varchar2_table(130) := '0A0909090909617065782E6D6573736167652E73686F774572726F7273287B0A090909090909747970653A20276572726F72272C0A0909090909096C6F636174696F6E3A205B2770616765275D2C0A090909090909706167654974656D3A20756E646566';
wwv_flow_imp.g_varchar2_table(131) := '696E65642C0A0909090909096D6573736167653A20726573756C742E6572726F722C0A0909090909092F2F616E79206573636170696E6720697320617373756D656420746F2068617665206265656E20646F6E65206279206E6F770A090909090909756E';
wwv_flow_imp.g_varchar2_table(132) := '736166653A2066616C73650A09090909097D293B0A090909090963616E63656C526573756D65203D20747275653B0A090909097D0A090909092F2F2072656D6F766520616E79207370696E6E657220616E642072656D6F766520747261636B696E672069';
wwv_flow_imp.g_varchar2_table(133) := '6E666F0A09090909636C65616E557028646F776E6C6F6164466E4E616D652C20636F6E6669672E707265766965774D6F6465293B0A090909092F2F207472696767657220746865206576656E7420736F20646576656C6F706572732063616E2072657370';
wwv_flow_imp.g_varchar2_table(134) := '6F6E6420746F2069740A09090909617065782E6576656E742E7472696767657228646F63756D656E742E626F64792C202775632D646F776E6C6F61642D66696C652D6572726F72272C20726573756C74293B0A0909090969662028636F6E6669672E7072';
wwv_flow_imp.g_varchar2_table(135) := '6576696577446F776E6C6F616420213D20275945532729207B0A0909090909617065782E64612E726573756D65286461436F6E746578742E726573756D6543616C6C6261636B2C2063616E63656C526573756D65293B0A090909097D0A0909090964656C';
wwv_flow_imp.g_varchar2_table(136) := '6574652075632E7574696C732E646F776E6C6F61645B646F776E6C6F6164466E4E616D655D3B0A0909097D20636174636820286529207B0A090909092F2F20636F6465203138203D2063726F7373206F726967696E2069737375652028666F7220666972';
wwv_flow_imp.g_varchar2_table(137) := '65666F78290A0909090969662028652E636F6465203D3D20313829207B0A090909090977696E2E706172656E742E706F73744D657373616765287B20696672616D6549643A20696672616D652E6964207D293B0A090909097D0A0909097D0A09097D3B0A';
wwv_flow_imp.g_varchar2_table(138) := '09092F2A2A0A0909202A204D61696E2050726F63657373696E672053656374696F6E0A0909202A2F0A0A09092F2F20416C6C6F772074686520646576656C6F70657220746F20706572666F726D20616E79206C617374202863656E7472616C697A656429';
wwv_flow_imp.g_varchar2_table(139) := '206368616E676573207573696E67204A61766173637269707420496E697469616C697A6174696F6E20436F64652073657474696E670A09092F2F20696E206164646974696F6E20746F206F757220706C7567696E20636F6E6669672077652077696C6C20';
wwv_flow_imp.g_varchar2_table(140) := '7061737320696E206120326E64206F626A65637420666F7220636F6E6669677572696E6720746865205543206E6F74696669636174696F6E730A090969662028696E6974466E20696E7374616E63656F662046756E6374696F6E29207B0A090909696E69';
wwv_flow_imp.g_varchar2_table(141) := '74466E2E63616C6C286461436F6E746578742C20636F6E666967293B0A09097D0A0A0909766172206C6F6164696E67496E64696361746F72466E2C0A0909097265717565737444617461203D207B2022783031223A20646F776E6C6F6164466E4E616D65';
wwv_flow_imp.g_varchar2_table(142) := '2C2022783032223A20636F6E6669672E70726576696577446F776E6C6F6164207D2C0A0909097370696E6E657253657474696E6773203D20636F6E6669672E7370696E6E657253657474696E67733B0A0A09092F2F20496E2070726576696577206D6F64';
wwv_flow_imp.g_varchar2_table(143) := '65207765206E65656420746F2073656E642074686520746F6B656E2061732074686520414A41582063616C6C2072657475726E732074686520696672616D652055524C20666F7220746865207072657669657720616E64206974206E6565647320746865';
wwv_flow_imp.g_varchar2_table(144) := '20746F6B656E0A090969662028636F6E6669672E707265766965774D6F646529207B0A090909636F6E6669672E746F6B656E203D20747261636B446F776E6C6F616428636F6E6669672C20646F776E6C6F6164466E4E616D65293B0A0909097265717565';
wwv_flow_imp.g_varchar2_table(145) := '7374446174612E783130203D20636F6E6669672E746F6B656E3B0A09097D0A0A09092F2F204164642070616765206974656D7320746F207375626D697420746F20726571756573740A090969662028636F6E6669672E6974656D73546F5375626D697429';
wwv_flow_imp.g_varchar2_table(146) := '207B0A09090972657175657374446174612E706167654974656D73203D20636F6E6669672E6974656D73546F5375626D69740A09097D0A0A09092F2F636F6E66696775726573207468652073686F77696E6720616E6420686964696E67206F6620612070';
wwv_flow_imp.g_varchar2_table(147) := '6F737369626C65207370696E6E65720A0909696620287370696E6E657253657474696E67732E73686F775370696E6E657229207B0A0A0909092F2F20776F726B206F757420776865726520746F2073686F7720746865207370696E6E65720A0909097370';
wwv_flow_imp.g_varchar2_table(148) := '696E6E657253657474696E67732E7370696E6E6572456C656D656E74203D20287370696E6E657253657474696E67732E73686F775370696E6E65724F6E526567696F6E29203F206166456C656D656E7473203A2027626F6479273B0A0909096C6F616469';
wwv_flow_imp.g_varchar2_table(149) := '6E67496E64696361746F72466E203D202866756E6374696F6E2028656C656D656E742C2073686F774F7665726C617929207B0A090909097661722066697865644F6E426F6479203D20656C656D656E74203D3D2027626F6479273B0A0909090972657475';
wwv_flow_imp.g_varchar2_table(150) := '726E2066756E6374696F6E2028704C6F6164696E67496E64696361746F7229207B0A0909090909766172206F7665726C6179243B0A0909090909766172207370696E6E657224203D20617065782E7574696C2E73686F775370696E6E657228656C656D65';
wwv_flow_imp.g_varchar2_table(151) := '6E742C207B2066697865643A2066697865644F6E426F6479207D293B0A09090909096966202873686F774F7665726C617929207B0A0909090909096F7665726C617924203D202428273C64697620636C6173733D2275632D726567696F6E2D6F7665726C';
wwv_flow_imp.g_varchar2_table(152) := '617927202B202866697865644F6E426F6479203F20272D666978656427203A20272729202B2027223E3C2F6469763E27292E70726570656E64546F28656C656D656E74293B0A09090909097D0A09090909092F2F20646566696E65206F7572207370696E';
wwv_flow_imp.g_varchar2_table(153) := '6E65722072656D6F76616C2066756E6374696F6E0A090909090966756E6374696F6E2072656D6F76655370696E6E65722829207B0A090909090909696620286F7665726C61792429207B0A090909090909096F7665726C6179242E72656D6F766528293B';
wwv_flow_imp.g_varchar2_table(154) := '0A0909090909097D0A0909090909097370696E6E6572242E72656D6F766528293B0A09090909097D0A09090909092F2F2072657475726E20612066756E6374696F6E2077686963682068616E646C6573207468652072656D6F76696E67206F6620746865';
wwv_flow_imp.g_varchar2_table(155) := '207370696E6E65722061732070657220617065782067756964656C696E65730A090909090972657475726E2072656D6F76655370696E6E65723B0A090909097D3B0A0909097D29287370696E6E657253657474696E67732E7370696E6E6572456C656D65';
wwv_flow_imp.g_varchar2_table(156) := '6E742C207370696E6E657253657474696E67732E73686F775370696E6E65724F7665726C6179293B0A09097D0A0A09092F2F20747261636B20746865207370696E6E657220696E206120676C6F62616C207661726961626C6520746F2072656D6F766520';
wwv_flow_imp.g_varchar2_table(157) := '6C617465720A090969662028747970656F66206C6F6164696E67496E64696361746F72466E203D3D3D202266756E6374696F6E2229207B0A090909646F776E6C6F61645370696E6E6572735B646F776E6C6F6164466E4E616D655D203D206C6F6164696E';
wwv_flow_imp.g_varchar2_table(158) := '67496E64696361746F72466E2E63616C6C286D65293B0A09097D0A0A09092F2F205375626D697420616E792070616765206974656D73206265666F726520706572666F726D696E67206F757220666F726D207375626D6974202620646F776E6C6F61640A';
wwv_flow_imp.g_varchar2_table(159) := '09092F2F20776520646F6E2774207375626D6974207468652070616765206974656D73206F757273656C76657320696E207468652064796E616D696320666F726D0A09092F2F2061732074686572652773207175697465206120626974206F66206C6F67';
wwv_flow_imp.g_varchar2_table(160) := '696320746F20646F2069740A09097661722070726F6D697365203D20617065782E7365727665722E706C7567696E28636F6E6669672E616A61784964656E7469666965722C2072657175657374446174612C207B0A09090964617461547970653A20276A';
wwv_flow_imp.g_varchar2_table(161) := '736F6E272C0A0909097461726765743A206461436F6E746578742E62726F777365724576656E742E7461726765740A09097D293B0A0A09092F2F20446F776E6C6F6164206166746572207375626D697474696E6720616E79206974656D732C2077652072';
wwv_flow_imp.g_varchar2_table(162) := '657475726E2074686520636F6E66696720726571756972656420746F20646F776E6C6F616420696E2074686520617065782E7365727665722E706C7567696E2063616C6C0A090970726F6D6973652E646F6E652866756E6374696F6E2028726573706F6E';
wwv_flow_imp.g_varchar2_table(163) := '736529207B0A09090969662028636F6E6669672E707265766965774D6F646529207B0A0909090970726576696577496E4469616C6F6728726573706F6E73652E64617461293B0A0909097D20656C73652069662028636F6E6669672E6E657757696E646F';
wwv_flow_imp.g_varchar2_table(164) := '7729207B0A09090909617065782E6E617669676174696F6E2E6F70656E496E4E657757696E646F7728726573706F6E73652E646174612E70726576696577537263293B0A09090909617065782E64612E726573756D65286461436F6E746578742E726573';
wwv_flow_imp.g_varchar2_table(165) := '756D6543616C6C6261636B2C2066616C7365293B0A0909097D20656C7365207B0A090909096174746163686D656E74446F776E6C6F616428726573706F6E73652E64617461293B0A0909097D0A09097D292E63617463682866756E6374696F6E20286572';
wwv_flow_imp.g_varchar2_table(166) := '7229207B0A090909636F6E6669672E6572726F72203D206572723B0A090909636C65616E557028646F776E6C6F6164466E4E616D652C20636F6E6669672E707265766965774D6F6465293B0A090909617065782E6576656E742E7472696767657228646F';
wwv_flow_imp.g_varchar2_table(167) := '63756D656E742E626F64792C202775632D646F776E6C6F61642D66696C652D6572726F72272C20636F6E666967293B0A09097D293B0A097D3B0A7D2928617065782E6A5175657279293B0A0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(557872755020859917)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_file_name=>'js/script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722075633D77696E646F772E75637C7C7B7D3B75632E7574696C733D77696E646F772E75632E7574696C737C7C7B7D2C66756E6374696F6E2865297B76617220693D7B7D2C6E3D7B7D2C743D7B7D2C6F3D7B7D2C613D22666F726D2D222C643D2269';
wwv_flow_imp.g_varchar2_table(2) := '6672616D652D222C723D22707265766965772D222C6C3D225543223B66756E6374696F6E207528692C74297B766172206F3D65282223222B722B69292C6C3D65282223222B642B69292C753D65282223222B612B69293B2266756E6374696F6E223D3D74';
wwv_flow_imp.g_varchar2_table(3) := '7970656F66206E5B695D2626286E5B695D28292C64656C657465206E5B695D292C752626752E72656D6F766528292C747C7C286C26266C2E72656D6F766528292C6F26266F2E72656D6F76652829297D66756E6374696F6E207028652C6E297B72657475';
wwv_flow_imp.g_varchar2_table(4) := '726E20652E74726967676572696E67456C656D656E74242C6F5B6E5D3D33302C695B6E5D3D77696E646F772E736574496E74657276616C2866756E6374696F6E28297B76617220613D66756E6374696F6E2865297B76617220693D646F63756D656E742E';
wwv_flow_imp.g_varchar2_table(5) := '636F6F6B69652E73706C697428652B223D22293B696628323D3D692E6C656E6774682972657475726E7B6E616D653A652C76616C75653A695B315D2E73706C697428223B22292E736869667428297D7D286E293B28612626612E6E616D653D3D6E7C7C30';
wwv_flow_imp.g_varchar2_table(6) := '3D3D6F5B6E5D2926262861262628652E66696C65496E666F3D4A534F4E2E706172736528612E76616C7565292C745B6E5D3D652E66696C65496E666F292C66756E6374696F6E28652C6E297B76617220743D652E707265766965774D6F64653F2275632D';
wwv_flow_imp.g_varchar2_table(7) := '646F776E6C6F61642D707265766965772D636F6D706C657465223A2275632D646F776E6C6F61642D66696C652D636F6D706C657465223B75286E2C652E707265766965774D6F6465292C77696E646F772E636C656172496E74657276616C28695B6E5D29';
wwv_flow_imp.g_varchar2_table(8) := '2C613D6E2C646F63756D656E742E636F6F6B69653D656E636F6465555249436F6D706F6E656E742861292B223D64656C657465643B20657870697265733D222B6E657720446174652830292E746F555443537472696E6728292C64656C65746520695B6E';
wwv_flow_imp.g_varchar2_table(9) := '5D2C64656C657465206F5B6E5D2C652E66696C65496E666F262628617065782E6576656E742E7472696767657228646F63756D656E742E626F64792C742C65292C64656C65746520652E66696C65496E666F293B76617220613B652E7472696767657269';
wwv_flow_imp.g_varchar2_table(10) := '6E67456C656D656E74247D28652C6E29292C6F5B6E5D2D2D7D2C316533292C6E7D75632E7574696C732E646F776E6C6F61643D66756E6374696F6E28692C6F2C61297B76617220642C722C733D28723D6F2E69642C6C2B722B286E65772044617465292E';
wwv_flow_imp.g_varchar2_table(11) := '67657454696D652829292C6D3D692E6166666563746564456C656D656E74732C633D692E74726967676572696E67456C656D656E743B66756E6374696F6E206628652C69297B72657475726E20652E707265766965774D6F64653F273C696672616D6520';
wwv_flow_imp.g_varchar2_table(12) := '69643D22272B652E696672616D6549642B2722206E616D653D22272B652E696672616D6549642B27222077696474683D223130302522206865696768743D223130302522207374796C653D226D696E2D77696474683A203935253B6865696768743A3130';
wwv_flow_imp.g_varchar2_table(13) := '30253B22207363726F6C6C696E673D226175746F2220636C6173733D2275632D707265766965772D6D6F646520752D68696464656E22206F6E6C6F61643D2275632E7574696C732E646F776E6C6F61642E272B692B27287468697329223E3C2F69667261';
wwv_flow_imp.g_varchar2_table(14) := '6D653E273A273C696672616D652069643D22272B652E696672616D6549642B2722206E616D653D22272B652E696672616D6549642B272220636C6173733D22752D68696464656E22206F6E6C6F61643D2275632E7574696C732E646F776E6C6F61642E27';
wwv_flow_imp.g_varchar2_table(15) := '2B692B27287468697329223E3C2F696672616D653E277D66756E6374696F6E2067286E297B766172206F3D65282223222B6E2E707265766965774964292C643D65282223222B6E2E696672616D654964292C723D5B5D2C6C3D6E2E707265766965774F70';
wwv_flow_imp.g_varchar2_table(16) := '74696F6E733B6120696E7374616E63656F662046756E6374696F6E2626612E63616C6C28692C6E292C303D3D3D6F2E6C656E6774682626286528646F63756D656E742E626F6479292E617070656E6428273C6469762069643D22272B6E2E707265766965';
wwv_flow_imp.g_varchar2_table(17) := '7749642B27223E272B66286E2C73292B223C2F6469763E22292C643D65282223222B6E2E696672616D654964292C6F3D65282223222B6E2E70726576696577496429292C642E72656D6F7665436C6173732822752D68696464656E22292C652877696E64';
wwv_flow_imp.g_varchar2_table(18) := '6F77292E6F6E28226D657373616765222C66756E6374696F6E2874297B766172206F3D742E6F726967696E616C4576656E742E646174613B6F26266F2E696672616D6549643D3D3D6E2E696672616D654964262628652874686973292E6F66662874292C';
wwv_flow_imp.g_varchar2_table(19) := '64656C6574652075632E7574696C732E646F776E6C6F61645B735D2C617065782E64612E726573756D6528692E726573756D6543616C6C6261636B2C213129297D292C6F2E6F6E28226469616C6F67726573697A65222C66756E6374696F6E28297B7661';
wwv_flow_imp.g_varchar2_table(20) := '7220653D6F2E68656967687428292C693D6F2E776964746828293B6F2E6368696C6472656E2822696672616D6522292E77696474682869292E6865696768742865297D292C6C2E73686F7746696C65496E666F2626722E70757368287B746578743A2220';
wwv_flow_imp.g_varchar2_table(21) := '222C69636F6E3A2266612066612D696E666F2075632D6469616C6F672D66696C652D696E666F222C636C69636B3A66756E6374696F6E2869297B766172206E3B6528692E746172676574292E746F6F6C746970287B6974656D733A692E7461726765742C';
wwv_flow_imp.g_varchar2_table(22) := '636F6E74656E743A286E3D745B735D2C6E3F286C2E66696C65496E666F54706C7C7C223C7374726F6E673E4E616D653A3C2F7374726F6E673E20234E414D45233C6272202F3E3C7374726F6E673E53697A653A3C2F7374726F6E673E202353495A45233C';
wwv_flow_imp.g_varchar2_table(23) := '6272202F3E3C7374726F6E673E4D696D6520547970653A3C2F7374726F6E673E20234D494D455F545950452322292E7265706C616365282F5C234E414D455C232F2C6E2E6E616D65292E7265706C616365282F5C2353495A455C232F2C6E2E73697A6529';
wwv_flow_imp.g_varchar2_table(24) := '2E7265706C616365282F5C234D494D455F545950455C232F2C6E2E6D696D6554797065293A6C2E6C6F6164696E674D73677C7C225468652066696C6520696E666F726D6174696F6E206973207374696C6C206C6F6164696E672E2E2E2E22292C706F7369';
wwv_flow_imp.g_varchar2_table(25) := '74696F6E3A7B6D793A2263656E74657220626F74746F6D222C61743A2263656E74657220746F702D3130227D2C636C61737365733A7B2275692D746F6F6C746970223A2275632D6469616C6F672D66696C652D696E666F2D746F6F6C74697020746F7020';
wwv_flow_imp.g_varchar2_table(26) := '75692D636F726E65722D616C6C2075692D7769646765742D736861646F77227D7D292C6528692E746172676574292E746F6F6C74697028226F70656E22297D7D292C6C2E73686F77446F776E6C6F616442746E2626722E70757368287B746578743A2244';
wwv_flow_imp.g_varchar2_table(27) := '6F776E6C6F6164222C69636F6E3A2266612066612D646F776E6C6F6164222C636C69636B3A66756E6374696F6E28297B75632E7574696C732E646F776E6C6F616428692C652E657874656E64287B7D2C6E2C7B707265766965774D6F64653A21312C7072';
wwv_flow_imp.g_varchar2_table(28) := '6576696577446F776E6C6F61643A22594553227D29297D2C636C61737365733A7B2275692D746F6F6C746970223A2275632D6469616C6F672D66696C652D646F776E6C6F61642D62746E20752D686F742075692D636F726E65722D616C6C2075692D7769';
wwv_flow_imp.g_varchar2_table(29) := '646765742D736861646F77227D7D292C6F2E6469616C6F6728652E657874656E64287B7469746C653A2246696C652050726576696577222C636C61737365733A7B2275692D6469616C6F67223A2275632D66696C652D707265766965772D6469616C6F67';
wwv_flow_imp.g_varchar2_table(30) := '227D2C6865696768743A22363030222C77696474683A22373230222C6D6F64616C3A21302C6175746F4F70656E3A21302C6469616C6F673A6E756C6C2C627574746F6E733A727D2C6C7C7C7B7D29292C6F2E63737328226F766572666C6F77222C226869';
wwv_flow_imp.g_varchar2_table(31) := '6464656E22292C6F2E706172656E7428292E66696E6428222E75692D627574746F6E202E666122292E72656D6F7665436C617373282275692D627574746F6E2D69636F6E2075692D69636F6E22292C642E617474722822737263222C6E2E707265766965';
wwv_flow_imp.g_varchar2_table(32) := '77537263297D643D652E657874656E64287B7D2C6F292C617065782E64656275672E696E666F28225543202D20446F776E6C6F61642046696C65287329222C64292C75632E7574696C732E646F776E6C6F61645B735D3D66756E6374696F6E286E297B76';
wwv_flow_imp.g_varchar2_table(33) := '617220742C6F2C613D21312C723D7B7D2C6C3D6E2E636F6E74656E7457696E646F777C7C6E2E636F6E74656E74446F63756D656E743B7472797B696628642E707265766965774D6F6465262666756E6374696F6E28652C69297B4D6174682E6D61782869';
wwv_flow_imp.g_varchar2_table(34) := '2E646F63756D656E74456C656D656E742E636C69656E7457696474687C7C302C652E696E6E657257696474687C7C30293B766172206E3D22696D677B6D617267696E2D6C6566743A206175746F3B206D617267696E2D72696768743A206175746F3B2077';
wwv_flow_imp.g_varchar2_table(35) := '696474683A203530253B20766572746963616C2D616C69676E3A206D6964646C653B6865696768743A206175746F3B7D20222C743D692E686561647C7C692E676574456C656D656E747342795461674E616D6528226865616422295B305D2C6F3D28692E';
wwv_flow_imp.g_varchar2_table(36) := '626F64797C7C692E676574456C656D656E747342795461674E616D652822626F647922295B305D2C692E676574456C656D656E747342795461674E616D652822696D6722292E6C656E6774682C692E637265617465456C656D656E7428227374796C6522';
wwv_flow_imp.g_varchar2_table(37) := '29293B74262628742E617070656E64286F292C6F2E747970653D22746578742F637373222C6F2E7374796C6553686565743F6F2E7374796C6553686565742E637373546578743D6E3A6F2E617070656E644368696C6428692E637265617465546578744E';
wwv_flow_imp.g_varchar2_table(38) := '6F6465286E2929297D286C2C6C2E646F63756D656E74292C743D652E657874656E64287B7D2C64292C2261626F75743A626C616E6B223D3D3D6C2E646F63756D656E742E6C6F636174696F6E2E687265662972657475726E21313B7472797B6F3D6C2E64';
wwv_flow_imp.g_varchar2_table(39) := '6F63756D656E742E676574456C656D656E747342795461674E616D65282270726522295B305D2E696E6E657248544D4C2C723D4A534F4E2E7061727365286F297D63617463682865297B742E726573706F6E73653D6C2E646F63756D656E747D742E6572';
wwv_flow_imp.g_varchar2_table(40) := '726F723D722E6D6573736167652C742E6572726F72262621742E73757070726573734572726F724D65737361676573262628617065782E6D6573736167652E73686F774572726F7273287B747970653A226572726F72222C6C6F636174696F6E3A5B2270';
wwv_flow_imp.g_varchar2_table(41) := '616765225D2C706167654974656D3A766F696420302C6D6573736167653A742E6572726F722C756E736166653A21317D292C613D2130292C7528732C642E707265766965774D6F6465292C617065782E6576656E742E7472696767657228646F63756D65';
wwv_flow_imp.g_varchar2_table(42) := '6E742E626F64792C2275632D646F776E6C6F61642D66696C652D6572726F72222C74292C2259455322213D642E70726576696577446F776E6C6F61642626617065782E64612E726573756D6528692E726573756D6543616C6C6261636B2C61292C64656C';
wwv_flow_imp.g_varchar2_table(43) := '6574652075632E7574696C732E646F776E6C6F61645B735D7D63617463682865297B31383D3D652E636F646526266C2E706172656E742E706F73744D657373616765287B696672616D6549643A6E2E69647D297D7D2C6120696E7374616E63656F662046';
wwv_flow_imp.g_varchar2_table(44) := '756E6374696F6E2626612E63616C6C28692C64293B76617220772C762C682C782C793D7B7830313A732C7830323A642E70726576696577446F776E6C6F61647D2C493D642E7370696E6E657253657474696E67733B642E707265766965774D6F64652626';
wwv_flow_imp.g_varchar2_table(45) := '28642E746F6B656E3D7028642C73292C792E7831303D642E746F6B656E292C642E6974656D73546F5375626D6974262628792E706167654974656D733D642E6974656D73546F5375626D6974292C492E73686F775370696E6E6572262628492E7370696E';
wwv_flow_imp.g_varchar2_table(46) := '6E6572456C656D656E743D492E73686F775370696E6E65724F6E526567696F6E3F6D3A22626F6479222C763D492E7370696E6E6572456C656D656E742C683D492E73686F775370696E6E65724F7665726C61792C783D22626F6479223D3D762C773D6675';
wwv_flow_imp.g_varchar2_table(47) := '6E6374696F6E2869297B766172206E2C743D617065782E7574696C2E73686F775370696E6E657228762C7B66697865643A787D293B72657475726E20682626286E3D6528273C64697620636C6173733D2275632D726567696F6E2D6F7665726C6179272B';
wwv_flow_imp.g_varchar2_table(48) := '28783F222D6669786564223A2222292B27223E3C2F6469763E27292E70726570656E64546F287629292C66756E6374696F6E28297B6E26266E2E72656D6F766528292C742E72656D6F766528297D7D292C2266756E6374696F6E223D3D747970656F6620';
wwv_flow_imp.g_varchar2_table(49) := '772626286E5B735D3D772E63616C6C287468697329292C617065782E7365727665722E706C7567696E28642E616A61784964656E7469666965722C792C7B64617461547970653A226A736F6E222C7461726765743A692E62726F777365724576656E742E';
wwv_flow_imp.g_varchar2_table(50) := '7461726765747D292E646F6E652866756E6374696F6E286E297B76617220742C6F2C612C722C6C2C752C6D3B642E707265766965774D6F64653F67286E2E64617461293A642E6E657757696E646F773F28617065782E6E617669676174696F6E2E6F7065';
wwv_flow_imp.g_varchar2_table(51) := '6E496E4E657757696E646F77286E2E646174612E70726576696577537263292C617065782E64612E726573756D6528692E726573756D6543616C6C6261636B2C213129293A28743D6E2E646174612C6D3D21312C742E74726967676572696E67456C656D';
wwv_flow_imp.g_varchar2_table(52) := '656E74243D652863292C742E746F6B656E3D7028742C73292C6F3D273C666F726D20616374696F6E3D227777765F666C6F772E73686F7722206D6574686F643D22706F73742220656E63747970653D226D756C7469706172742F666F726D2D6461746122';
wwv_flow_imp.g_varchar2_table(53) := '2069643D22272B28753D74292E666F726D49642B2722207461726765743D22272B752E696672616D6549642B2722206F6E6C6F61643D22223E3C696E70757420747970653D2268696464656E22206E616D653D22705F666C6F775F6964222076616C7565';
wwv_flow_imp.g_varchar2_table(54) := '3D22272B752E61707049642B27222069643D2270466C6F7749643222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22705F666C6F775F737465705F6964222076616C75653D22272B752E7061676549642B27222069643D2270';
wwv_flow_imp.g_varchar2_table(55) := '466C6F775374657049643222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22705F696E7374616E6365222076616C75653D22272B752E73657373696F6E49642B27222069643D2270496E7374616E63653222202F3E3C696E70';
wwv_flow_imp.g_varchar2_table(56) := '757420747970653D2268696464656E22206E616D653D22705F72657175657374222076616C75653D22504C5547494E3D272B752E726571756573742B27222069643D2270526571756573743222202F3E3C696E70757420747970653D2268696464656E22';
wwv_flow_imp.g_varchar2_table(57) := '206E616D653D22705F6465627567222076616C75653D22272B28752E64656275677C7C2222292B27222069643D227044656275673222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22705F7769646765745F6E616D65222076';
wwv_flow_imp.g_varchar2_table(58) := '616C75653D22272B28752E7769646765744E616D657C7C2222292B27222069643D22705769646765744E616D653222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22705F7769646765745F616374696F6E222076616C75653D';
wwv_flow_imp.g_varchar2_table(59) := '22272B28752E616374696F6E7C7C2222292B27222069643D2270576964676574416374696F6E3222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22705F7769646765745F616374696F6E5F6D6F64222076616C75653D22272B';
wwv_flow_imp.g_varchar2_table(60) := '28752E616374696F6E4D6F647C7C2222292B27222069643D2270576964676574416374696F6E4D6F643222202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783031222076616C75653D22272B28752E7830317C7C2222292B27';
wwv_flow_imp.g_varchar2_table(61) := '222069643D2278303122202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783032222076616C75653D22272B28752E70726576696577446F776E6C6F61647C7C224E4F22292B27222069643D2278303222202F3E3C696E707574';
wwv_flow_imp.g_varchar2_table(62) := '20747970653D2268696464656E22206E616D653D22783033222076616C75653D22272B28752E7830337C7C2222292B27222069643D2278303322202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783034222076616C75653D22';
wwv_flow_imp.g_varchar2_table(63) := '272B28752E7830347C7C2222292B27222069643D2278303422202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783035222076616C75653D22272B28752E7830357C7C2222292B27222069643D2278303522202F3E3C696E7075';
wwv_flow_imp.g_varchar2_table(64) := '7420747970653D2268696464656E22206E616D653D22783036222076616C75653D22272B28752E7830367C7C2222292B27222069643D2278303622202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783037222076616C75653D';
wwv_flow_imp.g_varchar2_table(65) := '22272B28752E7830377C7C2222292B27222069643D2278303722202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783038222076616C75653D22272B28752E7830387C7C2222292B27222069643D2278303822202F3E3C696E70';
wwv_flow_imp.g_varchar2_table(66) := '757420747970653D2268696464656E22206E616D653D22783039222076616C75653D22272B28752E7830397C7C2222292B27222069643D2278303922202F3E3C696E70757420747970653D2268696464656E22206E616D653D22783130222076616C7565';
wwv_flow_imp.g_varchar2_table(67) := '3D22272B28752E746F6B656E7C7C2222292B27222069643D2278313022202F3E3C696E70757420747970653D2268696464656E22206E616D653D22663130222076616C75653D22272B28752E6631307C7C2222292B27222069643D2266313022202F3E3C';
wwv_flow_imp.g_varchar2_table(68) := '2F666F726D3E272C613D6628742C73292C65282223222B742E666F726D4964292E6C656E677468262665282223222B742E666F726D4964292E72656D6F766528292C723D6528646F63756D656E742E626F6479292E617070656E64286F29262665282223';
wwv_flow_imp.g_varchar2_table(69) := '222B742E666F726D4964295B305D2C303D3D3D286C3D65282223222B742E696672616D65496429292E6C656E6774683F6528646F63756D656E742E626F6479292E617070656E642861293A6C2E6174747228226F6E6C6F6164222C2275632E7574696C73';
wwv_flow_imp.g_varchar2_table(70) := '2E646F776E6C6F61642E222B732B2228746869732922292C722626722E7375626D69743F722E7375626D697428293A6D3D21302C2259455322213D642E70726576696577446F776E6C6F61642626617065782E64612E726573756D6528692E726573756D';
wwv_flow_imp.g_varchar2_table(71) := '6543616C6C6261636B2C6D29297D292E63617463682866756E6374696F6E2865297B642E6572726F723D652C7528732C642E707265766965774D6F6465292C617065782E6576656E742E7472696767657228646F63756D656E742E626F64792C2275632D';
wwv_flow_imp.g_varchar2_table(72) := '646F776E6C6F61642D66696C652D6572726F72222C64297D297D7D28617065782E6A5175657279293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(557873058838859912)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_file_name=>'js/script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C7469702E75692D746F6F6C746970207B0A202020206261636B67726F756E643A20233165323332383B0A20202020636F6C6F723A2077686974653B0A20202020626F726465723A206E6F6E';
wwv_flow_imp.g_varchar2_table(2) := '653B0A2020202070616464696E673A20303B0A202020206F7061636974793A20313B0A7D0A0A2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C746970202E75692D746F6F6C7469702D636F6E74656E74207B0A20202020706F736974696F';
wwv_flow_imp.g_varchar2_table(3) := '6E3A2072656C61746976653B0A2020202070616464696E673A2031656D3B0A7D0A0A2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C746970202E75692D746F6F6C7469702D636F6E74656E743A3A6166746572207B0A20202020636F6E74';
wwv_flow_imp.g_varchar2_table(4) := '656E743A2027273B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F726465722D7374796C653A20736F6C69643B0A20202020646973706C61793A20626C6F636B3B0A2020202077696474683A20303B0A7D0A0A2E75632D64';
wwv_flow_imp.g_varchar2_table(5) := '69616C6F672D66696C652D696E666F2D746F6F6C7469702E7269676874202E75692D746F6F6C7469702D636F6E74656E743A3A6166746572207B0A20202020746F703A20313870783B0A202020206C6566743A202D313070783B0A20202020626F726465';
wwv_flow_imp.g_varchar2_table(6) := '722D636F6C6F723A207472616E73706172656E7420233165323332383B0A20202020626F726465722D77696474683A20313070782031307078203130707820303B0A7D0A0A2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C7469702E6C65';
wwv_flow_imp.g_varchar2_table(7) := '6674202E75692D746F6F6C7469702D636F6E74656E743A3A6166746572207B0A20202020746F703A20313870783B0A2020202072696768743A202D313070783B0A20202020626F726465722D636F6C6F723A207472616E73706172656E74202331653233';
wwv_flow_imp.g_varchar2_table(8) := '32383B0A20202020626F726465722D77696474683A20313070782030203130707820313070783B0A7D0A0A2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C7469702E746F70202E75692D746F6F6C7469702D636F6E74656E743A3A616674';
wwv_flow_imp.g_varchar2_table(9) := '6572207B0A20202020626F74746F6D3A202D313070783B0A202020206C6566743A203435253B0A20202020626F726465722D636F6C6F723A2023316532333238207472616E73706172656E743B0A20202020626F726465722D77696474683A2031307078';
wwv_flow_imp.g_varchar2_table(10) := '203130707820303B0A7D0A0A2E75632D6469616C6F672D66696C652D696E666F2D746F6F6C7469702E626F74746F6D202E75692D746F6F6C7469702D636F6E74656E743A3A6166746572207B0A20202020746F703A202D313070783B0A202020206C6566';
wwv_flow_imp.g_varchar2_table(11) := '743A20373270783B0A20202020626F726465722D636F6C6F723A2023316532333238207472616E73706172656E743B0A20202020626F726465722D77696474683A2030203130707820313070783B0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(557874982654717033)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_file_name=>'css/style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7370616E2E617065782D6974656D2D69636F6E2E61702D636170732D6C6F636B2C7370616E2E617065782D6974656D2D69636F6E2E61702D70617373776F72642D6579657B6F726465723A333B7A2D696E6465783A323B636F6C6F723A23343034303430';
wwv_flow_imp.g_varchar2_table(2) := '3B706F736974696F6E3A72656C61746976653B706F696E7465722D6576656E74733A616C6C7D2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D6974656D577261707065727B666C6578';
wwv_flow_imp.g_varchar2_table(3) := '2D777261703A777261707D7370616E2E617065782D6974656D2D69636F6E2E61702D70617373776F72642D6579657B6C6566743A2D2E3172656D21696D706F7274616E743B626F782D736861646F773A2E3172656D20302030202364666466646620696E';
wwv_flow_imp.g_varchar2_table(4) := '73657421696D706F7274616E747D7370616E2E617065782D6974656D2D69636F6E2E61702D70617373776F72642D6579653A3A61667465727B6D617267696E2D72696768743A303B6D617267696E2D626F74746F6D3A303B72696768743A33253B626F74';
wwv_flow_imp.g_varchar2_table(5) := '746F6D3A3233257D7370616E2E617065782D6974656D2D69636F6E2E61702D636170732D6C6F636B7B6C6566743A2D332E3172656D3B626F782D736861646F773A6E6F6E657D2E75632D61702D636F6E73747261696E74733E6469767B6D617267696E3A';
wwv_flow_imp.g_varchar2_table(6) := '3370787D2E75632D61702D72756C652D636F6E7461696E65727B666C65782D646972656374696F6E3A636F6C756D6E7D2E75632D61702D696E6E65722D636F6E7461696E65722C2E75632D61702D73686F777B646973706C61793A666C65787D2E75632D';
wwv_flow_imp.g_varchar2_table(7) := '61702D72756C652D636F6E7461696E65722D737472657463687B666C65782D646972656374696F6E3A726F773B666C65782D777261703A777261707D2E75632D61702D636F6E73747261696E74737B646973706C61793A666C65783B70616464696E672D';
wwv_flow_imp.g_varchar2_table(8) := '6C6566743A3170787D2E75632D61702D6F757465722D636F6E7461696E65727B77696474683A313030257D2E617065782D6974656D2D6861732D69636F6E3A64697361626C65647E2E617065782D6974656D2D69636F6E7B6F7061636974793A2E353B70';
wwv_flow_imp.g_varchar2_table(9) := '6F696E7465722D6576656E74733A6E6F6E657D2E75632D737472656E6774682D6261722D636F6E7461696E65727B6F726465723A343B77696474683A313030253B666C65782D62617369733A313030253B706F736974696F6E3A72656C61746976653B68';
wwv_flow_imp.g_varchar2_table(10) := '65696768743A3370783B6F7061636974793A303B6D617267696E2D746F703A3270787D2E75632D737472656E6774682D62672C2E75632D737472656E6774682D636F6E7461696E65722C2E75632D737472656E6774682D73706C69747B706F736974696F';
wwv_flow_imp.g_varchar2_table(11) := '6E3A6162736F6C7574653B6865696768743A3370787D2E75632D737472656E6774682D62677B646973706C61793A626C6F636B3B77696474683A313030257D2E75632D737472656E6774682D636F6E7461696E65727B77696474683A303B646973706C61';
wwv_flow_imp.g_varchar2_table(12) := '793A626C6F636B3B7472616E736974696F6E3A2E347320656173652D696E2D6F75747D2E75632D737472656E6774682D73706C69747B646973706C61793A696E6C696E652D626C6F636B3B77696474683A3170783B7A2D696E6465783A3130303B626163';
wwv_flow_imp.g_varchar2_table(13) := '6B67726F756E642D636F6C6F723A236666667D2E75632D6261722D6163746976657B6F7061636974793A317D2E75632D61702D636F6E73747261696E74732D7469746C657B637572736F723A706F696E7465723B77696474683A313030253B626F726465';
wwv_flow_imp.g_varchar2_table(14) := '723A6E6F6E653B746578742D616C69676E3A6C6566743B6F75746C696E653A303B6D617267696E2D746F703A3370783B6F766572666C6F773A68696464656E3B666F6E742D73697A653A313270783B70616464696E672D6C6566743A3170787D2E75632D';
wwv_flow_imp.g_varchar2_table(15) := '61702D636F6E73747261696E74732D7469746C652E75632D76616C75652D6C656176657B7472616E736974696F6E3A2E32732063756269632D62657A69657228312C202E352C202E382C2031293B7472616E73666F726D3A7472616E736C61746559282D';
wwv_flow_imp.g_varchar2_table(16) := '377078293B6F7061636974793A307D2E75632D61702D636F6E73747261696E74732D7469746C652E75632D76616C75652D656E7465727B7472616E736974696F6E3A2E31737D2E75632D61702D636F6E73747261696E74732D7469746C653A6265666F72';
wwv_flow_imp.g_varchar2_table(17) := '657B636F6E74656E743A275C30303242273B636F6C6F723A236433643364333B666F6E742D7765696768743A3730303B666C6F61743A72696768743B6D617267696E2D72696768743A3570787D2E6163746976653A6265666F72657B636F6E74656E743A';
wwv_flow_imp.g_varchar2_table(18) := '225C32323132227D2E75632D61702D636F6E73747261696E74732E75632D61702D636F6E7461696E65722D68696464656E7B646973706C61793A6E6F6E657D2E75632D61702D636F6E73747261696E74732E75632D61702D636F6E7461696E65722D636F';
wwv_flow_imp.g_varchar2_table(19) := '6C6C61707369626C657B6D61782D6865696768743A303B6F766572666C6F773A68696464656E3B7472616E736974696F6E3A6D61782D686569676874202E327320656173652D6F75747D2E75632D61702D636F6E7461696E65722D636F6C6C6170736962';
wwv_flow_imp.g_varchar2_table(20) := '6C65202E75632D61702D72756C657B6D617267696E3A302031307078203020307D2E75632D61702D636F6E73747261696E74732D7469746C65207370616E2C2E75632D61702D72756C65207370616E2E66612C2E75632D61702D72756C652D746578747B';
wwv_flow_imp.g_varchar2_table(21) := '766572746963616C2D616C69676E3A6D6964646C653B666F6E742D73697A653A313270787D2E75632D61702D696E6C696E652D636865636B7B6F7061636974793A313B7A2D696E6465783A333B626F782D736861646F773A6E6F6E6521696D706F727461';
wwv_flow_imp.g_varchar2_table(22) := '6E743B6F726465723A3321696D706F7274616E743B706F696E7465722D6576656E74733A616C6C3B706F736974696F6E3A72656C61746976653B6C696E652D6865696768743A342E3872656D3B6D617267696E2D6C6566743A2D332E3272656D3B746578';
wwv_flow_imp.g_varchar2_table(23) := '742D616C69676E3A63656E7465723B7472616E736974696F6E3A2E32733B666C65782D736872696E6B3A307D2E75632D61702D686964657B646973706C61793A6E6F6E6521696D706F7274616E747D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(557875349661717029)
,p_plugin_id=>wwv_flow_imp.id(556967058086866299)
,p_file_name=>'css/style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
