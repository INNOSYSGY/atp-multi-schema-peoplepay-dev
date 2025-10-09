prompt --application/pages/page_01234
begin
--   Manifest
--     PAGE: 01234
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
 p_id=>1234
,p_name=>'frmIndividualEmail'
,p_alias=>'FRMINDIVIDUALEMAIL'
,p_step_title=>'Individual Email Payslips'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3665662684705044213)
,p_plug_name=>'Individual Payslip Email'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3583710131378024397)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3665662684705044213)
,p_button_name=>'Send'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Send Emails'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-envelope'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3583710526046024398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3665662684705044213)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1231:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583710939325024402)
,p_name=>'P1234_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3665662684705044213)
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
 p_id=>wwv_flow_imp.id(3583711362450024404)
,p_name=>'P1234_EARNING_PERIOD_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3665662684705044213)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct initcap(PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' ) ',
'||'' ''||a.payment_type||'' ''||a.start_date ||'' -- ''||a.end_date)||'' ''||initcap(compute_gross)||''-''||initcap(a.earnings_type) label,a.id',
'from pa_pcf_earningperiod a join pa_pmg_payrolldtl w on a.id = w.earnings_period_id ',
'join pa_pmg_payrollhd h on h.EARNINGS_PERIOD_ID=a.id',
'where exists (select 1   ',
'              from VW_USERACCESS v   ',
'              where  (v.org_id=a.org_id   ',
'              and v.employment_class_id=a.employment_class_id ',
'              and v.payment_type=a.payment_type)',
'             )   ',
'and a.org_id=:P1234_ORGANISATION',
'and MANAGER_APPROVED_DATE  IS NOT NULL',
'and exists (select 1 from PA_PMG_PAYROLL_EMAIL_HEADER where EARNINGS_PERIOD_ID=a.id)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1501_MONTH_YEAR'
,p_ajax_items_to_submit=>'P1234_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>80
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1',
'from report',
'where :P1501_REPORT_ID in (6171,6055)'))
,p_display_when_type=>'NOT_EXISTS'
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
 p_id=>wwv_flow_imp.id(3583711809698024405)
,p_name=>'P1234_EMPLOYEE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3665662684705044213)
,p_prompt=>'Employee Selection'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select surname_hist||'', ''||first_name_hist||''  --  ''||i.email a, pa.id b from pa_pmg_payrolldtl pa ',
'join hr_rcm_employee e on e.id=pa.emp_id',
'join hr_rcm_individual i on i.id=e.ind_id',
'where earnings_period_id=:P1234_EARNING_PERIOD_ID',
'and i.email is not null',
'order by surname_hist'))
,p_lov_cascade_parent_items=>'P1234_EARNING_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3583712179422024414)
,p_name=>'Send'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3583710131378024397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3583713211962024415)
,p_event_id=>wwv_flow_imp.id(3583712179422024414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'PKG_PAYROLL_NOTICATION.POP_INDIVIDUAL_PAYSLIP_MESSAGE(:P1234_EMPLOYEE,:P1234_EARNING_PERIOD_ID);'
,p_attribute_02=>'P1234_EARNING_PERIOD_ID,P1234_EMPLOYEE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3583712654702024415)
,p_event_id=>wwv_flow_imp.id(3583712179422024414)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'All emails were sent.'
);
wwv_flow_imp.component_end;
end;
/
