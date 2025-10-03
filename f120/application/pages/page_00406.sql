prompt --application/pages/page_00406
begin
--   Manifest
--     PAGE: 00406
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
 p_id=>406
,p_name=>'C10Report'
,p_alias=>'C10REPORT'
,p_step_title=>'C10Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
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
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3447421125208602453)
,p_plug_name=>'&P406_REPORT_NAME.'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>2
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3447422135588602456)
,p_plug_name=>'Export'
,p_parent_plug_id=>wwv_flow_imp.id(3447421125208602453)
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
 p_id=>wwv_flow_imp.id(3447422723824602457)
,p_plug_name=>'gg'
,p_parent_plug_id=>wwv_flow_imp.id(3447421125208602453)
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
 p_id=>wwv_flow_imp.id(3447423133909602457)
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
 p_id=>wwv_flow_imp.id(3447423545835602458)
,p_plug_name=>'PREVIEW'
,p_region_name=>'PREVIEW'
,p_parent_plug_id=>wwv_flow_imp.id(3447423133909602457)
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
 p_id=>wwv_flow_imp.id(432672694937833738)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3447421125208602453)
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
 p_id=>wwv_flow_imp.id(432676566198833751)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3447422135588602456)
,p_button_name=>'P406_EXPORT'
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
 p_id=>wwv_flow_imp.id(432673558980833739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(432673114904833738)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_button_name=>'P406_BUTTON'
,p_button_static_id=>'P402_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(432673922886833739)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_button_name=>'Download'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download C10 File'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9122:&SESSION.::&DEBUG.::P9122_MONTHS:&P406_MONTH_YEAR.'
,p_button_condition=>'P406_REPORT_ID'
,p_button_condition2=>'6155'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432692375092476994)
,p_name=>'P406_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(c.organisation_name),c.id',
'from   hr_hcf_organisation c',
' where exists (select 1',
'              from pa_pcf_earningperiod a join VW_USERACCESS g ',
'              on (a.org_id=g.org_id ',
'              and a.employment_class_id=g.employment_class_id and a.payment_type=g.payment_type) ',
'              where c.id = g.org_id )',
'order by c.organisation_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432692677663480993)
,p_name=>'P406_MONTH_YEAR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_prompt=>'Month Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD B  ',
'      WHERE ',
'       EXISTS (SELECT 1',
'                  FROM  PA_PMG_PAYROLLHD C ',
'                  WHERE  B.ID=C.EARNINGS_PERIOD_ID)',
'      )',
'ORDER BY C DESC, D DESC  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1501_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P1501_REPORT_ID'
,p_display_when2=>'6253'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483782947695995770)
,p_name=>'P406_REPORT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483783360558995771)
,p_name=>'P406_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483783751524995771)
,p_name=>'P406_PARAMATERS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483784115541995771)
,p_name=>'P406_REPORT_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3447421125208602453)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_reports.fn_get_report_name(:P406_REPORT_ID)',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3483787860172995784)
,p_name=>'P406_EXPORT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3447422135588602456)
,p_prompt=>'Select format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P_EXPORT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3632452602333335680)||'.'
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
 p_id=>wwv_flow_imp.id(3483789628585995786)
,p_name=>'P406_PAGE_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3447423133909602457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432680807891833769)
,p_name=>'Preview_report_OnPreme'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(432673114904833738)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432681343982833769)
,p_event_id=>wwv_flow_imp.id(432680807891833769)
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
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P406_report_id;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P406_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'--v_url:=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
':P406_PARAMATERS:=null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P406_REPORT_ID,P406_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432681820214833769)
,p_event_id=>wwv_flow_imp.id(432680807891833769)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P406_URL'
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
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P406_report_id;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P406_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'--v_url:=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
':P406_PARAMATERS:=null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P406_REPORT_ID,P406_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432678556694833765)
,p_name=>'Preview_report_Cloud'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(432673114904833738)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432679039051833767)
,p_event_id=>wwv_flow_imp.id(432678556694833765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#P406_URL'
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
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P406_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'--v_report_path:=replace(v_report_path,''&'',''-'');',
'',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P406_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
'v_url_2 :=replace(:P406_PARAMATERS,''-'',''**'');',
'v_url_2 :=replace(v_url_2,''&'',''-'');',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||v_url_2;',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report_Multi/showPDF?p1=DEEDS&p2=''||v_report_path||v_url_2;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=37211-monthyear=''||:P406_MONTH_YEAR;',
'',
':P406_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P406_REPORT_ID,P406_PARAMATERS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432679563129833768)
,p_event_id=>wwv_flow_imp.id(432678556694833765)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(document.getElementById(''P406_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432679909911833768)
,p_name=>'New_preview_report_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3529086253124953410)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432680427232833768)
,p_event_id=>wwv_flow_imp.id(432679909911833768)
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
 p_id=>wwv_flow_imp.id(432682263266833769)
,p_name=>'Export Cloud'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(432676566198833751)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432683197034833770)
,p_event_id=>wwv_flow_imp.id(432682263266833769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#P406_URL'
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
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P406_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'--v_report_path:=replace(v_report_path,''&'',''-'');',
'',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||replace(replace(:P406_PARAMATERS,''&'',''|''),''%%'',''+'')||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P406_REPORT_ID)||:P406_PARAMATERS;',
'v_url_2 :=replace(:P406_PARAMATERS,''-'',''**'');',
'v_url_2 :=replace(v_url_2,''&'',''-'');',
'',
'',
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/Download?p2=''||v_report_path||v_url_2;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P406_REPORT_ID,P406_PARAMATERS,P406_URL,P406_EXPORT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432682790352833770)
,p_event_id=>wwv_flow_imp.id(432682263266833769)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(document.getElementById(''P406_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432683687214833770)
,p_name=>'Export OMPREME'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(432676566198833751)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%192.168.12.16%'' or upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%GPLINC.COM%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432684096891833771)
,p_event_id=>wwv_flow_imp.id(432683687214833770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P406_PAGE_URL'
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
'v_url:=pkg_reports.fn_get_report_url(:P406_REPORT_ID,:P406_EXPORT_TYPE)||:P406_PARAMATERS;',
'',
'--:P406_PAGE_URL:=pkg_reports.fn_get_report_url(:P406_REPORT_ID,:P406_EXPORT_TYPE)||:P406_PARAMATERS;',
'return v_url;',
'end;'))
,p_attribute_07=>'P406_EXPORT_TYPE,P406_PARAMATERS,P406_REPORT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432684676136833771)
,p_event_id=>wwv_flow_imp.id(432683687214833770)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*window.open(""+$v(''P406_PAGE_URL''),"status=0,location=no,menubar=no");*/',
'//window.open($v(''P406_PAGE_URL''),"status=0,location=no,menubar=no");',
'Download(document.getElementById(''P406_PAGE_URL'').value);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447543716529301687)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P406_MONTH_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447543885087301688)
,p_event_id=>wwv_flow_imp.id(447543716529301687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
