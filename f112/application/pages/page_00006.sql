prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'dummyTestPage'
,p_alias=>'DUMMYTESTPAGE'
,p_step_title=>'dummyTestPage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5017133443423461)
,p_plug_name=>'RaytestForm'
,p_title=>'Ray'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_EMPLOYEE'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017314833423463)
,p_name=>'P6_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017428184423464)
,p_name=>'P6_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Emp Company No'
,p_source=>'EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017463913423465)
,p_name=>'P6_IND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Ind Id'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017585408423466)
,p_name=>'P6_REPORT_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Report To'
,p_source=>'REPORT_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017650745423467)
,p_name=>'P6_CONFIRMED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Confirmed'
,p_source=>'CONFIRMED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017829875423468)
,p_name=>'P6_PERMANENT_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Permanent Staff'
,p_source=>'PERMANENT_STAFF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5017942632423469)
,p_name=>'P6_EMPLOYMENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employment Status'
,p_source=>'EMPLOYMENT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018009809423470)
,p_name=>'P6_EMPLOYMENT_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018101994423471)
,p_name=>'P6_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Payment Type'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018197901423472)
,p_name=>'P6_DATE_EMPLOYED'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Date Employed'
,p_source=>'DATE_EMPLOYED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018335961423473)
,p_name=>'P6_DATE_INTERVIEWED'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Date Interviewed'
,p_source=>'DATE_INTERVIEWED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018395743423474)
,p_name=>'P6_INTERVIEWED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Interviewed By'
,p_source=>'INTERVIEWED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018518844423475)
,p_name=>'P6_REPORT_TO_FUNCTIONAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Report To Functional'
,p_source=>'REPORT_TO_FUNCTIONAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018553283423476)
,p_name=>'P6_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Appointment Date'
,p_source=>'APPOINTMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018711451423477)
,p_name=>'P6_CONTRACT_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Contract Staff'
,p_source=>'CONTRACT_STAFF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018805986423478)
,p_name=>'P6_DATE_SEPARATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Date Separated'
,p_source=>'DATE_SEPARATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018867000423479)
,p_name=>'P6_REHIRED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Rehired'
,p_source=>'REHIRED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5018994848423480)
,p_name=>'P6_PRIMARY_TAX_JOB'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Primary Tax Job'
,p_source=>'PRIMARY_TAX_JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5019054556423481)
,p_name=>'P6_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5019214583423482)
,p_name=>'P6_ENTRY_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Entry Date'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5019279659423483)
,p_name=>'P6_APPLICATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Application Date'
,p_source=>'APPLICATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5019344464423484)
,p_name=>'P6_JOB_APPLIED_FOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Job Applied For'
,p_source=>'JOB_APPLIED_FOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5642896692630035)
,p_name=>'P6_CREDIT_UNION_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Credit Union 1'
,p_source=>'CREDIT_UNION_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5642993242630036)
,p_name=>'P6_CREDIT_UNION_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Credit Union 2'
,p_source=>'CREDIT_UNION_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643064958630037)
,p_name=>'P6_UNION_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Union Code'
,p_source=>'UNION_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643239456630038)
,p_name=>'P6_SEPARATED_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Separated Status'
,p_source=>'SEPARATED_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643262670630039)
,p_name=>'P6_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Payroll Effective'
,p_source=>'PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643429695630040)
,p_name=>'P6_MACHINE_INSERT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Machine Insert'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643505733630041)
,p_name=>'P6_MACHINE_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Machine Update'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643613391630042)
,p_name=>'P6_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643658939630043)
,p_name=>'P6_LAST_CHANGED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Last Changed Date'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643827290630044)
,p_name=>'P6_EMPLOYMENT_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employment Status Id'
,p_source=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5643857706630045)
,p_name=>'P6_EMPLOYMENT_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employment Class Id'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644008735630046)
,p_name=>'P6_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Position Name'
,p_source=>'POSITION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644108133630047)
,p_name=>'P6_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Union Code Id'
,p_source=>'UNION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644212354630048)
,p_name=>'P6_SEPARATED_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Separated Status Id'
,p_source=>'SEPARATED_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644245720630049)
,p_name=>'P6_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Org Id'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644402056630050)
,p_name=>'P6_INCLUDE_PAYROLL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Include Payroll'
,p_source=>'INCLUDE_PAYROLL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644508017630051)
,p_name=>'P6_SKILLS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Skills'
,p_source=>'SKILLS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644615827630052)
,p_name=>'P6_ATTACH_CV'
,p_source_data_type=>'BLOB'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Attach Cv'
,p_source=>'ATTACH_CV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644715368630053)
,p_name=>'P6_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644842659630054)
,p_name=>'P6_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644865108630055)
,p_name=>'P6_LAST_UPDATE_CV'
,p_source_data_type=>'DATE'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Last Update Cv'
,p_source=>'LAST_UPDATE_CV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5644983675630056)
,p_name=>'P6_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645067776630057)
,p_name=>'P6_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Verified Date'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645234519630058)
,p_name=>'P6_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Transaction Type Id'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645284924630059)
,p_name=>'P6_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645366026630060)
,p_name=>'P6_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645511877630061)
,p_name=>'P6_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645564242630062)
,p_name=>'P6_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Org Structure'
,p_source=>'ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645717899630063)
,p_name=>'P6_ORGDTL_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Orgdtl Id'
,p_source=>'ORGDTL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645821378630064)
,p_name=>'P6_MOVEMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Movement Id'
,p_source=>'MOVEMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645898408630065)
,p_name=>'P6_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Union Join Date'
,p_source=>'UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5645985356630066)
,p_name=>'P6_MIGRATE_PK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Migrate Pk'
,p_source=>'MIGRATE_PK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646116209630067)
,p_name=>'P6_IS_PENSIONER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Is Pensioner'
,p_source=>'IS_PENSIONER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646150968630068)
,p_name=>'P6_EMP_GRADE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Emp Grade Id'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646275908630069)
,p_name=>'P6_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646397849630070)
,p_name=>'P6_MIGRATE_VAR_PKEY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Migrate Var Pkey'
,p_source=>'MIGRATE_VAR_PKEY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646483267630071)
,p_name=>'P6_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Position Id'
,p_source=>'POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646634482630072)
,p_name=>'P6_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Shift Id'
,p_source=>'SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646707680630073)
,p_name=>'P6_WKLOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Wklocation Id'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646812553630074)
,p_name=>'P6_EMPLOYMENT_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employment Type Id'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5646873332630075)
,p_name=>'P6_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Leave Ann Date'
,p_source=>'LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647015503630076)
,p_name=>'P6_EMPLOYEE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employee Status'
,p_source=>'EMPLOYEE_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647082726630077)
,p_name=>'P6_EMPLOYEE_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Employee Status Id'
,p_source=>'EMPLOYEE_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647179922630078)
,p_name=>'P6_PAY_EXE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Pay Exe Status'
,p_source=>'PAY_EXE_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647267415630079)
,p_name=>'P6_DEPARTMENT_TRANSFER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Department Transfer'
,p_source=>'DEPARTMENT_TRANSFER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647345264630080)
,p_name=>'P6_CONFIRMATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Confirmation Date'
,p_source=>'CONFIRMATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647508238630081)
,p_name=>'P6_RETIREMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Retirement Date'
,p_source=>'RETIREMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647597653630082)
,p_name=>'P6_PENSIONSCHEME_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Pensionscheme Date'
,p_source=>'PENSIONSCHEME_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647724718630083)
,p_name=>'P6_LIVE_OVERSEAS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Live Overseas'
,p_source=>'LIVE_OVERSEAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647822048630084)
,p_name=>'P6_APPOINTMENT_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Appointment End Date'
,p_source=>'APPOINTMENT_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5647848844629935)
,p_name=>'P6_PENSION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_item_source_plug_id=>wwv_flow_imp.id(5017133443423461)
,p_prompt=>'Pension Code Id'
,p_source=>'PENSION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5017225389423462)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5017133443423461)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form dummyTestPage'
,p_internal_uid=>90544981497648328
);
wwv_flow_imp.component_end;
end;
/
