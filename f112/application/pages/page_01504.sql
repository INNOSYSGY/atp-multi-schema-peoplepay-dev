prompt --application/pages/page_01504
begin
--   Manifest
--     PAGE: 01504
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
 p_id=>1504
,p_name=>'frmGlobalParameterYearly'
,p_alias=>'FRMGLOBALPARAMETERYEARLY'
,p_step_title=>'frmGlobalParameterYearly'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(570286535749576)
,p_plug_name=>'GLOBAL PARAMETERS YEARLY REPORTS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572940852749603)
,p_plug_name=>'Report'
,p_region_name=>'PREVIEW'
,p_parent_plug_id=>wwv_flow_imp.id(570286535749576)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="height:555px"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(570395906749577)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(570286535749576)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(570442047749578)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(570286535749576)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
,p_button_comment=>'payroll users donot have view access to view buttons'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(571057831749584)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(570286535749576)
,p_button_name=>'EXPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571498727749588)
,p_name=>'P1504_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
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
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571545709749589)
,p_name=>'P1504_SUPPRESS_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_prompt=>'Suppress Details'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571669581749590)
,p_name=>'P1504_PAYMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT initcap(payment_type) b, upper(payment_type) a',
'FROM PA_PCF_EARNINGPERIOD B  ',
'WHERE ORG_ID =:P1504_ORGANISATION',
'AND EXISTS (SELECT 1',
'              FROM  PA_PMG_PAYROLLHD C ',
'              WHERE  B.ID=C.EARNINGS_PERIOD_ID',
'              )      ',
'order by b'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1504_ORGANISATION'
,p_ajax_items_to_submit=>'P1504_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571721978749591)
,p_name=>'P1504_YEAR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct extract(year from period_start) A, extract(year from period_start)',
'from pa_pmg_payrolldtl ',
'where org_id=:P1504_ORGANISATION ',
'and upper(payment_type_hist)=upper(:P1504_PAYMENT_TYPE)',
'order by extract(year from period_start) desc',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1504_PAYMENT_TYPE'
,p_ajax_items_to_submit=>'P1504_ORGANISATION,P1504_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571886677749592)
,p_name=>'P1504_ALL_EMPLOYEES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_item_default=>'1'
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572285503749596)
,p_name=>'P1504_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employee;EMPLOYEE,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE,Organisation Structure Level;ORG_STRUCT_LEVEL,Grade Scale;GRADE_SCALE,Employment Class;EMPLOYMENT_CLASS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572386028749597)
,p_name=>'P1504_SEARCH_RESULTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    label, id',
'from',
'    table(pkg_global_fnts2.get_option_param(:P1504_SEARCH_OPTION, :APP_ORG_SHR_DED))',
'where',
'    org_id = case when :P1504_SEARCH_OPTION in (''GRADE_SCALE'', ''EMPLOYMENT_CLASS'', ''JOB'') then :APP_ORG_SHR_DED else :APP_ORG_ID end'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1504_SEARCH_OPTION'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572588156749599)
,p_name=>'P1504_REPORT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572663595749600)
,p_name=>'P1504_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572760541749601)
,p_name=>'P1504_PARAMETERS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(572856484749602)
,p_name=>'P1504_REPORT_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(570286535749576)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_reports.fn_get_report_name(:P1504_REPORT_ID)',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(570585080749579)
,p_name=>'Preview_report_cloud'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(570442047749578)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(570618121749580)
,p_event_id=>wwv_flow_imp.id(570585080749579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(570716377749581)
,p_event_id=>wwv_flow_imp.id(570585080749579)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1504_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_emp_selfserve_id number;',
'v_all_employees number(1);',
'v_report_root_path varchar2(400);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'v_all_employees:=:P1504_ALL_EMPLOYEES;',
'',
'begin',
'',
' if PKG_GLOBAL_FNTS.fn_selfServeUser(:p1504_organisation)=1 then ',
'    select nvl(EMPLOYEE_NO, 0) into v_emp_selfserve_id from TBLUSER where USER_NAME=:APP_USER;',
'   ',
'   insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(''EMPLOYEE'', v_emp_selfserve_id,:p1504_report_id,:app_session);',
'   v_all_employees:=0;',
' ',
' else ',
'',
' if :p1504_search_results is not null then',
'',
'  l_selected := apex_util.string_to_table(:p1504_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(:p1504_search_option, l_selected(i),:p1504_report_id,:app_session);',
'      ',
'  end loop;  ',
'  ',
'     :p1504_search_results:=null;',
'',
'   end if;',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1504_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :p1504_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p1504_earnings_period||''|IN_ORG_ID=''||:p1504_organisation||''|SEARCH_OPTION=''||:p1504_search_option||''|SUPPRESS_DETAILS=''||:p1504_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p1504_parameters:=''&EARNINGS_PERIOD_ID=''||:p1504_earnings_period||''&IN_ORG_ID=''||:p1504_organisation||''&SEARCH_OPTION=''||:p1504_search_option||''&SUPPRESS_DETAILS=''||:p1504_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'--v_url_2 :=replace(:p1504_earnings_period,''-'',''**'');',
'',
'if :APP_ORG_ID= 42774 then -- Service Guyana',
'    select TABLE_VALUE into v_report_root_path ',
'    from HR_HCF_LOOKUP ',
'    where upper(TABLE_DESCRIPTION)=''JASPER REPORTS SERVER URL'' ',
'    and TABLE_VALUE like ''http://apps4.innosysgy.com:8082%''',
'    and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'else ',
'    select TABLE_VALUE into v_report_root_path ',
'    from HR_HCF_LOOKUP ',
'    where upper(TABLE_DESCRIPTION)=''JASPER REPORTS SERVER URL'' ',
'    and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'end if;',
'',
'--v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-ORG_ID=''||:p1504_organisation||''-SEARCH_OPTION=''||:p1504_search_option||''-SUPPRESS_DETAILS=''||:p1504_suppress_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||v_all_employees||''-P_YEAR='''
||'||:P1504_YEAR||''-P_PAYMENT_TYPE=''||replace(:P1504_PAYMENT_TYPE, ''-'', ''**'');',
'',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-ORG_ID=''||:p1504_organisation||''-SEARCH_OPTION=''||:p1504_search_option||''-SUPPRESS_DETAILS=-SESSION_ID=''||:app_session||''-allEmployees=''||v_all_employees||''-P_YEAR=''||:P1504_YEAR||''-P_PAYMENT_TYPE'
||'=''||replace(:P1504_PAYMENT_TYPE, ''-'', ''**'');',
'',
'',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1504_YEAR,P1504_ALL_EMPLOYEES,P1504_PAYMENT_TYPE,P1504_SUPPRESS_DETAILS,P1504_ORGANISATION,P1504_SEARCH_OPTION,P1504_SEARCH_RESULTS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(570864043749582)
,p_event_id=>wwv_flow_imp.id(570585080749579)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1504_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(571157034749585)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(571057831749584)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(571214084749586)
,p_event_id=>wwv_flow_imp.id(571157034749585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1504_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_emp_selfserve_id number;',
'v_all_employees number(1);',
'v_report_root_path varchar2(400);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'v_all_employees:=:P1504_ALL_EMPLOYEES;',
'',
'begin',
'',
' if PKG_GLOBAL_FNTS.fn_selfServeUser(:p1504_organisation)=1 then ',
'    select nvl(EMPLOYEE_NO, 0) into v_emp_selfserve_id from TBLUSER where USER_NAME=:APP_USER;',
'   ',
'   insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(''EMPLOYEE'', v_emp_selfserve_id,:p1504_report_id,:app_session);',
'   v_all_employees:=0;',
' ',
' else ',
'',
' if :p1504_search_results is not null then',
'',
'  l_selected := apex_util.string_to_table(:p1504_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(:p1504_search_option, l_selected(i),:p1504_report_id,:app_session);',
'      ',
'  end loop;  ',
'  ',
'     :p1504_search_results:=null;',
'',
'   end if;',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1504_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :p1504_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p1504_earnings_period||''|IN_ORG_ID=''||:p1504_organisation||''|SEARCH_OPTION=''||:p1504_search_option||''|SUPPRESS_DETAILS=''||:p1504_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p1504_parameters:=''&EARNINGS_PERIOD_ID=''||:p1504_earnings_period||''&IN_ORG_ID=''||:p1504_organisation||''&SEARCH_OPTION=''||:p1504_search_option||''&SUPPRESS_DETAILS=''||:p1504_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'--v_url_2 :=replace(:p1504_earnings_period,''-'',''**'');',
'',
'select TABLE_VALUE into v_report_root_path ',
'from HR_HCF_LOOKUP ',
'where upper(TABLE_DESCRIPTION)=''JASPER REPORTS SERVER URL'' ',
'and TABLE_VALUE like ''http://apps4.innosysgy.com:8082%''',
'and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'',
':P1504_SUPPRESS_DETAILS := '''';',
'',
'v_url_1:=''&p2=''||v_report_path||''-ORG_ID=''||:p1504_organisation||''-SEARCH_OPTION=''||:p1504_search_option||''-SUPPRESS_DETAILS=''||:p1504_suppress_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||v_all_employees||''-P_YEAR=''||:P1504_YEAR||''-P_PAY'
||'MENT_TYPE=''||replace(:P1504_PAYMENT_TYPE, ''-'', ''**'');',
'',
'v_url_1:= replace(v_report_root_path, ''showPDF'',''Download'') || v_url_1;',
'',
':P1504_PARAMETERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1504_YEAR,P1504_ALL_EMPLOYEES,P1504_PAYMENT_TYPE,P1504_SUPPRESS_DETAILS,P1504_ORGANISATION,P1504_SEARCH_OPTION,P1504_SEARCH_RESULTS,P1504_REPORT_ID,P1504_PARAMETERS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(571405846749587)
,p_event_id=>wwv_flow_imp.id(571157034749585)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1504_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(571941106749593)
,p_name=>'Show_hide_search_options'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1504_ALL_EMPLOYEES'
,p_condition_element=>'P1504_ALL_EMPLOYEES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(572035401749594)
,p_event_id=>wwv_flow_imp.id(571941106749593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1504_SEARCH_OPTION,P1504_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(572199583749595)
,p_event_id=>wwv_flow_imp.id(571941106749593)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1504_SEARCH_OPTION,P1504_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(573153491749605)
,p_name=>'Dy_hide_download'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(573081138749604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'',
'BEGIN',
'',
' IF :P1504_SEARCH_RESULTS is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1504_SEARCH_RESULTS);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P1504_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'  ',
'     :P1504_SEARCH_RESULTS:=null;',
'',
'end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1504_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P1504_ORGANISATION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>38465071554276239
);
wwv_flow_imp.component_end;
end;
/
