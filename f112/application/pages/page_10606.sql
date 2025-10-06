prompt --application/pages/page_10606
begin
--   Manifest
--     PAGE: 10606
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
 p_id=>10606
,p_name=>'frmTestPage'
,p_alias=>'FRMTESTPAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Test Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3253585664280803292)
,p_plug_name=>'frmTestPage'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TST_CNF_TESTPAGE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3253579283141803202)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10606_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3253580489819803204)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3253578886292803202)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10606_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3253579696442803203)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P10606_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253436558914597303)
,p_name=>'P10606_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:High;High,Medium;Medium,Low;Low'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253582925471803207)
,p_name=>'P10606_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253583353305803219)
,p_name=>'P10606_PAGETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Page Type'
,p_source=>'PAGETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Form;Form,Report;Report,Print Report;Print Report'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253583759423803231)
,p_name=>'P10606_PAGEDESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Page Description'
,p_source=>'PAGEDESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cMaxlength=>500
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'INTERMEDIATE',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253584204162803243)
,p_name=>'P10606_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(PAGE_TITLE, PAGE_NAME) a,',
'   PAGE_ID b',
'from  APEX_APPLICATION_PAGES where application_name=''GPL TESTING'''))
,p_lov_display_null=>'YES'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253584546743803255)
,p_name=>'P10606_SUB_MODULE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Sub Module'
,p_source=>'SUB_MODULE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODULE_NAME,id',
'FROM APP_MODULE',
'where trunc(START_DATE) <= trunc(current_date)',
'AND (TRUNC(END_DATE) IS NULL OR TRUNC(END_DATE) >= TRUNC(current_date))',
'and app_main_MODULE_id=:P10606_MODULE_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P10606_MODULE_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253584921006803267)
,p_name=>'P10606_MODULE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_prompt=>'Module'
,p_source=>'MODULE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct MAIN_MODULE_NAME a, id b',
'FROM APP_MAIN_MODULE',
'where trunc(START_DATE) <= trunc(current_date)',
'AND (TRUNC(END_DATE) IS NULL OR TRUNC(END_DATE) >= TRUNC(current_date))',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253585273631803291)
,p_name=>'P10606_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3253585664280803292)
,p_item_source_plug_id=>wwv_flow_imp.id(3253585664280803292)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3253578056583803201)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3253585664280803292)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmTestPage'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3137793922727489496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3252444976948800665)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3253578886292803202)
,p_internal_uid=>3136660843092486960
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3253578463039803201)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3253585664280803292)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmTestPage'
,p_internal_uid=>3137794329183489496
);
wwv_flow_imp.component_end;
end;
/
