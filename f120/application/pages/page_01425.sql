prompt --application/pages/page_01425
begin
--   Manifest
--     PAGE: 01425
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
 p_id=>1425
,p_name=>'frmTips'
,p_step_title=>'Create/Edit Tips'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3468592554811872906)
,p_plug_name=>'Create/Edit Tips'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585251650884304596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585250008242304595)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1425_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585250494826304596)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1425_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585252092879304596)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1425_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585250811072304596)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1425_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585251269829304596)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1425_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3585245591677304592)
,p_branch_name=>'DELETE_BRANCH'
,p_branch_action=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.:1426::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3585250811072304596)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3585244371695304591)
,p_branch_action=>'f?p=&APP_ID.:1425:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3585244799501304591)
,p_branch_action=>'f?p=&APP_ID.:1425:&SESSION.::&DEBUG.::P1425_ID:&P1425_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3585250008242304595)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3585245181109304592)
,p_branch_action=>'f?p=&APP_ID.:1425:&SESSION.::&DEBUG.::P1425_ID:&P1425_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3585250494826304596)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585247687444304593)
,p_name=>'P1425_ID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585248023659304593)
,p_name=>'P1425_ID_PREV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585248427792304594)
,p_name=>'P1425_ID_NEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585248818568304594)
,p_name=>'P1425_C_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_use_cache_before_default=>'NO'
,p_source=>'C_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585249234163304594)
,p_name=>'P1425_MESSAGES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Messages'
,p_source=>'MESSAGES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>130
,p_cMaxlength=>4000
,p_cHeight=>21
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3585249677826304595)
,p_name=>'P1425_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3606823972162724568)
,p_name=>'P1425_MAIN_MODULES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3468592554811872906)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Main modules'
,p_source=>'MAIN_MODULES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MAIN_MODULES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) display, id ',
'from APP_MAIN_MODULE z',
'WHERE EXISTS (SELECT 1',
'              FROM TBLRESPONSIBILITY B JOIN TBLUSERDETAIL C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              JOIN TBLRESPONSIBILITYORGPAGE D ON B.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'              JOIN TBLUSER E ON E.USER_ID=C.USER_ID',
'              join TBLPAGELIST A on a.page_id = d.page_id',
'              join APP_MODULE x  on a.APP_MODULE_ID = x.ID  ',
'              where x.APP_MAIN_MODULE_ID = z.id',
'              AND trim(user_name)  = NVL(V(''APP_USER''),USER)',
'              AND CAN_VIEW = ''Y''            ',
'              and trunc(d.start_date) <= trunc(current_date)',
'              and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'             )',
'and trunc(z.start_date) <= trunc(current_date)',
'and (z.end_date is null or trunc(z.end_date) >= trunc(current_date))',
'union',
'select ''ALL'' a, -999 b',
'from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3585246897559304593)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_APU_TIPS'
,p_attribute_02=>'HR_APU_TIPS'
,p_attribute_03=>'P1425_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3163454904361308019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3585247271377304593)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_APU_TIPS'
,p_attribute_03=>'P1425_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ID'
,p_attribute_09=>'P1425_ID_NEXT'
,p_attribute_10=>'P1425_ID_PREV'
,p_attribute_13=>'P1425_ID_COUNT'
,p_internal_uid=>3163455278179308019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3585246419527304592)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_APU_TIPS'
,p_attribute_02=>'HR_APU_TIPS'
,p_attribute_03=>'P1425_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1425_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3163454426329308018
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3585246063123304592)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3585250811072304596)
,p_internal_uid=>3163454069925308018
);
wwv_flow_imp.component_end;
end;
/
