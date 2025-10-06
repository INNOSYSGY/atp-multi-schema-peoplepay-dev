prompt --application/pages/page_00506
begin
--   Manifest
--     PAGE: 00506
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
 p_id=>506
,p_name=>'frmApplReference'
,p_step_title=>'Create/Edit Applicant Reference'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170337056105837514)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3674297294660032759)
,p_plug_name=>'Referee for &P506_SALUTATION_APP.. &P506_FIRST_NAME_APP. &P506_SURNAME_APP. '
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'HR_APL_REFERENCE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3672853803014229481)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_APL_REFERENCE',
'where  id = :P506_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P506_ID'
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
 p_id=>wwv_flow_imp.id(170337604673837519)
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
 p_id=>wwv_flow_imp.id(170337701929837520)
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
 p_id=>wwv_flow_imp.id(170337753387837521)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>30
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(170337854210837522)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(170337999904837523)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832924592506319113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:540:P540_ID:&P506_APPLICANT_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832924990966319114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P506_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832925388284319115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P506_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832925759475319115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P506_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832926170160319115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:506:P506_APPLICANT_ID:&P506_APPLICANT_ID.'
,p_button_condition=>'P506_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2832926567806319116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(170337056105837514)
,p_button_name=>'MAKE_USER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Make User'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2832944245024319140)
,p_branch_name=>'DELETE_BR'
,p_branch_action=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2832924990966319114)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2832944716538319140)
,p_branch_name=>'Go To Page 506'
,p_branch_action=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.::P506_ID:&P506_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149889670619206413)
,p_name=>'P506_DEFAULT_ONLINE_USER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Default Online User'
,p_source=>'DEFAULT_ONLINE_USER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO_NUM'
,p_lov=>'.'||wwv_flow_imp.id(3326348486442557998)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'This option is selected for the referee who will be doing the evaluation online and will be notified via email.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149891399734206430)
,p_name=>'P506_REF_ORGANISATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Referee Organisation'
,p_source=>'REF_ORG_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ref_org_name, ref_org_name b',
'from hr_apl_reference'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>500
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149891437101206431)
,p_name=>'P506_POSITION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Position'
,p_source=>'POSITION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct position a, position b',
'from HR_APL_REFERENCE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832927028623319116)
,p_name=>'P506_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832927369727319118)
,p_name=>'P506_APPLICANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_source=>'APPLICANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832927840043319118)
,p_name=>'P506_REF_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref First Name'
,p_source=>'REF_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_grid_label_column_span=>1
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832928163820319119)
,p_name=>'P506_REF_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref Surname'
,p_source=>'REF_SURNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832928584956319119)
,p_name=>'P506_REF_CELL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref Cell'
,p_source=>'REF_CELL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832928991631319120)
,p_name=>'P506_REF_TEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref Tel'
,p_source=>'REF_TEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832929346679319120)
,p_name=>'P506_REF_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref Email'
,p_source=>'REF_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'The user account name will be the email address with password  Password@123'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832930315195319121)
,p_name=>'P506_REF_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'REF_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2832930677676319122)
,p_name=>'P506_REF_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Ref End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'REF_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(2832931093209319122)
,p_name=>'P506_ATTACHED_SCAN_REF'
,p_source_data_type=>'BLOB'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Attached Scan Ref'
,p_source=>'ATTACHED_SCAN_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_SCAN_REF',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'ATTACHED_FILED_REF',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832931511848319122)
,p_name=>'P506_ATTACHED_FILED_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_source=>'ATTACHED_FILED_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832931935668319123)
,p_name=>'P506_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832932291027319123)
,p_name=>'P506_LAST_UPDATE_SCAN_REF'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_source=>'LAST_UPDATE_SCAN_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832932716812319124)
,p_name=>'P506_REFF_CONTENTS'
,p_source_data_type=>'CLOB'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Reff Contents'
,p_source=>'REFF_CONTENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'FULL',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832933088642319124)
,p_name=>'P506_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(2832933528220319125)
,p_name=>'P506_MIGRATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_source=>'MIGRATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832933849680319125)
,p_name=>'P506_FIRST_NAME_APP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832934319440319125)
,p_name=>'P506_SURNAME_APP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832934658455319126)
,p_name=>'P506_SALUTATION_APP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832941008633319135)
,p_name=>'P506_MACHINE_INSERT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3672853803014229481)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2832941405476319136)
,p_name=>'P506_MACHINE_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3672853803014229481)
,p_item_source_plug_id=>wwv_flow_imp.id(3674297294660032759)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2832940263595319134)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3674297294660032759)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmApplReference'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2717156129739005429
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2832943800451319139)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'make_referee_user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_user_id number;   v_sqlcode varchar2(25); V_SQLERRM varchar2(2000);',
'',
'begin',
' ',
'    INSERT INTO tbluser ( user_name, email, can_forward,  forward_default_only, effective_from, effective_to,',
'                       first_name,  last_name,  authentication_scheme, load_home, password)',
'    values( :P506_REF_EMAIL, :P506_REF_EMAIL, ''Y'', ''Y'',  :P506_REF_DATE, :P506_REF_END_DATE, :P506_REF_FIRST_NAME, :P506_REF_SURNAME, ''SHA256'', 1, ''Password@123'')',
'    returning user_ID into v_user_id;',
'',
'    ',
'    if sql%rowcount > 0 then',
'    ',
'       INSERT INTO tbluserdetail (responsibility_id, effective_from, user_id, remarks, org_id)',
'       select responsibility_id, :P506_REF_DATE , v_user_id, ''User account auto created by ''||:APP_USER||'' for the Applicant Referee screen'', :APP_ORG_ID',
'       from tblresponsibility',
'       where responsibility_name =''ONLINE REFERENCING'';',
'        ',
'    end if;',
'Exception',
'    when others then',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'        pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm  ,''error occured while executing make referee user'' ,''make_referee_user'', null);           ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2832926567806319116)
,p_process_success_message=>'Referee user account has been created with user name:- &P506_REF_EMAIL. successfully created with Password:- Password@123'
,p_internal_uid=>2717159666595005434
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2832939909406319133)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3674297294660032759)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmApplReference'
,p_internal_uid=>2717155775550005428
);
wwv_flow_imp.component_end;
end;
/
