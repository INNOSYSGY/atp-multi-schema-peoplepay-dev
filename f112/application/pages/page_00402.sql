prompt --application/pages/page_00402
begin
--   Manifest
--     PAGE: 00402
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>402
,p_name=>'Report'
,p_step_title=>'Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe id="my_iframe" style="display:none;"></iframe>',
'<script type="text/javascript">',
'',
'function Download(url) {',
'    document.getElementById(''my_iframe'').src = url;',
'};',
'    ',
'function SetParametString() {',
'',
'$x(''P402_PARAMATERS'').value='''';',
'    //Performs some calculation',
'    //document.getElementById(''P402_PARAMATERS'').value=''&''+document.getElementById("PO_ID").id+''=''+document.getElementById("PO_ID").value;',
'',
'var elements =document.getElementsByClassName("intput_parameters");',
'',
'for (var i = 0; i < elements.length; i++) {',
'//document.getElementById(''P402_PARAMATERS'').value=document.getElementById(''P25_PARAMATERS'').value+''&''+document.getElementById(elements[i].id).id+''=''+document.getElementById(elements[i].id).value;',
'',
'$x(''P402_PARAMATERS'').value=$x(''P402_PARAMATERS'').value+''&''+document.getElementById(elements[i].id).id+''=''+document.getElementById(elements[i].id).value;',
'}',
'',
'',
'}',
'</script>  ',
'',
'',
''))
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#js/select2-apex.js',
'#APP_IMAGES#js/select2.full.min.js'))
,p_javascript_code_onload=>'$x(''P8_PARAMETERS'').value;'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#css/select2-classic.css',
'#APP_IMAGES#css/select2.min.css'))
,p_inline_css=>'.ui-datepicker-trigger {height:26px;margin-bottom:3px;}'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3130533130079082452)
,p_plug_name=>'&P402_REPORT_NAME.'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>2
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare V_Code clob;',
'V_Count number;',
'type typ_comment is table of varchar2(4000);',
'    v_varchar typ_comment := typ_comment();   ',
'    k         number;',
'    j         number := 4000;',
'begin',
'V_Code:=''<table>'';',
'',
'for i in (select rownum,input_control_value,parameter_label,parameter_type,priority_sequence,apex_lov_name,apex_lov_query',
'from report_parameter',
'where report_id=:P402_REPORT_ID',
'order by priority_sequence )',
'loop',
'V_Code:=V_Code||''<tr><td>''||pkg_reports.GET_PARAMETER_HTMLELEMENTS(i.rownum,i.input_control_value,i.parameter_type,i.parameter_label,i.apex_lov_name,i.apex_lov_query)||''</td></tr>'';',
'',
'end loop;',
'',
'V_Code:=V_Code||''</table>'';',
'',
'k := ceil(dbms_lob.getlength(V_Code)/j);',
'',
'v_varchar.extend(k); ',
'',
'for i in 1..k ',
'  loop',
'    htp.p(dbms_lob.substr( V_Code, j, 1 + j * ( i - 1 ) ));',
'  end loop;',
'',
'',
'',
'',
'--htp.p(V_Code);',
'',
' htp.p(''',
'<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>',
'<script type="text/javascript">',
'jQuery(document).ready(function() {'');',
'for j in (select input_control_value id from report_parameter where report_id=:p402_report_id and parameter_type in (''SELECT2'',''SELECT2_QUERY'') order by priority_sequence) loop',
'htp.p(''',
'    $("#''||j.id||''").select2({"placeholder":"--","allowClear":true,"closeOnSelect":true,"selectOnClose":false,"language": {},"width":"425"});',
'    $("#''||j.id||''").on(',
'          "select2:select",',
'          function(){ $(this).focus(); }',
'        );',
'    beCtbSelect2.events.bind("#''||j.id||''");'');',
'end loop;',
'htp.p(''});',
'      ',
'</script>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3130534140459082455)
,p_plug_name=>'Export'
,p_parent_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3130534728695082456)
,p_plug_name=>'gg'
,p_parent_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3130535138780082456)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3130535550706082457)
,p_plug_name=>'PREVIEW'
,p_region_name=>'PREVIEW'
,p_parent_plug_id=>wwv_flow_imp.id(3130535138780082456)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:1000px"'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3166891503856475730)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_button_name=>'Preview_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Preview  test'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3166894681473475738)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3130534140459082455)
,p_button_name=>'P402_EXPORT'
,p_button_static_id=>'P402_EXPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Export'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3166891943352475731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3166892290577475731)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_button_name=>'P402_BUTTON'
,p_button_static_id=>'P402_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3166902881841475747)
,p_branch_name=>'export_rpt'
,p_branch_action=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.:20000:P20000_REPORT_ID,P20000_PARAMETERS,P20000_EXPORT_TYPE:&P402_REPORT_ID.,&P402_PARAMATERS.,&P402_EXPORT_TYPE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166892743581475735)
,p_name=>'P402_REPORT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166893156444475736)
,p_name=>'P402_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166893547410475736)
,p_name=>'P402_PARAMATERS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166893911427475736)
,p_name=>'P402_REPORT_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3130533130079082452)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_reports.fn_get_report_name(:P402_REPORT_ID)',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166895057146475738)
,p_name=>'P402_EXPORT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3130534140459082455)
,p_prompt=>'Select format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P_EXPORT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3326444742991652811)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%192.168.12.16%'''
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3166896088059475739)
,p_name=>'P402_PAGE_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3130535138780082456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3166896750798475742)
,p_name=>'Preview_report_OnPreme'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3166892290577475731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166897205901475743)
,p_event_id=>wwv_flow_imp.id(3166896750798475742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#PREVIEW'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'',
'begin',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P402_report_id;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P402_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'--v_url:=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
':P402_PARAMATERS:=null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P402_REPORT_ID,P402_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3319323945165258560)
,p_event_id=>wwv_flow_imp.id(3166896750798475742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'',
'begin',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P402_report_id;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P402_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'--v_url:=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
':P402_PARAMATERS:=null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P402_REPORT_ID,P402_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3166897612034475743)
,p_name=>'Preview_report_Cloud'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3166892290577475731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166898094830475743)
,p_event_id=>wwv_flow_imp.id(3166897612034475743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#P402_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(400);',
'',
'',
'begin',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P402_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'--v_report_path:=replace(v_report_path,''&'',''-'');',
'',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P402_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''-'',''**'');',
'v_url_2 :=replace(v_url_2,''&'',''-'');',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||v_url_2;',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report_Multi/showPDF?p1=DEEDS&p2=''||v_report_path||v_url_2;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||v_url_2;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P402_REPORT_ID,P402_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166898591898475744)
,p_event_id=>wwv_flow_imp.id(3166897612034475743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(document.getElementById(''P402_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3166899008702475744)
,p_name=>'New_preview_report_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3223078393783270541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166899507092475744)
,p_event_id=>wwv_flow_imp.id(3166899008702475744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:9009:&APP_SESSION.::NO:9009:'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3166899947322475744)
,p_name=>'Export Cloud'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3166894681473475738)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166900442131475745)
,p_event_id=>wwv_flow_imp.id(3166899947322475744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#P402_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(400);',
'',
'',
'begin',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P402_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'--v_report_path:=replace(v_report_path,''&'',''-'');',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P402_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''-'',''**'');',
'v_url_2 :=replace(v_url_2,''&'',''-'');',
'',
'',
'v_url_1:= replace(v_report_root_path, ''showPDF'',''Download'')||''&p2=''||v_report_path||v_url_2;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P402_REPORT_ID,P402_PARAMATERS,P402_URL,P402_EXPORT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166900968142475745)
,p_event_id=>wwv_flow_imp.id(3166899947322475744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(document.getElementById(''P402_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3166901291527475745)
,p_name=>'Export OMPREME'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3166894681473475738)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166901844665475745)
,p_event_id=>wwv_flow_imp.id(3166901291527475745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_PAGE_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'',
'begin',
'',
'',
'',
'',
'v_url:=pkg_reports.fn_get_report_url(:P402_REPORT_ID,:P402_EXPORT_TYPE)||:P402_PARAMATERS;',
'',
'--:P402_PAGE_URL:=pkg_reports.fn_get_report_url(:P402_REPORT_ID,:P402_EXPORT_TYPE)||:P402_PARAMATERS;',
'return v_url;',
'end;'))
,p_attribute_07=>'P402_EXPORT_TYPE,P402_PARAMATERS,P402_REPORT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3166902364687475746)
,p_event_id=>wwv_flow_imp.id(3166901291527475745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*window.open(""+$v(''P402_PAGE_URL''),"status=0,location=no,menubar=no");*/',
'//window.open($v(''P402_PAGE_URL''),"status=0,location=no,menubar=no");',
'Download(document.getElementById(''P402_PAGE_URL'').value);'))
);
wwv_flow_imp.component_end;
end;
/
