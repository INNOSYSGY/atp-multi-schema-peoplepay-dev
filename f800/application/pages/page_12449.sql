prompt --application/pages/page_12449
begin
--   Manifest
--     PAGE: 12449
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
 p_id=>12449
,p_name=>'rptimportfile'
,p_alias=>'RPTIMPORTFILE'
,p_page_mode=>'MODAL'
,p_step_title=>'Import File'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825436139759062413)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function set_item()',
'{',
'$s("P21_IMPORT_FROM", "PASTE");',
'$x(''P21_COPY_PASTE'').value= $v(''P21_SAMPLE_DATA'');',
'$x(''P21_SEPARATOR'').value= '','';',
'$s(''P21_FIRST_ROW'', ''Y'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2225549874644476911)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575475618184403150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575476003330403149)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P12449_COPY_PASTE'', ''NEXT'');'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(575489769073403087)
,p_branch_name=>'Show Result'
,p_branch_action=>'f?p=&APP_ID.:12445:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1086889202902707367)
,p_name=>'P12449_START_DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1086889289079707368)
,p_name=>'P12449_END_DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1086889407765707369)
,p_name=>'P12449_SHEET_NO'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_prompt=>'Sheet NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119807492027659561)
,p_name=>'P12449_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_imp.id(3854169556319275594)||'.'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119807923695659563)
,p_name=>'P12449_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119808303903659563)
,p_name=>'P12449_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119809201651659564)
,p_name=>'P12449_SEPARATOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_item_default=>','
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
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
 p_id=>wwv_flow_imp.id(1119810122032659565)
,p_name=>'P12449_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_grid_label_column_span=>3
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
,p_ai_enabled=>false
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Single Quotes'
,p_quick_pick_value_01=>''''
,p_quick_pick_label_02=>'Double Quotes'
,p_quick_pick_value_02=>'"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119810994670659566)
,p_name=>'P12449_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST ROW HAS COLUMN NAMES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.lang(''First Row has Column Names'') as d,',
'       ''Y'' as r',
'  from dual'))
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119814852867659569)
,p_name=>'P12449_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_imp.id(3854181803004275607)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Unicode utf-8'
,p_quick_pick_value_01=>'utf-8'
,p_quick_pick_label_02=>'Windows-1252'
,p_quick_pick_value_02=>'windows-1252'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119816574706659570)
,p_name=>'P12449_ROWS_LOADED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1119950975090043545)
,p_name=>'P12449_COLUMN_HEADERS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2225549874644476911)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(575482434746403112)
,p_computation_sequence=>10
,p_computation_item=>'P12449_COPY_PASTE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575482905081403110)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P12449_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P12449_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(575476003330403149)
,p_associated_item=>wwv_flow_imp.id(1119808303903659563)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575483264714403109)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P12449_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P12449_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(575476003330403149)
,p_associated_item=>wwv_flow_imp.id(1119807923695659563)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575485543291403100)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12449_SHOW_ADV_SETTINGS'
,p_condition_element=>'P12449_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575485985332403099)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12449_IMPORT_FROM'
,p_condition_element=>'P12449_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575486518165403097)
,p_event_id=>wwv_flow_imp.id(575485985332403099)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12449_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575486941250403096)
,p_event_id=>wwv_flow_imp.id(575485985332403099)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12449_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575487405258403095)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12449_IMPORT_FROM'
,p_condition_element=>'P12449_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575487917653403093)
,p_event_id=>wwv_flow_imp.id(575487405258403095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12449_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575488409682403092)
,p_event_id=>wwv_flow_imp.id(575487405258403095)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12449_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575488750188403090)
,p_name=>'CANCEL - Clicked'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575475618184403150)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575489261628403089)
,p_event_id=>wwv_flow_imp.id(575488750188403090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575484357444403104)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(''P12449_IMPORT_FROM'', :P12449_IMPORT_FROM);',
'APEX_UTIL.SET_PREFERENCE(''P12449_ENCLOSED_BY'', :P12449_ENCLOSED_BY);',
'APEX_UTIL.SET_PREFERENCE(''P12449_FIRST_ROW'', NVL(:P12449_FIRST_ROW, ''N''));',
'APEX_UTIL.SET_PREFERENCE(''P12449_CHAR_SET'', :P12449_CHAR_SET);',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>165045830513099550
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575483565832403108)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_COM.STRACK-SOFTWARE.UPLOAD-TO-COLLECTION'
,p_process_name=>'Upload to Apex Collection'
,p_attribute_01=>'P12449_IMPORT_FROM'
,p_attribute_02=>'P12449_SEPARATOR'
,p_attribute_03=>'P12449_FILE_NAME'
,p_attribute_04=>'P12449_CHAR_SET'
,p_attribute_05=>'P12449_ROWS_LOADED'
,p_attribute_06=>'IMPORTED_DATA'
,p_attribute_07=>'Y'
,p_attribute_08=>'P12449_ENCLOSED_BY'
,p_attribute_09=>'P12449_FIRST_ROW'
,p_attribute_11=>'P12449_COLUMN_HEADERS'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>165045038901099554
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575485139586403102)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add to Collection'
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
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''6'',',
'        p_attr_value        => :P12449_START_DATE);',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''7'',',
'        p_attr_value        => :P12449_END_DATE);',
'       ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''IMPORTED_DATA'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''8'',',
'        p_attr_value        => :P12449_SHEET_NO);',
'',
'END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>165046612655099548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575484001064403106)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P12449_ROWS_LOADED,P12449_COLUMN_HEADERS'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P12449_ROWS_LOADED > 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>165045474133099552
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575484807393403103)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P12449_IMPORT_FROM := COALESCE(:P12449_IMPORT_FROM, APEX_UTIL.GET_PREFERENCE(''P12449_IMPORT_FROM''), ''UPLOAD'');',
':P12449_ENCLOSED_BY := COALESCE(:P12449_ENCLOSED_BY, APEX_UTIL.GET_PREFERENCE(''P12449_ENCLOSED_BY''), ''"'');',
':P12449_FIRST_ROW := COALESCE(:P12449_FIRST_ROW, APEX_UTIL.GET_PREFERENCE(''P12449_FIRST_ROW''), ''Y'');',
':P12449_CHAR_SET := COALESCE(:P12449_CHAR_SET, APEX_UTIL.GET_PREFERENCE(''P12449_CHAR_SET''), ''UTF-8'');',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>165046280462099549
);
wwv_flow_imp.component_end;
end;
/
