prompt --application/pages/page_01445
begin
--   Manifest
--     PAGE: 01445
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
 p_id=>1445
,p_name=>'frmFaqIssues'
,p_page_mode=>'MODAL'
,p_step_title=>'FAQ Issues'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3186724969763637663)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3186778596459267842)
,p_plug_name=>'Faq Issues'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'FAQ_ISSUES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3186724900807637662)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3165509558970241550)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3186724969763637663)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3165509141973241550)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3186724969763637663)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1445_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3165508735830241549)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3186724969763637663)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1445_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3165508313041241549)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3186724969763637663)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1445_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3165503488863241542)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:1444:&SESSION.::&DEBUG.:RP:P1444_ID:&P1445_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3165508313041241549)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3165503106818241542)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:1444:&SESSION.::&DEBUG.:RP,88::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3165509141973241550)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165510214456241551)
,p_name=>'P1445_LAST_DATE_CHANGED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3186724900807637662)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Last Date Changed'
,p_source=>'LAST_DATE_CHANGED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(3165510659505241551)
,p_name=>'P1445_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3186724900807637662)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(3165511053770241551)
,p_name=>'P1445_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3186724900807637662)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Entry Date'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(3165511368127241552)
,p_name=>'P1445_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3186724900807637662)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(3165512879831241553)
,p_name=>'P1445_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165513319183241554)
,p_name=>'P1445_MODULES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Modules'
,p_source=>'MODULES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.module_name , b.id',
'FROM TBLPAGELIST a join APP_MODULE b on a.app_module_id = b.id',
'where a.WEBPAGE_ID = :P1445_LOCATION_OF_ISSUE'))
,p_lov_cascade_parent_items=>'P1445_LOCATION_OF_ISSUE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165513752955241554)
,p_name=>'P1445_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165514635851241556)
,p_name=>'P1445_LOCATION_OF_ISSUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Page of Issue'
,p_source=>'LOCATION_OF_ISSUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PAGELIST_FULL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct B.PAGE_TITLE  ,WEBPAGE_ID    ',
'FROM TBLPAGELIST A JOIN APEX_APPLICATION_PAGES B ON a.WEBPAGE_ID=B.PAGE_ID',
'where APPLICATION_ID=:APP_ID',
'order by 1,2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'This is the page where it issue is located'
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
 p_id=>wwv_flow_imp.id(3165515011586241556)
,p_name=>'P1445_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165515404552241556)
,p_name=>'P1445_SHORT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_item_source_plug_id=>wwv_flow_imp.id(3186778596459267842)
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3165504486426241543)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3165509558970241550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3165504043451241543)
,p_event_id=>wwv_flow_imp.id(3165504486426241543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3165512101986241552)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3186778596459267842)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Faq Issues'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3049727968129927847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3165504886018241543)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3165508735830241549)
,p_internal_uid=>3049720752161927838
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3165512476936241553)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3186778596459267842)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Faq Issues'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3049728343079927848
);
wwv_flow_imp.component_end;
end;
/
