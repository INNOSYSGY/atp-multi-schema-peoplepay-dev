prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_name=>'Data Load Source'
,p_alias=>'DATA-LOAD-SOURCE'
,p_step_title=>'Data Load Source'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3263886207143276637)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3263886463064276637)
,p_plug_name=>'Data Load Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(3263888799964276639)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263885435298276636)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P202_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263885784135276636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:161:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3263868829981276628)
,p_branch_action=>'f?p=&APP_ID.:203:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3263885435298276636)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263873761087276629)
,p_name=>'P202_DECIMAL_CHARACTER'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263874706896276630)
,p_name=>'P202_GROUP_SEPARATOR'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263875641638276630)
,p_name=>'P202_CURRENCY'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263876539794276630)
,p_name=>'P202_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_imp.id(3326630684841913818)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263877422013276631)
,p_name=>'P202_APP_DATE_FORMAT'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>'Y'
,p_prompt=>'Date / Number Formats to use'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATE_FORMAT_OPT'
,p_lov=>'.'||wwv_flow_imp.id(3296507808221377972)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Choose whether to provide custom or to use standard format masks'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263880048263276632)
,p_name=>'P202_SHOW_ADV_SETTINGS'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Use Advanced Settings;Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Display advanced settings for data loading: Currency Symbol, Decimal Characters, File Encoding or Date Formats'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263880975988276633)
,p_name=>'P202_FIRST_ROW'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:First Row has Column Names;Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263881906245276634)
,p_name=>'P202_ENCLOSED_BY'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263882798399276634)
,p_name=>'P202_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>','
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263883341815276634)
,p_name=>'P202_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'spellcheck="false"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3263884599467276635)
,p_name=>'P202_FILE_NAME'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'REQUEST',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263884943932276635)
,p_name=>'P202_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_item_default=>'UPLOAD'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_imp.id(3326618438156913805)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3282932098867176253)
,p_name=>'P202_PAYROLL_END_DATE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'Payroll End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3282932227110176254)
,p_name=>'P202_PAYROLL_START_DATE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(3263886207143276637)
,p_prompt=>'Payroll Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3263883572803276634)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P202_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P202_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(3263885435298276636)
,p_associated_item=>wwv_flow_imp.id(3263884599467276635)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3263879183280276632)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P202_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P202_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(3263885435298276636)
,p_associated_item=>wwv_flow_imp.id(3263883341815276634)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263872963028276629)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_IMPORT_FROM'
,p_condition_element=>'P202_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263871484720276629)
,p_event_id=>wwv_flow_imp.id(3263872963028276629)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263871977181276629)
,p_event_id=>wwv_flow_imp.id(3263872963028276629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'\t'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263872523243276629)
,p_event_id=>wwv_flow_imp.id(3263872963028276629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263878927665276632)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SHOW_ADV_SETTINGS'
,p_condition_element=>'P202_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263877932465276632)
,p_event_id=>wwv_flow_imp.id(3263878927665276632)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_CURRENCY,P202_GROUP_SEPARATOR,P202_DECIMAL_CHARACTER,P202_APP_DATE_FORMAT,P202_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263878432287276632)
,p_event_id=>wwv_flow_imp.id(3263878927665276632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_CURRENCY,P202_GROUP_SEPARATOR,P202_DECIMAL_CHARACTER,P202_APP_DATE_FORMAT,P202_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263871046538276629)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_IMPORT_FROM'
,p_condition_element=>'P202_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263870550664276628)
,p_event_id=>wwv_flow_imp.id(3263871046538276629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263869577926276628)
,p_event_id=>wwv_flow_imp.id(3263871046538276629)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263870137889276628)
,p_event_id=>wwv_flow_imp.id(3263871046538276629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263869096394276628)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(3263888972009276641)
,p_attribute_02=>'P202_IMPORT_FROM'
,p_attribute_03=>'P202_SEPARATOR'
,p_attribute_04=>'P202_ENCLOSED_BY'
,p_attribute_05=>'P202_FIRST_ROW'
,p_attribute_06=>'P202_CURRENCY'
,p_attribute_07=>'P202_GROUP_SEPARATOR'
,p_attribute_08=>'P202_DECIMAL_CHARACTER'
,p_attribute_09=>'P202_FILE_NAME'
,p_attribute_10=>'P202_COPY_PASTE'
,p_attribute_11=>'P202_CHAR_SET'
,p_attribute_12=>'P202_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3263885435298276636)
,p_internal_uid=>3148084962537962923
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3263674993829838202)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add_dates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_COLLECTION.ADD_MEMBER(',
'p_collection_name => ''PARSE_COL_HEAD'',',
'p_c001 => ''C039'',',
'p_c002 => ''PAYROLL_START_DATE'');',
'',
'APEX_COLLECTION.ADD_MEMBER(',
'p_collection_name => ''PARSE_COL_HEAD'',',
'p_c001 => ''C40'',',
'p_c002 => ''PAYROLL_END_DATE'');',
'',
'APEX_COLLECTION.MOVE_MEMBER_DOWN(',
'p_collection_name =>''PARSE_COL_HEAD'',',
'p_seq => ''40'');',
'',
'APEX_COLLECTION.MOVE_MEMBER_DOWN(',
'p_collection_name =>''PARSE_COL_HEAD'',',
'p_seq => ''41'');',
'',
'FOR UPLOAD_ROW IN (SELECT SEQ_ID',
'                       FROM APEX_COLLECTIONS',
'                      WHERE COLLECTION_NAME = ''SPREADSHEET_CONTENT'')',
'LOOP',
' ',
'',
'     APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''SPREADSHEET_CONTENT'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''39'',',
'        p_attr_value        => :P202_PAYROLL_START_DATE);',
'',
'         APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name   => ''SPREADSHEET_CONTENT'',',
'        p_seq               => UPLOAD_ROW.SEQ_ID,',
'        p_attr_number       => ''40'',',
'        p_attr_value        => :P202_PAYROLL_END_DATE);',
'',
'END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3147890859973524497
);
wwv_flow_imp.component_end;
end;
/
