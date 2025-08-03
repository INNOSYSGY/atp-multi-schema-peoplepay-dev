prompt --application/pages/page_00250
begin
--   Manifest
--     PAGE: 00250
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
 p_id=>250
,p_name=>'frmimportcsv'
,p_alias=>'FRMIMPORTCSV'
,p_page_mode=>'MODAL'
,p_step_title=>'Import CSV'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function set_item()',
'{',
'$s("P250_IMPORT_FROM", "PASTE");',
'$x(''P250_COPY_PASTE'').value= $v(''P250_SAMPLE_DATA'');',
'$x(''P250_SEPARATOR'').value= '','';',
'$s(''P250_FIRST_ROW'', ''Y'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2462052330994349584)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(335410183177384)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(335716180177385)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P250_COPY_PASTE'', ''NEXT'');'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(349353667177424)
,p_branch_name=>'Show Result'
,p_branch_action=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:RP,:P244_COLUMN_HEADERS,P244_ROWS_LOADED:&P250_COLUMN_HEADERS.,&P250_ROWS_LOADED.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729970545312328273)
,p_name=>'P250_SHEET_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_prompt=>'Sheet Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729970952916328273)
,p_name=>'P250_END_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_prompt=>'EndDate'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(729971349923328273)
,p_name=>'P250_START_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(729971724584328274)
,p_name=>'P250_COLUMN_HEADERS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729972117951328274)
,p_name=>'P250_ROWS_LOADED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729973070611328275)
,p_name=>'P250_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET2'
,p_lov=>'.'||wwv_flow_imp.id(349643250177425)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Unicode utf-8'
,p_quick_pick_value_01=>'utf-8'
,p_quick_pick_label_02=>'Windows-1252'
,p_quick_pick_value_02=>'windows-1252'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729973379511328275)
,p_name=>'P250_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST ROW HAS COLUMN NAMES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.lang(''First Row has Column Names'') as d,',
'       ''Y'' as r',
'  from dual'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729974358998328277)
,p_name=>'P250_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Single Quotes'
,p_quick_pick_value_01=>''''
,p_quick_pick_label_02=>'Double Quotes'
,p_quick_pick_value_02=>'"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729975239068328278)
,p_name=>'P250_SEPARATOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_item_default=>','
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Comma'
,p_quick_pick_value_01=>','
,p_quick_pick_label_02=>'Semicolon'
,p_quick_pick_value_02=>';'
,p_quick_pick_label_03=>'Tab'
,p_quick_pick_value_03=>'\t'
,p_quick_pick_label_04=>'Hash'
,p_quick_pick_value_04=>'#'
,p_quick_pick_label_05=>'Vertial line'
,p_quick_pick_value_05=>'|'
,p_quick_pick_label_06=>'Detect'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729976161285328282)
,p_name=>'P250_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729976552694328283)
,p_name=>'P250_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(729976890586328284)
,p_name=>'P250_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2462052330994349584)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.lang(''Upload file, comma separated (*.csv) or tab delimited'') d, ''UPLOAD'' r',
'from dual',
'union all ',
'select apex_lang.lang(''Copy and Paste'') d, ''PASTE'' r',
'from dual'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(342083592177409)
,p_computation_sequence=>10
,p_computation_item=>'P250_COPY_PASTE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(342891735177411)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P250_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P250_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(335716180177385)
,p_associated_item=>wwv_flow_imp.id(729976161285328282)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(342431273177410)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P250_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P250_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(335716180177385)
,p_associated_item=>wwv_flow_imp.id(729976552694328283)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345151372177415)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_SHOW_ADV_SETTINGS'
,p_condition_element=>'P250_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345546869177416)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_IMPORT_FROM'
,p_condition_element=>'P250_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(346092710177417)
,p_event_id=>wwv_flow_imp.id(345546869177416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(346576890177418)
,p_event_id=>wwv_flow_imp.id(345546869177416)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(346936998177419)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_IMPORT_FROM'
,p_condition_element=>'P250_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347487783177420)
,p_event_id=>wwv_flow_imp.id(346936998177419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347962906177421)
,p_event_id=>wwv_flow_imp.id(346936998177419)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(348388948177421)
,p_name=>'CANCEL - Clicked'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(335410183177384)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(348908848177423)
,p_event_id=>wwv_flow_imp.id(348388948177421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(343576208177412)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(''P250_IMPORT_FROM'', :P250_IMPORT_FROM);',
'APEX_UTIL.SET_PREFERENCE(''P250_ENCLOSED_BY'', :P250_ENCLOSED_BY);',
'APEX_UTIL.SET_PREFERENCE(''P250_FIRST_ROW'', NVL(:P250_FIRST_ROW, ''N''));',
'APEX_UTIL.SET_PREFERENCE(''P250_CHAR_SET'', :P250_CHAR_SET);',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55549760898909051
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(344348239177413)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_COM.STRACK-SOFTWARE.UPLOAD-TO-COLLECTION'
,p_process_name=>'Upload to Apex Collection'
,p_attribute_01=>'P250_IMPORT_FROM'
,p_attribute_02=>'P250_SEPARATOR'
,p_attribute_03=>'P250_FILE_NAME'
,p_attribute_04=>'P250_CHAR_SET'
,p_attribute_05=>'P250_ROWS_LOADED'
,p_attribute_06=>'IMPORTED_DATA'
,p_attribute_07=>'Y'
,p_attribute_08=>'P250_ENCLOSED_BY'
,p_attribute_09=>'P250_FIRST_ROW'
,p_attribute_11=>'P250_COLUMN_HEADERS'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55550532929909052
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(344766626177414)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add_member_to_collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'-- APEX_COLLECTION.ADD_MEMBER(',
'-- p_collection_name => ''PARSE_COL_HEAD'',',
'-- p_c001 => ''C06'',',
'-- p_c002 => ''START_DATE'');',
'',
'-- APEX_COLLECTION.ADD_MEMBER(',
'-- p_collection_name => ''PARSE_COL_HEAD'',',
'-- p_c001 => ''C07'',',
'-- p_c002 => ''END_DATE'');',
'',
'-- APEX_COLLECTION.ADD_MEMBER(',
'-- p_collection_name => ''PARSE_COL_HEAD'',',
'-- p_c001 => ''C08'',',
'-- p_c002 => ''SHEET_NO'');',
'',
'-- APEX_COLLECTION.MOVE_MEMBER_DOWN(',
'-- p_collection_name =>''PARSE_COL_HEAD'',',
'-- p_seq => ''7'');',
'',
'-- APEX_COLLECTION.MOVE_MEMBER_DOWN(',
'-- p_collection_name =>''PARSE_COL_HEAD'',',
'-- p_seq => ''8'');',
'',
'-- APEX_COLLECTION.MOVE_MEMBER_DOWN(',
'-- p_collection_name =>''PARSE_COL_HEAD'',',
'-- p_seq => ''9'');',
'',
'FOR UPLOAD_ROW IN (SELECT SEQ_ID',
'                       FROM APEX_COLLECTIONS',
'                      WHERE COLLECTION_NAME = ''IMPORTED_DATA'')',
'LOOP',
' ',
'',
'     APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''6'',',
'        p_attr_value        => :P250_START_DATE);',
'',
'         APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''7'',',
'        p_attr_value        => :P250_END_DATE);',
'       ',
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''8'',',
'        p_attr_value        => :P250_SHEET_NUMBER);',
'',
'END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55550951316909053
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(343979779177413)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P250_ROWS_LOADED,P250_COLUMN_HEADERS'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P250_ROWS_LOADED > 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>55550164469909052
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(343182247177411)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P250_IMPORT_FROM := COALESCE(:P250_IMPORT_FROM, APEX_UTIL.GET_PREFERENCE(''P250_IMPORT_FROM''), ''UPLOAD'');',
':P250_ENCLOSED_BY := COALESCE(:P250_ENCLOSED_BY, APEX_UTIL.GET_PREFERENCE(''P250_ENCLOSED_BY''), ''"'');',
':P250_FIRST_ROW := COALESCE(:P250_FIRST_ROW, APEX_UTIL.GET_PREFERENCE(''P250_FIRST_ROW''), ''Y'');',
':P250_CHAR_SET := COALESCE(:P250_CHAR_SET, APEX_UTIL.GET_PREFERENCE(''P250_CHAR_SET''), ''UTF-8'');',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55549366937909050
);
wwv_flow_imp.component_end;
end;
/
