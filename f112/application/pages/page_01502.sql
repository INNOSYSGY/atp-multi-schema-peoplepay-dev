prompt --application/pages/page_01502
begin
--   Manifest
--     PAGE: 01502
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1502
,p_name=>'frmGlobalPayrollPar1'
,p_step_title=>'frmGlobalPayrollPar1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3197114093131944734)
,p_plug_name=>'Report'
,p_region_name=>'PREVIEW'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:555px"'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3339476670900066612)
,p_plug_name=>'&P1502_REPORT_NAME.'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3179155091503295631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3179154649079295630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3339476670900066612)
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
 p_id=>wwv_flow_imp.id(3179154253280295630)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3339476670900066612)
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
 p_id=>wwv_flow_imp.id(3178266876599608868)
,p_name=>'P1502_REPORT_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_source=>'select REPORT_NAME from report where id=:P1502_REPORT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179149506954295626)
,p_name=>'P1502_URL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179149932289295626)
,p_name=>'P1502_REPORT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179150304436295626)
,p_name=>'P1502_SEARCH_RESULTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'RPT_PARAMETER_RESULTSV2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1502_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select distinct initcap(upper(surname_hist||'''', ''''||nvl(first_name_hist,'''''''')||'''':- ''''||emp_company_no_hist)) display, x.emp_id return',
'    from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'    join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'    where d.ID = :P1502_DEDUCTION_ENTITY',
'    and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'    and x.payment_type_hist = :P1502_PAYMENT_TYPE',
'    and deduction_type=''''EMPLOYEE''''',
'    order by 1'';',
'',
'elsif  :P1502_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where exists (select 1',
'              from hr_rcm_employee j join pa_pmg_payrolldtl x on j.id=x.emp_id',
'              join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              where j.orgdtl_id = m.id',
'              and D.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'              and J.payment_type = :P1502_PAYMENT_TYPE',
'              and C.deduction_type=''''EMPLOYEE''''',
'              )',
'order by 1'';',
'',
'        ',
'elsif  :P1502_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION w',
'WHERE exists (select 1',
'              from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              where x.wklocation_id = w.id',
'              and d.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'              and x.payment_type_hist = :P1502_PAYMENT_TYPE   ',
'              and deduction_type=''''EMPLOYEE''''',
'              )'';',
'',
'elsif  :P1502_SEARCH_OPTION=''EMPLOYMENT_CLASS'' then',
'return',
'''select initcap(VALUE_DESCRIPTION) display, ID return',
'from table(pkg_global_fnts.get_lookup_value(''''TBLEMPLOYMENTCLASS'''')) w',
'WHERE exists (select 1',
'              from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              join hr_rcm_employee emp on emp.id = x.emp_id',
'              where emp.employment_class_id = w.id',
'              and d.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start = :P1502_EARNINGS_PERIOD_START',
'              and x.payment_type_hist = :P1502_PAYMENT_TYPE  ',
'              and deduction_type=''''EMPLOYEE''''',
'              )'';',
'',
'elsif  :P1502_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where g.start_date = :P1502_EARNINGS_PERIOD_START',
'        and g.payment_type = :P1502_PAYMENT_TYPE '';',
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
,p_lov_cascade_parent_items=>'P1502_PAYMENT_TYPE,P1502_EARNINGS_PERIOD_START,P1502_DEDUCTION_ENTITY,P1502_SEARCH_OPTION'
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
 p_id=>wwv_flow_imp.id(3179150677005295627)
,p_name=>'P1502_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Organisation Structure Level;ORG_STRUCT_LEVEL,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE,Employment Class;EMPLOYMENT_CLASS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179151536999295627)
,p_name=>'P1502_DEDUCTION_ENTITY'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_prompt=>'Deduction Entity'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P1502_PAYMENT_TYPE,P1502_EARNINGS_PERIOD_START'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from dual   ',
'where :P1502_REPORT_ID = 5831 or :P1502_REPORT_ID=5991'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179151936080295628)
,p_name=>'P1502_EARNINGS_PERIOD_START'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_prompt=>'Earnings Period Start'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a a , b b from ',
'(select distinct to_char(start_date,''DD-MON-YYYY'') a, start_date b, start_date c',
'from pa_pcf_earningperiod',
'where pay_status=''Y'' ',
'and org_id=:P1502_ORGANISATION',
'and payment_type=:P1502_PAYMENT_TYPE',
'order by EXTRACT(MONTH FROM start_date) DESC)',
'order by c desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1502_ORGANISATION,P1502_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179152287573295628)
,p_name=>'P1502_ALL_EMPLOYEES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
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
 p_id=>wwv_flow_imp.id(3179152661929295628)
,p_name=>'P1502_PAYMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT initcap(payment_type) b, upper(payment_type) a',
'FROM PA_PCF_EARNINGPERIOD B  ',
'WHERE ORG_ID =:P1502_ORGANISATION',
'AND EXISTS (SELECT 1',
'              FROM  PA_PMG_PAYROLLHD C ',
'              WHERE  B.ID=C.EARNINGS_PERIOD_ID',
'              )      ',
'order by b'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1502_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3179153047981295628)
,p_name=>'P1502_EARNINGS_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Earnings Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EARNINGS_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3326581569883849584)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179153507347295629)
,p_name=>'P1502_SUPPRESS_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
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
 p_id=>wwv_flow_imp.id(3179153870514295630)
,p_name=>'P1502_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3339476670900066612)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3179148254521295620)
,p_name=>'show_hide_search_options'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1502_ALL_EMPLOYEES'
,p_condition_element=>'P1502_ALL_EMPLOYEES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179147266687295618)
,p_event_id=>wwv_flow_imp.id(3179148254521295620)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_SEARCH_OPTION,P1502_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179147773947295619)
,p_event_id=>wwv_flow_imp.id(3179148254521295620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_SEARCH_OPTION,P1502_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3179146880469295618)
,p_name=>'Preview_Report_OnPreme'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3179154253280295630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179146386714295618)
,p_event_id=>wwv_flow_imp.id(3179146880469295618)
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
 p_id=>wwv_flow_imp.id(3179145932298295618)
,p_event_id=>wwv_flow_imp.id(3179146880469295618)
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
' if (:p1502_search_results is not null)  and (:P1502_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:p1502_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:p1502_search_option, l_selected(i),:p1502_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P1502_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1502_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P1502_REPORT_ID;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_START=''||:P1502_EARNINGS_PERIOD_START||''|IN_ORG_ID=''||:p1502_organisation||''|SEARCH_OPTION=''||:p1502_search_option||''|SUPPRESS_DETAILS=''||:p1502_s'
||'uppress_details||''|SESSION_ID=''||:app_session||''|allEmployees=''||:P1502_ALL_EMPLOYEES||''|paymentFrecuency=''||:P1502_PAYMENT_TYPE||''|deduction_id=''||:P1502_DEDUCTION_ENTITY||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P1502_REPORT_ID)||:P1502_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
':P1502_PARAMETERS := null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P1502_SUPPRESS_DETAILS,P1502_ORGANISATION,P1502_EARNINGS_TYPE,P1502_PAYMENT_TYPE,P1502_ALL_EMPLOYEES,P1502_EARNINGS_PERIOD_START,P1502_DEDUCTION_ENTITY,P1502_SEARCH_OPTION,P1502_SEARCH_RESULTS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3179145520889295617)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3179154253280295630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179144997715295617)
,p_event_id=>wwv_flow_imp.id(3179145520889295617)
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
 p_id=>wwv_flow_imp.id(3179144540547295617)
,p_event_id=>wwv_flow_imp.id(3179145520889295617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_URL'
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
'v_dates varchar2(100);',
'v_end_dates varchar2(100);',
'v_end_dates_v varchar2(100);',
'v_report_root_path varchar2(400);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:p1502_search_results is not null)  and (:P1502_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:p1502_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:p1502_search_option, l_selected(i),:p1502_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P1502_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1502_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P1502_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_START=''||:P1502_EARNINGS_PERIOD_START||''|IN_ORG_ID=''||:p1502_organisation||''|SEARCH_OPTION=''||:p1502_search_option||''|SUPPRESS_DETAILS=''||:p1502'
||'_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees=''||:P1502_ALL_EMPLOYEES||''|paymentFrecuency=''||:P1502_PAYMENT_TYPE||''|deduction_id=''||:P1502_DEDUCTION_ENTITY||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P1502_REPORT_ID)||:P1502_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'v_dates :=replace(:P1502_EARNINGS_PERIOD_START,''-'',''**'');',
'',
'select last_day(:P1502_EARNINGS_PERIOD_START) into v_end_dates_v from dual;',
'',
'v_end_dates :=replace(v_end_dates_v,''-'',''**'');',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'',
'',
'',
'if :P1502_REPORT_ID = 5831',
'then',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-START_PERIOD=''||v_dates||''-END_PERIOD=''||v_end_dates||''-IN_ORG_ID=''||:p1502_organisation||''-SEARCH_OPTION=''||:p1502_search_option||''-SUPPRESS_DETAILS=''||:p1502_suppress'
||'_details||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P1502_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1502_PAYMENT_TYPE||''-deduction_id=''||:P1502_DEDUCTION_ENTITY;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-START_PERIOD=''||v_dates||''-END_PERIOD=''||v_end_dates||''-IN_ORG_ID=''||:p1502_organisation||''-SEARCH_OPTION=''||:p1502_search_option||''-SUPPRESS_DETAILS=''||:p1502_suppress_details||''-SESSION_ID=''||:a'
||'pp_session||''-allEmployees=''||:P1502_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1502_PAYMENT_TYPE||''-deduction_id=''||:P1502_DEDUCTION_ENTITY;',
'',
'else',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_START=''||v_dates||''-IN_ORG_ID=''||:p1502_organisation||''-SEARCH_OPTION=''||:p1502_search_option||''-SUPPRESS_DETAILS=''||:p1502_suppress_details||''-SESSION_'
||'ID=''||:app_session||''-allEmployees=''||:P1502_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1502_PAYMENT_TYPE||''-deduction_id=''||:P1502_DEDUCTION_ENTITY;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_START=''||v_dates||''-IN_ORG_ID=''||:p1502_organisation||''-SEARCH_OPTION=''||:p1502_search_option||''-SUPPRESS_DETAILS=''||:p1502_suppress_details||''-SESSION_ID=''||:app_session||''-allEmp'
||'loyees=''||:P1502_ALL_EMPLOYEES||''-paymentFrecuency=''||replace(:P1502_PAYMENT_TYPE, ''-'', ''**'')||''-deduction_id=''||:P1502_DEDUCTION_ENTITY;',
'',
'end if;',
'',
':P1502_PARAMETERS := null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1502_SUPPRESS_DETAILS,P1502_ORGANISATION,P1502_EARNINGS_TYPE,P1502_PAYMENT_TYPE,P1502_ALL_EMPLOYEES,P1502_EARNINGS_PERIOD_START,P1502_DEDUCTION_ENTITY,P1502_SEARCH_OPTION,P1502_SEARCH_RESULTS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179143995706295616)
,p_event_id=>wwv_flow_imp.id(3179145520889295617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1502_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3179143561279295616)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3179154649079295630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179143067877295616)
,p_event_id=>wwv_flow_imp.id(3179143561279295616)
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
 p_id=>wwv_flow_imp.id(3179142580787295616)
,p_event_id=>wwv_flow_imp.id(3179143561279295616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_URL'
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
'v_dates varchar2(100);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:p1502_search_results is not null)  and (:P1502_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:p1502_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:p1502_search_option, l_selected(i),:p1502_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P1502_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1502_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P1502_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_START=''||:P1502_EARNINGS_PERIOD_START||''|IN_ORG_ID=''||:p1502_organisation||''|SEARCH_OPTION=''||:p1502_search_option||''|SUPPRESS_DETAILS=''||:p1502'
||'_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees=''||:P1502_ALL_EMPLOYEES||''|paymentFrecuency=''||:P1502_PAYMENT_TYPE||''|deduction_id=''||:P1502_DEDUCTION_ENTITY||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P1502_REPORT_ID)||:P1502_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'v_dates :=replace(:P1502_EARNINGS_PERIOD_START,''-'',''**'');',
'',
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/Download?p2=''||v_report_path||''-EARNINGS_PERIOD_START=''||v_dates||''-IN_ORG_ID=''||:p1502_organisation||''-SEARCH_OPTION=''||:p1502_search_option||''-SUPPRESS_DETAILS=''||:p1502_suppress_details||''-SESSION_I'
||'D=''||:app_session||''-allEmployees=''||:P1502_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1502_PAYMENT_TYPE||''-deduction_id=''||:P1502_DEDUCTION_ENTITY;',
'',
'',
':P1502_PARAMETERS := null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1502_SUPPRESS_DETAILS,P1502_ORGANISATION,P1502_EARNINGS_TYPE,P1502_PAYMENT_TYPE,P1502_ALL_EMPLOYEES,P1502_EARNINGS_PERIOD_START,P1502_DEDUCTION_ENTITY,P1502_SEARCH_OPTION,P1502_SEARCH_RESULTS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179142081143295615)
,p_event_id=>wwv_flow_imp.id(3179143561279295616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1502_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3179141696295295615)
,p_name=>'checkRpId'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1502_MED'
,p_condition_element=>'P1502_MED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179140732145295615)
,p_event_id=>wwv_flow_imp.id(3179141696295295615)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_DEDUCTION_ENTITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179141170709295615)
,p_event_id=>wwv_flow_imp.id(3179141696295295615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_DEDUCTION_ENTITY_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179139730309295614)
,p_event_id=>wwv_flow_imp.id(3179141696295295615)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_DEDUCTION_ENTITY_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3179140188626295614)
,p_event_id=>wwv_flow_imp.id(3179141696295295615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1502_DEDUCTION_ENTITY'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3179148691037295621)
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
' IF :P1502_SEARCH_RESULTS is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1502_SEARCH_RESULTS);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P1502_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'  ',
'     :P1502_SEARCH_RESULTS:=null;',
'',
'end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1502_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3179154253280295630)
,p_process_when=>'P1401_ORGANISATION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>3063364557180981916
);
wwv_flow_imp.component_end;
end;
/
