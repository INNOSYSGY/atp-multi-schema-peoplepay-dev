prompt --application/pages/page_01312
begin
--   Manifest
--     PAGE: 01312
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
 p_id=>1312
,p_name=>'frmOrganisationRule'
,p_step_title=>'Create/Edit Organisational Requirements'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3209882777161887604)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  hr_hcf_org_rule',
'where  id = :P1312_ID'))
,p_display_when_condition=>'P1312_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1312_ID'
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
 p_id=>wwv_flow_imp.id(51371079050202502)
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
 p_id=>wwv_flow_imp.id(51371181817202503)
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
 p_id=>wwv_flow_imp.id(51371236591202504)
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
 p_id=>wwv_flow_imp.id(51371363925202505)
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
 p_id=>wwv_flow_imp.id(51371449736202506)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3209889357179887637)
,p_plug_name=>'Create/Edit Organisational Requirements'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3303399544126580396)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3269014564518480438)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297882545410688156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:RP,1311:P1311_ID:&P1312_ORG_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297882169799688155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_ORGANISATION a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_HCF_ORG_RULE B',
'           WHERE A.ID=B.org_id',
'           and b.id=:P1312_ID)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297881761870688153)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1312_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297881329929688152)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1312_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297880962546688152)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1312_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297880494111688152)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1312_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297880096518688152)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1312_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3297879782979688152)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3303399544126580396)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:1312::'
,p_button_condition=>'P1312_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3297842003571688099)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:1312::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3297880096518688152)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3297842476220688099)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3297882169799688155)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3297843628062688102)
,p_branch_action=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3297842862013688100)
,p_branch_action=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.::P1312_ID:&P1312_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3297880962546688152)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3297843266088688100)
,p_branch_action=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.::P1312_ID:&P1312_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3297880494111688152)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47715385514825612)
,p_name=>'P1312_PAYROLL_EXECUTION'
,p_is_required=>true
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payroll Execution'
,p_source=>'PAYROLL_EXECUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Fixed;FIXED,Dynamic;DYNAMIC'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This allows for the switching between a predefined execution of payroll vs one dictated by the Procedures in the process flow table.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138907056128987336)
,p_name=>'P1312_LEAVE_MODULE_START_DATE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leave Module Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LEAVE_MODULE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175712860718750048)
,p_name=>'P1312_PENSION_SCHEME_RULE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pension Scheme Rule'
,p_source=>'PENSION_SCHEME_RULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Permanent and Greater or Equal to  20yrs;PERM_20,All Employee;ALL,All Permanent;ALL_PERM,Not Available;NO_AVAILABLE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3179687240912044769)
,p_name=>'P1312_FEMALE_RETIREMENT_AGE'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Female Retirement Age'
,p_source=>'FEMALE_RETIREMENT_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The age by which private sector employees are no longer offered regular official employment.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3199407862175047876)
,p_name=>'P1312_COMPUTE_LEAVE_FROM'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leave Computation Ref'
,p_source=>'COMPUTE_LEAVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Calendar Year;CALENDAR_YEAR,Leave Anniversary Date;LEAVE_ANN_DATE,Employment Date;EMPLOYMENT_DATE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Controls whether to prorate leave i.e using Leave Anniversary date or employment date or grand full leave from beginning of the year.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3201761286898367791)
,p_name=>'P1312_IND_HIST_FLAG'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Turn on Ind History'
,p_source=>'IND_HIST_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Controls whether the system enforces transactional changes for individual screen.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3202266722345596771)
,p_name=>'P1312_EMP_HIST_FLAG'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Turn on Emp History'
,p_source=>'EMP_HIST_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Controls whether the system enforces transactional changes for individual screen.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3232785640578087010)
,p_name=>'P1312_PAYROLL_OPTIONS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payroll Options'
,p_source=>'PAYROLL_OPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Standard;STANDARD,Detail;DETAIL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Facilities an extremely flexible mode for creation of payrolls. The following options: Employee, Grade Scale, Work Location, Work Unit, Position, Union and Employment Type. TO use set to Detail, the user employment class must be set to multiple to fu'
||'ll activate and use the feature.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3283433038776323595)
,p_name=>'P1312_LUNCH_MINS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lunch Time(Mins)'
,p_source=>'LUNCH_MINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3291585257922784594)
,p_name=>'P1312_GRATUITY_PERCENT'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gratuity'
,p_post_element_text=>'%'
,p_source=>'GRATUITY_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Enter a decimal % e.g 0.25 meaning 25%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297008495672824579)
,p_name=>'P1312_PAYROLL_GRACE_PERIOD'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Payroll Grace Period'
,p_source=>'PAYROLL_GRACE_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The amount of days grace given for payroll execution'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297855305958688121)
,p_name=>'P1312_ID_PREV'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297855744628688121)
,p_name=>'P1312_ID_NEXT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297856094449688122)
,p_name=>'P1312_ID_COUNT'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297856537003688122)
,p_name=>'P1312_CONTRACT_CEILING_HELD'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract ceiling held'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'CONTRACT_CEILING_HELD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297856973179688123)
,p_name=>'P1312_CONTRACT_PER_HELD'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contractor %Held'
,p_source=>'CONTRACT_PER_HELD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297857883830688124)
,p_name=>'P1312_PRORATED_SALARY'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prorated Salary and Other Earnings'
,p_source=>'PRORATED_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Pro-rating, allows payments to be made based on the ratio equivalent to the time worked. e.g. if an employee is entitled to 15,000 monthly allowance, and a period of one month hasn''t been completed when the payment is due, then only a fraction of the'
||' 15,000 will be paid.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297858737207688125)
,p_name=>'P1312_PAYROLL_TYPE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'STANDARD'
,p_source=>'PAYROLL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>unistr('Selection of the ''Standard'' option indicates that calculations are done based upon the employees\00BF personal rate. ''Mixed'' option indicates that the payroll is done based upon the employees\00BF hourly rate and number of hours worked, even though each empl')
||'oyee is assigned a salary.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297859665553688127)
,p_name=>'P1312_RETIREMENT_AGE'
,p_is_required=>true
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Male Retirement Age'
,p_source=>'RETIREMENT_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The age by which private sector employees are no longer offered regular official employment.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297860574494688127)
,p_name=>'P1312_ENFORCE_SALARY_SCALE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enforce Salary Scale'
,p_source=>'ENFORCE_SALARY_SCALE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Ensures that employees salary must be within the grade scale they are attached to and vice versa.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297860964701688128)
,p_name=>'P1312_ALLOW_MANUAL_ADJ'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_source=>'ALLOW_MANUAL_ADJ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297861845035688129)
,p_name=>'P1312_EMPLOYMENT_AGE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employment Age'
,p_source=>'EMPLOYMENT_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The minimum age for which employees can be hired.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297862199888688129)
,p_name=>'P1312_WORKFLOW_REQUIRED'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_source=>'WORKFLOW_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297863111202688130)
,p_name=>'P1312_ROUND_METHOD'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Handle for Decimals'
,p_source=>'ROUND_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Round;ROUND,Ceil;CEIL,Floor;FLOOR,Exact;EXACT'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Indicates how decimal places are to be dealt with, whether to ceil i.e 0.1 and above goes to 1, or 0.5 and above goes to 1. Floor will total drop off the decimal places.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297864026918688131)
,p_name=>'P1312_TIME_CALCULATION_FORMAT'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Calculation Format'
,p_source=>'TIME_CALCULATION_FORMAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Quantity,Time'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>unistr('The option chosen here determines how the organization inputs employee time.  The \00BFTime\00BF option indicates that entries are time e.g. 8:15 while \00BFquantity\00BF indicates 8.25.')
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297864948539688131)
,p_name=>'P1312_ABSENT_DAYS_POST'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Absent Days Post'
,p_source=>'ABSENT_DAYS_POST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Hours;HOURS,Days;DAYS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Indicates how absence is to be recorded whether in days or hours. This is important for payroll deductions. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297865854996688132)
,p_name=>'P1312_TIMESHEET_POST_METHOD'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SUMMARY'
,p_prompt=>'Timesheet Post Method'
,p_source=>'TIMESHEET_POST_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Summary;SUMMARY,Detail;DETAIL,Time Clock;TIME_CLOCK'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The option chosen here determines how the organization posts employee time information. ''Detail'' indicates that time is tracked in an explicit manner for each employee, for example, the employee worked from 8:00 a.m to 12:00p.m, then 1:00p.m to 4:30 '
||'p.m. While summary just records the total for the periods.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297866741217688134)
,p_name=>'P1312_TAX_METHOD'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Method'
,p_source=>'TAX_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Budget 2017,Budget 2017 YTD'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'By Period indicates that taxes are calculated for each period. Running Sum indicates that the taxes are calculated annually using year to date figures, thereby allowing adjustments to be made automatically in cases of over or under/over payment of ta'
||'xes'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297867646817688135)
,p_name=>'P1312_END_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The date this organisation no longer exist.'
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
 p_id=>wwv_flow_imp.id(3297868513473688137)
,p_name=>'P1312_START_DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Effective date of the record.'
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
 p_id=>wwv_flow_imp.id(3297869453005688137)
,p_name=>'P1312_SICK_LEAVE_HRS_QUALIFY'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sick Leave Hrs Qualify'
,p_source=>'SICK_LEAVE_HRS_QUALIFY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The period in hours that must be completed before the company pays for sick days taken by employees.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297871200845688139)
,p_name=>'P1312_SICK_LEAVE_YRS_SERVICE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sick Leave Yrs Service'
,p_source=>'SICK_LEAVE_YRS_SERVICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The period in years that must be completed before the company pays for sick days taken by employees.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297873044703688141)
,p_name=>'P1312_PROBATION_DURATION'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Probation Duration(Mths)'
,p_source=>'PROBATION_DURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'A period in time in months for which new employees are to complete before being confirmed as employees regular.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297874785995688143)
,p_name=>'P1312_USE_PUBLIC_SERVICE_OT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Use Public Service OT'
,p_source=>'USE_PUBLIC_SERVICE_OT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the method by which the union indicates that employees should be paid overtime, 9/1000 X personal rate.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297875663996688146)
,p_name=>'P1312_BANK_ACCOUNT_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bank Account No'
,p_source=>'BANK_ACCOUNT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The account number for which the company will use to conduct payroll related transactions, this account number is for the bank selected.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297876570718688147)
,p_name=>'P1312_PSC_RETIREMENT_AGE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Psc Retirement Age'
,p_source=>'PSC_RETIREMENT_AGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The age by which Government employees are no longer offered regular official employment.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297876939889688147)
,p_name=>'P1312_ADD_CHILD_RECORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1311_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1311 ---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297877832862688148)
,p_name=>'P1312_BANK_BRANCH_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Bank'
,p_source=>'BANK_BRANCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANKS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, id',
'from HR_HCF_organisation a',
'where organisation_type=''BANK''',
'and  a.USER_org_id = :APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) =:APP_COUNTRY',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The primary banking institution for which wages and salaries will be either paid from.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297878283971688149)
,p_name=>'P1312_ORG_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_prompt=>'Organisation Name:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name',
'from hr_hcf_organisation',
'where id=:P1312_ORG_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297878594932688149)
,p_name=>'P1312_ORG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3297879006729688150)
,p_name=>'P1312_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3305877969932004569)
,p_name=>'P1312_NIS_LEAVE_PER'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIB/SS Leave%'
,p_source=>'NIS_LEAVE_PER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3305878037401004570)
,p_name=>'P1312_COMPANY_LEAVE_PER'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Leave%'
,p_source=>'COMPANY_LEAVE_PER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3323083920038301021)
,p_name=>'P1312_LV_TIME_CALC_FORMAT'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3209889357179887637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leave Time Calc Format'
,p_source=>'LV_TIME_CALC_FORMAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Quantity,Time'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>unistr('The option chosen here determines how the organization inputs employee time.  The \00BFTime\00BF option indicates that entries are time e.g. 8:15 while \00BFquantity\00BF indicates 8.25.')
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3297849034838688109)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_hcf_org_rule',
'where org_id=:P1312_ORG_ID',
'and (end_date is null or end_date > current_date);',
'',
'IF  v_cnt >=1 AND :P12312_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An active organisation rule record, close it first before entering a new one.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3297848621361688109)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>3
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_hcf_org_rule',
'where org_id=:P1312_ORG_ID',
'and (end_date is null or end_date > current_date)',
'and id !=:P1312_ID;',
'',
'',
'IF  v_cnt >1 AND :P1270_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'System already has an active rule record for this organisation, only one is allowed!',
''))
,p_when_button_pressed=>wwv_flow_imp.id(3297881761870688153)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3297848246584688109)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>4
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'',
'select count(1) into v_cnt ',
'from hr_hcf_org_rule',
'where org_id=:P1312_ORG_ID',
'and to_date(:P1312_START_DATE) between start_date and end_date',
'and id !=:P1312_ID;',
'',
'if v_cnt > 0 then',
'  return false;',
'else',
'  return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3297849399255688110)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1312_END_DATE) is not null and TO_DATE(:P1312_END_DATE) < TO_DATE(:P1312_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11450304934171804)
,p_validation_name=>'chk_payroll_process_flow'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_get_flow_count number(10):=0;',
'',
'begin',
'    ',
'    select count(1) into v_get_flow_count',
'    from PA_PCF_PROCESS_FLOW',
'    where org_id = :APP_ORG_ID',
'    AND trim(upper(COUNTRY)) = :APP_COUNTRY;',
'',
'    IF v_get_flow_count =0  and :P1312_PAYROLL_EXECUTION =''DYNAMIC'' then',
'        return ''You have to setup Payroll Process flows before assigning this company for dynamic payroll executions'';',
'    else',
'        return '''';',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3297845136617688104)
,p_name=>'en_disable_bank_acc'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1312_BANK_BRANCH_ID'
,p_condition_element=>'P1312_BANK_BRANCH_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3297844672298688104)
,p_event_id=>wwv_flow_imp.id(3297845136617688104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1312_BANK_ACCOUNT_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3297844153498688103)
,p_event_id=>wwv_flow_imp.id(3297845136617688104)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1312_BANK_ACCOUNT_NO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297847570278688107)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HCF_ORG_RULE'
,p_attribute_02=>'HR_HCF_ORG_RULE'
,p_attribute_03=>'P1312_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3182063436422374402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297846358435688107)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_HCF_ORG_RULE'
,p_attribute_03=>'P1312_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ID'
,p_attribute_09=>'P1312_ID_NEXT'
,p_attribute_10=>'P1312_ID_PREV'
,p_attribute_13=>'P1312_ID_COUNT'
,p_attribute_14=>'ORG_ID=:P1311_ID'
,p_internal_uid=>3182062224579374402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297845950749688107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1312_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P1312_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P1312_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P1312_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3182061816893374402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297845534989688105)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1312_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P1312_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P1312_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3297881761870688153)
,p_internal_uid=>3182061401133374400
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297847094262688107)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HCF_ORG_RULE'
,p_attribute_02=>'HR_HCF_ORG_RULE'
,p_attribute_03=>'P1312_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1312_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3182062960406374402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297846696665688107)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'15'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3297882169799688155)
,p_internal_uid=>3182062562809374402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3297847902367688109)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3297882545410688156)
,p_internal_uid=>3182063768511374404
);
wwv_flow_imp.component_end;
end;
/
