prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'3 jobletter'
,p_alias=>'3-JOBLETTER'
,p_page_mode=>'MODAL'
,p_step_title=>'3 jobletter'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(526585292340492375)
,p_plug_name=>'Print Job Letter'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'JOBLETTERREPORT'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(526585979877492375)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447334244641082284)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(526585979877492375)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-circle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447334671427082285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(526585979877492375)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447335053969082285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(526585979877492375)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447335454654082286)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(526585979877492375)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130459330415198138)
,p_name=>'P3_ADDRESS_TO_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address To Title'
,p_source=>'ADDRESS_TO_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'BASIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(523202221381666692)
,p_name=>'P3_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_prompt=>'Title'
,p_source=>'Select (''Job Letter for:- ''||full_name) from hr_rcm_employee where id = :P3_EMP_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526591326513492438)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526591713903492443)
,p_name=>'P3_REPORT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_prompt=>'Report Type'
,p_source=>'REPORT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VALUE_DESCRIPTION,ID ',
'FROM HR_HCF_LOOKUP',
'WHERE TABLE_NAME = ''JOBLETTER''',
'and org_id = :APP_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526592150838492444)
,p_name=>'P3_REPORT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_prompt=>'Report Date'
,p_source=>'REPORT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526592444296492444)
,p_name=>'P3_ORGANISATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_prompt=>'Organisation'
,p_source=>'ORGANISATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'ORGANISATION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and user_org_id=:APP_ORG_SHR_DED',
'ORDER BY organisation_name'))
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526592775132492444)
,p_name=>'P3_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526593174405492445)
,p_name=>'P3_ADDRESS_TO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Addressee'
,p_source=>'ADDRESS_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'To Whom it may Concern'
,p_quick_pick_value_01=>'TO WHOM IT MAY CONCERN'
,p_quick_pick_label_02=>'The Manager'
,p_quick_pick_value_02=>'THE MANAGER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(526593631961492445)
,p_name=>'P3_SIGNITURE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_item_source_plug_id=>wwv_flow_imp.id(526585292340492375)
,p_prompt=>'Signature Stamp'
,p_source=>'SIGNITURE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (employee_name||'' - ''||position_name) name, emp_id',
'from vw_position_location_v3',
'where id= :APP_ORG_ID '))
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447340000372082301)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(447334671427082285)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447340585641082302)
,p_event_id=>wwv_flow_imp.id(447340000372082301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447340895839082303)
,p_name=>'print_general_letter'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(447334244641082284)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447341462607082303)
,p_event_id=>wwv_flow_imp.id(447340895839082303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''http://apps3.innosysgy.com:8080/Report_Multi/showPDF?p1=SF&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Letter/job_letter_StartFish-EMP_NO=&P3_EMP_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resiza'
||'ble=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
'var win = window.open(''http://158.101.107.28:8080/Report_Multi/showPDF?p1=GF&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Letter/job_letter_starfish-EMP_NO=&P3_EMP_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,'
||'scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
'if (window.focus) {win.focus();}',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(447338838161082300)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(526585292340492375)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from JOBLETTERREPORT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25546844963085726
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(447339275600082300)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(526585292340492375)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of JOBLETTERREPORT'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>25547282402085726
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(447339689880082301)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete old data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete JOBLETTERREPORT where emp_id=:P3_EMP_ID;',
'  commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P3_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>25547696682085727
);
wwv_flow_imp.component_end;
end;
/
