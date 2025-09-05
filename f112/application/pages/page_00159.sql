prompt --application/pages/page_00159
begin
--   Manifest
--     PAGE: 00159
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
 p_id=>159
,p_name=>'Create/Edit Employee Tasks (Per Employees)'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Employee Tasks (Per Employees)'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885947246709907)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3173409674093407108)
,p_plug_name=>'Audit'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P159_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3173442796643735488)
,p_plug_name=>'Create/Edit Employee Tasks (PER EMPLOYEE)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       SUBJECT,',
'       DESCRIPTION,',
'       PRIORITY,',
'       DEADLINE,',
'       ESTIMATED_TIME,',
'       TIME_LEFT,',
'       STATUS,',
'       ORG_ID,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_APU_EMPTASKS',
' ',
'              ',
'              ',
'              ',
'              '))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3173477722051875563)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3182331171114353170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3173477722051875563)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3182330790395353170)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3173477722051875563)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3182330391540353169)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3173477722051875563)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P159_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3182330049710353169)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3173477722051875563)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3182322366590353164)
,p_branch_name=>'save'
,p_branch_action=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:RP:P159_ID:&P159_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3182330391540353169)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3182321988313353164)
,p_branch_name=>'Go To Page 158'
,p_branch_action=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182328135393353168)
,p_name=>'P159_LAST_CHANGED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3173409674093407108)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'New'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182328468566353168)
,p_name=>'P159_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3173409674093407108)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'New'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182328939895353168)
,p_name=>'P159_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3173409674093407108)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'New'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182329322146353169)
,p_name=>'P159_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3173409674093407108)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'New'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182332694659353171)
,p_name=>'P159_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182333136368353171)
,p_name=>'P159_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEE_TASK_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  VALUE_DESCRIPTION,TABLE_VALUE',
'FROM TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYEETASKSTATUS''))',
'where org_id =:APP_ORG_SHR_DED'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182333537353353171)
,p_name=>'P159_TIME_LEFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Time Left'
,p_source=>'TIME_LEFT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182333895294353172)
,p_name=>'P159_ESTIMATED_TIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Estimated Time'
,p_source=>'ESTIMATED_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182334353267353172)
,p_name=>'P159_DEADLINE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Deadline'
,p_source=>'DEADLINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182334681081353172)
,p_name=>'P159_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  VALUE_DESCRIPTION,TABLE_VALUE',
'FROM TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLPRIORITY''))'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182335110362353172)
,p_name=>'P159_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182335463836353173)
,p_name=>'P159_SUBJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Subject'
,p_source=>'SUBJECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182335878418353173)
,p_name=>'P159_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3182336321702353173)
,p_name=>'P159_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_item_source_plug_id=>wwv_flow_imp.id(3173442796643735488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3182322786862353164)
,p_validation_name=>'check_time_left'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF ',
':P157_ESTIMATED_TIME < :P157_TIME_LEFT',
'THEN RETURN FALSE;',
'ELSE RETURN TRUE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Estimated time should not less than time left'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(3182333895294353172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3182331942245353170)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3173442796643735488)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmemployeetasksonly'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3066547808389039465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3182332297883353171)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3173442796643735488)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmemployeetasksonly'
,p_internal_uid=>3066548164027039466
);
wwv_flow_imp.component_end;
end;
/
