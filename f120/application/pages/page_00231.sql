prompt --application/pages/page_00231
begin
--   Manifest
--     PAGE: 00231
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>231
,p_name=>'frmSecurityFrom124'
,p_alias=>'FRMSECURITYFROM124'
,p_step_title=>'frmSecurityFrom124'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'//-->',
'</script>',
''))
,p_javascript_file_urls=>'<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function passwordStrength(){',
'    var pwd = document.getElementById(''P199_NEW_PASSWORD'');',
'    var password = document.getElementById("P199_NEW_PASSWORD").value;',
'     var password1 =document.getElementById("P199_VERIFY_NEW_PASSWORD").value;',
'    var verify =document.getElementById("passwordDescription").innerHTML;',
'    var desc = new Array();',
'            desc[0] = "Poor";',
'            desc[1] = "Doing Better";',
'            desc[2] = "Average";',
'            desc[3] = "Medium";',
'            desc[4] = "Strong";',
'            desc[5] = "Strongest";',
'            var score   = 0;',
'            if (password.length > 8) score++;',
'            if ( ( password.match(/[a-z]/) ) && ( password.match(/[A-Z]/) ) ) score++;',
'            if (password.match(/\d+/)) score++;',
'            if ( password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) score++;',
'            ',
'            if (password.length > 12) score++;',
'            document.getElementById("passwordDescription").innerHTML = desc[score];',
'             ',
'             if (password.length==0) {',
'                 document.getElementById("passwordDescription").innerHTML  = ''Password not entered'';',
'           }',
'             if (password===''password'' || password ===''password123'' || password===''Password123''||password===''Password''){',
'                 document.getElementById("passwordDescription").innerHTML  = ''Too Familiar'';',
'             }',
'',
'     /*if (verify == "Poor" || verify ==''Average'' || verify == ''Average'' || verify==''Too Familiar''){',
'                $("#create").attr("disabled", true);',
'            }',
'     else{',
'                 $("#create").attr("disabled", false);',
'             };*/',
'     document.getElementById("passwordStrength").className = "strength" + score;',
'',
'    };',
'',
'',
'/*To verify passwords are matching before save*/',
'',
'$(''#P199_NEW_PASSWORD,#P199_VERIFY_NEW_PASSWORD'').on(''keyup'', function () ',
'                                            ',
'{',
'    ',
'    var verify =document.getElementById("passwordDescription").innerHTML;',
'  if  ($(''#P199_NEW_PASSWORD'').val()==='''' && $(''#P199_VERIFY_NEW_PASSWORD'').val() ===''''){',
'    $(''#success'').html('''').css(''color'', ''black''); ',
'  }',
'    else if ($(''#P199_NEW_PASSWORD'').val() == $(''#P199_VERIFY_NEW_PASSWORD'').val()){',
'        $(''#success'').html(''Password Matched'').css(''color'', ''green'');',
'    }',
'    else',
'    $(''#success'').html(''Does not Match'').css(''color'', ''red'');',
'    ',
'    ',
'    if (($(''#P199_NEW_PASSWORD'').val() != $(''#P199_VERIFY_NEW_PASSWORD'').val() ) &&(verify == ''Poor'' || verify ==''Doing Better'' || verify == ''Average'' || verify==''Too Familiar'')){',
'                $("#create").attr("disabled", true);',
'            }',
'     else if(($(''#P199_NEW_PASSWORD'').val() == $(''#P199_VERIFY_NEW_PASSWORD'').val() ) &&(verify == ''Medium'' || verify ==''Strong'' || verify==''Strongest'')){',
'                 $("#create").attr("disabled", false);',
'             }',
'    else if ($(''#P199_NEW_PASSWORD'').val()==='''' && $(''#P199_VERIFY_NEW_PASSWORD'').val() ==='''')',
'        {',
'            $("#create").attr("disabled", false);',
'        }',
'    else{',
'        $("#create").attr("disabled", true);',
'    };',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#passwordStrength',
'{',
'        height:10px;',
'        display:block;',
'        float:left;',
'}',
'.strength0',
'{',
'        width:190px;',
'        background:#ffffff;',
'}',
'.strength1',
'{',
'        width:45px;',
'        background:#ff0000;',
'}',
'.strength2',
'{',
'        width:90px;  ',
'        background:#ff5f5f;',
'}',
'.strength3',
'{',
'        width:135px;',
'        background:#56e500;',
'}',
'.strength4',
'{',
'        background:#4dcd00;',
'        width:160px;',
'}',
'.strength5',
'{',
'        background:#399800;',
'        width:190px;',
'}',
'',
'.t-Form-fieldContainer--postTextBlock .t-Form-itemText--post{',
'    height:100px;',
'    background:rgba(99, 55, 220,0.40);',
'    ',
'    ',
'}',
'.fa-low-vision::before{',
'   content: "\f2a8";',
'    background: rgba(99, 55, 220,0.40);',
'     height:25px;',
'    display:inline-block;',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4545090215211010273)
,p_plug_name=>'Security Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent14:t-Region--hiddenOverflow:t-Form--large'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>48
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(3584976345747141041)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_imp.id(3585333832930360203)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from APP_MODULE_LICENCE a',
'where trunc(current_date) between trunc(START_LICENCE_DATE) and trunc(EXPIRY_LICENCE_DATE)',
'and exists (select 1',
'            from APP_MODULE b',
'            where a.APP_MODULE_ID=b.id',
'            and upper(MODULE_NAME)=''SECURITY''',
'            and trunc(b.START_DATE) <= trunc(current_date)',
'            and (b.END_DATE is null or trunc(b.END_DATE) >= trunc(current_date))',
'            )'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4549123427305976906)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>8
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="height: 195px;">'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="strong-text">Strong passwords are enforced.</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4624118771040434662)
,p_plug_name=>'Switch Org, Module or Set Home Screen'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>28
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluserdetail',
'where user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))'))
,p_plug_header=>'<div style="overflow: auto; height: 195px;">'
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4624119706297434671)
,p_plug_name=>'Change Mode'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>18
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_header=>'<div style="overflow: auto; height: 195px;">'
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4625751563366444988)
,p_plug_name=>'Configure Start Screen'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>38
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4625752175672444994)
,p_plug_name=>'View/Delete  Excluded Menu Pages'
,p_parent_plug_id=>wwv_flow_imp.id(4625751563366444988)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    list_name,',
'    webpage_id,',
'    last_changed_by,',
'    last_changed_date,',
'    user_name',
'FROM tblstartupscreen',
'where user_name=:APP_USER',
'AND LIST_NAME =:P231_DISPLAY_MODULE_STARTS'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P231_DISPLAY_MODULE_STARTS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752324028444996)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752488774444997)
,p_name=>'LIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'List Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752593164444998)
,p_name=>'WEBPAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEBPAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Webpage Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STARTSCREEN_LABEL, webpage_id',
'FROM tblpagelist',
'where STARTSCREEN_LABEL is not null'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752657126444999)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752778883445000)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752809059445001)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625752988149445002)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4625753032578445003)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4625752216875444995)
,p_internal_uid=>2069370313025785518
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4625827517964959393)
,p_interactive_grid_id=>wwv_flow_imp.id(4625752216875444995)
,p_static_id=>'17774'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4625827639628959393)
,p_report_id=>wwv_flow_imp.id(4625827517964959393)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625828111919959398)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4625752324028444996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625828695575959403)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4625752488774444997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625829153627959405)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4625752593164444998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625829624191959406)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4625752657126444999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625830067745959407)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4625752778883445000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625830546545959409)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4625752809059445001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4625831623578962390)
,p_view_id=>wwv_flow_imp.id(4625827639628959393)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4625752988149445002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164548426121508087)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4624118771040434662)
,p_button_name=>'Switch_ORG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164545195553508077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4549123427305976906)
,p_button_name=>'PASSWORD'
,p_button_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Password'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164550338727508090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4624119706297434671)
,p_button_name=>'Switch_RESP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Switch Resp'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluser',
'where user_name =:APP_USER',
'and ENFORCE_ONE_ACTIVE_RESP=1'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164553753164508096)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4625751563366444988)
,p_button_name=>'PROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3164554146161508096)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4625751563366444988)
,p_button_name=>'RESET_MENU'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset Menu'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164545554192508078)
,p_name=>'P231_OLD_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4549123427305976906)
,p_prompt=>'Current:'
,p_placeholder=>'Old Password'
,p_post_element_text=>'<span class="fa fa-low-vision"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164545979277508079)
,p_name=>'P231_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4549123427305976906)
,p_prompt=>'New:'
,p_placeholder=>'New Password'
,p_post_element_text=>'<span class="fa fa-low-vision"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'onkeyup="return passwordStrength();" '
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Your password should contain atleast </b><br>',
'<b>An uppercase letter, numbers, and a special character</b>',
'<b>It needs to be atleast 8 characters in length</b>',
''))
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="passwordDescription">Password not entered</div>',
' <div id="passwordStrength" class="strength0">',
'    </div>',
''))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164546842266508084)
,p_name=>'P231_VERIFY_NEW_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4549123427305976906)
,p_prompt=>'Re-type new:'
,p_placeholder=>'Verify Password'
,p_post_element_text=>'<span class="fa fa-low-vision"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_help_text=>'<div id ="success"></div>'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164547769872508085)
,p_name=>'P231_SEPARATOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4549123427305976906)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164548845322508087)
,p_name=>'P231_SWITCH_ORG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4624118771040434662)
,p_prompt=>'Organisation:'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation a',
'where organisation_type=''SOFTWARE USER''',
'and exists(select 1',
'             from tbluserdetail b',
'             where a.id=b.ORG_ID           ',
'             and user_id=(SELECT user_id FROM tbluser WHERE USER_NAME= :APP_USER )',
'             and expire_access=0)	',
'and exists (select 1',
'            from APP_MODULE_LICENCE c',
'            where c.org_id=a.id',
'            and EXPIRY_LICENCE_DATE >= trunc(current_date))',
'order by 1            '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164549212642508088)
,p_name=>'P231_MODULE_SWITCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4624118771040434662)
,p_prompt=>'Module Switch'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) descrip, z.id ',
'from APP_MAIN_MODULE z',
'WHERE EXISTS (SELECT 1',
'              FROM TBLRESPONSIBILITY B JOIN TBLUSERDETAIL C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              JOIN TBLRESPONSIBILITYORGPAGE D ON B.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'              JOIN TBLUSER E ON E.USER_ID=C.USER_ID',
'              join TBLPAGELIST A on a.page_id = d.page_id',
'              join APP_MODULE x  on a.APP_MODULE_ID = x.ID  ',
'              where x.APP_MAIN_MODULE_ID = z.id',
'              AND trim(user_name)  = NVL(V(''APP_USER''),USER)',
'              AND CAN_VIEW = ''Y''            ',
'              and trunc(d.start_date) <= trunc(current_date)',
'              and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'             )',
'and trunc(z.start_date) <= trunc(current_date)',
'and (z.end_date is null or trunc(z.end_date) >= trunc(current_date))',
';',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--select module--'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164549658038508089)
,p_name=>'P231_STARTUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4624118771040434662)
,p_prompt=>'Home screen:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(page_title) page_name, c.webpage_id',
'from APEX_APPLICATION_PAGES a join tblpagelist c on c.webpage_id=a.page_id',
'join app_module b on b.id = c.app_module_id',
'where application_id = :APP_ID',
'and module_start_pagetype is not null',
'and exists(select 1',
'           from APP_MAIN_MODULE w',
'          where b.APP_MAIN_MODULE_ID = w.id',
'          and w.id = :P231_MODULE_SWITCH',
'          )',
'order by page_name',
''))
,p_lov_cascade_parent_items=>'P231_MODULE_SWITCH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164550704036508091)
,p_name=>'P231_SIMPLE_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4624119706297434671)
,p_prompt=>'Simple Mode:'
,p_source=>'select simple_mode from tbluser where user_name=:APP_USER;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Once active this feature will hide all none required fields and audit regions on screens.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', 'N',
  'on_label', 'Active',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164551615217508092)
,p_name=>'P231_SERVE_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4624119706297434671)
,p_prompt=>'Self Serve:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when count(1) > 1 then 1 else 0 end count_value',
'from tbluserdetail ',
'where org_id = :APP_ORG_ID',
'and effective_to is null',
'and self_serve_org = 1',
'and user_id = (select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluserdetail ',
'where org_id = :APP_ORG_ID',
'and self_serve_org = 1',
'and user_id = (select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))  ',
''))
,p_display_when_type=>'EXISTS'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Once active this feature will hide all none required fields and audit regions on screens.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inactive',
  'off_value', '0',
  'on_label', 'Active',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164552545494508094)
,p_name=>'P231_ENFORCE_ONE_ACTIVE_RESP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4624119706297434671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active Responsibility'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select responsibility_id',
'from tblresponsibility  a ',
'where exists (select 1',
'              from tbluserdetail b ',
'              where a.responsibility_id =b.responsibility_id       ',
'              and b.effective_to is null',
'              and user_id = (select user_id from tbluser where user_name=:APP_USER)',
'             )',
'order by 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select responsibility_name, responsibility_id',
'from tblresponsibility  a ',
'where exists (select 1',
'              from tbluserdetail b ',
'              where a.responsibility_id =b.responsibility_id                        ',
'              and user_id = (select user_id from tbluser where user_name=:APP_USER and ENFORCE_ONE_ACTIVE_RESP=1)',
'             )',
'order by 1'))
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluser',
'where user_name =:APP_USER',
'and ENFORCE_ONE_ACTIVE_RESP=1'))
,p_display_when_type=>'EXISTS'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Allows end user to select an actve responsibility assigned to this current company logged into.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164554545176508097)
,p_name=>'P231_DISPLAY_MODULE_STARTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4625751563366444988)
,p_prompt=>'Start Menu'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):HR & PayrollHR_PAYROLLPurchasing, Inventory & AssetPUR_INV_ASSETAccounts PayablesACC_PAYPOSPOSAccounts ReceivablesACC_RECGeneral LedgerGLProject ManagementPROJ'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If a value is selected this page will display on the main screen of the selected value. Ensure you are viewing a report when selecting start screen'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3164555495737508098)
,p_name=>'P231_EXCLUDE_PAGES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4625751563366444988)
,p_prompt=>'Exclude Pages from Start Menu'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  page_label,WEBPAGE_ID',
'FROM  QRY_USER_PAGE_DML_ACCESS_START',
'where DISPLAY_MODULE_STARTSCREEN=:P231_DISPLAY_MODULE_STARTS',
'ORDER BY page_label'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P231_DISPLAY_MODULE_STARTS'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3164560547297508118)
,p_validation_name=>'null_pwd'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'return not(:P231_old_password is null or :P231_new_password is null or :P231_verify_new_password is null);'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please ensure all fields have valid information'
,p_when_button_pressed=>wwv_flow_imp.id(3164545195553508077)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3164560959297508119)
,p_validation_name=>'invalid_pwd'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P231_VERIFY_NEW_PASSWORD = :P231_NEW_PASSWORD then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The new passwords entered doesn''t match. Please re-enter then retry.'
,p_when_button_pressed=>wwv_flow_imp.id(3164545195553508077)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3164563665611508123)
,p_name=>'Submit PROCESS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SIMPLE_MODE'
,p_condition_element=>'P231_SIMPLE_MODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164564182741508125)
,p_event_id=>wwv_flow_imp.id(3164563665611508123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'update tbluser',
'set Simple_Mode=:P231_SIMPLE_MODE',
'where user_name=:APP_USER;',
'',
'if :P231_SIMPLE_MODE =''Y'' then',
' :SIMPLE_MODE:=''Simple Mode Activated'';',
'else',
'  :SIMPLE_MODE:='''';',
'end if;',
'COMMIT;',
'end;',
''))
,p_attribute_02=>'P231_SIMPLE_MODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164564625344508126)
,p_event_id=>wwv_flow_imp.id(3164563665611508123)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164565149378508126)
,p_event_id=>wwv_flow_imp.id(3164563665611508123)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess( ''System switch simple mode to the select option.'' );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3164565568072508126)
,p_name=>'dy_show_password'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-low-vision'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164566041449508127)
,p_event_id=>wwv_flow_imp.id(3164565568072508126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var password = ',
'document.getElementById("P231_OLD_PASSWORD")',
'',
'if (password.type ==="password")',
'',
'{',
'',
'',
'password.type = "text";',
'}',
'',
'',
'else{',
'',
'password.type="password";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3164566407162508127)
,p_name=>'dy_show_password1'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-low-vision'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164566973460508127)
,p_event_id=>wwv_flow_imp.id(3164566407162508127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var password = ',
'document.getElementById("P231_NEW_PASSWORD")',
'',
'if (password.type ==="password")',
'',
'{',
'',
'',
'password.type = "text";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3164567401375508128)
,p_name=>'dy_show_password2'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fa-low-vision'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164567851453508128)
,p_event_id=>wwv_flow_imp.id(3164567401375508128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var password = ',
'document.getElementById("P231_VERFIY_NEW_PASSWORD")',
'',
'if (password.type ==="password")',
'',
'{',
'',
'',
'password.type = "text";',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3164568231914508129)
,p_name=>'switch_self_serve'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P231_SERVE_MODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164568713209508129)
,p_event_id=>wwv_flow_imp.id(3164568231914508129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P231_SERVE_MODE=1 then',
'',
'    UPDATE TBLUSER',
'    SET SELF_SERVE_ONLY_SW=1',
'    WHERE UPPER(user_name) = UPPER(:APP_USER);',
'',
'    UPDATE tbluserdetail',
'    SET EFFECTIVE_TO = NULL',
'    WHERE effective_to is NOT null',
'    AND tbluserdetail.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))  ',
'    and self_serve_org=1',
'    and org_id =:APP_ORG_ID',
'    and exists(select 1',
'               from tblresponsibility b',
'               where b.responsibility_id = tbluserdetail.responsibility_id',
'               and responsibility_name like ''%SELF%SERVE%''',
'               )',
'    and expire_access=0;',
'',
'    UPDATE tbluserdetail',
'    SET EFFECTIVE_TO = current_date -1 ',
'    WHERE effective_to is null',
'    AND tbluserdetail.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))  ',
'    and self_serve_org = 0',
'    and org_id = :APP_ORG_ID',
'    and not exists(select 1',
'                   from tblresponsibility b',
'                   where b.responsibility_id = tbluserdetail.responsibility_id',
'                   and responsibility_name  like ''%SELF%SERVE%''',
'                   )',
'     and expire_access=0;',
'       :SIMPLE_MODE:=''Self Serve Mode Activated'';',
'else',
'    UPDATE TBLUSER',
'    SET SELF_SERVE_ONLY_SW=0',
'    WHERE UPPER(user_name) = UPPER(:APP_USER);',
'    ',
'    UPDATE tbluserdetail',
'    SET EFFECTIVE_TO = current_date - 1',
'    WHERE effective_to is null',
'    AND tbluserdetail.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))  ',
'    and self_serve_org=1',
'    and org_id =:APP_ORG_ID',
'    and exists(select 1',
'               from tblresponsibility b',
'               where b.responsibility_id = tbluserdetail.responsibility_id',
'               and responsibility_name  like ''%SELF%SERVE%''',
'               )',
'    and expire_access=0;',
'',
'    UPDATE tbluserdetail us',
'    SET EFFECTIVE_TO = null',
'    WHERE effective_to is not null',
'    AND us.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))  ',
'    and self_serve_org=0',
'    and org_id =:APP_ORG_ID ',
'    and exists( SELECT 1',
'                FROM tblpagelist a join APP_MODULE b on a.app_module_id=b.id',
'                JOIN TBLRESPONSIBILITYORGPAGE c on a.PAGE_ID =c.PAGE_ID',
'                JOIN tblresponsibility res on res.responsibility_id = c.responsibility_id',
'                join app_main_module d on d.id = b.app_main_module_id                                    ',
'                where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                and b.app_main_module_id = :APP_MODULE_ID                     ',
'                and a.start_date <= trunc(current_date)',
'                and (trunc(a.end_date) is null or trunc(a.end_date) > trunc(current_date))',
'                and trunc(c.start_date) <= trunc(current_date)',
'                and (trunc(c.end_date) is null or trunc(c.end_date) > trunc(current_date))  ',
'                and ALLOW_MODULE_SWITCH=1 ',
'                and responsibility_name not like ''%SELF%SERVE%''',
'              )',
'     and exists(select 1',
'                    from tblresponsibility b',
'                    where b.responsibility_id = us.responsibility_id',
'                    and responsibility_name not like ''%SELF%SERVE%''',
'               )',
'     and expire_access=0;       ',
'',
'     :SIMPLE_MODE:='''';',
'end if;',
'',
''))
,p_attribute_02=>'P231_SERVE_MODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164569258509508130)
,p_event_id=>wwv_flow_imp.id(3164568231914508129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3164569721138508130)
,p_event_id=>wwv_flow_imp.id(3164568231914508129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess( ''System switch self serve mode to the select option.'' );'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164562841932508121)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changepwd'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_SEC_SCHEMA VARCHAR2(20);',
'BEGIN',
'',
'select AUTHENTICATION_SCHEME INTO V_SEC_SCHEMA ',
'from TBLUSER',
'WHERE USER_NAME=nvl(V(''APP_USER''),USER);',
'',
'if :P231_VERIFY_NEW_PASSWORD=:P231_NEW_PASSWORD  and V_SEC_SCHEMA =''APEX'' THEN',
'    APEX_UTIL.CHANGE_CURRENT_USER_PW(:P231_NEW_PASSWORD);',
'elsif :P231_VERIFY_NEW_PASSWORD=:P231_NEW_PASSWORD  and V_SEC_SCHEMA =''BCRYPT'' THEN',
'   -- pkg_security.p_change_password (nvl(V(''APP_USER''),USER) , :P231_OLD_PASSWORD , :P231_NEW_PASSWORD );',
'        update tbluser',
'        set PASSWORD =/*pkg_security.hash_pw(*/:P231_NEW_PASSWORD/*,pkg_security.gen_salt)*/',
'        where USER_ID=(select USER_ID from tbluser where user_name=:APP_USER)',
'        and :P231_NEW_PASSWORD is not null;',
'',
'elsif :P231_VERIFY_NEW_PASSWORD=:P231_NEW_PASSWORD  and V_SEC_SCHEMA =''SHA256'' THEN',
'',
'       update tbluser',
'        set PASSWORD =/*pkg_security.hash_pw(*/:P231_NEW_PASSWORD/*,pkg_security.gen_salt)*/',
'        where USER_ID=(select USER_ID from tbluser where user_name=:APP_USER)',
'        and :P231_NEW_PASSWORD is not null;',
'        ',
'elsif :P231_VERIFY_NEW_PASSWORD=:P231_NEW_PASSWORD  and V_SEC_SCHEMA =''DATABASE'' THEN',
'   pkg_security.Change_Password(:P231_NEW_PASSWORD, nvl(V(''APP_USER''),USER));',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164545195553508077)
,p_process_when=>'P231_OLD_PASSWORD'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Password successfully changed.'
,p_internal_uid=>2742770848734511547
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164563262611508122)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'switch_org'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--switches the company',
'begin',
'',
'if :P231_SWITCH_ORG is not null then',
'',
'        select id INTO :APP_MODULE_ID',
'        from APP_MAIN_MODULE c',
'        where exists (select 1',
'                        FROM TBLPAGELIST A join APP_MODULE x on a.APP_MODULE_ID = x.ID',
'                        where c.id = x.app_main_module_id',
'                        and a.webpage_id = :APP_HOME                       ',
'                        );',
'        ',
'        UPDATE tbluserdetail us',
'        SET EFFECTIVE_TO = NULL',
'           ,EFFECTIVE_FROM = CASE WHEN EFFECTIVE_FROM > trunc(current_date) THEN trunc(current_date)',
'                            ELSE EFFECTIVE_FROM END',
'        WHERE expire_access=0',
'        and exists( SELECT 1',
'                FROM tblpagelist a join APP_MODULE b on a.app_module_id=b.id',
'                JOIN TBLRESPONSIBILITYORGPAGE c on a.PAGE_ID =c.PAGE_ID',
'                JOIN tblresponsibility res on res.responsibility_id = c.responsibility_id',
'                join app_main_module d on d.id = b.app_main_module_id                                    ',
'                where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                and b.app_main_module_id = nvl(:APP_MODULE_ID,b.app_main_module_id)                     ',
'                and a.start_date <= trunc(current_date)',
'                and (trunc(a.end_date) is null or trunc(a.end_date) > trunc(current_date))',
'                and trunc(c.start_date) <= trunc(current_date)',
'                and (trunc(c.end_date) is null or trunc(c.end_date) > trunc(current_date))  ',
'                and ALLOW_MODULE_SWITCH=1 ',
'          --      and responsibility_name not like ''%SELF%SERVE%''',
'              )',
'        AND us.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))           ',
'        AND us.ORG_ID =:P231_SWITCH_ORG;',
'',
'        UPDATE tbluserdetail us',
'        SET EFFECTIVE_TO = trunc(current_date)-1',
'        WHERE  expire_access=0',
'        and exists (',
'                        SELECT 1',
'                        FROM tblpagelist a join APP_MODULE b on a.app_module_id=b.id',
'                        JOIN TBLRESPONSIBILITYORGPAGE c on a.PAGE_ID =c.PAGE_ID',
'                        JOIN tblresponsibility res on res.responsibility_id = c.responsibility_id',
'                        join app_main_module d on d.id = b.app_main_module_id                                    ',
'                        where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                        and b.app_main_module_id = nvl(:APP_MODULE_ID,b.app_main_module_id)                  ',
'                        and a.start_date <= trunc(current_date)',
'                        and (trunc(a.end_date) is null or trunc(a.end_date) > trunc(current_date))',
'                        and trunc(c.start_date) <= trunc(current_date)',
'                        and (trunc(c.end_date) is null or trunc(c.end_date) > trunc(current_date))   ',
'                        and ALLOW_MODULE_SWITCH=1   ',
'                  --      and responsibility_name not like ''%SELF%SERVE%''',
'                      )',
'        and us.user_id = (select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))      ',
'        AND us.ORG_ID !=:P231_SWITCH_ORG;',
'',
'        SELECT DISTINCT short_name, id, pkg_global_fnts.fn_shareRefOrg(id), UPPER(COUNTRY) into :APP_ORG_NAME , :APP_ORG_ID, :APP_ORG_SHR_DED, :APP_COUNTRY',
'        FROM hr_hcf_organisation B',
'        where organisation_type=''SOFTWARE USER''',
'        AND  ID =:P231_SWITCH_ORG;',
'',
'',
'end if;',
'COMMIT;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164548426121508087)
,p_process_success_message=>'System successfully switched Organisation or home page or both.'
,p_internal_uid=>2742771269413511548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164561680400508119)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_startmenu_setup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  l_rejected  APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
'',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P231_EXCLUDE_PAGES);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	',
'        merge into tblstartupscreen',
'        using (',
'                SELECT :APP_USER user_name, :P231_DISPLAY_MODULE_STARTS DISPLAY_MODULE_STARTS, l_rejected(i) WEBPAGE_ID',
'                FROM  dual',
'                ) source',
'        on ',
'          (tblstartupscreen.WEBPAGE_ID = source.WEBPAGE_ID',
'           and tblstartupscreen.LIST_NAME = source.DISPLAY_MODULE_STARTS',
'           and tblstartupscreen.USER_NAME = source.user_name',
'          )',
'    when matched then ',
'    update set tblstartupscreen.LAST_CHANGED_BY =  source.user_name',
'    when not matched then      ',
'    insert (LIST_NAME,webpage_id, USER_NAME)		           		',
'    values(source.DISPLAY_MODULE_STARTS,source.WEBPAGE_ID,source.user_name);',
'    ',
' end loop;',
' ',
'   :P231_EXCLUDE_PAGES:=null; ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164553753164508096)
,p_process_success_message=>'Successful configuration of selected start menu.'
,p_internal_uid=>2742769687202511545
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164562086711508120)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset_start_menu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete',
'from tblstartupscreen',
'where USER_NAME = :APP_USER',
'and LIST_NAME = :P231_DISPLAY_MODULE_STARTS;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164554146161508096)
,p_process_success_message=>'Menu successfully reset.'
,p_internal_uid=>2742770093513511546
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164562467697508121)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'switch_module'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Switches the modules and sets home page',
'',
'begin',
'     ',
' ',
'     if :P231_MODULE_SWITCH is not null then',
'',
'        UPDATE TBLUSER ',
'        SET LOAD_HOME = nvl(:P231_STARTUP, LOAD_HOME)',
'        WHERE UPPER(USER_NAME)=UPPER(:APP_USER);',
'        ',
'        :APP_MODULE_ID := :P231_MODULE_SWITCH;',
'             ',
'            update TBLUSERDETAIL US',
'            set EFFECTIVE_TO=trunc(current_date)-1',
'            where ORG_ID =:APP_ORG_ID',
'            and  expire_access=0',
'            and exists (',
'                                SELECT 1',
'                                FROM tblpagelist a join APP_MODULE b on a.app_module_id=b.id',
'                                JOIN TBLRESPONSIBILITYORGPAGE c on a.PAGE_ID =c.PAGE_ID',
'                                JOIN tblresponsibility res on res.responsibility_id = c.responsibility_id',
'                                join app_main_module d on d.id = b.app_main_module_id                                    ',
'                                where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                                and b.app_main_module_id != :P231_MODULE_SWITCH                     ',
'                                and a.start_date <= trunc(current_date)',
'                                and (trunc(a.end_date) is null or trunc(a.end_date) > trunc(current_date))',
'                                and trunc(c.start_date) <= trunc(current_date)',
'                                and (trunc(c.end_date) is null or trunc(c.end_date) > trunc(current_date))   ',
'                                and ALLOW_MODULE_SWITCH=1   ',
'                                and responsibility_name not like ''%SELF%SERVE%''',
'                                )            ',
'            and USER_ID=(select user_id from TBLUSER where user_name=:APP_USER);',
'          ',
'            ',
'            update TBLUSERDETAIL US',
'            set EFFECTIVE_TO=null',
'            where ORG_ID =:APP_ORG_ID',
'            and  expire_access=0',
'            and exists (',
'                                SELECT 1',
'                                FROM tblpagelist a join APP_MODULE b on a.app_module_id=b.id',
'                                JOIN TBLRESPONSIBILITYORGPAGE c on a.PAGE_ID =c.PAGE_ID',
'                                JOIN tblresponsibility res on res.responsibility_id = c.responsibility_id',
'                                join app_main_module d on d.id = b.app_main_module_id                                    ',
'                                where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                                and b.app_main_module_id = :P231_MODULE_SWITCH                     ',
'                                and a.start_date <= trunc(current_date)',
'                                and (trunc(a.end_date) is null or trunc(a.end_date) > trunc(current_date))',
'                                and trunc(c.start_date) <= trunc(current_date)',
'                                and (trunc(c.end_date) is null or trunc(c.end_date) > trunc(current_date))  ',
'                                and ALLOW_MODULE_SWITCH=1       ',
'                                and responsibility_name not like ''%SELF%SERVE%''  ',
'                                )             ',
'            and USER_ID=(select user_id from TBLUSER where user_name=:APP_USER);',
'     ',
'            update TBLUSERDETAIL US',
'            set EFFECTIVE_TO=null',
'            where ORG_ID =:APP_ORG_ID',
'            and exists (SELECT 1',
'                          from tblresponsibility res',
'                          where US.RESPONSIBILITY_ID =res.RESPONSIBILITY_ID',
'                          and ALLOW_MODULE_SWITCH=0',
'                          and responsibility_name not like ''%SELF%SERVE%''',
'                         )             ',
'            and  expire_access=0',
'            and USER_ID=(select user_id from TBLUSER where user_name=:APP_USER);',
'    ',
'            :APP_MODULE_ID := :P231_MODULE_SWITCH;',
'',
'    end if;',
'    ',
'     :P231_MODULE_SWITCH :=null;',
'     :P231_SWITCH_ORG:=null;',
'    COMMIT;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164548426121508087)
,p_internal_uid=>2742770474499511547
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164560040681508110)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4625752175672444994)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'View/Delete  Excluded Menu Pages - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2742768047483511536
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3164561257511508119)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'switch_Resp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    UPDATE tbluserdetail',
'    SET EFFECTIVE_TO = NULL',
'    WHERE tbluserdetail.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))     ',
'    and org_id =:APP_ORG_ID',
'    and expire_access=0',
'    and responsibility_id = :P231_ENFORCE_ONE_ACTIVE_RESP;',
'',
'    UPDATE tbluserdetail',
'    SET EFFECTIVE_TO = current_date -1 ',
'    WHERE tbluserdetail.user_id =(select user_id from tbluser where UPPER(user_name) = UPPER(:APP_USER))     ',
'    and org_id =:APP_ORG_ID',
'    and expire_access=0',
'    and responsibility_id != :P231_ENFORCE_ONE_ACTIVE_RESP;',
'',
'    commit;',
'    ',
'    :SIMPLE_MODE:=''Single Responsibility Mode Activated'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3164550338727508090)
,p_internal_uid=>2742769264313511545
);
wwv_flow_imp.component_end;
end;
/
