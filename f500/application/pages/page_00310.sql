prompt --application/pages/page_00310
begin
--   Manifest
--     PAGE: 00310
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>310
,p_name=>'frmTrainingClass'
,p_alias=>'FRMTRAININGCLASS'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Training Class'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3555013156943720402)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_dialog_height=>'600'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8189904190879581844)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_TRN_CLASS_ATTEND',
'where class_id = :P310_ID',
'and :P310_SWITCH_REGION = 2'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8293826720755934817)
,p_plug_name=>'Create/Edit Training Classes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_TRN_COURSE_CLASS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8293830690831934856)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  apex_util.get_since(last_changed_date) updated',
'from HR_TRN_COURSE_CLASS',
'where id = :P310_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666460221145501010)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666460610869501010)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666460975655501010)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(666461429612501011)
,p_query_column_id=>4
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>40
,p_column_heading=>'Updated'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666451637917501000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P310_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666451978091501001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P310_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666452392547501001)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310::'
,p_button_condition=>'P310_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666452790743501001)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P310_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666453185947501002)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P310_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(666468211291501016)
,p_branch_name=>'CREATE_AGAIN_br'
,p_branch_action=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(666452790743501001)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(666467378942501015)
,p_branch_name=>'Delete_BR'
,p_branch_action=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(666453185947501002)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(666466976890501014)
,p_branch_name=>'Delete_BR2'
,p_branch_action=>'f?p=&APP_ID.:316:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(666453185947501002)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(666467773238501015)
,p_branch_name=>'Go To Page 310'
,p_branch_action=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310:P310_ID:&P310_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679669262976454955)
,p_name=>'P310_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679669594015454956)
,p_name=>'P310_CLASS_START_TIME'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Class Start Time'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CLASS_START_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679670019658454956)
,p_name=>'P310_CLASS_END_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Class End Time'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CLASS_END_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679670445446454957)
,p_name=>'P310_CLASS_HOURS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Hours'
,p_source=>'CLASS_HOURS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679670799499454957)
,p_name=>'P310_COURSE_SCHEDULE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Course Schedule'
,p_source=>'COURSE_SCHEDULE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME||'' by ''||c.salutation||c.first_name ||'' ''||surname||'' at ''|| case when venue is null then (select to_char(location_description) from hr_hcf_worklocation c where c.id = a.wklocation_id) else  venue end',
'    ||'' from ''||to_char(a.START_DATE,''DD-MON-YYYY'') ||'' to ''||to_char(a.END_DATE,''DD-MON-YYYY'')display, a.id return_value ',
'from ',
'    HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'    join hr_rcm_individual c on c.id=  a.FACILITATOR',
'where ',
'    PKG_GLOBAL_FNTS.FN_SHAREREFORG(a.org_id) =:APP_ORG_SHR_DED',
'    and TRUNC(to_date(:P310_CLASS_START_TIME, ''DD-MON-YYYY HH:MIPM'')) between a.start_date and a.end_date',
'order by ',
'    a.START_DATE desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Schedule--'
,p_lov_cascade_parent_items=>'P310_CLASS_START_TIME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when=>'P310_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679671209876454958)
,p_name=>'P310_COURSE_STRUCTURE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Course Structure'
,p_source=>'COURSE_STRUCTURE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     a.structure_type||''(''|| structure_no||'') ''||structure_name a, A.ID',
'FROM  hr_trn_course_structure A ',
'join hr_trn_course b on b.id = a.course_id',
'where PKG_GLOBAL_FNTS.FN_SHAREREFORG(b.org_id) =:APP_ORG_SHR_DED',
'and exists (select 1',
'            from HR_TRN_COURSE_SCHEDULE sch',
'            where b.id = sch.COURSE_ID',
'            and sch.id=:P310_COURSE_SCHEDULE_ID',
'            )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Structure--'
,p_lov_cascade_parent_items=>'P310_COURSE_SCHEDULE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679671650280454959)
,p_name=>'P310_CLASS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Class Name'
,p_source=>'CLASS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1679671993116454959)
,p_name=>'P310_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>2
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
 p_id=>wwv_flow_imp.id(1679672403747454960)
,p_name=>'P310_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_source_plug_id=>wwv_flow_imp.id(8293826720755934817)
,p_item_default=>'APP_ORG_SHR_DED'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666462419865501012)
,p_name=>'compute_duration'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_CLASS_END_TIME,P310_CLASS_START_TIME,P310_COURSE_SCHEDULE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666462923337501012)
,p_event_id=>wwv_flow_imp.id(666462419865501012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_CLASS_HOURS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round((TO_DATE(:P310_CLASS_END_TIME,''DD-MON-YYYY HH:MIPM'')-TO_DATE(:P310_CLASS_START_TIME,''DD-MON-YYYY HH:MIPM''))*24 ,2)',
'FROM DUAL'))
,p_attribute_07=>'P310_CLASS_END_TIME,P310_CLASS_START_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666463278723501012)
,p_name=>'set_date'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_SCHEDULE_ID_GEN'
,p_condition_element=>'P310_SCHEDULE_ID_GEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666463771912501012)
,p_event_id=>wwv_flow_imp.id(666463278723501012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_CLASS_START_TIME_GEN,P310_CLASS_END_TIME_GEN'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(START_DATE,''DD-MON-YYYY HH:MI AM'') start_date, to_char(end_DATE,''DD-MON-YYYY HH:MI AM'') end_DATE',
'from HR_TRN_COURSE_SCHEDULE',
'where id = :P310_SCHEDULE_ID_GEN'))
,p_attribute_07=>'P310_SCHEDULE_ID_GEN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666464208885501013)
,p_name=>'SET_SCHEDULE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_CLASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666464737755501013)
,p_event_id=>wwv_flow_imp.id(666464208885501013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_SCHEDULE_ID_PASS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COURSE_SCHEDULE_ID',
'FROM HR_TRN_COURSE_CLASS',
'WHERE ID = :P310_CLASS'))
,p_attribute_07=>'P310_CLASS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666465139912501013)
,p_name=>'set_class_times'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_COURSE_SCHEDULE_ID'
,p_condition_element=>'P310_COURSE_SCHEDULE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666465566066501013)
,p_event_id=>wwv_flow_imp.id(666465139912501013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_CLASS_START_TIME,P310_CLASS_END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(to_date(:P310_CLASS_START_TIME, ''DD-MON-YYYY HH:MIPM''), ''DD-MON-YYYY'') || to_char(a.default_class_start_time, '' HH:MIPM'') class_start, ',
'    to_char(to_date(:P310_CLASS_END_TIME, ''DD-MON-YYYY HH:MIPM''), ''DD-MON-YYYY'') || to_char(a.default_class_end_time, '' HH:MIPM'') class_end',
'    -- to_char(a.start_date, ''DD-MON-YYYY'') || to_char(a.default_class_start_time, '' HH:MIPM''), to_char(a.start_date, ''DD-MON-YYYY'') ||to_char(a.default_class_end_time, '' HH:MIPM'')',
'from',
'    hr_trn_course_schedule a',
'    join hr_trn_course b on a.course_id = b.id',
'where',
'    a.id = :P310_COURSE_SCHEDULE_ID'))
,p_attribute_07=>'P310_COURSE_SCHEDULE_ID,P310_CLASS_START_TIME,P310_CLASS_END_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666466044595501014)
,p_name=>'set_class_name'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P310_COURSE_STRUCTURE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666466543957501014)
,p_event_id=>wwv_flow_imp.id(666466044595501014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P310_CLASS_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    structure_name ||'' :- ''|| INITCAP(structure_type) ||'' No.''|| structure_no',
'from',
'    hr_trn_course_structure',
'where',
'    id = :P310_COURSE_STRUCTURE_ID'))
,p_attribute_07=>'P310_COURSE_STRUCTURE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(666459506740501008)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8293826720755934817)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'form_dml'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23264956960892740
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(666462038429501011)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_class'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE',
'    from HR_TRN_COURSE_CLASS c',
'    where COURSE_SCHEDULE_ID = :P310_SCHEDULE_ID_GEN;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Class successfully deleted.'
,p_internal_uid=>23267488649892743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(666459122036501008)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8293826720755934817)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmTrainingClass'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23264572256892740
);
wwv_flow_imp.component_end;
end;
/
