prompt --application/pages/page_00314
begin
--   Manifest
--     PAGE: 00314
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
 p_id=>314
,p_name=>'frmtrainingcourse'
,p_alias=>'FRMTRAININGCOURSE'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Training Course'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3027602741020425839)
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8208695374060524689)
,p_plug_name=>'Create/Edit Training Course'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'HR_TRN_COURSE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_required_role=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7643469885976944479)
,p_name=>'Summary of Duration'
,p_parent_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select course_duration_days, course_lab_hours, course_field_hours',
'-- from HR_TRN_COURSE',
'-- where id = :P314_ID',
'',
'SELECT ',
'    SUM(FIELD_HOURS) FIELD_HOURS, SUM(LAB_HOURS) LAB_HOURS, SUM(THEORY_HOURS) THEORY_HOURS, (SUM(FIELD_HOURS) + SUM(LAB_HOURS) + SUM(THEORY_HOURS)) TOTAL_HOURS',
'FROM',
'    (SELECT',
'        COURSE_MODE, NVL(SUM(STRUCTURE_FIELD_HOURS), 0) FIELD_HOURS, 0 LAB_HOURS, 0 THEORY_HOURS',
'    FROM',
'        HR_TRN_COURSE_STRUCTURE',
'    WHERE',
'        COURSE_MODE = ''F''',
'        AND COURSE_ID = :P314_ID',
'    GROUP BY ',
'        COURSE_MODE',
'    UNION',
'    SELECT',
'        COURSE_MODE, 0 FIELD_HOURS, NVL(SUM(STRUCTURE_FIELD_HOURS), 0) LAB_HOURS, 0 THEORY_HOURS',
'    FROM',
'        HR_TRN_COURSE_STRUCTURE',
'    WHERE',
'        COURSE_MODE = ''L''',
'        AND COURSE_ID = :P314_ID',
'    GROUP BY ',
'        COURSE_MODE',
'    UNION',
'    SELECT',
'        COURSE_MODE, 0 FIELD_HOURS, 0 LAB_HOURS, NVL(SUM(STRUCTURE_FIELD_HOURS), 0) THEORY_HOURS',
'    FROM',
'        HR_TRN_COURSE_STRUCTURE',
'    WHERE',
'        COURSE_MODE = ''T''',
'        AND COURSE_ID = :P314_ID',
'    GROUP BY ',
'        COURSE_MODE',
'    ) '))
,p_display_when_condition=>'P314_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P314_ID'
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
 p_id=>wwv_flow_imp.id(139202871240295107)
,p_query_column_id=>1
,p_column_alias=>'FIELD_HOURS'
,p_column_display_sequence=>10
,p_column_heading=>'Field Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139203330844295107)
,p_query_column_id=>2
,p_column_alias=>'LAB_HOURS'
,p_column_display_sequence=>20
,p_column_heading=>'Lab Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139203719201295108)
,p_query_column_id=>3
,p_column_alias=>'THEORY_HOURS'
,p_column_display_sequence=>30
,p_column_heading=>'Theory Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139204132002295108)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_HOURS'
,p_column_display_sequence=>40
,p_column_heading=>'Total Hours'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8207683273310072420)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' ',
'  to_char(created,''DD-MON-YYYY HH:MIPM'')||'' by ''||created_by entered,',
' ',
'  to_char(updated,''DD-MON-YYYY HH:MIPM'')||'' by ''||updated_by last_changed,',
' ',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' ',
'--   machine_insert,',
' ',
'--   machine_update,',
' ',
'  apex_util.get_since(updated) updated',
' ',
'from',
' ',
'  HR_TRN_COURSE',
' ',
'where',
' ',
'id=:p314_id'))
,p_display_when_condition=>'P314_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P314_ID'
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
 p_id=>wwv_flow_imp.id(32954462511781198)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32954550378781199)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32954636775781200)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32954749342781201)
,p_query_column_id=>4
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>40
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139183085056295090)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'SELECT_COURSE_DAYS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--tiny:t-Button--success:t-Button--link:t-Button--iconLeft:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Select Course Days'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'display_only'
,p_icon_css_classes=>'fa-calendar-user'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139183484731295091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139183923093295091)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P314_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139184268100295091)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P314_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139184647140295091)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:314::'
,p_button_condition=>'P314_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139185099918295091)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P314_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139185489701295092)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P314_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(139209355254295112)
,p_branch_name=>'delete_brancd'
,p_branch_action=>'f?p=&APP_ID.:313:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(139183923093295091)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(139208985644295112)
,p_branch_name=>'create_again'
,p_branch_action=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:314::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(139185489701295092)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(139209787459295112)
,p_branch_name=>'Go To Page 216'
,p_branch_action=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:314:P314_ID:&P314_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32954821869781202)
,p_name=>'P314_VERIFIED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8207683273310072420)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152542220791330764)
,p_name=>'P314_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
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
 p_id=>wwv_flow_imp.id(1152542611984330764)
,p_name=>'P314_PROGRAM_CODE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Program'
,p_source=>'PROGRAM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TRAINING_PROGRAM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROGRAM_NAME, id',
'from HR_TRN_PROGRAM',
'where org_id =:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(1152543042869330765)
,p_name=>'P314_DESIGNATION_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Course Type'
,p_source=>'DESIGNATION_CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRAINING_COURSE_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    VALUE_DESCRIPTION DISPLAY, TABLE_VALUE RETURN',
'FROM',
'    HR_HCF_LOOKUP',
'WHERE ',
'    TABLE_NAME = ''TBLTRAININGCOURSETYPE''',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    AND (END_PERIOD IS NULL OR END_PERIOD >= TRUNC(current_date))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152543396572330765)
,p_name=>'P314_COURSE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Course No'
,p_source=>'COURSE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152543797931330766)
,p_name=>'P314_COURSE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Course Name'
,p_source=>'COURSE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(1152544191102330766)
,p_name=>'P314_COURSE_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Course Description'
,p_source=>'COURSE_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1152544550569330767)
,p_name=>'P314_STRUCTURE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Structure Type'
,p_source=>'STRUCTURE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRAINING_COURSE_STRUCTURE_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    VALUE_DESCRIPTION DISPLAY, TABLE_VALUE RETURN',
'FROM',
'    HR_HCF_LOOKUP',
'WHERE ',
'    TABLE_NAME = ''TBLCOURSESTRUCTURETYPE''',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    AND (END_PERIOD IS NULL OR END_PERIOD >= TRUNC(current_date))'))
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
 p_id=>wwv_flow_imp.id(1152544949453330767)
,p_name=>'P314_EVALUATED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'0'
,p_prompt=>'Evaluated'
,p_source=>'EVALUATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', '0',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152545360250330768)
,p_name=>'P314_JOB_CLASSIFICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Classification'
,p_source=>'JOB_CLASSIFICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRAINING_CLASSIFICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, TABLE_VALUE B',
'from table(pkg_global_fnts.get_lookup_value(''TBLTRAININGCLASSIFICATION'')) X',
'where org_id=:APP_ORG_SHR_DED',
'',
'union',
'',
'select VALUE_DESCRIPTION A, TABLE_VALUE B',
'from HR_HCF_LOOKUP ',
'where org_id = :APP_ORG_SHR_DED',
'and table_name = ''TBLTRAININGCLASSIFICATION''',
'and verified_by is not null',
'and trunc(start_period) <= trunc(current_date)',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152545776503330768)
,p_name=>'P314_QUALIFICATION_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Qualification Level'
,p_source=>'QUALIFICATION_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUALIFICATION_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLQUALIFICATIONLEVEL'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152546228360330769)
,p_name=>'P314_USE_MONDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'2'
,p_prompt=>'Monday'
,p_source=>'USE_MONDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '2',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152546623887330770)
,p_name=>'P314_USE_TUESDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'3'
,p_prompt=>'Tuesday'
,p_source=>'USE_TUESDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '3',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152547019488330770)
,p_name=>'P314_USE_WEDNESDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'4'
,p_prompt=>'Wednesday'
,p_source=>'USE_WEDNESDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '4',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152547403902330771)
,p_name=>'P314_USE_THURSDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'5'
,p_prompt=>'Thursday'
,p_source=>'USE_THURSDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '5',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152547789926330771)
,p_name=>'P314_FRIDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'6'
,p_prompt=>'Friday'
,p_source=>'USE_FRIDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '6',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152548223237330771)
,p_name=>'P314_USE_SATURDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'7'
,p_prompt=>'Saturday'
,p_source=>'USE_SATURDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '7',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152548547049330772)
,p_name=>'P314_USE_SUNDAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'1'
,p_prompt=>'Sunday'
,p_source=>'USE_SUNDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152549007021330772)
,p_name=>'P314_USE_HOLIDAYS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'Y'
,p_prompt=>'Holidays'
,p_source=>'USE_HOLIDAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-color-10-text'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152549401791330773)
,p_name=>'P314_RECURRING_PERIOD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'0'
,p_prompt=>'Recurs every'
,p_post_element_text=>'day(s)'
,p_source=>'RECURRING_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If the course is repeated after a certain number of days, specify the number of days that must go by before it occurs again. ',
'If the course is not repeated, leave as 0.'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152550295268330775)
,p_name=>'P314_COURSE_DURATION_HOURS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'0'
,p_prompt=>'Duration Hours'
,p_post_element_text=>'hr(s)'
,p_source=>'COURSE_DURATION_HOURS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152550679304330776)
,p_name=>'P314_VALIDITY_PERIOD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'0'
,p_prompt=>'Certificate Valid for'
,p_post_element_text=>'day(s)'
,p_source=>'VALIDITY_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152551071300330776)
,p_name=>'P314_LOCAL_YES_NO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_default=>'1'
,p_prompt=>'Local/Overseas?'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Overseas',
  'off_value', '0',
  'on_label', 'Local',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152551515661330777)
,p_name=>'P314_DEFAULT_LOCATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Default Internal Location'
,p_source=>'DEFAULT_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION x',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''SOFTWARE USER''',
'              and k.parent_org_id =:APP_ORG_SHR_DED',
'              )  ',
'UNION',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION x    ',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''SOFTWARE USER''',
'              and k.parent_org_id in (select parent_org_id ',
'                                      from hr_hcf_organisation',
'                                      where id =:APP_ORG_SHR_DED)',
'              )  ',
'UNION',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION x   ',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''SOFTWARE USER''',
'              and k.id in (select nvl(parent_org_id,id) ',
'                          from hr_hcf_organisation',
'                          where id =:APP_ORG_SHR_DED)',
'              )  '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(1152551899327330777)
,p_name=>'P314_COLOUR_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Colour Code'
,p_source=>'COLOUR_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APEX_COLOURS'
,p_lov=>'.'||wwv_flow_imp.id(2915121782434199043)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152552249478330778)
,p_name=>'P314_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152552728082330779)
,p_name=>'P314_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_item_source_plug_id=>wwv_flow_imp.id(8208695374060524689)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139207483599295111)
,p_name=>'show_recurring_period'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P314_RECURRING'
,p_condition_element=>'P314_RECURRING'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139207989222295111)
,p_event_id=>wwv_flow_imp.id(139207483599295111)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P314_RECURRING_PERIOD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139208453100295112)
,p_event_id=>wwv_flow_imp.id(139207483599295111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P314_RECURRING_PERIOD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139202192575295106)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8208695374060524689)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmtrainingcourse'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23418058718981401
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139201799051295106)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8208695374060524689)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmtrainingcourse'
,p_internal_uid=>23417665194981401
);
wwv_flow_imp.component_end;
end;
/
