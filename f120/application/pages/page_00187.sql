prompt --application/pages/page_00187
begin
--   Manifest
--     PAGE: 00187
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
 p_id=>187
,p_name=>'frmtimeloadtoadhoc'
,p_alias=>'FRMTIMELOADTOADHOC'
,p_page_mode=>'MODAL'
,p_step_title=>'Load to Adhoc'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603893806588392776)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3540951982511416779)
,p_plug_name=>'Load to Adhoc'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3540951792357416777)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3540951982511416779)
,p_button_name=>'LOAD_TO_ADHOC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load To Adhoc'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-sort-amount-asc'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3540951873729416778)
,p_name=>'P187_EARNINGS_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3540951982511416779)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EARNINGS_PERIOD_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)',
'  ||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Earnings Period--'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3540951254832416772)
,p_name=>'hide/show button'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P187_EARNINGS_PERIOD'
,p_condition_element=>'P187_EARNINGS_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3540951065908416770)
,p_event_id=>wwv_flow_imp.id(3540951254832416772)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3540951792357416777)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3540951189278416771)
,p_event_id=>wwv_flow_imp.id(3540951254832416772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3540951792357416777)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3540950929016416769)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Time Alow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'pkg_timeclock.PRCD_LOAD_TIMEALLOW(:P187_EARNINGS_PERIOD);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3540951792357416777)
,p_process_success_message=>'Successfully Loaded Allowance for Earning Period ID: &P187_EARNINGS_PERIOD.'
,p_internal_uid=>3119158935818420195
);
wwv_flow_imp.component_end;
end;
/
