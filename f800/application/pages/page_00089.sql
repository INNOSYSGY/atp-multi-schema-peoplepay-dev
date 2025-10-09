prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>89
,p_name=>'frmGlobalHRPar'
,p_step_title=>'frmGlobalHRPar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3796794271522462984)
,p_plug_name=>'&P89_REPORT_NAME.'
,p_region_template_options=>'#DEFAULT#:::is-expanded::t-Region--accent3::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3851939797559826579)
,p_plug_name=>'Report'
,p_region_name=>'PREVIEW'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:555px"'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3699206780566952774)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3699206456695952774)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_button_name=>'Export'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3699206026929952774)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(666898383963523836)
,p_name=>'P89_PARAMETERS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699202417531952771)
,p_name=>'P89_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699202805572952771)
,p_name=>'P89_REPORT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699203207343952771)
,p_name=>'P89_SEARCH_RESULTS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'RPT_PARAMETER_RESULTSV3'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P89_SEARCH_OPTION=''EMPLOYMENT_CLASS'' then',
'',
'return',
' ''select distinct initcap(pkg_global_fnts.get_lookup_col(employment_class_id, ''''VALUE_DESCRIPTION''''))  display, employment_class_id return',
'    from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'    Where User_Name=:APP_USER',
'    and org_id =:APP_ORG_ID',
'    and b.effective_from <= trunc(current_date)',
'    and (b.effective_to is null or b.effective_to > trunc(current_date))',
'    order by 1'';',
'',
'elsif :P89_SEARCH_OPTION=''JOB'' then',
'return',
' ''select description display, ID return',
'  from hr_hcf_job',
'  where  start_date <= trunc(current_date)',
'  and org_id =:APP_ORG_SHR_DED',
'  and (end_date is null or end_date > trunc(current_date))'';',
'',
'',
'elsif :P89_SEARCH_OPTION=''ORG_STRUCTURE'' then',
'return',
' ''Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description display, m.id return',
'    from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'    where  m.start_date <= trunc(current_date)',
'    and org_id =:APP_ORG_SHR_DED',
'    and ( m.end_date is null or  m.end_date > trunc(current_date))'';',
'',
'elsif :P89_SEARCH_OPTION=''COMPUTE_GROSS'' then',
'return',
' ''select distinct initcap(compute_gross) display, compute_gross return',
'    from hr_rcm_employee',
'    where org_id=:APP_ORG_ID'';',
'',
'',
'elsif :P89_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select EMPLOYEE display, ID return',
'  FROM VW_AVAILEMPLOYEE A',
'  WHERE EXISTS(SELECT 1',
'              FROM VW_USERACCESS B',
'              WHERE B.payment_type =A.payment_type',
'              AND B.employment_class_id = A.employment_class_id',
'              AND B.org_id = A.org_id)',
'  AND A.ORG_ID = :APP_ORG_ID'';',
'',
'elsif  :P89_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name display, x.id return',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    order by  1'';    ',
'    ',
'elsif  :P89_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'    ''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'    from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'    WHERE exists (select 1',
'                  from HR_HCF_ORGSTRUCTUREHD X',
'                  WHERE X.ID = D.ORG_STRUCTURE_ID',
'                  AND ORG_ID = :APP_ORG_ID',
'                  )',
'    and  B.start_date <= trunc(current_date)',
'    and ( B.end_date is null or B.end_date > trunc(current_date))',
'    order by 1'';',
'',
'ELSif :P89_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and  v.Effective_fromdate <= trunc(current_date)',
'        and ( v.Effective_Todate is null or v.Effective_Todate > trunc(current_date))',
'        order by grade_code'';',
'        ',
'elsif  :P89_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'    ''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'    from HR_HCF_WORKLOCATION w',
'    WHERE   org_id =:APP_ORG_ID',
'    and  w.start_date <= trunc(current_date)',
'    and ( w.end_date is null or w.end_date > trunc(current_date))'';',
'',
'elsif  :P89_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P89_PAYMENT_TYPE,P89_SEARCH_OPTION'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699203587626952772)
,p_name=>'P89_SUPPRESS_DETAILS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_prompt=>'Suppress Details'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699204022234952772)
,p_name=>'P89_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HR_REPORTS_PARAMETERS'
,p_lov=>'.'||wwv_flow_imp.id(3717265552936672014)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699204435115952772)
,p_name=>'P89_PAYMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b,a from',
'(select ''ALL'' b, ''ALL'' a from dual ',
'union all',
'SELECT DISTINCT initcap(payment_type) b, upper(payment_type) a',
'FROM PA_PCF_EARNINGPERIOD B  ',
'WHERE ORG_ID =:P89_ORGANISATION',
'AND EXISTS (SELECT 1',
'              FROM  PA_PMG_PAYROLLHD C ',
'              WHERE  B.ID=C.EARNINGS_PERIOD_ID',
'              )  )    ',
'order by b'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P89_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699204850764952772)
,p_name=>'P89_ACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_item_default=>'1'
,p_prompt=>'Active Employees'
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
 p_id=>wwv_flow_imp.id(3699205260076952773)
,p_name=>'P89_ALL_EMPLOYEES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_item_default=>'0'
,p_prompt=>'All Employees'
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
 p_id=>wwv_flow_imp.id(3699205629298952773)
,p_name=>'P89_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
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
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705817870033970656)
,p_name=>'P89_REPORT_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3796794271522462984)
,p_source=>'select REPORT_NAME from report where id=:P89_REPORT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699201658343952769)
,p_name=>'show_hide_search_options'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_ALL_EMPLOYEES'
,p_condition_element=>'P89_ALL_EMPLOYEES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699200609654952768)
,p_event_id=>wwv_flow_imp.id(3699201658343952769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SEARCH_OPTION,P89_SEARCH_RESULTS,P89_PAYMENT_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699201102515952768)
,p_event_id=>wwv_flow_imp.id(3699201658343952769)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_SEARCH_OPTION,P89_SEARCH_RESULTS,P89_PAYMENT_TYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699200197719952768)
,p_name=>'Preview_report_OnPreme'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3699206026929952774)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699199712226952767)
,p_event_id=>wwv_flow_imp.id(3699200197719952768)
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
 p_id=>wwv_flow_imp.id(3699199179065952767)
,p_event_id=>wwv_flow_imp.id(3699200197719952768)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#PREVIEW'
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
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:P89_search_results is not null)  and (:P89_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:P89_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:P89_search_option, l_selected(i),:P89_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P89_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P89_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P89_REPORT_ID;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''',
'||''|IN_ORG_ID=''||:P89_organisation||''|SEARCH_OPTION=''||:P89_search_option||''|SUPPRESS_DETAILS=''||:P89_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees=''||:P89_ALL_EMPLOYEES||''|ACTIVE=''||:P89_ACTIVE||''|PAYMENT_TYPE=''||:P89_PAYMENT_TYPE||'
||''',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P89_REPORT_ID)||:P89_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
':P89_PARAMETERS := null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P89_ALL_EMPLOYEES, P89_EARNINGS_PERIOD,P89_EARNINGS_TYPE,P89_MONTH_YEAR,P89_ORGANISATION,P89_PARAMETERS,P89_REPORT_ID,P89_SEARCH_OPTION,P89_SEARCH_RESULTS,P89_SUPPRESS_DETAILS, P89_ACTIVE, P89_PAYMENT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699198849508952767)
,p_name=>'Preview_report_Cloud'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3699206026929952774)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699198363796952766)
,p_event_id=>wwv_flow_imp.id(3699198849508952767)
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
 p_id=>wwv_flow_imp.id(3699197819589952766)
,p_event_id=>wwv_flow_imp.id(3699198849508952767)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_URL'
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
'v_report_root_path varchar2(400);',
'v_user_id number;',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:P89_search_results is not null)  and (:P89_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:P89_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:P89_search_option, l_selected(i),:P89_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P89_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P89_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P89_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|IN_ORG_ID=''||:P89_organisation||''|SEARCH_OPTION=''||:P89_search_option||''|SUPPRESS_DETAILS=''||:P89_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees'
||'=''||:P89_ALL_EMPLOYEES||''|ACTIVE=''||:P89_ACTIVE||''|PAYMENT_TYPE=''||:P89_PAYMENT_TYPE||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P89_REPORT_ID)||:P89_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'select user_id into v_user_id from tbluser where upper(user_name)=upper(:APP_USER);',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-IN_ORG_ID=''||:P89_organisation||''-SEARCH_OPTION=''||:P89_search_option||''-SUPPRESS_DETAILS=''||:P89_suppress_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P89'
||'_ALL_EMPLOYEES||''-ACTIVE=''||:P89_ACTIVE||''-PAYMENT_TYPE=''||:P89_PAYMENT_TYPE;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:P89_organisation||''-SEARCH_OPTION=''||:P89_search_option||''-SUPPRESS_DETAILS=''||:P89_suppress_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P89_ALL_EMPLOYEES||''-ACTIVE=''||'
||':P89_ACTIVE||''-PAYMENT_TYPE=''||:P89_PAYMENT_TYPE||''-UI=''||v_user_id;',
'',
'',
':P89_PARAMETERS := null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P89_ALL_EMPLOYEES, P89_EARNINGS_PERIOD,P89_EARNINGS_TYPE,P89_MONTH_YEAR,P89_ORGANISATION,P89_PARAMETERS,P89_REPORT_ID,P89_SEARCH_OPTION,P89_SEARCH_RESULTS,P89_SUPPRESS_DETAILS, P89_ACTIVE, P89_PAYMENT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699197341450952766)
,p_event_id=>wwv_flow_imp.id(3699198849508952767)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P89_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699196929993952766)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3699206456695952774)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699196388373952765)
,p_event_id=>wwv_flow_imp.id(3699196929993952766)
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
 p_id=>wwv_flow_imp.id(3699195933993952765)
,p_event_id=>wwv_flow_imp.id(3699196929993952766)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_URL'
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
'v_report_root_path varchar2(400);',
'v_user_id number;',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:P89_search_results is not null)  and (:P89_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:P89_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:P89_search_option, l_selected(i),:P89_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P89_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P89_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P89_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|IN_ORG_ID=''||:P89_organisation||''|SEARCH_OPTION=''||:P89_search_option||''|SUPPRESS_DETAILS=''||:P89_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees'
||'=''||:P89_ALL_EMPLOYEES||''|ACTIVE=''||:P89_ACTIVE||''|PAYMENT_TYPE=''||:P89_PAYMENT_TYPE||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P89_REPORT_ID)||:P89_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(current_date));',
'select user_id into v_user_id from tbluser where upper(user_name)=upper(:APP_USER);',
'',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:P89_organisation||''-SEARCH_OPTION=''||:P89_search_option||''-SUPPRESS_DETAILS=''||:P89_suppress_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P89_ALL_EMPLOYEES||''-ACTIVE=''||'
||':P89_ACTIVE||''-PAYMENT_TYPE=''||:P89_PAYMENT_TYPE||''-UI=''||v_user_id;',
'',
'v_url_1:= replace(v_url_1, ''showPDF'',''Download'');',
':P89_PARAMETERS := null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P89_ALL_EMPLOYEES, P89_EARNINGS_PERIOD,P89_EARNINGS_TYPE,P89_MONTH_YEAR,P89_ORGANISATION,P89_PARAMETERS,P89_REPORT_ID,P89_SEARCH_OPTION,P89_SEARCH_RESULTS,P89_SUPPRESS_DETAILS, P89_ACTIVE, P89_PAYMENT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699195424615952765)
,p_event_id=>wwv_flow_imp.id(3699196929993952766)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P89_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3699202030138952769)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'',
'BEGIN',
'',
' IF :P89_SEARCH_RESULTS is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P89_SEARCH_RESULTS);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P89_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'  ',
'     :P89_SEARCH_RESULTS:=null;',
'',
'end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P89_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3699206026929952774)
,p_process_when=>'P1401_ORGANISATION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>3055866778120277275
);
wwv_flow_imp.component_end;
end;
/
