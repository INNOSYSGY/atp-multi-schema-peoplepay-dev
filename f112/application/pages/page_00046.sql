prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>'Test Notification'
,p_step_title=>'Test Notification'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3331566254545162207)
,p_plug_name=>'Test'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3331566290037162208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3331566254545162207)
,p_button_name=>'Populate_Notification'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Populate Notification'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3331566455792162209)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'PKG_PAYROLL_NOTICATION.POP_PAYSLIP_MESSAGE(1730,6195,''EMAIL'');',
'COMMIT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3331566290037162208)
,p_process_success_message=>'tESTING'
,p_internal_uid=>3215782321935848504
);
wwv_flow_imp.component_end;
end;
/
