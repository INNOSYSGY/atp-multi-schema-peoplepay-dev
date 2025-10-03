prompt --application/pages/page_01191
begin
--   Manifest
--     PAGE: 01191
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
 p_id=>1191
,p_name=>'frmWrkFlwForwardlist-backup'
,p_alias=>'FRMWRKFLWFORWARDLIST-BACKUP'
,p_step_title=>'frmWrkFlwForwardlist-backup'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3564150015658465830)
,p_plug_name=>'Create/Edit Work Flow Forwarding for Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBLFORWARDLIST'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3564135808686431835)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1191_FORWORD_LIST_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3612631871310510721)
,p_plug_name=>'Generate Work Flow for Bulk Entries'
,p_parent_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464896362979338697)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464905809554338716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3612631871310510721)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464898343292338699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1191_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464896740989338698)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1191_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464897162639338698)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1191_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464897531901338698)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1191_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(464897971495338699)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1191:&SESSION.::&DEBUG.:1191::'
,p_button_condition=>'P1191_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(464910199933338721)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(464898343292338699)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(464909865445338720)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1191:&SESSION.::&DEBUG.:1191::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(464897531901338698)
,p_branch_sequence=>21
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(464910653824338721)
,p_branch_action=>'f?p=&APP_ID.:1191:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>22
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654138419677967768)
,p_name=>'P1191_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>500
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654138743135967769)
,p_name=>'P1191_STAGE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_source=>'STAGE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654139151219967769)
,p_name=>'P1191_EFFECTIVE_TO'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Effective To'
,p_source=>'EFFECTIVE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3654139260744967773)
,p_name=>'P1191_LAST_UPDATE_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3564135808686431835)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Last Update Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654139526546967770)
,p_name=>'P1191_EFFECTIVE_FROM'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective From'
,p_source=>'EFFECTIVE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3654139631781967774)
,p_name=>'P1191_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3564135808686431835)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654140091659967774)
,p_name=>'P1191_CREATION_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3564135808686431835)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654140393158967774)
,p_name=>'P1191_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3564135808686431835)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654140425595967771)
,p_name=>'P1191_AUTO_CLOSE_ON_COMPLETE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_default=>'Y'
,p_prompt=>'Auto Close On Complete'
,p_source=>'AUTO_CLOSE_ON_COMPLETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This ensures that flow automatically closes off thus no need to edit notification record and close off the notices.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654141375669967771)
,p_name=>'P1191_IS_DEFAULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_default=>'Y'
,p_prompt=>'Is Default'
,p_source=>'IS_DEFAULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This ensures that the flow works without user intervention'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654141749419967772)
,p_name=>'P1191_FORWARD_MODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Forward Mode'
,p_source=>'FORWARD_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3585038208548167125)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654142628769967779)
,p_name=>'P1191_FORWARD_TO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Forward To'
,p_source=>'FORWARD_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1191_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists(select 1',
'           from tbluserdetail b join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           where a.USER_ID=b.USER_ID',
'          -- and WFL_STATUS_ID=:P1191_WFL_STATUS_ID',
'         and B.org_id=:APP_ORG_ID',
'and d.can_view=''''Y''''',
'and trunc(d.start_date) <= trunc(current_date)',
'and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
')',
'order by 1'';',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER',
'WHERE exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'order by 1'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1191_WFL_STATUS_ID'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'This user must be active, and the responsibility granted to the user must have view access to the form he/she requires workflow access to.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654143045532967780)
,p_name=>'P1191_WFL_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Transaction Status'
,p_source=>'WFL_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(nvl(page_label, Webpage_Name)||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and B.STAGE_ID=:P1191_STAGE_ID)   ',
'and d.start_date <= trunc(current_date)          ',
'and (d.end_date >= trunc(current_date) or d.end_date is null )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1191_STAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654143472068967780)
,p_name=>'P1191_STAGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'Work Flow Name'
,p_source=>'STAGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1191_FORWARD_LIST_ID is null then',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'';',
'else',
'',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654143539898967779)
,p_name=>'P1191_TO_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3612631871310510721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4 To Users'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists(select 1',
'           from tbluserdetail b join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           where a.USER_ID=B.USER_ID',
'       --   and WFL_STATUS_ID=DECODE(:P1191_TRANSACTION_STATUS,NULL,WFL_STATUS_ID,:P1191_TRANSACTION_STATUS)',
'         and d.can_view=''Y''',
'          and B.org_id=:APP_ORG_ID',
'        and trunc(d.start_date) <= trunc(current_date)',
'        and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
')',
'order by 1'))
,p_lov_cascade_parent_items=>'P1191_TRANSACTION_STATUS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This user must be active, and the responsibility granted to the user must have view access to the form he/she requires workflow access to.'
,p_inline_help_text=>'System will replicate every selected Transaction status for selected users below.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654143829856967781)
,p_name=>'P1191_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_prompt=>'User'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1191_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )'';',
'',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER',
'WHERE exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '375')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654144025926967779)
,p_name=>'P1191_TRANSACTION_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3612631871310510721)
,p_prompt=>'3 Transaction Status'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and B.STAGE_ID=:P1191_WORKFLOW_NAME)           ',
'order by 1'))
,p_lov_cascade_parent_items=>'P1191_WORKFLOW_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654144229558967781)
,p_name=>'P1191_FORWORD_LIST_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_item_source_plug_id=>wwv_flow_imp.id(3564150015658465830)
,p_source=>'FORWORD_LIST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654144420244967780)
,p_name=>'P1191_WORKFLOW_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3612631871310510721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2 Work Flow Name'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1191_FROM_USER'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '300')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3654144780790967781)
,p_name=>'P1191_FROM_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3612631871310510721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1 From User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1191_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER a',
'where exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID)',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(464908969532338719)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3564150015658465830)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from TBLFORWARDLIST'
,p_internal_uid=>43116976334342145
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(464908590244338719)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3564150015658465830)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of TBLFORWARDLIST'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>43116597046342145
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(464908174282338719)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(464898343292338699)
,p_internal_uid=>43116181084342145
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(464909313795338719)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_forward_list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  j_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
' IF :P1191_TRANSACTION_STATUS is not null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1191_TRANSACTION_STATUS);',
'  j_selected := APEX_UTIL.STRING_TO_TABLE(:P1191_TO_USER);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'     ',
'     for J in 1..j_selected.count ',
'     loop',
'         begin',
'          pkg_generators.generate_workflow (:P1191_FROM_USER, j_selected(j) ,:P1191_WORKFLOW_NAME,l_selected(i));',
'         exception',
'             when others then null;',
'         end;',
'     end loop;  ',
'  END LOOP;  ',
' end if;',
'',
'    :P1191_TRANSACTION_STATUS:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(464905809554338716)
,p_process_success_message=>'Successful Generation for workflow forward list.'
,p_internal_uid=>43117320597342145
);
wwv_flow_imp.component_end;
end;
/
