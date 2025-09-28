prompt --application/pages/page_01281
begin
--   Manifest
--     PAGE: 01281
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1281
,p_name=>'frmEmployee'
,p_alias=>'FRMEMPLOYEE'
,p_step_title=>'Create/Edit Employee'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(349753148093613622)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-report .pretius--strechReport {text-align:center}',
'',
'.apex-item-display-only {',
'    font-weight: bold;',
'',
'}',
'.t-Form-label {',
'    font-weight: bold;',
'    ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'The validations need fixing, compare with Starfish Production.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3427841397296838647)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3575005810086614051)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3493888320014914132)
,p_plug_name=>'Quick Entry Reference( for hospital, nationality and Ethnicity)'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>980
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Quick Entry Reference( for hospital, nationality and Ethnicity)'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635624352406247107)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple:t-TabsRegion-mod--large'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(317820907304603547)
,p_plug_name=>'&P1281_SALUTATION. &P1281_SURNAME., &P1281_FIRST_NAME. (&P1281_SEX_CODE.)  Emp# &P1281_EMP_COMPANY_NO.'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>0
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433600092069667594)
,p_plug_name=>'Employment Data'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>19
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_EMPLOYEE'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3411905704344146499)
,p_plug_name=>'Section B'
,p_region_name=>'DISPLAY_ONLY'
,p_parent_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'EMP_HIST_FLAG'
,p_plug_read_only_when2=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3411905815105146500)
,p_plug_name=>'Section A'
,p_region_name=>'DISPLAY_ONLY'
,p_parent_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'EMP_HIST_FLAG'
,p_plug_read_only_when2=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433611680228667619)
,p_plug_name=>'Skills'
,p_parent_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3440716802771212474)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_template=>2664334895415463485
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  entered_by,',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'') entry_date,',
'  last_changed_by,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'') last_changed_date,',
'  verified_by,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'') verified_date,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from hr_rcm_employee',
'where id=:p1281_id'))
,p_display_when_condition=>':P1281_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489176507927368442)
,p_query_column_id=>1
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Entered by'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489176190955368442)
,p_query_column_id=>2
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Entry date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489175722636368442)
,p_query_column_id=>3
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Last changed by'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489175337308368442)
,p_query_column_id=>4
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Last changed date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489174975574368442)
,p_query_column_id=>5
,p_column_alias=>'VERIFIED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'Verified by'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489174544471368442)
,p_query_column_id=>6
,p_column_alias=>'VERIFIED_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Verified date'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489174165842368441)
,p_query_column_id=>7
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489173703830368441)
,p_query_column_id=>8
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489173341863368441)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3563572704663271163)
,p_plug_name=>'Detail Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3440716802771212474)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    emp_company_no,',
'    ind_id,',
'    report_to,',
'    confirmed,',
'    permanent_staff,',
'    employment_status,',
'    employment_class,',
'    payment_type,',
'    date_employed,',
'    date_interviewed,',
'    interviewed_by,',
'    report_to_functional,',
'    appointment_date,',
'    contract_staff,',
'    date_separated,',
'    rehired,',
'    primary_tax_job,',
'    entered_by,',
'    entry_date,',
'    application_date,',
'    job_applied_for,',
'    credit_union_1,',
'    credit_union_2,',
'    separated_status,',
'    payroll_effective,',
'    machine_insert,',
'    machine_update,',
'    last_changed_by,',
'    last_changed_date,',
'    employment_status_id,',
'    employment_class_id,',
'    position_name,',
'    union_code_id,',
'    separated_status_id,',
'    org_id,',
'    include_payroll,',
'    skills,',
'    verified_by,',
'    verified_date,',
'    transaction_type_id,',
'    status,',
'    full_name,',
'    remarks,',
'    org_structure,',
'    orgdtl_id,',
'    movement_id,',
'    union_join_date,',
'    migrate_pk,',
'    is_pensioner,',
'    emp_grade_id,',
'    compute_gross,',
'    migrate_var_pkey,',
'    position_id,',
'    shift_id,',
'    wklocation_id,',
'    employment_type_id,',
'    leave_ann_date,',
'    employee_status,',
'    employee_status_id,',
'    pay_exe_status,',
'    department_transfer,',
'    confirmation_date,',
'    retirement_date,',
'    pensionscheme_date,',
'    appointment_end_date,',
'    live_overseas,',
'    pension_code_id,',
'    entry_date_aud,',
'    entered_by_aud',
'FROM hr_rcm_employee_aud',
'where id= :P1281_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detail Audit'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488072377877837)
,p_name=>'ENTERED_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Entered By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>750
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488182654877838)
,p_name=>'ENTRY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date Aud'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>740
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488208427877839)
,p_name=>'PENSION_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENSION_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pension Code Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>730
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488402538877840)
,p_name=>'LIVE_OVERSEAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIVE_OVERSEAS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Live Overseas'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>720
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488469444877841)
,p_name=>'APPOINTMENT_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Appointment End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>710
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488584767877842)
,p_name=>'PENSIONSCHEME_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENSIONSCHEME_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Pensionscheme Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>700
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488644887877843)
,p_name=>'RETIREMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETIREMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Retirement Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>690
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488740937877844)
,p_name=>'CONFIRMATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Confirmation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>680
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488819147877845)
,p_name=>'DEPARTMENT_TRANSFER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT_TRANSFER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department Transfer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>670
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563488923775877846)
,p_name=>'PAY_EXE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_EXE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Exe Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>660
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489049990877847)
,p_name=>'EMPLOYEE_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>650
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489105535877848)
,p_name=>'EMPLOYEE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489279395877849)
,p_name=>'LEAVE_ANN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_ANN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Leave Ann Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>630
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489395236877850)
,p_name=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3508177309009370904)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489433669877851)
,p_name=>'WKLOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WKLOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Work Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3616456159212392800)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489573798877852)
,p_name=>'SHIFT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Shift'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>600
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3485304018025831299)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489670398877853)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>590
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632457542671335694)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489705409877854)
,p_name=>'MIGRATE_VAR_PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_VAR_PKEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Migrate Var Pkey'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>580
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489813109877855)
,p_name=>'COMPUTE_GROSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_GROSS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Compute Gross'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>570
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563489992301877856)
,p_name=>'EMP_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Grade Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490004142877857)
,p_name=>'IS_PENSIONER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PENSIONER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Is Pensioner'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>550
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490147734877858)
,p_name=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_PK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Migrate Pk'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490209424877859)
,p_name=>'UNION_JOIN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNION_JOIN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Union Join Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>530
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490364472877860)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Movement Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490436403877861)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orgdtl Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>510
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490597335877862)
,p_name=>'ORG_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Org Structure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490607329877863)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>490
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490762738877864)
,p_name=>'FULL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490817822877865)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563490905757877866)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Transaction Type Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563491042802877867)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563491137269877868)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>440
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563568742591271123)
,p_name=>'SKILLS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILLS'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Skills'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563568896559271124)
,p_name=>'INCLUDE_PAYROLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCLUDE_PAYROLL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Include Payroll'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563568961469271125)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569034729271126)
,p_name=>'SEPARATED_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEPARATED_STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Separated Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569126474271127)
,p_name=>'UNION_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNION_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Union'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632491942950373421)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569254233271128)
,p_name=>'POSITION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Position Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569308776271129)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employment Class Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569499102271130)
,p_name=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employment Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569520242271131)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569625468271132)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569750458271133)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569829551271134)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563569963083271135)
,p_name=>'PAYROLL_EFFECTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_EFFECTIVE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Payroll Effective'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570028620271136)
,p_name=>'SEPARATED_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEPARATED_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Separated Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570280760271138)
,p_name=>'CREDIT_UNION_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT_UNION_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Credit Union 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570350005271139)
,p_name=>'CREDIT_UNION_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT_UNION_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Credit Union 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570422552271140)
,p_name=>'JOB_APPLIED_FOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_APPLIED_FOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Job Applied For'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570549798271141)
,p_name=>'APPLICATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Application Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570606380271142)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570725707271143)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570829252271144)
,p_name=>'PRIMARY_TAX_JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIMARY_TAX_JOB'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Primary Tax Job'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563570915094271145)
,p_name=>'REHIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REHIRED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rehired'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571077331271146)
,p_name=>'DATE_SEPARATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_SEPARATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Separated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571106358271147)
,p_name=>'CONTRACT_STAFF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRACT_STAFF'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Contract Staff'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571302872271148)
,p_name=>'APPOINTMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Appointment Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571382517271149)
,p_name=>'REPORT_TO_FUNCTIONAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORT_TO_FUNCTIONAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Report To Functional'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571413556271150)
,p_name=>'INTERVIEWED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERVIEWED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Interviewed By'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571564120271151)
,p_name=>'DATE_INTERVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_INTERVIEWED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Interviewed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571607589271152)
,p_name=>'DATE_EMPLOYED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_EMPLOYED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Employed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571707431271153)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571880811271154)
,p_name=>'EMPLOYMENT_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563571908295271155)
,p_name=>'EMPLOYMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employment Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572092523271156)
,p_name=>'PERMANENT_STAFF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMANENT_STAFF'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Permanent Staff'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572143516271157)
,p_name=>'CONFIRMED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Confirmed'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572274928271158)
,p_name=>'REPORT_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORT_TO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Report To'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572383214271159)
,p_name=>'IND_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ind Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572418234271160)
,p_name=>'EMP_COMPANY_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_COMPANY_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emp Company No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563572553763271161)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3563572699676271162)
,p_internal_uid=>74113003632178210
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3563485699831876627)
,p_interactive_grid_id=>wwv_flow_imp.id(3563572699676271162)
,p_static_id=>'742001'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3563485449664876626)
,p_report_id=>wwv_flow_imp.id(3563485699831876627)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563418503205876470)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3563488072377877837)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563419309981876472)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3563488182654877838)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563420217382876474)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(3563488208427877839)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563421179358876476)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(3563488402538877840)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563422090880876478)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(3563488469444877841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563422967920876481)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(3563488584767877842)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563423811018876483)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(3563488644887877843)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563424777826876485)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(3563488740937877844)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563425625665876487)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(3563488819147877845)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563426585386876489)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(3563488923775877846)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563427404697876492)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(3563489049990877847)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563428392863876494)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(3563489105535877848)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>20
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563429269522876496)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(3563489279395877849)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563430186421876498)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(3563489395236877850)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563431024773876500)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(3563489433669877851)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563431995429876502)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(3563489573798877852)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563432854470876504)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(3563489670398877853)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563433752071876506)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(3563489705409877854)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563434691556876508)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(3563489813109877855)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563435537527876510)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(3563489992301877856)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563436413331876512)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(3563490004142877857)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563437378729876514)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(3563490147734877858)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563438245053876516)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(3563490209424877859)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563439199323876518)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(3563490364472877860)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563440039306876520)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(3563490436403877861)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563440908854876522)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(3563490597335877862)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>161
,p_break_order=>5
,p_break_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563441891062876524)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(3563490607329877863)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563442759692876526)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(3563490762738877864)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563443616788876528)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(3563490817822877865)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563444581400876530)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(3563490905757877866)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563445447400876532)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(3563491042802877867)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563446386871876534)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(3563491137269877868)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563450899377876545)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(3563568742591271123)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563451797522876547)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(3563568896559271124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563452684014876549)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(3563568961469271125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563453511710876551)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(3563569034729271126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563454498404876553)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(3563569126474271127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563455307032876555)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(3563569254233271128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563456290114876557)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(3563569308776271129)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>112
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563457196613876559)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(3563569499102271130)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563458004560876561)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(3563569520242271131)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563458961730876563)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(3563569625468271132)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563459850652876565)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(3563569750458271133)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563460713388876567)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(3563569829551271134)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563461645525876569)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(3563569963083271135)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563462587662876571)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(3563570028620271136)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563464370609876575)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(3563570280760271138)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563465271822876577)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3563570350005271139)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563466186409876579)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3563570422552271140)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563467075868876582)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3563570549798271141)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563467953289876584)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3563570606380271142)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563468891649876586)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3563570725707271143)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563469750481876588)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3563570829252271144)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563470620797876590)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3563570915094271145)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563471571931876592)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3563571077331271146)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563472486039876594)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3563571106358271147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563473324965876596)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3563571302872271148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563474244160876598)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3563571382517271149)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563475105691876600)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3563571413556271150)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563476018966876602)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3563571564120271151)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563476924731876604)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3563571607589271152)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563477877777876606)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3563571707431271153)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563478708805876608)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3563571880811271154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563479662960876610)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3563571908295271155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563480593416876612)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3563572092523271156)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563481460112876614)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3563572143516271157)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563482250402876616)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3563572274928271158)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563483136894876618)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3563572383214271159)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563484011882876620)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3563572418234271160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563484930231876623)
,p_view_id=>wwv_flow_imp.id(3563485449664876626)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3563572553763271161)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3619538113618911014)
,p_plug_name=>'Remarks'
,p_parent_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3482570225464941442)
,p_plug_name=>'Work Stints'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>960
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", v.transaction_type_id,EMPLOYEE_STATUS,EMPLOYMENT_TYPE_ID,COMPUTE_GROSS,EMP_GRADE_ID,',
'"EMP_COMPANY_NO",',
'"IND_ID",',
'"REPORT_TO",',
'"CONFIRMED",',
'"PERMANENT_STAFF",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"SHIRT",',
'"SHOE",',
'"TROUSERS",',
'"CAP_SIZE",',
'"WAIST",',
'"DATE_INTERVIEWED",',
'"INTERVIEWED_BY",',
'"REPORT_TO_FUNCTIONAL",',
'"APPOINTMENT_DATE",',
'"CONTRACT_STAFF",',
'"BADGE",',
'"DATE_SEPARATED",',
'"REHIRED",',
'v."PRIMARY_TAX_JOB",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'"APPLICATION_DATE",',
'"JOB_APPLIED_FOR",',
'"UNION_CODE",',
'"SEPARATED_STATUS",',
'"PAYROLL_EFFECTIVE",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."LAST_CHANGED_BY",',
'v."LAST_CHANGED_DATE",',
'"POSITION_NAME",',
'"UNION_CODE_ID",separated_status_id,',
'position_id, ',
'wklocation_id,',
'PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date)) yrs_srv,',
'CASE when "INCLUDE_PAYROLL"=''Y'' then ''Yes'' else ''No'' end "INCLUDE_PAYROLL"',
',(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) ORG_STRUCTURE         ',
'from "#OWNER#"."HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'WHERE ind_id =:P1281_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_employee',
'where ind_id=:P1281_ID'))
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3482569697822941436)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID,SELF_SERVE_ID,P1281_NAVIGATOR:#ID#,#ID#,1261'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>3221486279632238523
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546367788860611701)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546367417417611701)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp. No.'
,p_column_type=>'STRING'
,p_static_id=>'EMP_COMPANY_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546366965563611701)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'In Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546366602107611700)
,p_db_column_name=>'PERMANENT_STAFF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERMANENT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546366168171611700)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546365772868611699)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546365438795611699)
,p_db_column_name=>'IND_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Individuals that are Employees                       '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'IND_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632546323918481216)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546365012488611699)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546364548991611699)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546364173735611699)
,p_db_column_name=>'SHIRT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Shirt'
,p_column_type=>'STRING'
,p_static_id=>'SHIRT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546363819066611699)
,p_db_column_name=>'SHOE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shoe'
,p_column_type=>'STRING'
,p_static_id=>'SHOE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546363427367611698)
,p_db_column_name=>'TROUSERS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Trousers'
,p_column_type=>'STRING'
,p_static_id=>'TROUSERS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546363005518611698)
,p_db_column_name=>'CAP_SIZE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cap Size'
,p_column_type=>'STRING'
,p_static_id=>'CAP_SIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546362590049611698)
,p_db_column_name=>'WAIST'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Waist'
,p_column_type=>'STRING'
,p_static_id=>'WAIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546362159447611698)
,p_db_column_name=>'DATE_INTERVIEWED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Date Interviewed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_INTERVIEWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546361802033611698)
,p_db_column_name=>'INTERVIEWED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interviewed By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'INTERVIEWED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546361343200611698)
,p_db_column_name=>'REPORT_TO_FUNCTIONAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Report To Functional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REPORT_TO_FUNCTIONAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546361011891611698)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546360590877611698)
,p_db_column_name=>'CONTRACT_STAFF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Contract Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONTRACT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546360237697611697)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546359829167611697)
,p_db_column_name=>'REHIRED'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Rehired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REHIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546359397427611697)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546358984222611697)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546358612347611697)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546358236664611697)
,p_db_column_name=>'APPLICATION_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546357752331611697)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_static_id=>'JOB_APPLIED_FOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546357353191611697)
,p_db_column_name=>'UNION_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Union Code'
,p_column_type=>'STRING'
,p_static_id=>'UNION_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546357009462611697)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_static_id=>'SEPARATED_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546356607120611696)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546356228223611696)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546355800500611696)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Report To'
,p_column_type=>'NUMBER'
,p_static_id=>'REPORT_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546355355400611696)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546354948169611696)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546354547577611696)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546354166514611696)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_static_id=>'POSITION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546353749693611696)
,p_db_column_name=>'UNION_CODE_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Union Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UNION_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546353401621611695)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546353001033611695)
,p_db_column_name=>'YRS_SRV'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Yrs Srv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'YRS_SRV'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546352572734611695)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546352237143611695)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Transaction type id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546368158005611701)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546369010844611701)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546368581575611701)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546351760211611695)
,p_db_column_name=>'BADGE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Badge'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546370576656611702)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546370236245611702)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546369836512611701)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3628710815723471759)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546369350158611701)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Emp Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632558643709481228)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3474765699771420259)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'822025'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_COMPANY_NO:IND_ID:POSITION_NAME:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:EMPLOYEE_STATUS:EMPLOYMENT_TYPE_ID:COMPUTE_GROSS:EMP_GRADE_ID:SEPARATED_STATUS:DATE_SEPARATED:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489396507149789151)
,p_plug_name=>'Addresses'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_ADDRESS.ID as ID,',
'    HR_RCM_ADDRESS.ADDRESS_TYPE as ADDRESS_TYPE,',
'    HR_RCM_ADDRESS.IND_ID as IND_ID,',
'    HR_RCM_ADDRESS.LOT as LOT,',
'    HR_RCM_ADDRESS.STREET as STREET,',
'    HR_RCM_ADDRESS.VILLAGE_WARD as VILLAGE_WARD,',
'    HR_RCM_ADDRESS.TOWN as TOWN,',
'    HR_RCM_ADDRESS.REGION as REGION,',
'    HR_RCM_ADDRESS.COUNTY as COUNTY,',
'    HR_RCM_ADDRESS.COUNTRY as COUNTRY,',
'    HR_RCM_ADDRESS.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_ADDRESS.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_ADDRESS.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_ADDRESS.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_ADDRESS.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_ADDRESS.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_ADDRESS.START_DATE as START_DATE ,',
'    HR_RCM_ADDRESS.END_DATE as END_DATE ',
' from HR_RCM_ADDRESS HR_RCM_ADDRESS',
'WHERE  HR_RCM_ADDRESS.IND_ID =:P1281_ID_IND',
'order by ADDRESS_TYPE, START_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMADDRESS'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(317821502335603553)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1270:&SESSION.::&DEBUG.:1270:P1270_ID,P1270_SHOW_BREADCRUMB:#ID#,1270'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>56738084144900640
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317821593965603554)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317821683842603555)
,p_db_column_name=>'ADDRESS_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Address Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317821739502603556)
,p_db_column_name=>'IND_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317821881594603557)
,p_db_column_name=>'LOT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Lot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317821942533603558)
,p_db_column_name=>'STREET'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317822104720603559)
,p_db_column_name=>'VILLAGE_WARD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Village Ward'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317822154263603560)
,p_db_column_name=>'TOWN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Town'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317822298746603561)
,p_db_column_name=>'REGION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317822328344603562)
,p_db_column_name=>'COUNTY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'County'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(317822496746603563)
,p_db_column_name=>'COUNTRY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318069865975036814)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318069986474036815)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070059070036816)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070141332036817)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070274283036818)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070392359036819)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070436935036820)
,p_db_column_name=>'START_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070609994036821)
,p_db_column_name=>'END_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318089888391041518)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570065'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADDRESS_TYPE:LOT:STREET:VILLAGE_WARD:TOWN:REGION:COUNTY:COUNTRY:START_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489479626248901100)
,p_plug_name=>'National Identifiers'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>890
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_NATIDENTIFIER.ID as ID,',
'    HR_RCM_NATIDENTIFIER.IND_ID as IND_ID,',
'    HR_RCM_NATIDENTIFIER.ID_TYPE as ID_TYPE,',
'    HR_RCM_NATIDENTIFIER.ID_NUMBER as ID_NUMBER,',
'    HR_RCM_NATIDENTIFIER.ISSUE_DATE as ISSUE_DATE,',
'    HR_RCM_NATIDENTIFIER.ISSUE_PLACE as ISSUE_PLACE,',
'    HR_RCM_NATIDENTIFIER.START_DATE as START_DATE,',
'    HR_RCM_NATIDENTIFIER.END_DATE as END_DATE,',
'    HR_RCM_NATIDENTIFIER.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_NATIDENTIFIER.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_NATIDENTIFIER.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_NATIDENTIFIER.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_NATIDENTIFIER.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_NATIDENTIFIER.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_NATIDENTIFIER HR_RCM_NATIDENTIFIER',
'WHERE HR_RCM_NATIDENTIFIER.IND_ID =:P1281_ID_IND',
'order by ID_TYPE, ISSUE_DATE  desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMNATIDENTIFIER'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(318070662699036822)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:1271:P1271_ID,P1271_SHOW_BREADCRUMB:#ID#,1271'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>56987244508333909
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070718898036823)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070820322036824)
,p_db_column_name=>'IND_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318070966732036825)
,p_db_column_name=>'ID_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'ID Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071075226036826)
,p_db_column_name=>'ID_NUMBER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071207213036827)
,p_db_column_name=>'ISSUE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Issue Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071259189036828)
,p_db_column_name=>'ISSUE_PLACE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Issue Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071414061036829)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071476756036830)
,p_db_column_name=>'END_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071571116036831)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071627563036832)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071770828036833)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318071888004036834)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072007905036835)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072117825036836)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318101919843052714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_TYPE:ID_NUMBER:ISSUE_DATE:ISSUE_PLACE:START_DATE:END_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTERED_BY:ENTRY_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489487624329902471)
,p_plug_name=>'Qualifications'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>900
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EQ.ID as ID,',
'    EQ.EXAM_BODY as EXAM_BODY,',
'    EQ.Q_YEAR as Q_YEAR,',
'    EQ.IND_ID as IND_ID,',
'    EQ.SUBJECT_COURSE as SUBJECT_COURSE,',
'    EQ.GRADE_ATTAINED as GRADE_ATTAINED,',
'    QL.VALUE_DESCRIPTION as QUAL_LEVEL,',
'    EQ.SCHOOL_CODE as SCHOOL_CODE,',
'    CASE When EQ.COMPANY_SPONSOR=0 then ''No'' else ''Yes'' end as COMPANY_SPONSOR,',
'    EQ.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    EQ.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    EQ.Q_LEVEL as Q_LEVEL,',
'    EQ.COUNTRY_CODE as COUNTRY_CODE,',
'    EQ.ENTERED_BY as ENTERED_BY,',
'    EQ.ENTRY_DATE as ENTRY_DATE,',
'    EQ.MACHINE_INSERT as MACHINE_INSERT,',
'    EQ.MACHINE_UPDATE as MACHINE_UPDATE',
' from  HR_RCM_QUALIFICATION EQ ',
'     LEFT JOIN (select * from hr_hcf_lookup where table_name = ''TBLQUALIFICATIONLEVEL'' and org_id = :APP_ORG_ID) QL On EQ.Q_LEVEL = QL.TABLE_VALUE',
'',
'where  EQ.IND_ID=:P1281_ID_IND',
'order by EXAM_BODY , Q_YEAR  desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMQUALIFICATION'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3681141447453751966)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:1272:P1272_ID,P1272_SHOW_BREADCRUMB:#ID#,1272'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>3420058029263049053
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546275200389600838)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546275554422600838)
,p_db_column_name=>'EXAM_BODY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Exam Body'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546276002363600838)
,p_db_column_name=>'Q_YEAR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Q Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546276390352600838)
,p_db_column_name=>'IND_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546276741520600838)
,p_db_column_name=>'SUBJECT_COURSE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Subject Course'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546277184859600838)
,p_db_column_name=>'GRADE_ATTAINED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Grade Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546274777735600838)
,p_db_column_name=>'QUAL_LEVEL'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'Qual Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546277543517600839)
,p_db_column_name=>'SCHOOL_CODE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'School Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546277999147600839)
,p_db_column_name=>'COMPANY_SPONSOR'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Company Sponsor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546278399042600839)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546278743667600839)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546279129113600839)
,p_db_column_name=>'Q_LEVEL'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Q Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546279559760600839)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Country Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546279946943600839)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546280325416600839)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546280761349600840)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3546281179822600840)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3688151846291332147)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'822393'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EXAM_BODY:Q_YEAR:SUBJECT_COURSE:QUAL_LEVEL:GRADE_ATTAINED:LAST_CHANGED_BY:LAST_CHANGED_DATE:Q_LEVEL:ENTERED_BY:ENTRY_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489496290492903896)
,p_plug_name=>'Past Employers'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>910
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPHISTORY.ID as ID,',
'    HR_RCM_EMPHISTORY.IND_ID as IND_ID,',
'    HR_RCM_EMPHISTORY.ORGANISATION as ORGANISATION,',
'    HR_RCM_EMPHISTORY.POSITION_HELD as POSITION_HELD,',
'    HR_RCM_EMPHISTORY.DEPARTMENT as DEPARTMENT,',
'    HR_RCM_EMPHISTORY.REASON_FOR_LEAVING as REASON_FOR_LEAVING,',
'    HR_RCM_EMPHISTORY.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPHISTORY.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPHISTORY.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPHISTORY.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPHISTORY.PREVIOUS_SALARY as PREVIOUS_SALARY,',
'    HR_RCM_EMPHISTORY.FROM_DATE as FROM_DATE,',
'    HR_RCM_EMPHISTORY.TO_DATE as TO_DATE,',
'    HR_RCM_EMPHISTORY.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPHISTORY.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_EMPHISTORY.ORG_ID as ORG_ID ',
' from HR_RCM_EMPHISTORY HR_RCM_EMPHISTORY',
'where HR_RCM_EMPHISTORY.IND_ID=:P1281_ID_IND',
'order by ORGANISATION , FROM_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPHISTORY'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(318072144377036837)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1273:&SESSION.::&DEBUG.:1273:P1273_ID,P1273_SHOW_BREADCRUMB:#ID#,1273'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>56988726186333924
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072253701036838)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072372240036839)
,p_db_column_name=>'IND_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072451975036840)
,p_db_column_name=>'ORGANISATION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Organisation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072522193036841)
,p_db_column_name=>'POSITION_HELD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Position Held'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072682186036842)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072788844036843)
,p_db_column_name=>'REASON_FOR_LEAVING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Reason For Leaving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072914986036844)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318072929445036845)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073098102036846)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073210114036847)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073271034036848)
,p_db_column_name=>'PREVIOUS_SALARY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Previous Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073406416036849)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073468586036850)
,p_db_column_name=>'TO_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073603720036851)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073680489036852)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073738485036853)
,p_db_column_name=>'ORG_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318133219592087171)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570499'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORGANISATION:POSITION_HELD:DEPARTMENT:REASON_FOR_LEAVING:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTERED_BY:ENTRY_DATE:PREVIOUS_SALARY:FROM_DATE:TO_DATE:MACHINE_INSERT:MACHINE_UPDATE:ORG_ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489505328644905380)
,p_plug_name=>'External Activities'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>920
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_HOBBY.ID as ID,',
'    HR_RCM_HOBBY.IND_ID as IND_ID,',
'    HR_RCM_HOBBY.HOBBIES as HOBBIES,',
'    HR_RCM_HOBBY.LOCATION as LOCATION,',
'    HR_RCM_HOBBY.HOW_FREQUENT_INVOLVE as HOW_FREQUENT_INVOLVE,',
'    HR_RCM_HOBBY.DATE_STARTED as DATE_STARTED,',
'    HR_RCM_HOBBY.DATE_STOPPED as DATE_STOPPED,',
'    HR_RCM_HOBBY.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_HOBBY.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    initcap(HR_RCM_HOBBY.NGO_POSITION) as NGO_POSITION,',
'    HR_RCM_HOBBY.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_HOBBY.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_HOBBY.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_HOBBY.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_HOBBY HR_RCM_HOBBY',
'where HR_RCM_HOBBY.IND_ID=:P1281_ID_IND',
'order by HOBBIES, DATE_STARTED  desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMHOBBY'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(318073875727036854)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:1274:P1274_ID,P1274_SHOW_BREADCRUMB:#ID#,1274'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>56990457536333941
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318073934055036855)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074077162036856)
,p_db_column_name=>'IND_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074165289036857)
,p_db_column_name=>'HOBBIES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Hobbies'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074317389036858)
,p_db_column_name=>'LOCATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074388536036859)
,p_db_column_name=>'HOW_FREQUENT_INVOLVE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'How Frequent Involve'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074455509036860)
,p_db_column_name=>'DATE_STARTED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074571136036861)
,p_db_column_name=>'DATE_STOPPED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Stopped'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074629751036862)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318074741210036863)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117023817081614)
,p_db_column_name=>'NGO_POSITION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ngo Position'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117135791081615)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117228351081616)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117407567081617)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117423736081618)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318133878519087176)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570505'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'HOBBIES:LOCATION:HOW_FREQUENT_INVOLVE:DATE_STARTED:DATE_STOPPED:LAST_CHANGED_BY:LAST_CHANGED_DATE:NGO_POSITION:ENTERED_BY:ENTRY_DATE:MACHINE_INSERT:MACHINE_UPDATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489513397856906841)
,p_plug_name=>'References'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>930
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_REFERENCE.ID as ID,',
'HR_RCM_REFERENCE.IND_ID Edit_Ref,',
'    (SELECT case when upper(sex_code)=''F'' then ''Ms. '' else ''Mr. '' end ||SURNAME||'', ''||NVL(FIRST_NAME,'''') FROM HR_RCM_INDIVIDUAL WHERE ID=HR_RCM_REFERENCE.IND_ID) as IND_ID,',
'    HR_RCM_REFERENCE.REF_DATE as REF_DATE,',
'    HR_RCM_REFERENCE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_REFERENCE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_REFERENCE.REMARKS as REMARKS,',
'   -- HR_RCM_REFERENCE.ATTACHED_FILED_REF as ATTACHED_FILED_REF,',
'    HR_RCM_REFERENCE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_REFERENCE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_REFERENCE.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_REFERENCE.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_REFERENCE.REFEREE_FOR as REFEREE_FOR ',
' from HR_RCM_REFERENCE HR_RCM_REFERENCE',
'where HR_RCM_REFERENCE.REFEREE_FOR =:P1281_ID_IND',
'order by REF_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMREFERENCE'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(318117599009081619)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>57034180818378706
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117685886081620)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117747211081621)
,p_db_column_name=>'EDIT_REF'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Edit Ref'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117843569081622)
,p_db_column_name=>'IND_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ind Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318117977580081623)
,p_db_column_name=>'REF_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ref Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118095737081624)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118125239081625)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118312954081626)
,p_db_column_name=>'REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118354979081627)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118497880081628)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118531112081629)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118680131081630)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318118817668081631)
,p_db_column_name=>'REFEREE_FOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Referee For'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318144680481096138)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570613'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EDIT_REF:IND_ID:REF_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:REMARKS:ENTERED_BY:ENTRY_DATE:MACHINE_INSERT:MACHINE_UPDATE:REFEREE_FOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3489520680280908475)
,p_plug_name=>'Relatives'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>940
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HR_RCM_RELATIVESFRD.ID AS ID,',
'    CASE WHEN HR_RCM_RELATIVESFRD.DEPENDANT=''N'' THEN ''No'' ELSE ''Yes'' END AS DEPENDANT,',
'    case when HR_RCM_RELATIVESFRD.MEDICALLY_COVERED=''N'' then ''No'' else ''Yes'' end as MEDICALLY_COVERED,',
'    HR_RCM_RELATIVESFRD.IND_ID as IND_ID,',
'   (SELECT  case when upper(sex_code)=''F'' then ''Ms. '' else ''Mr. '' end ||SURNAME||'', ''||NVL(FIRST_NAME,'''') FROM HR_RCM_INDIVIDUAL WHERE ID=HR_RCM_RELATIVESFRD.IND_ID) as RELATIVE,',
'   initcap(HR_RCM_RELATIVESFRD.RELATION) AS RELATION,',
'    CASE WHEN HR_RCM_RELATIVESFRD.STUDENT =''N'' THEN ''No'' ELSE ''Yes'' END AS STUDENT,',
'   case when HR_RCM_RELATIVESFRD.NEXT_OF_KIN=''N'' then ''No'' else ''Yes'' end as NEXT_OF_KIN,',
'    HR_RCM_RELATIVESFRD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_RELATIVESFRD.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_RELATIVESFRD.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_RELATIVESFRD.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_RELATIVESFRD.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_RELATIVESFRD.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_RELATIVESFRD.RELATED_TO AS RELATED_TO',
'    ,case when HR_RCM_RELATIVESFRD.BENEFICIARY=''N'' then ''No'' else ''Yes'' end as BENEFICIARY ',
' from HR_RCM_RELATIVESFRD HR_RCM_RELATIVESFRD',
'where HR_RCM_RELATIVESFRD.RELATED_TO=:P1281_ID_IND',
'order by RELATION  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID_IND'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMRELATIVEFRD'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(318118892468081632)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_ID,P1276_SHOW_BREDCRUMB:#ID#,1276'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>57035474277378719
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119012869081633)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119030818081634)
,p_db_column_name=>'DEPENDANT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Dependant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119134731081635)
,p_db_column_name=>'MEDICALLY_COVERED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Medically Covered'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119303837081636)
,p_db_column_name=>'IND_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119332618081637)
,p_db_column_name=>'RELATIVE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Relative'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119445085081638)
,p_db_column_name=>'RELATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Relation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119527295081639)
,p_db_column_name=>'STUDENT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Student'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119627429081640)
,p_db_column_name=>'NEXT_OF_KIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Next Of Kin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119731575081641)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119905966081642)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318119924077081643)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318120036686081644)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318120146122081645)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318120220400081646)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318120391423081647)
,p_db_column_name=>'RELATED_TO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Related To'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(318120434539081648)
,p_db_column_name=>'BENEFICIARY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Beneficiary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(318157760613104302)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'570744'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DEPENDANT:MEDICALLY_COVERED:IND_ID:RELATIVE:RELATION:STUDENT:NEXT_OF_KIN:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTERED_BY:ENTRY_DATE:MACHINE_INSERT:MACHINE_UPDATE:RELATED_TO:BENEFICIARY'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3489552751742916181)
,p_name=>'Audit Verified by: &P1281_VERIFIED_BY.'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_template=>4072358936313175081
,p_display_sequence=>970
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  entered_by,',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'') entry_date,',
'  last_changed_by,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'') last_changed_date,',
'  verified_by,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'') verified_date,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from hr_rcm_individual',
'where id=:P1281_ID_IND'))
,p_display_when_condition=>':P1281_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID_IND'
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
 p_id=>wwv_flow_imp.id(318021823299820345)
,p_query_column_id=>1
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318022271570820345)
,p_query_column_id=>2
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318022642228820346)
,p_query_column_id=>3
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>30
,p_column_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318023114532820347)
,p_query_column_id=>4
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318023474315820348)
,p_query_column_id=>5
,p_column_alias=>'VERIFIED_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318023824435820349)
,p_query_column_id=>6
,p_column_alias=>'VERIFIED_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Verified Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318024302268820350)
,p_query_column_id=>7
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>70
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318024695645820351)
,p_query_column_id=>8
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>80
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(318025085625820351)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>90
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3387069631200457602)
,p_plug_name=>'Audit Detail'
,p_parent_plug_id=>wwv_flow_imp.id(3489552751742916181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT surname, first_name,',
'    middle_name,',
'    marital_code,',
'    telephone,',
'    bank_branch_id,',
'    bank_account_no,   ',
'    religion,',
'    cell_phone,',
'    email,',
'    date_of_marriage,',
'    place_of_marriage,',
'    joint_account,',
'    bank_transit,',
'    bank_account_type,Entry_Date_Aud, Entered_By_Aud',
'FROM hr_rcm_individual_aud',
'where id= :P1281_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1281_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Audit Detail'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387069823016457604)
,p_name=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387069954493457605)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070030407457606)
,p_name=>'MIDDLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIDDLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Middle Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070205137457607)
,p_name=>'MARITAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARITAL_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Marital Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070217683457608)
,p_name=>'TELEPHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELEPHONE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Telephone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>25
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070358281457609)
,p_name=>'BANK_BRANCH_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_BRANCH_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Bank Branch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632666553247627399)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070507089457610)
,p_name=>'BANK_ACCOUNT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank Account No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070573535457611)
,p_name=>'RELIGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELIGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Religion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070620849457612)
,p_name=>'CELL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CELL_PHONE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cell Phone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070808078457613)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387070886334457614)
,p_name=>'DATE_OF_MARRIAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_OF_MARRIAGE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Of Marriage'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071011728457615)
,p_name=>'PLACE_OF_MARRIAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLACE_OF_MARRIAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Place Of Marriage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071053066457616)
,p_name=>'JOINT_ACCOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOINT_ACCOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Joint Account'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071119939457617)
,p_name=>'BANK_TRANSIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_TRANSIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank Transit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071306422457618)
,p_name=>'BANK_ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bank Account Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071392828457619)
,p_name=>'ENTRY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3387071418954457620)
,p_name=>'ENTERED_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3387069792973457603)
,p_internal_uid=>3125986374782754690
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3387094567994530725)
,p_interactive_grid_id=>wwv_flow_imp.id(3387069792973457603)
,p_static_id=>'845974'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3387094793415530725)
,p_report_id=>wwv_flow_imp.id(3387094567994530725)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387095225064530727)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3387069823016457604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387096200615530733)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3387069954493457605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387097021282530737)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3387070030407457606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387097937930530741)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3387070205137457607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387098868340530745)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3387070217683457608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387099784886530748)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3387070358281457609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387100646392530751)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3387070507089457610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387101558183530754)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3387070573535457611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387102483767530757)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3387070620849457612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387103374734530760)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3387070808078457613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387104235729530764)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3387070886334457614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387105169902530767)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3387071011728457615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387106089076530770)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3387071053066457616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387106928954530773)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3387071119939457617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387107913764530777)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3387071306422457618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387111011249558969)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3387071392828457619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3387111866066558974)
,p_view_id=>wwv_flow_imp.id(3387094793415530725)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3387071418954457620)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3643243966204484159)
,p_plug_name=>'Position Applications'
,p_parent_plug_id=>wwv_flow_imp.id(317820907304603547)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>950
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,COMMENTS,',
'    jobopening_id,proposed_start, employment_type,    ',
'    date_applied,',
'    entry_date,',
'    entered_by,',
'    last_changed_by,',
'    last_changed_date,',
'    machine_insert,',
'    machine_update,  ',
'    applicant_id ind_id,',
'    position_id,',
'    position_name',
'FROM hr_apl_jobrequest',
'where applicant_id=:P1281_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_required_role=>wwv_flow_imp.id(3585334487484360204)
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1281_ID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3618307596402590848)
,p_name=>'EMPLOYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_TYPE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3508177309009370904)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3618307722599590849)
,p_name=>'PROPOSED_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROPOSED_START'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Proposed Start'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643240837462484128)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643240900617484129)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643240977344484130)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643241247992484132)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643241323621484133)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643241642036484136)
,p_name=>'POSITION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Job Applied For'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643241743945484137)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643241773071484138)
,p_name=>'IND_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1281_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643242422913484144)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643242521771484145)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643242587154484146)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643242736259484147)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643243461444484154)
,p_name=>'DATE_APPLIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_APPLIED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Applied'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643243621960484156)
,p_name=>'JOBOPENING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOBOPENING_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Job Opening Available'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''(''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID)||'') at ''||y.location_description||'' (''||w.application_start|| '' -- ''||w.application_end||'')'' ret_value, w.id return_id',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'join HR_HCF_JOBOPENING w on w.position_id = b.id',
'join hr_hcf_worklocation y on y.id = w.wklocation_id',
'AND  trunc(w.application_start) <= :DATE_APPLIED',
'and (trunc(w.application_end) is null or w.application_end >= :DATE_APPLIED)',
'and y.org_id= :APP_ORG_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'DATE_APPLIED'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3643243702898484157)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3643243830082484158)
,p_internal_uid=>3382160411891781245
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3643118398761516670)
,p_interactive_grid_id=>wwv_flow_imp.id(3643243830082484158)
,p_static_id=>'17930'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3643118353147516667)
,p_report_id=>wwv_flow_imp.id(3643118398761516670)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3616605894361220600)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3618307596402590848)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3616606778946220603)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3618307722599590849)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3642927351841577200)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3643241323621484133)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643107399572516563)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3643241642036484136)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643107883128516566)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3643241743945484137)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643108428866516569)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3643241773071484138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643111388219516589)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3643242422913484144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643111878625516594)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3643242521771484145)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643112395222516598)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3643242587154484146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643112948035516601)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3643242736259484147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643116326841516628)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3643243461444484154)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643117340647516639)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3643243621960484156)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>174
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3643117830383516655)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3643243702898484157)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3645743207642943724)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3643240977344484130)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>339
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3645743796792943729)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3643240900617484129)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3645744416404943732)
,p_view_id=>wwv_flow_imp.id(3643118353147516667)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(3643240837462484128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2613308955691047149)
,p_plug_name=>'Bio Data'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_INDIVIDUAL'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469404351882689713)
,p_plug_name=>'Other Data for &P1261_SURNAME., &P1261_FIRST_NAME.'
,p_region_name=>'DISPLAY_NONE_4'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_css_classes=>'is-expanded'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>860
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469404499100689714)
,p_plug_name=>'Bio Data 3'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>840
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469404591770689715)
,p_plug_name=>'Bio Data 2'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>830
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3469404695401689716)
,p_plug_name=>'Bio Data 1'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>820
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3492728633850032322)
,p_plug_name=>'Photograph'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>810
,p_plug_grid_column_span=>2
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_INDIVIDUAL',
'WHERE FILENAME IS NOT NULL',
'and id=:P1281_ID_IND'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3085027209460136704)
,p_plug_name=>'Signature'
,p_parent_plug_id=>wwv_flow_imp.id(3492728633850032322)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_INDIVIDUAL',
'WHERE SIG_FILENAME IS NOT NULL',
'and id=:P1281_ID_IND'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3643564387285955155)
,p_plug_name=>'Uniform Details'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>870
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3643565258240955163)
,p_plug_name=>'Food Preferences'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>880
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3676350049847735674)
,p_plug_name=>'Remarks'
,p_parent_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>850
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3551765331644662266)
,p_plug_name=>'Contract'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433607977921667613)
,p_name=>'Contracts'
,p_parent_plug_id=>wwv_flow_imp.id(3551765331644662266)
,p_template=>4072358936313175081
,p_display_sequence=>5
,p_region_template_options=>'#DEFAULT#:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPCONTRACT.ID as ID,',
'    HR_RCM_EMPCONTRACT.REMARKS as REMARKS,',
'    HR_RCM_EMPCONTRACT.EMP_ID as EMP_ID,',
'    HR_RCM_EMPCONTRACT.START_DATE as START_DATE,',
'    HR_RCM_EMPCONTRACT.END_DATE as END_DATE,',
'    HR_RCM_EMPCONTRACT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPCONTRACT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPCONTRACT.ANNUAL_SALARY as ANNUAL_SALARY,',
'    HR_RCM_EMPCONTRACT.PROJECT_ID as PROJECT_ID,',
'    HR_RCM_EMPCONTRACT.MANAGED_BY as MANAGED_BY,',
'    HR_RCM_EMPCONTRACT.FUNDINGDETAIL_ID as FUNDINGDETAIL_ID,',
'    HR_RCM_EMPCONTRACT.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPCONTRACT.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPCONTRACT.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPCONTRACT.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_EMPCONTRACT HR_RCM_EMPCONTRACT',
'where HR_RCM_EMPCONTRACT.EMP_ID =:P1281_ID',
'ORDER BY  HR_RCM_EMPCONTRACT.START_DATE desc'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPCONTRACTS'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489015673784368152)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1287:&SESSION.::&DEBUG.::P1287_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489015209605368152)
,p_query_column_id=>2
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>9
,p_column_heading=>'REMARKS'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489014852581368152)
,p_query_column_id=>3
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489014417099368151)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'START DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489014033216368151)
,p_query_column_id=>5
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'END DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489013618929368151)
,p_query_column_id=>6
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489013218441368151)
,p_query_column_id=>7
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489012842465368151)
,p_query_column_id=>8
,p_column_alias=>'ANNUAL_SALARY'
,p_column_display_sequence=>6
,p_column_heading=>'ANNUAL SALARY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489012460557368151)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>4
,p_column_heading=>'PROJECT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489012011625368151)
,p_query_column_id=>10
,p_column_alias=>'MANAGED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'MANAGED BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489011677203368151)
,p_query_column_id=>11
,p_column_alias=>'FUNDINGDETAIL_ID'
,p_column_display_sequence=>3
,p_column_heading=>'FUNDING AGENCY'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3622808264997521813)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489011246256368151)
,p_query_column_id=>12
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489010841046368150)
,p_query_column_id=>13
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489010396899368150)
,p_query_column_id=>14
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>14
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489010049673368150)
,p_query_column_id=>15
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>15
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3551765439951662267)
,p_plug_name=>'Movement'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3470851768882947961)
,p_plug_name=>'Movements 360'
,p_parent_plug_id=>wwv_flow_imp.id(3551765439951662267)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent13::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_MOV_EMPMOVEMENT.ID as ID,',
'    HR_MOV_EMPMOVEMENT.EMP_ID as EMP_ID,',
'    HR_MOV_EMPMOVEMENT.CHANGE_TYPE as CHANGE_TYPE,',
'    HR_MOV_EMPMOVEMENT.EMPLOYMENT_TYPE_ID,',
'    HR_MOV_EMPMOVEMENT.EMPLOYMENT_CLASS_ID,',
'    HR_MOV_EMPMOVEMENT.PAYMENT_TYPE,',
'    HR_MOV_EMPMOVEMENT.COMPUTE_GROSS,',
'     HR_MOV_EMPMOVEMENT.FROM_DATE as FROM_DATE,',
'    HR_MOV_EMPMOVEMENT.TO_DATE as TO_DATE,',
'    HR_MOV_EMPMOVEMENT.EFFECTIVE_DATE as EFFECTIVE_DATE,Personal_Rate,',
'    case when HR_MOV_EMPMOVEMENT.EXECUTED=1 then ''Yes'' else ''No'' end as EXECUTED, HR_MOV_EMPMOVEMENT.org_structure,',
'    HR_MOV_EMPMOVEMENT.EMPLOYMENT_CLASS_ID as EMPLOYMENT_CLASS,job_id, job_class,',
'    HR_MOV_EMPMOVEMENT.from_date as DATE_EMPLOYED,',
'    HR_MOV_EMPMOVEMENT.APPROVED_BY as APPROVED_BY,',
'    HR_MOV_EMPMOVEMENT.APPROVED_DATE as APPROVED_DATE,',
'    HR_MOV_EMPMOVEMENT.WKLOCATION_ID as WKLOCATION_ID,',
' HR_MOV_EMPMOVEMENT.LAST_CHANGED_BY,',
' HR_MOV_EMPMOVEMENT.LAST_CHANGED_DATE,',
' HR_MOV_EMPMOVEMENT.POSITION_ID,',
' HR_MOV_EMPMOVEMENT.ORG_ID,',
' HR_MOV_EMPMOVEMENT.ENTERED_BY,',
' HR_MOV_EMPMOVEMENT.ENTRY_DATE,',
' HR_MOV_EMPMOVEMENT.VERIFIED_BY,',
' HR_MOV_EMPMOVEMENT.VERIFIED_DATE,',
' HR_MOV_EMPMOVEMENT.ACTING_FOR,',
' report_to_admin, REPORT_TO_FUNC,',
' old_employee, OLD_ORGANISATION, OLD_ORG_STRUCTURE, OLD_FROM_DATE, OLD_TO_DATE, OLD_POSITION_NAME, OLD_WKLOCATION, OLD_JOB_NAME, OLD_JOB_CLASS, OLD_EMPLOYMENT_CLASS, OLD_GRADE, OLD_GRADE_POINT, OLD_PERSONAL_RATE, OLD_HOURLY_RATE, OLD_REPORT_TO_ADMIN,'
||' OLD_REPORT_TO_FUNC, OLD_PAYROLL_EFFECTIVE,  OLD_TRANSACTION_TYPE_ID, OLD_STATUS, OLD_APPROVED_BY, OLD_APPROVED_DATE',
' FROM HR_MOV_EMPMOVEMENT_NEW HR_MOV_EMPMOVEMENT  ',
'where emp_id=:P1281_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMMOVEMENTMANAGEMENT'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3470851673855947960)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BASUDEV'
,p_internal_uid=>445432969781488550
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488995047978368143)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488994627107368143)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488994240430368143)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3506378154659154146)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488993853194368143)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488993441234368143)
,p_db_column_name=>'TO_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488993002657368143)
,p_db_column_name=>'EFFECTIVE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488992660205368143)
,p_db_column_name=>'EXECUTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488992253342368142)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488991868462368142)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488991490006368142)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488991018601368142)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488990688038368142)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488990260147368142)
,p_db_column_name=>'ORG_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488989801847368142)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488989416787368142)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488988726170368141)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488988343205368141)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488987928962368141)
,p_db_column_name=>'ACTING_FOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Acting For'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489006658777368149)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'New Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489006279865368149)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489005831582368149)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489005409984368148)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489005010658368148)
,p_db_column_name=>'OLD_EMPLOYEE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Old Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489004685963368148)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489004201555368148)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489003827674368148)
,p_db_column_name=>'OLD_FROM_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Old From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489003440921368148)
,p_db_column_name=>'OLD_TO_DATE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489003021421368148)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Old Work Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489002654655368148)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489002262640368147)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489001865321368147)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489001430785368147)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489001043581368147)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489000601582368147)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489000227254368147)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488999883001368147)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488999428117368145)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488999060869368145)
,p_db_column_name=>'OLD_PAYROLL_EFFECTIVE'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Old Payroll Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488998687383368144)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488998221034368144)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488997810890368144)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488997466874368144)
,p_db_column_name=>'OLD_APPROVED_DATE'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Old Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488997008916368144)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632491032568373420)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488996691921368144)
,p_db_column_name=>'JOB_ID'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Job Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488996197790368144)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488995832337368144)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488995423990368143)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489007002799368149)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489008680913368149)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Employment Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489008220269368149)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632584840201532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489007866744368149)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489007427952368149)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3470809392615782746)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FROM_DATE:TO_DATE:CHANGE_TYPE:POSITION_ID:PERSONAL_RATE:EMPLOYMENT_TYPE_ID:EMPLOYMENT_CLASS_ID:PAYMENT_TYPE:COMPUTE_GROSS:VERIFIED_DATE:EXECUTED:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3585727842582931968)
,p_plug_name=>'Leave'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMLEAVEHISTORY'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433596497208667590)
,p_plug_name=>'Leave Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(3585727842582931968)
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPLEAVEENTITLE.ID as ID, HR_RCM_EMPLEAVEENTITLE.ID as pkID,LEAVE_RATE,',
'    HR_RCM_EMPLEAVEENTITLE.EMP_ID as EMP_ID, leave_earn,',
'    HR_RCM_EMPLEAVEENTITLE.LEAVE_TYPE_ID as LEAVE_TYPE_ID,',
'    HR_RCM_EMPLEAVEENTITLE.QUANTITY as QUANTITY,',
'    CASE WHEN HR_RCM_EMPLEAVEENTITLE.WORKING_DAYS=1 THEN ''Yes'' else ''No'' end as WORKING_DAYS,',
'    HR_RCM_EMPLEAVEENTITLE.MAX_ACCUMULATION as MAX_ACCUMULATION,',
'   case when HR_RCM_EMPLEAVEENTITLE.ACCUMULATIVE=1 then ''Yes'' else ''No'' end as ACCUMULATIVE,',
'  case when HR_RCM_EMPLEAVEENTITLE.REDUCE_SAL_OVERSPENT=1 then ''Yes'' else ''No'' end as REDUCE_SAL_OVERSPENT,',
'    HR_RCM_EMPLEAVEENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPLEAVEENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPLEAVEENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPLEAVEENTITLE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPLEAVEENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPLEAVEENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPLEAVEENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPLEAVEENTITLE.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_EMPLEAVEENTITLE HR_RCM_EMPLEAVEENTITLE',
'where HR_RCM_EMPLEAVEENTITLE.EMP_ID=:P1281_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPLEAVEENTITLE'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3620380940633055743)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:RP:P1284_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RONALDO'
,p_internal_uid=>295903703004380767
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489032959328368161)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489032583436368161)
,p_db_column_name=>'PKID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489032162181368161)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489031758714368161)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Leave Earned'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489031344502368161)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632531639210481189)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489030941000368160)
,p_db_column_name=>'QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489030500027368160)
,p_db_column_name=>'WORKING_DAYS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'WRK DYS?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489030095549368160)
,p_db_column_name=>'MAX_ACCUMULATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'MAX ACC'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489029785542368160)
,p_db_column_name=>'ACCUMULATIVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'ACC?'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489029294082368160)
,p_db_column_name=>'REDUCE_SAL_OVERSPENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Reduce Sal Overspent'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489028987576368160)
,p_db_column_name=>'START_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489028516784368160)
,p_db_column_name=>'END_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489028159981368160)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489027716024368159)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489027297242368159)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489026969531368159)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489026495530368159)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489026103795368159)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489025782711368159)
,p_db_column_name=>'LEAVE_RATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Leave Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3620362283467965725)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Old Leave Entitlements'
,p_report_seq=>10
,p_report_alias=>'826064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_TYPE_ID:QUANTITY:WORKING_DAYS:ACCUMULATIVE:MAX_ACCUMULATION:START_DATE:END_DATE:LEAVE_EARN:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489024098285368155)
,p_report_id=>wwv_flow_imp.id(3620362283467965725)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"END_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3620364796129005922)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_TYPE_ID:QUANTITY:WORKING_DAYS:ACCUMULATIVE:MAX_ACCUMULATION:START_DATE:END_DATE:LEAVE_EARN::LEAVE_RATE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489024964319368158)
,p_report_id=>wwv_flow_imp.id(3620364796129005922)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3457543206424862090)
,p_plug_name=>'Leave Track 360'
,p_parent_plug_id=>wwv_flow_imp.id(3585727842582931968)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>230
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' x."ID",',
' x."EMP_ID",',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.BROUGHT_FWD) else  to_char(BROUGHT_FWD) end BROUGHT_FWD,',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.USED) else  to_char(USED) end  USED,',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.PENDING) else  to_char(PENDING) end  PENDING,',
' x."COMPANY_YEAR",',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE a join hr_hcf_lookup b on a.leave_type_id=b.id',
'WHERE A.id=X.EMPLVENT_ID',
') "LEAVE_TYPE_ID",',
' x."LESS_DAYS",',
'x."MACHINE_INSERT",',
' x."MACHINE_UPDATE",',
' x."ENTERED_BY",',
' x."ENTRY_DATE",',
' x."LAST_CHANGED_BY",',
' x."LAST_CHANGED_DATE",entitlement, leave_earn',
'from #OWNER#.HR_LV_LEAVETRACK X join hr_rcm_employee v on x.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=upper(a.payment_type)             ',
'              )',
'and X.EMP_ID=:P1281_ID',
'order by X.COMPANY_YEAR desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3457543306376862090)
,p_name=>'Listing of Employee Leave Tracking'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>600492697903114318
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489022223340368154)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489021797913368154)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3609631245311822370)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489021434063368154)
,p_db_column_name=>'COMPANY_YEAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489021001099368154)
,p_db_column_name=>'LESS_DAYS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Less Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LESS_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489020605035368154)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'MACHINE_INSERT'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489020247493368154)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'MACHINE_UPDATE'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489019803477368153)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'ENTERED_BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489019404471368153)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'ENTRY_DATE'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489019044621368153)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed by'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489018643481368153)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489018276728368153)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489017808876368153)
,p_db_column_name=>'BROUGHT_FWD'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Brought Fwd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489017408895368153)
,p_db_column_name=>'USED'
,p_display_order=>35
,p_column_identifier=>'Q'
,p_column_label=>'Used'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489017042767368153)
,p_db_column_name=>'PENDING'
,p_display_order=>45
,p_column_identifier=>'R'
,p_column_label=>'Pending'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489023019050368154)
,p_db_column_name=>'ENTITLEMENT'
,p_display_order=>55
,p_column_identifier=>'S'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489022662371368154)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>65
,p_column_identifier=>'T'
,p_column_label=>'Leave Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3457545007117862322)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826143'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COMPANY_YEAR:LEAVE_TYPE_ID:BROUGHT_FWD:ENTITLEMENT:LEAVE_EARN:USED:PENDING:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_sort_column_1=>'COMPANY_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3485633072548907465)
,p_plug_name=>'Leave Request 360'
,p_parent_plug_id=>wwv_flow_imp.id(3585727842582931968)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent9::t-Region--scrollBody:::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>220
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", ',
'"EMP_ID",',
'"FROMDATE",',
'"TODATE",',
'"ADJUSTED_TODATE", pkg_global_fnts.fn_contimedaily(DAYS_TAKEN, :APP_ORG_ID, V.ID ) DAYS_TAKEN,',
'"HOLIDAYS",',
'"LEAVE_STATUS",',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID)',
'"EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."ADJUSTED_FROMDATE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS"',
'from "HR_LV_LEAVEHISTORY"  v join hr_rcm_employee w on w.id=v.emp_id',
'where  v.emp_id=:P1281_ID',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMLEAVEHISTORY'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3485632979666907464)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:RP,1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'BASUDEV'
,p_internal_uid=>430651663970529046
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489046821342368167)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489046473472368167)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489046066909368167)
,p_db_column_name=>'FROMDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489045649129368167)
,p_db_column_name=>'TODATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489045246227368166)
,p_db_column_name=>'ADJUSTED_TODATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Adjusted Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489044836630368166)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Days Taken'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489044445648368166)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489044051381368166)
,p_db_column_name=>'LEAVE_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Leave Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489043672108368166)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489043252228368166)
,p_db_column_name=>'REMARKS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489042862420368166)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shift Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489042393427368166)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489042047815368166)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489041667840368165)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489041209278368165)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Deferred Leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489040883776368165)
,p_db_column_name=>'ADJUSTED_FROMDATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Adjusted Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489040425436368165)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489040068494368165)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489039645388368165)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489039205028368164)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489038869361368164)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489038402532368163)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489038072687368163)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489037644881368163)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489037264867368163)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489036845894368162)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489036482560368162)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489036060854368162)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489035649058368162)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489035198853368162)
,p_db_column_name=>'STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489047614469368167)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Position Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489047251473368167)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3471118697918784141)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825961'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLVENT_ID:FROMDATE:TODATE:ADJUSTED_TODATE:ADJUSTED_FROMDATE:HOLIDAYS:LEAVE_MODE:DAYS_TAKEN:DEFERRED_LEAVE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635624444817247108)
,p_plug_name=>'Attendance'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_icon_css_classes=>'fa-clock-o'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3421055394327350014)
,p_plug_name=>'Activity 360'
,p_parent_plug_id=>wwv_flow_imp.id(3635624444817247108)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent14::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_ATT_ACTIVITYATTENDANCE.ID as ID,(SELECT VALUE_DESCRIPTION ||'' on the ''||START_DATE  ',
'                                           FROM HR_ATT_ACTIVITY a join table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) B ON A.ACTIVITY_TYPE_ID=B.ID',
'                                           WHERE A.ID = HR_ATT_ACTIVITYATTENDANCE.ACTIVITY_ID) as ACTIVITY,',
'    HR_ATT_ACTIVITYATTENDANCE.EMP_ID as EMP_ID,',
'    HR_ATT_ACTIVITYATTENDANCE.EARNINGS as EARNINGS,',
'    HR_ATT_ACTIVITYATTENDANCE.EARNINGS_INC as EARNINGS_INC,',
'    HR_ATT_ACTIVITYATTENDANCE.INCREASE_ID as INCREASE_ID,',
'    HR_ATT_ACTIVITYATTENDANCE.REMARKS as REMARKS,',
'    HR_ATT_ACTIVITYATTENDANCE.START_DATE as START_DATE,',
'    HR_ATT_ACTIVITYATTENDANCE.END_DATE as END_DATE,',
'    case when instrb(TIME_USED,''.'',1,1)=0 then TIME_USED||'':00''',
'         when substr(TIME_USED,1,instrb(TIME_USED,''.'',1,1)) =''.'' then ''00:''||substr(round(substr(TIME_USED,instrb(TIME_USED,''.'',1,1)+1,length(TIME_USED))*0.6,2) *10,1,2) ',
' else',
' substr(TIME_USED,1,instrb(TIME_USED,''.'',1,1)-1)||'':''||substr(round(substr(TIME_USED,instrb(TIME_USED,''.'',1,1)+1,length(TIME_USED))*0.6,2) *10,1,2) ',
' end as   TIME_USED,',
'(SELECT DESCRIPTION',
'from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code=b.id',
'where a.ADD_INCOME_ID=EMPENT_ID) as  EMPENT_ID,',
'    HR_ATT_ACTIVITYATTENDANCE.ENTRY_DATE as ENTRY_DATE,',
'    HR_ATT_ACTIVITYATTENDANCE.ENTERED_BY as ENTERED_BY,',
'    HR_ATT_ACTIVITYATTENDANCE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_ATT_ACTIVITYATTENDANCE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_ATT_ACTIVITYATTENDANCE.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_ATT_ACTIVITYATTENDANCE.MACHINE_UPDATE as MACHINE_UPDATE,',
'    act.subject_course,',
'    act.activity_type_id,',
'    act.tutor',
' from HR_ATT_ACTIVITYATTENDANCE HR_ATT_ACTIVITYATTENDANCE join hr_rcm_employee q on q.id=HR_ATT_ACTIVITYATTENDANCE.emp_id',
' join hr_att_activity act on act.id = HR_ATT_ACTIVITYATTENDANCE.activity_id',
'WHERE EMP_ID=:P1281_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMACTIVITYATTENDANCE'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3421055503537350014)
,p_name=>'Listing of Activity Attendees'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_ID,P1437_ACTIVITY_DATE:#ID#,#START_DATE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>564004895063602242
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488979398946368136)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488979058263368136)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3609631245311822370)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488978661555368136)
,p_db_column_name=>'EARNINGS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488978275225368135)
,p_db_column_name=>'EARNINGS_INC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Earnings Inc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_INC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488977883963368135)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCREASE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488977469410368135)
,p_db_column_name=>'REMARKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488977022734368135)
,p_db_column_name=>'START_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_format_mask=>'HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488976674925368135)
,p_db_column_name=>'END_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_format_mask=>'HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488976204030368135)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488975832050368135)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488975465195368135)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488975066433368135)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488974683656368134)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488974255332368134)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488973794665368134)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Additional Income'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488979892342368136)
,p_db_column_name=>'TIME_USED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Time Used(hh:mi)'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIME_USED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488980234477368136)
,p_db_column_name=>'ACTIVITY'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3253033199366960285)
,p_db_column_name=>'SUBJECT_COURSE'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Subject Course'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3273053871248961356)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3253033206786960286)
,p_db_column_name=>'ACTIVITY_TYPE_ID'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Activity Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3273389013928692818)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3253033367013960287)
,p_db_column_name=>'TUTOR'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'Tutor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3421057295712350373)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826575'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'SUBJECT_COURSE:ACTIVITY:ACTIVITY_TYPE_ID:TUTOR:START_DATE:END_DATE:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433598487292667592)
,p_name=>'Employee Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(3635624444817247108)
,p_template=>4072358936313175081
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPRULE.ID as ID,',
'    HR_RCM_EMPRULE.EMP_ID as EMP_ID,',
'    HR_RCM_EMPRULE.START_DATE as START_DATE,',
'    HR_RCM_EMPRULE.END_DATE as END_DATE,',
'    HR_RCM_EMPRULE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPRULE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPRULE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPRULE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPRULE.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPRULE.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_EMPRULE.RULE_OPTION as RULE_OPTION,',
'    HR_RCM_EMPRULE.RULE_VALUE as RULE_VALUE ',
' from HR_RCM_EMPRULE HR_RCM_EMPRULE',
'WHERE HR_RCM_EMPRULE.EMP_ID=:P1281_ID',
'ORDER BY  HR_RCM_EMPRULE.START_DATE DESC'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPLOYEERULES'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488971961464368133)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1283:&SESSION.::&DEBUG.::P1283_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488971557883368133)
,p_query_column_id=>2
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488971185820368133)
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'START DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488970783686368133)
,p_query_column_id=>4
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'END DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488970296195368133)
,p_query_column_id=>5
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488969921553368133)
,p_query_column_id=>6
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488969541539368133)
,p_query_column_id=>7
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'LAST CHANGED BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488969145233368132)
,p_query_column_id=>8
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'LAST CHANGED DATE'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488968764447368132)
,p_query_column_id=>9
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>11
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488968300771368132)
,p_query_column_id=>10
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>12
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488967977039368132)
,p_query_column_id=>11
,p_column_alias=>'RULE_OPTION'
,p_column_display_sequence=>3
,p_column_heading=>'RULE OPTION'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632583824166532445)
,p_lov_show_nulls=>'NO'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488967535472368132)
,p_query_column_id=>12
,p_column_alias=>'RULE_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'RULE VALUE'
,p_column_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3551471013662151587)
,p_plug_name=>'Calendar Details 360'
,p_parent_plug_id=>wwv_flow_imp.id(3635624444817247108)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>29
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id, EARNING_PERIOD_ID, WORK_DATE, AVAILABLE_FOR_WORK, DID_EMPLOYEE_WORK,',
'assigned_shift, APPROVED_OVERTIME, NORMAL_TIME, OVER_TIME, TIME_IN_LOST, TIME_OUT_LOST, TOTAL_TIME_LOST',
'from HR_ATT_EMPCALENDAR_HD',
'where emp_id = :P1281_ID',
'and work_date between :P1281_CAL_START and :P1281_CAL_END',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID,P1281_CAL_START,P1281_CAL_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Calendar Details 360'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3551471196711151588)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>192384433731689354
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488985736578368140)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488985311503368140)
,p_db_column_name=>'EARNING_PERIOD_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Earning Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632589967933532454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488984953777368140)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488984546975368140)
,p_db_column_name=>'AVAILABLE_FOR_WORK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Avl?'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488984144089368140)
,p_db_column_name=>'DID_EMPLOYEE_WORK'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>' Worked?'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488983735552368140)
,p_db_column_name=>'ASSIGNED_SHIFT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Assigned Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632392686817252894)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488983299343368139)
,p_db_column_name=>'APPROVED_OVERTIME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Approved Overtime'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488982931888368139)
,p_db_column_name=>'NORMAL_TIME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Normal Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488982588325368137)
,p_db_column_name=>'OVER_TIME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Over Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488982128430368137)
,p_db_column_name=>'TIME_IN_LOST'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Time In Lost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488981713302368137)
,p_db_column_name=>'TIME_OUT_LOST'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Time Out Lost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488981346446368137)
,p_db_column_name=>'TOTAL_TIME_LOST'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Total Time Lost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3552623482950056997)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826500'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EARNING_PERIOD_ID:WORK_DATE:ASSIGNED_SHIFT:AVAILABLE_FOR_WORK:DID_EMPLOYEE_WORK:APPROVED_OVERTIME:NORMAL_TIME:OVER_TIME:TIME_IN_LOST:TIME_OUT_LOST:TOTAL_TIME_LOST'
,p_break_on=>'EARNING_PERIOD_ID:0:0:0:0:0'
,p_break_enabled_on=>'EARNING_PERIOD_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635624674809247111)
,p_plug_name=>'Employee'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3411154548720764092)
,p_plug_name=>'Specific Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(3635624674809247111)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
' (SELECT RESPONSIBILITY_CODE',
'FROM HR_RCM_EMPRESPONSIBILITY',
'WHERE PARENT_ID=A.ID )  PARENT_ID,',
'  EMP_ID,',
'  RESPONSIBILITY_CODE,',
'  RESPONSIBILITY_DETAIL,',
'  (CASE FOR_APPRAISAL WHEN 1 THEN ''YES'' ELSE ''NO'' END ) FOR_APPRAISAL,',
'  WEIGHTING,',
'  START_DATE,',
'  END_DATE,',
'  ENTERED_BY,',
'  ENTRY_DATE,',
'  LAST_CHANGED_BY,',
'  LAST_CHANGED_DATE,',
'  MACHINE_INSERT,',
'  MACHINE_UPDATE',
'from HR_RCM_EMPRESPONSIBILITY A',
'where EMP_ID=:P1281_ID',
'order by START_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPRESPONSIBILITY'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
begin
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3411154643764764092)
,p_name=>'Listing of Specific Duties'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>554104035291016320
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488947480544368125)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:3000:&SESSION.::&DEBUG.::P3000_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488946633358368125)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'EMP_ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488943842325368124)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>3
,p_column_identifier=>'J'
,p_column_label=>'LAST_CHANGED_BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488943448062368124)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>4
,p_column_identifier=>'K'
,p_column_label=>'LAST_CHANGED_DATE'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488944675642368124)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'H'
,p_column_label=>'ENTERED_BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488944240679368124)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'I'
,p_column_label=>'ENTRY_DATE'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488943060158368124)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>7
,p_column_identifier=>'L'
,p_column_label=>'MACHINE_INSERT'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488942648613368124)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>8
,p_column_identifier=>'M'
,p_column_label=>'MACHINE_UPDATE'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488947034995368125)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>9
,p_column_identifier=>'B'
,p_column_label=>'Parent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488946203738368125)
,p_db_column_name=>'RESPONSIBILITY_CODE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSIBILITY_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488945866685368125)
,p_db_column_name=>'RESPONSIBILITY_DETAIL'
,p_display_order=>11
,p_column_identifier=>'E'
,p_column_label=>'Responsibility Detail'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSIBILITY_DETAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488945454639368124)
,p_db_column_name=>'START_DATE'
,p_display_order=>12
,p_column_identifier=>'F'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488945009222368124)
,p_db_column_name=>'END_DATE'
,p_display_order=>13
,p_column_identifier=>'G'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488948197170368125)
,p_db_column_name=>'WEIGHTING'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Weighting'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488947866080368125)
,p_db_column_name=>'FOR_APPRAISAL'
,p_display_order=>43
,p_column_identifier=>'P'
,p_column_label=>'For Appraisal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3411156249413764286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826887'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:RESPONSIBILITY_CODE:RESPONSIBILITY_DETAIL:WEIGHTING:FOR_APPRAISAL:START_DATE:END_DATE:'
,p_break_on=>'PARENT_ID:0:0:0:0:0'
,p_break_enabled_on=>'PARENT_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433614078928667630)
,p_name=>'Training'
,p_parent_plug_id=>wwv_flow_imp.id(3635624674809247111)
,p_template=>4072358936313175081
,p_display_sequence=>6
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'  TUTOR,',
'  TRAIN_END_DATE,',
'  EMP_ID,',
'  SUBJECT_COURSE,',
'  TRAINING_AGENCY,',
'  SPONSORING_AGENCY,',
' CASE WHEN IN_HOUSE_TRAINING=1 THEN ''Yes'' else ''No'' end IN_HOUSE_TRAINING,',
'case when REQUIRED_TRAINING=1 then ''Yes'' else ''No'' end REQUIRED_TRAINING,',
'  cast(last_changed_by as varchar2(100)) last_changed_by,',
'  LAST_CHANGED_DATE,',
'  COUNTRY_CODE,',
'  Q_LEVEL,',
'  TRAIN_START_DATE,',
'  ENTERED_BY,',
'  ENTRY_DATE,',
'  MACHINE_INSERT,',
'  MACHINE_UPDATE,',
'  POSITION_ID,',
'  WKLOCATION_ID',
'from HR_RCM_TRAINING',
'where EMP_ID=:P1281_ID ',
'order by TRAIN_START_DATE desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488941181137368123)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.::P1289_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488940731831368123)
,p_query_column_id=>2
,p_column_alias=>'TUTOR'
,p_column_display_sequence=>11
,p_column_heading=>'Tutor'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488940381077368123)
,p_query_column_id=>3
,p_column_alias=>'TRAIN_END_DATE'
,p_column_display_sequence=>17
,p_column_heading=>'Train End Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488939975498368123)
,p_query_column_id=>4
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488939524953368122)
,p_query_column_id=>5
,p_column_alias=>'SUBJECT_COURSE'
,p_column_display_sequence=>12
,p_column_heading=>'Program'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488939147922368122)
,p_query_column_id=>6
,p_column_alias=>'TRAINING_AGENCY'
,p_column_display_sequence=>9
,p_column_heading=>'Training Agency'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3622808264997521813)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488938774569368122)
,p_query_column_id=>7
,p_column_alias=>'SPONSORING_AGENCY'
,p_column_display_sequence=>10
,p_column_heading=>'Sponsoring Agency'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3622808264997521813)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488938332030368122)
,p_query_column_id=>8
,p_column_alias=>'IN_HOUSE_TRAINING'
,p_column_display_sequence=>13
,p_column_heading=>'In House?'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488937983351368122)
,p_query_column_id=>9
,p_column_alias=>'REQUIRED_TRAINING'
,p_column_display_sequence=>14
,p_column_heading=>'Required?'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488937573159368122)
,p_query_column_id=>10
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>4
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488937127458368122)
,p_query_column_id=>11
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488936736889368122)
,p_query_column_id=>12
,p_column_alias=>'COUNTRY_CODE'
,p_column_display_sequence=>15
,p_column_heading=>'Country'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488936371661368121)
,p_query_column_id=>13
,p_column_alias=>'Q_LEVEL'
,p_column_display_sequence=>16
,p_column_heading=>'Q Level'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488935913381368121)
,p_query_column_id=>14
,p_column_alias=>'TRAIN_START_DATE'
,p_column_display_sequence=>18
,p_column_heading=>'Train Start Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488935538210368121)
,p_query_column_id=>15
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488935139463368121)
,p_query_column_id=>16
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488934786413368121)
,p_query_column_id=>17
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>7
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488934376136368121)
,p_query_column_id=>18
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488933933740368121)
,p_query_column_id=>19
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>19
,p_column_heading=>'Position'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488933496028368121)
,p_query_column_id=>20
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Work Location'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(2965366583638024827)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433617876957667646)
,p_plug_name=>'Documents/Licence'
,p_parent_plug_id=>wwv_flow_imp.id(3635624674809247111)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPDOCUMENT.ID as ID,',
'    HR_RCM_EMPDOCUMENT.LOOKUP_ID as LOOKUP_ID,',
'    EXPIRY_DATE,',
'    HR_RCM_EMPDOCUMENT.EMP_ID as EMP_ID,',
'HR_RCM_EMPDOCUMENT.LOOKUP_VALUE as LICENSE_DESCRIPTION,',
'HR_RCM_EMPDOCUMENT.Parent_ID as Parent,',
'',
'    case when HR_RCM_EMPDOCUMENT.SUBMITTED=0 then ''No'' else ''Yes'' end as SUBMITTED,',
'    HR_RCM_EMPDOCUMENT.DATE_SUBMITTED as DATE_SUBMITTED,',
'    HR_RCM_EMPDOCUMENT.NO_OF_COPIES as NO_OF_COPIES,',
'    HR_RCM_EMPDOCUMENT.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPDOCUMENT.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPDOCUMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPDOCUMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPDOCUMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPDOCUMENT.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_EMPDOCUMENT HR_RCM_EMPDOCUMENT',
'where HR_RCM_EMPDOCUMENT.EMP_ID=:P1281_ID',
'ORDER BY HR_RCM_EMPDOCUMENT.DATE_SUBMITTED DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPDOCUMENTS'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documents/Licence'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3344946625601819906)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1291:&SESSION.::&DEBUG.:1291:P1291_ID,P1291_LOAD_PAGE:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'BEVON'
,p_internal_uid=>99387559012276847
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3344946687590819907)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3344946843523819908)
,p_db_column_name=>'LOOKUP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'DOCUMENT TYPE'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3506850866466308920)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3344946957693819909)
,p_db_column_name=>'EXPIRY_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352382920927586960)
,p_db_column_name=>'EMP_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352382972641586961)
,p_db_column_name=>'LICENSE_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'License Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383133334586962)
,p_db_column_name=>'PARENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Parent'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(3352314970609517225)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383212389586963)
,p_db_column_name=>'SUBMITTED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Submitted'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383332793586964)
,p_db_column_name=>'DATE_SUBMITTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Date Submitted'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383415303586965)
,p_db_column_name=>'NO_OF_COPIES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'No Of Copies'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383485440586966)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383593414586967)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383761786586968)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383837570586969)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352383895240586970)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3352384042112586971)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3352398013297588022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1068390'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOOKUP_ID:EXPIRY_DATE:LICENSE_DESCRIPTION:PARENT:SUBMITTED:DATE_SUBMITTED:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3471008223175029877)
,p_plug_name=>'Appraisals 360'
,p_parent_plug_id=>wwv_flow_imp.id(3635624674809247111)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent7::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID,',
'    MERIT_CONFIG_ID,',
'    EMP_ID,  ',
'    APPRAISAL_START_PERIOD,',
'    APPRAISAL_END_PERIOD,',
'    QUESTION_ANSWERED,',
'    APPRAISER_CLASSIFICATION,',
'    SUMMARY_STATUS,',
'    MANAGEMENT_POINTS,',
'    EMPLOYEE_PERCENT,',
'    DEDUCTION_PERCENT,',
'    BONUS,',
'    REFUNDED_POINT,',
'    REVIEWER,',
'    INTERVIEWEE_ASPIRATIONS,',
'    INTERVIEWEE_COMMENTS,',
'    INTERVIEWER_COMMENTS,',
'    EMPLOYEE_POINTS,',
'    MANAGEMENT_PERCENT,',
'    AREAS_OF_STRENGHTS,',
'    AREAS_OF_WEAKNESS,',
'    TRAINING_REQUIRED,',
'    MOBILITY_POTENTIAL,',
'    LAST_CHANGED_BY,',
'    LAST_CHANGED_DATE,',
'    ENTERED_BY,',
'    ENTRY_DATE,',
'    VERIFIED_BY,',
'    VERIFIED_DATE,',
'    APPROVED_BY,',
'    APPROVED_DATE,',
'    ORG_ID,',
'    POSITION_LOCATION_ID,',
'    ORG_STRUCTURE,',
'    PAYMENT_TYPE,',
'    EMPLOYMENT_CLASS_ID,',
'    MACHINE_INSERT,',
'    MACHINE_UPDATE,',
'    TRANSACTION_TYPE_ID,',
'    STATUS',
'from',
'    "HR_APP_MERITINCREMENT" x',
'where EMP_ID = :P1281_ID',
'and exists(',
'            select',
'                1',
'            from',
'                vw_useraccess_finegrain k',
'            where',
'                NVL(k.grade_id, nvl(x.emp_grade_id, 1)) = nvl(x.emp_grade_id, 1)',
'                and user_name = :APP_USER',
'        )',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPAPPRAISAL'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3471008136232029876)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:RP:P1496_ID,P1496_RETURN_VALUE:#ID#,1281'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'BASUDEV'
,p_internal_uid=>445276507405406634
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488966139154368131)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488965772800368131)
,p_db_column_name=>'MERIT_CONFIG_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Config'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632676537582627410)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488965389499368131)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488964539425368130)
,p_db_column_name=>'APPRAISAL_START_PERIOD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Appraisal Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488964179419368130)
,p_db_column_name=>'APPRAISAL_END_PERIOD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Appraisal End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488963715710368130)
,p_db_column_name=>'QUESTION_ANSWERED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Question Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488963339690368130)
,p_db_column_name=>'APPRAISER_CLASSIFICATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Appraiser Classification'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488962914857368130)
,p_db_column_name=>'SUMMARY_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Summary Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488962582045368130)
,p_db_column_name=>'MANAGEMENT_POINTS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Management Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488962184969368130)
,p_db_column_name=>'EMPLOYEE_PERCENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488961779606368130)
,p_db_column_name=>'DEDUCTION_PERCENT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Deduction Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488961305357368129)
,p_db_column_name=>'BONUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488960989242368129)
,p_db_column_name=>'REFUNDED_POINT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Refunded Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488960504138368129)
,p_db_column_name=>'REVIEWER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Reviewer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488960130030368129)
,p_db_column_name=>'INTERVIEWEE_ASPIRATIONS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interviewee Aspirations'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488959731308368129)
,p_db_column_name=>'INTERVIEWEE_COMMENTS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Interviewee Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488959324261368129)
,p_db_column_name=>'INTERVIEWER_COMMENTS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Interviewer Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488958952981368129)
,p_db_column_name=>'EMPLOYEE_POINTS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Employee Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488958542713368129)
,p_db_column_name=>'MANAGEMENT_PERCENT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Management Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488958100973368128)
,p_db_column_name=>'AREAS_OF_STRENGHTS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Areas Of Strenghts'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488957748152368128)
,p_db_column_name=>'AREAS_OF_WEAKNESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Areas Of Weakness'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488957356183368128)
,p_db_column_name=>'TRAINING_REQUIRED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Training Required'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488956982978368128)
,p_db_column_name=>'MOBILITY_POTENTIAL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Mobility Potential'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488956550635368128)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488956152948368128)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488955724701368128)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488955323813368128)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488954921834368128)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488954568216368127)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488954166398368127)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488953724845368127)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488953385659368127)
,p_db_column_name=>'ORG_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488952900222368127)
,p_db_column_name=>'POSITION_LOCATION_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Position Location Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488952515007368127)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488952136664368127)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488951714595368127)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3622823299152550365)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488951318108368126)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488950917658368126)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488950522583368126)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488950189284368126)
,p_db_column_name=>'STATUS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3470976652914998079)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'826812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPRAISAL_START_PERIOD:MERIT_CONFIG_ID:EMP_ID:APPRAISAL_END_PERIOD:APPRAISER_CLASSIFICATION:SUMMARY_STATUS:MANAGEMENT_POINTS:EMPLOYMENT_CLASS_ID:PAYMENT_TYPE:ORG_STRUCTURE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635624824626247112)
,p_plug_name=>'Other'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3424487563893765079)
,p_name=>'Alternate Job Role'
,p_parent_plug_id=>wwv_flow_imp.id(3635624824626247112)
,p_template=>4072358936313175081
,p_display_sequence=>8
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_ALT_POSIT_LOC.ID as ID,',
'    HR_RCM_ALT_POSIT_LOC.POSITION_ID as POSITION_ID,',
'    HR_RCM_ALT_POSIT_LOC.WKLOCATION_ID as WKLOCATION_ID,',
'    HR_RCM_ALT_POSIT_LOC.DATE_START as DATE_START,',
'    HR_RCM_ALT_POSIT_LOC.DATE_END as DATE_END,',
'    HR_RCM_ALT_POSIT_LOC.RESPONSIBILITY as RESPONSIBILITY,',
'    HR_RCM_ALT_POSIT_LOC.REMARKS as REMARKS,',
'    HR_RCM_ALT_POSIT_LOC.EMP_ID as EMP_ID,',
'    HR_RCM_ALT_POSIT_LOC.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_ALT_POSIT_LOC.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_ALT_POSIT_LOC.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_ALT_POSIT_LOC.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_ALT_POSIT_LOC.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_ALT_POSIT_LOC.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_ALT_POSIT_LOC HR_RCM_ALT_POSIT_LOC',
'where EMP_ID=:P1281_ID',
'order by DATE_START desc'))
,p_required_role=>wwv_flow_imp.id(3585335516081360205)
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPALTPOSLOC'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488899157222368109)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1299:&SESSION.::&DEBUG.::P1299_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488898725482368109)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>13
,p_column_heading=>'Position'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488898294428368108)
,p_query_column_id=>3
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Work Location'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488897933687368108)
,p_query_column_id=>4
,p_column_alias=>'DATE_START'
,p_column_display_sequence=>2
,p_column_heading=>'Date Start'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488897556279368108)
,p_query_column_id=>5
,p_column_alias=>'DATE_END'
,p_column_display_sequence=>3
,p_column_heading=>'Date End'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488897093924368108)
,p_query_column_id=>6
,p_column_alias=>'RESPONSIBILITY'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488896699190368108)
,p_query_column_id=>7
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488896347478368108)
,p_query_column_id=>8
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488895903546368108)
,p_query_column_id=>9
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488895571367368108)
,p_query_column_id=>10
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488895145917368107)
,p_query_column_id=>11
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488894773505368107)
,p_query_column_id=>12
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488894352200368107)
,p_query_column_id=>13
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488893965612368107)
,p_query_column_id=>14
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433612283921667621)
,p_name=>'Awards'
,p_parent_plug_id=>wwv_flow_imp.id(3635624824626247112)
,p_template=>4072358936313175081
,p_display_sequence=>11
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_AWARD.ID as ID,',
'    HR_RCM_AWARD.EMP_ID as EMP_ID,',
'    HR_RCM_AWARD.AWARD_DATE as AWARD_DATE,',
'    HR_RCM_AWARD.REASON as REASON,',
'    HR_RCM_AWARD.PRIZE_GIVEN as PRIZE_GIVEN,',
'    HR_RCM_AWARD.OCCASION as OCCASION,',
'    HR_RCM_AWARD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_AWARD.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_AWARD.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_AWARD.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_AWARD.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_AWARD.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_AWARD.ORG_ID as ORG_ID,',
'    HR_RCM_AWARD.AWARD_TYPE as AWARD_TYPE ',
' from HR_RCM_AWARD HR_RCM_AWARD',
'where HR_RCM_AWARD.EMP_ID =:P1281_ID',
'ORDER BY HR_RCM_AWARD.AWARD_DATE desc'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPAWARDS'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488892821133368107)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1288:&SESSION.::&DEBUG.::P1288_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488892424488368107)
,p_query_column_id=>2
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488892062560368106)
,p_query_column_id=>3
,p_column_alias=>'AWARD_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'AWARD DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488891619293368106)
,p_query_column_id=>4
,p_column_alias=>'REASON'
,p_column_display_sequence=>6
,p_column_heading=>'REASON'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488891234736368106)
,p_query_column_id=>5
,p_column_alias=>'PRIZE_GIVEN'
,p_column_display_sequence=>7
,p_column_heading=>'PRIZE GIVEN'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488890809042368106)
,p_query_column_id=>6
,p_column_alias=>'OCCASION'
,p_column_display_sequence=>8
,p_column_heading=>'OCCASION'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488890432016368106)
,p_query_column_id=>7
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488889994382368106)
,p_query_column_id=>8
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488889611352368106)
,p_query_column_id=>9
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488889247196368106)
,p_query_column_id=>10
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488888828746368105)
,p_query_column_id=>11
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>13
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488888451875368105)
,p_query_column_id=>12
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>14
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488888018970368105)
,p_query_column_id=>13
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>4
,p_column_heading=>'GIVEN BY'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3622808264997521813)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488887676444368105)
,p_query_column_id=>14
,p_column_alias=>'AWARD_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'AWARD TYPE'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632666850907627400)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433616390117667638)
,p_name=>'Work Permits'
,p_parent_plug_id=>wwv_flow_imp.id(3635624824626247112)
,p_template=>4072358936313175081
,p_display_sequence=>12
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPWORKPERMIT.ID as ID,',
'    HR_RCM_EMPWORKPERMIT.EMP_ID as EMP_ID,',
'    HR_RCM_EMPWORKPERMIT.PERIOD_START as PERIOD_START,',
'    HR_RCM_EMPWORKPERMIT.PERIOD_END as PERIOD_END,',
'    HR_RCM_EMPWORKPERMIT.REMARKS as REMARKS,',
'    HR_RCM_EMPWORKPERMIT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPWORKPERMIT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPWORKPERMIT.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPWORKPERMIT.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPWORKPERMIT.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPWORKPERMIT.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_EMPWORKPERMIT HR_RCM_EMPWORKPERMIT',
' where HR_RCM_EMPWORKPERMIT.EMP_ID=:P1281_ID',
'ORDER BY HR_RCM_EMPWORKPERMIT.PERIOD_START DESC'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPWORKPERMIT'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488926283048368118)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1290:&SESSION.::&DEBUG.::P1290_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488925796913368118)
,p_query_column_id=>2
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488925479307368118)
,p_query_column_id=>3
,p_column_alias=>'PERIOD_START'
,p_column_display_sequence=>4
,p_column_heading=>'PERIOD START'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488925061929368118)
,p_query_column_id=>4
,p_column_alias=>'PERIOD_END'
,p_column_display_sequence=>5
,p_column_heading=>'PERIOD END'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488924601842368118)
,p_query_column_id=>5
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>3
,p_column_heading=>'REMARKS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488924257508368118)
,p_query_column_id=>6
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488923869579368117)
,p_query_column_id=>7
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488923425524368117)
,p_query_column_id=>8
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488923028219368117)
,p_query_column_id=>9
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488922676262368117)
,p_query_column_id=>10
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>10
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488922270530368117)
,p_query_column_id=>11
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>11
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433619477665667649)
,p_name=>'Travel'
,p_parent_plug_id=>wwv_flow_imp.id(3635624824626247112)
,p_template=>4072358936313175081
,p_display_sequence=>13
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_TRAVELHISTORY.ID as ID,',
'    HR_RCM_TRAVELHISTORY.EMP_ID as EMP_ID,',
'    HR_RCM_TRAVELHISTORY.DESTINATION as DESTINATION,',
'    HR_RCM_TRAVELHISTORY.PURPOSE as PURPOSE,',
'    HR_RCM_TRAVELHISTORY.TRAVEL_DATE as TRAVEL_DATE,',
'    HR_RCM_TRAVELHISTORY.RETURN_DATE as RETURN_DATE,',
'    HR_RCM_TRAVELHISTORY.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_TRAVELHISTORY.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_TRAVELHISTORY.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_TRAVELHISTORY.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_TRAVELHISTORY.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_TRAVELHISTORY.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_TRAVELHISTORY HR_RCM_TRAVELHISTORY',
'where HR_RCM_TRAVELHISTORY.EMP_ID=:P1281_ID',
'ORDER BY HR_RCM_TRAVELHISTORY.TRAVEL_DATE  DESC'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMTRAVEL'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488921103656368116)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1292:&SESSION.::&DEBUG.::P1292_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488920764292368116)
,p_query_column_id=>2
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488920338967368116)
,p_query_column_id=>3
,p_column_alias=>'DESTINATION'
,p_column_display_sequence=>3
,p_column_heading=>'DESTINATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488919930003368116)
,p_query_column_id=>4
,p_column_alias=>'PURPOSE'
,p_column_display_sequence=>4
,p_column_heading=>'PURPOSE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488919536912368116)
,p_query_column_id=>5
,p_column_alias=>'TRAVEL_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'TRAVEL DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488919162722368116)
,p_query_column_id=>6
,p_column_alias=>'RETURN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'RETURN DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488918738980368116)
,p_query_column_id=>7
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488918320518368116)
,p_query_column_id=>8
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488917897572368116)
,p_query_column_id=>9
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488917504664368115)
,p_query_column_id=>10
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488917142084368115)
,p_query_column_id=>11
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>11
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3488916730209368115)
,p_query_column_id=>12
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>12
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3611644267149632305)
,p_plug_name=>'Documents'
,p_parent_plug_id=>wwv_flow_imp.id(3635624824626247112)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456794117511060544)
,p_plug_name=>'Memos 360'
,p_parent_plug_id=>wwv_flow_imp.id(3611644267149632305)
,p_region_template_options=>'#DEFAULT#:::is-collapsed::t-Region--accent1::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>260
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "MEMO_ID", ',
'(Select DESCRIPTION',
'From Hr_Gri_Discipline A Join Hr_Gri_Offence B On A.Offence_Id=B.Id',
'where a.id=w."DISCIPLINE_ID")',
'"DISCIPLINE_ID",',
'"DATE_WRITTEN",',
'"EMPLOYEE",',
'"FROM_EMPLOYEE",',
'"CLASSIFICATION",',
'"SUBJECT",',
'"MEMO_ATTACHED",',
'"CC_TO",',
'w."ENTERED_BY",',
'w."ENTRY_DATE",',
'w."VERIFIED_BY",',
'w."VERIFIED_DATE",',
'w."LAST_CHANGED_BY",',
'w."LAST_CHANGED_DATE",',
'w."TRANSACTION_TYPE_ID",',
'w."STATUS",',
'w."MACHINE_INSERT",',
'w."MACHINE_UPDATE"',
'from "#OWNER#"."HR_DOC_MEMORANDA" w join hr_rcm_employee q on q.id=w.EMPLOYEE',
'where EMPLOYEE =:P1281_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMMEMORANDA'')>0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3456794304130060550)
,p_name=>'List of Employee Memoranda History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.::P1429_MEMO_ID,P1429_NAVIGATOR:#MEMO_ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>599743695656312778
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488914901195368114)
,p_db_column_name=>'MEMO_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Memo ID'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488914525066368114)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'To Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488914121872368114)
,p_db_column_name=>'MEMO_ATTACHED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Memo Contents'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_ATTACHED'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488913757298368113)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488913373844368113)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488912947862368113)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488912565638368113)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488912134623368113)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488911723960368113)
,p_db_column_name=>'STATUS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488911344129368113)
,p_db_column_name=>'DATE_WRITTEN'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Date Written'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_WRITTEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488910981909368113)
,p_db_column_name=>'FROM_EMPLOYEE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'From Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'FROM_EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488910568251368112)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLASSIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488910191200368112)
,p_db_column_name=>'SUBJECT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBJECT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488909700318368112)
,p_db_column_name=>'CC_TO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cc To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CC_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488909368749368112)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488908904812368112)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488908575671368112)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488908107472368112)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488915300243368114)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Offence'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3403772083595551468)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'827232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FROM_EMPLOYEE:CLASSIFICATION:EMPLOYEE:SUBJECT:DATE_WRITTEN:CC_TO:DISCIPLINE_ID:'
,p_break_on=>'DISCIPLINE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DISCIPLINE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3488907306078368112)
,p_report_id=>wwv_flow_imp.id(3403772083595551468)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMPLOYEE'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMPLOYEE" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3456796824264063483)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'827240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FROM_EMPLOYEE:CLASSIFICATION:EMPLOYEE:SUBJECT:DATE_WRITTEN:CC_TO:DISCIPLINE_ID:'
,p_break_on=>'DISCIPLINE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DISCIPLINE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3539474377076036134)
,p_plug_name=>'Documents Center 360'
,p_parent_plug_id=>wwv_flow_imp.id(3611644267149632305)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent11::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>270
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", "RECORD_DETAILS",',
'"FORM_ID" "TABLE_NAME",',
'"TABLE_KEY",',
'"MODULE",',
'"DESCRIPTION" "DESCRIPTION",',
'"CREATED_BY",',
'"DATE_CREATED",',
'"LAST_MODIFIED_BY",',
'"DATE_LAST_MODIFIED",',
'"MEDIA_EMP_ID",',
'"EMP_GRADE_ID"',
'from "MEDIA_HEAD" ',
'WHERE MEDIA_EMP_ID =:P1281_ID',
'and  exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(MEDIA_HEAD.emp_grade_id,1)) = nvl(MEDIA_HEAD.emp_grade_id,1)',
'             and user_name=:APP_USER)             '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMMEDIAHEAD'')>0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3539474582688036136)
,p_name=>'Listing of Media'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_ID,P129_RETURN_VALUE:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'MCC_TRADING_DEV'
,p_internal_uid=>682423974214288364
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488904607132368110)
,p_db_column_name=>'TABLE_KEY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488904233573368110)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description '
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488903806608368110)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488903439493368110)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CREATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488903089396368110)
,p_db_column_name=>'LAST_MODIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_MODIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488902662830368110)
,p_db_column_name=>'DATE_LAST_MODIFIED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Date Last Modified'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488902210970368110)
,p_db_column_name=>'ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488901872462368110)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Screen Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'TABLE_NAME'
,p_rpt_named_lov=>wwv_flow_imp.id(3602958633712175594)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488901422472368110)
,p_db_column_name=>'RECORD_DETAILS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Record Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RECORD_DETAILS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488901051650368109)
,p_db_column_name=>'MODULE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MODULE'
,p_rpt_named_lov=>wwv_flow_imp.id(3585354932801556462)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488905004663368111)
,p_db_column_name=>'MEDIA_EMP_ID'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Media Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3488905401528368111)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Emp Grade Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3539475658018036142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'827303'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'MODULE:TABLE_NAME:RECORD_DETAILS:DESCRIPTION:LAST_MODIFIED_BY:DATE_LAST_MODIFIED::EMP_GRADE_ID'
,p_break_on=>'MODULE:TABLE_NAME:0:0:0:0'
,p_break_enabled_on=>'MODULE:TABLE_NAME:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635624881937247113)
,p_plug_name=>'Payroll'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMPAYROLLHEADER'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3261907439046826277)
,p_plug_name=>'Configurations'
,p_parent_plug_id=>wwv_flow_imp.id(3635624881937247113)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>73
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3431041322853213535)
,p_plug_name=>'Non Statutory Deductions 360'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent15::t-Region--hiddenOverflow:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>43
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", ',
'"EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'x."EMP_ID",x."EMP_ID" employee_id,',
'"DATESTART",',
'"DISCIPLINE_ID",',
'"DEDUCT_STATUS",',
'"AMOUNT_BORROWED",',
'"AMOUNT_OWING",',
'"INTEREST_TYPE",',
'"INTEREST_RATE",',
'"PERIOD",',
'"DATE_CLOSE",',
'"CLOSED_BY",',
'"DEDUCTION_AMOUNT",',
'"APPROVED_BY",',
'"APPROVED_DATE",',
'"DEDUCTION_NO",',
'x."REMARKS",',
'"PREVIOUS_START_DATE",',
'"CLOSING_EARNING_PERIOD",',
'"CURRENT_BALANCE",',
'"DEDUCTION_TYPE",',
'x."HOURLY_RATE",',
'"FOR_PRV_YTD_ENTRY",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS"',
'from "PA_PCF_ADMINDEDUCTION" x ',
'where EMP_ID = :P1281_ID',
'and x.org_id =:APP_ORG_ID',
'and x.datestart between :P1281_START_PERIOD and :P1281_END_PERIOD',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID,P1281_START_PERIOD,P1281_END_PERIOD'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMADMINDEDUCTIONS'')>0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3431041544921213537)
,p_name=>'Listing of Employee Non Statutory Deductions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_owner=>'PUR_INV'
,p_internal_uid=>573990936447465765
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489167450910368439)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489167049327368439)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489166625692368438)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489166194800368438)
,p_db_column_name=>'DATESTART'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489165839520368438)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489165449217368438)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489165059652368438)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489164650996368438)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489164270191368438)
,p_db_column_name=>'PERIOD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489163811308368438)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489163488912368437)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489163051451368437)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489162637535368437)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489162238489368437)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489161851855368437)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489161453524368437)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489161008306368437)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489160597279368437)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489160266617368436)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489159889349368436)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489159467786368436)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489159009499368436)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489158660937368436)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489158262260368436)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3632624875019596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489157891309368436)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489157438475368436)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489157068565368436)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489156600213368435)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489156225348368435)
,p_db_column_name=>'REMARKS'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489155822729368435)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489155428489368435)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489155033908368435)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489154685771368435)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489154202237368435)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489153801338368434)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489167869207368439)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3431045323275214346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'824783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3451168644974765628)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'824775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489153022506368434)
,p_report_id=>wwv_flow_imp.id(3451168644974765628)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433591878921667585)
,p_plug_name=>'Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>23
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID,ENTITLEMENT_CURRENCY,dept_to_manage,HR_RCM_EMPENTITLE.ID PKKEY,',
'    HR_RCM_EMPENTITLE.EMP_ID as EMP_ID,',
'    HR_RCM_EMPENTITLE.INCOME_TYPE as INCOME_TYPE,',
'    HR_RCM_EMPENTITLE.INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when HR_RCM_EMPENTITLE.TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE,',
'    case when HR_RCM_EMPENTITLE.NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    HR_RCM_EMPENTITLE.AMOUNT as AMOUNT,',
'    HR_RCM_EMPENTITLE.EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    HR_RCM_EMPENTITLE.STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    HR_RCM_EMPENTITLE.ADMIN_STATUS as ADMIN_STATUS,',
'    HR_RCM_EMPENTITLE.PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    HR_RCM_EMPENTITLE.QUICK_ENTRY as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT , emp_mov_id',
' from HR_RCM_EMPENTITLE HR_RCM_EMPENTITLE join pa_pcf_incomecode b on b.id = HR_RCM_EMPENTITLE.INCOME_CODE_ID',
'where  HR_RCM_EMPENTITLE.EMP_ID=:P1281_ID',
'--AND START_DATE BETWEEN :P1281_START_DATE_ENT AND  :P1281_END_DATE_ENT',
'--ORDER BY HR_RCM_EMPENTITLE.START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPENTITLEMENT'')>0 and pkg_security.GET_REGION_EXCEPTIONS(''FRMEMPENTITLEMENT'', :APP_ORG_ID, :P1281_EMPLOYMENT_CLASS_ID, :P1281_PAYMENT_TYPE) = 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3603491290870492902)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>312793352766943608
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489149576151368431)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID,P1285_EMP_ID,P1285_DATE_SEPARATED,P1285_IND_DEL_BR:#ID#,&P1281_ID.,&P1281_DATE_SEPARATED.,&P1281_ID_IND.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489149120121368431)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489148731153368431)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489148336366368431)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489147973175368431)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Income'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(476945779073596988)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489147504925368431)
,p_db_column_name=>'TAXABLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'TAX'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489147112198368431)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'NIB'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489146780875368431)
,p_db_column_name=>'AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489146341250368430)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Expense Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489145956359368430)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489145590898368430)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489145115157368430)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489144757437368430)
,p_db_column_name=>'REMARKS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489144389435368430)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489143940113368430)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489143573101368430)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489143109207368430)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489142698308368429)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489142323689368429)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489141976363368429)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489141495544368429)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489149902461368432)
,p_db_column_name=>'DEPT_TO_MANAGE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Dept To Manage'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489150299722368432)
,p_db_column_name=>'PKKEY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Pkkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561392784992477967)
,p_db_column_name=>'EMP_MOV_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Movements'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3559892092920318637)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3603071273121876868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'824930'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:ENTITLEMENT_CURRENCY:START_DATE:END_DATE::DEPT_TO_MANAGE:PKKEY:EMP_MOV_ID'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3001677548707907921)
,p_report_id=>wwv_flow_imp.id(3603071273121876868)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEPT_TO_MANAGE'
,p_operator=>'='
,p_expr=>'HR'
,p_condition_sql=>'"DEPT_TO_MANAGE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''HR''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3001677967209907922)
,p_report_id=>wwv_flow_imp.id(3603071273121876868)
,p_name=>'IS_ACTIVE'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'P IS null or  P >=  trunc(current_date )'
,p_condition_sql=>'"END_DATE" IS null or  "END_DATE" >=  trunc(current_date )'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3609647822103730346)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Managed Externally'
,p_report_seq=>10
,p_report_alias=>'824918'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:ENTITLEMENT_CURRENCY:START_DATE:END_DATE::DEPT_TO_MANAGE'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489138347118368427)
,p_report_id=>wwv_flow_imp.id(3609647822103730346)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489138705143368427)
,p_report_id=>wwv_flow_imp.id(3609647822103730346)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEPT_TO_MANAGE'
,p_operator=>'not in'
,p_expr=>'HR,PAYROLL'
,p_condition_sql=>'"DEPT_TO_MANAGE" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''HR, PAYROLL''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3609649417284742739)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Managed by Payroll'
,p_report_seq=>10
,p_report_alias=>'824906'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:ENTITLEMENT_CURRENCY:START_DATE:END_DATE::DEPT_TO_MANAGE'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489139543815368427)
,p_report_id=>wwv_flow_imp.id(3609649417284742739)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489139897610368427)
,p_report_id=>wwv_flow_imp.id(3609649417284742739)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEPT_TO_MANAGE'
,p_operator=>'='
,p_expr=>'PAYROLL'
,p_condition_sql=>'"DEPT_TO_MANAGE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''PAYROLL''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3620387720691181864)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Old Allowances'
,p_report_seq=>10
,p_report_alias=>'824898'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:ENTITLEMENT_CURRENCY:START_DATE:END_DATE:'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489140728545368429)
,p_report_id=>wwv_flow_imp.id(3620387720691181864)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"END_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3433594291925667588)
,p_plug_name=>'Salaries'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id disbursements,',
'    HR_RCM_SALARY.ID as ID, daily_rate,ANNUAL_SALARY,',
'    HR_RCM_SALARY.EMP_ID as EMP_ID,',
'    HR_RCM_SALARY.PERSONAL_RATE as PERSONAL_RATE,',
'    HR_RCM_SALARY.HOURLY_RATE as HOURLY_RATE,',
'    HR_RCM_SALARY.STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    HR_RCM_SALARY.SALARY_CURRENCY as SALARY_CURRENCY,',
'    HR_RCM_SALARY.LEAVE_PASSAGE_AMOUNT as LEAVE_PASSAGE_AMOUNT,',
'    HR_RCM_SALARY.LEAVE_PASSAGE_DATE as LEAVE_PASSAGE_DATE,',
'    HR_RCM_SALARY.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_SALARY.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_RCM_SALARY.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_SALARY.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_SALARY.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_SALARY.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_SALARY.START_DATE as START_DATE,',
'    HR_RCM_SALARY.END_DATE as END_DATE,',
'    HR_RCM_SALARY.EMP_MOV_ID as EMP_MOV_ID,',
'    HR_RCM_SALARY.PAYMENT_MODE as PAYMENT_MODE, grade_point_amount,',
'(select  trim(to_char(GRADE_MINI,''$999,999,999'')) || '' -- ''|| trim(to_char(GRADE_MAX,''$999,999,999'')) ',
'from HR_HCF_POSITIONGRADE',
'WHERE ID=HR_RCM_SALARY.SAL_GRADE_ID) Salary_Scale',
' from HR_RCM_SALARY HR_RCM_SALARY',
'where  HR_RCM_SALARY.EMP_ID=:P1281_ID',
'order by end_date desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMSALARY'') > 0 and pkg_security.GET_REGION_EXCEPTIONS(''FRMSALARY'', :APP_ORG_ID, :P1281_EMPLOYMENT_CLASS_ID, :P1281_PAYMENT_TYPE) = 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3620355048854854030)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:RP:P1282_ID,P1282_EMP_GRADE_ID:#ID#,&P1281_EMP_GRADE_ID.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RONALDO'
,p_internal_uid=>295929594782582480
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489136087181368426)
,p_db_column_name=>'DISBURSEMENTS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Disbursements'
,p_column_link=>'javascript:void(0)'
,p_column_linktext=>'<span class="fa fa-search-plus"></span><span class="DISBURSEMENTS" style="display:none">#DISBURSEMENTS#</span>'
,p_column_link_attr=>'class="showDisbursements"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489135599396368426)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489135218697368426)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489134863753368425)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489134450008368425)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489134031004368425)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489133675183368425)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632641603382596691)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489133291561368425)
,p_db_column_name=>'LEAVE_PASSAGE_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Leave Passage Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489132871840368425)
,p_db_column_name=>'LEAVE_PASSAGE_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Leave Passage Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489132476839368425)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489132019780368425)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489131631728368425)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489131204617368424)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489130807570368424)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489130419603368420)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489130007402368419)
,p_db_column_name=>'START_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489129691090368419)
,p_db_column_name=>'END_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489129237943368419)
,p_db_column_name=>'EMP_MOV_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Emp Mov Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489128874769368419)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632462712366335719)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489128450287368419)
,p_db_column_name=>'GRADE_POINT_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Grade Point Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489128069439368419)
,p_db_column_name=>'SALARY_SCALE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Salary Scale'
,p_column_type=>'STRING'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489127662553368419)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450314120863707980)
,p_db_column_name=>'ANNUAL_SALARY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Annual Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3620285840216698781)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Old Salaries'
,p_report_seq=>10
,p_report_alias=>'825045'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DISBURSEMENTS:PAYMENT_MODE:SALARY_CURRENCY:PERSONAL_RATE:HOURLY_RATE:START_DATE:END_DATE:SALARY_SCALE:GRADE_POINT_AMOUNT:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489126069573368418)
,p_report_id=>wwv_flow_imp.id(3620285840216698781)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"END_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3620318004378807975)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825037'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMENT_MODE:SALARY_CURRENCY:PERSONAL_RATE:ANNUAL_SALARY:DAILY_RATE:HOURLY_RATE:START_DATE:END_DATE:SALARY_SCALE:GRADE_POINT_AMOUNT:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(431175743498450293)
,p_report_id=>wwv_flow_imp.id(3620318004378807975)
,p_name=>'IS_ACTIVE'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'Q IS null or  Q >=  trunc(current_date )'
,p_condition_sql=>'"END_DATE" IS null or  "END_DATE" >=  trunc(current_date )'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3438440363765326588)
,p_plug_name=>'Deductible'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent12::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>53
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    emp_id,',
'    start_date,',
'    end_date,',
'    amount,',
'    percent_salary,',
'    remarks,',
'    tax_agency_app_code,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'    deductible_id',
'FROM',
'    hr_rcm_deductible',
'WHERE  emp_id = :P1281_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_hcf_organisation',
'where (upper(country) like ''%TRINIDAD%'' or upper(country) like ''%GUY%'')',
'and id = :APP_ORG_ID',
'and :P1281_ID is not null',
'and pkg_security.GET_REGION_ACCESS(''FRMEMPLOYEEDEDUCTIBLES'')>0'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3438440543309326599)
,p_name=>'Listing of Employee Paid'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.::P1356_ID,P1356_PAGE_RETURN:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>581389934835578827
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489122138603368417)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1265:&SESSION.::&DEBUG.::P1265_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489121753657368417)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489121304270368416)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489120909193368416)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489120583381368416)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489120179474368416)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489124900845368418)
,p_db_column_name=>'START_DATE'
,p_display_order=>130
,p_column_identifier=>'EJ'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489124535507368417)
,p_db_column_name=>'END_DATE'
,p_display_order=>140
,p_column_identifier=>'EK'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489124128237368417)
,p_db_column_name=>'AMOUNT'
,p_display_order=>150
,p_column_identifier=>'EL'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489123793064368417)
,p_db_column_name=>'PERCENT_SALARY'
,p_display_order=>160
,p_column_identifier=>'EM'
,p_column_label=>'Percent of Salary'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489123377618368417)
,p_db_column_name=>'REMARKS'
,p_display_order=>170
,p_column_identifier=>'EN'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489122933306368417)
,p_db_column_name=>'TAX_AGENCY_APP_CODE'
,p_display_order=>180
,p_column_identifier=>'EO'
,p_column_label=>'Tax Agency App Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489122589440368417)
,p_db_column_name=>'DEDUCTIBLE_ID'
,p_display_order=>190
,p_column_identifier=>'EP'
,p_column_label=>'Deductible'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3541375183546681136)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3438452167875331558)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825112'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID:DEDUCTIBLE_ID:AMOUNT:PERCENT_SALARY:START_DATE:REMARKS:'
,p_break_on=>'0:0:0'
,p_break_enabled_on=>'0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3860230831348281251)
,p_plug_name=>'Adhoc Payroll Prep 360'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>280
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_ADHOCPAYMENT.ID as ID,',
'    orgdtl_id,',
'    PA_PCF_ADHOCPAYMENT.EMP_ID as EMP_ID,',
'    PA_PCF_ADHOCPAYMENT.EMPENT_ID as EMPENT_ID,',
'    PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    PA_PCF_ADHOCPAYMENT.QUANTITY as QUANTITY,',
'    PA_PCF_ADHOCPAYMENT.RATE as RATE,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID as AMOUNT_PAID,',
'    PA_PCF_ADHOCPAYMENT.START_PERIOD_PAID as START_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.END_PERIOD_PAID as END_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.PAY_STATUS as PAY_STATUS,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID_INC as AMOUNT_PAID_INC,',
'    PA_PCF_ADHOCPAYMENT.INCREASE_ID as INCREASE_ID,',
'    PA_PCF_ADHOCPAYMENT.BACKUP_EARN_PRD as BACKUP_EARN_PRD,',
'    PA_PCF_ADHOCPAYMENT.PAY_OPTION as PAY_OPTION,',
'    PA_PCF_ADHOCPAYMENT.IS_SUPPLEMENTAL as IS_SUPPLEMENTAL,',
'    PA_PCF_ADHOCPAYMENT.ENTERED_BY as ENTERED_BY,',
'    PA_PCF_ADHOCPAYMENT.ENTRY_DATE as ENTRY_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    PA_PCF_ADHOCPAYMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    BY_PASS_COMPUTATION, REMARKS, PA_PCF_ADHOCPAYMENT.EMPENT_ID ENT_LINK, PA_PCF_ADHOCPAYMENT.EMP_ID EMP_LINK',
'from PA_PCF_ADHOCPAYMENT PA_PCF_ADHOCPAYMENT join PA_PCF_EARNINGPERIOD V ON V.ID=PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'           )',
'and PA_PCF_ADHOCPAYMENT.emp_id = :P1281_ID',
'and PA_PCF_ADHOCPAYMENT.START_PERIOD_PAID between :P1281_START_ADHOC AND :P1281_END_ADHOC'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1281_ID,P1281_START_ADHOC,P1281_END_ADHOC'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Payroll entries'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3173331185437544281)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3173331221601544282)
,p_name=>'EMP_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Link'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3648170034014317704)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632491032568373420)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252505058689665)
,p_name=>'ENT_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENT_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Entitlement'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:&ENT_LINK.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252564577689666)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252692843689667)
,p_name=>'BY_PASS_COMPUTATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'By Pass Computation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252809446689668)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252892347689669)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880252966489689670)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253068935689671)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253224231689672)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253287200689673)
,p_name=>'IS_SUPPLEMENTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_SUPPLEMENTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Is Supplemental'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253426109689674)
,p_name=>'PAY_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253520931689675)
,p_name=>'BACKUP_EARN_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BACKUP_EARN_PRD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Backup Earn Prd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253558457689676)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253661403689677)
,p_name=>'AMOUNT_PAID_INC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID_INC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid Inc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253755366689678)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253915533689679)
,p_name=>'END_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Period Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880253946392689680)
,p_name=>'START_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Period Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880254077177689681)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880456357122852632)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880456499378852633)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880456627662852634)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632589967933532454)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880456697445852635)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632583213821532444)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3880456744259852636)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632585437178532446)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3880457149047852640)
,p_internal_uid=>933818949287353688
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3880248165485688509)
,p_interactive_grid_id=>wwv_flow_imp.id(3880457149047852640)
,p_static_id=>'750764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3880247952275688509)
,p_report_id=>wwv_flow_imp.id(3880248165485688509)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3173475292530738005)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(3173331185437544281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3173476162108738010)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(3173331221601544282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3650448155941299946)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3648170034014317704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880225891542688449)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3880252505058689665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880226766604688451)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3880252564577689666)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880227715947688453)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3880252692843689667)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880228624056688456)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3880252809446689668)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880229502989688458)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3880252892347689669)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880230341720688460)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3880252966489689670)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880231275642688463)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3880253068935689671)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880232138310688465)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3880253224231689672)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880233051168688468)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3880253287200689673)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880233959149688470)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3880253426109689674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880234902074688472)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3880253520931689675)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880235821806688475)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3880253558457689676)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880236640807688477)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3880253661403689677)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880237569726688479)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3880253755366689678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880238526582688482)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3880253915533689679)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880239415182688484)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3880253946392689680)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880240290973688487)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3880254077177689681)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880241169615688489)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3880456357122852632)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880242136241688492)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3880456499378852633)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880242948668688495)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3880456627662852634)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157.25
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880243852346688497)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3880456697445852635)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3880244740066688500)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3880456744259852636)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3955324143665441581)
,p_view_id=>wwv_flow_imp.id(3880247952275688509)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3880254077177689681)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3967499283193459944)
,p_interactive_grid_id=>wwv_flow_imp.id(3880457149047852640)
,p_name=>'Departmental'
,p_static_id=>'872523'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3967499069983459944)
,p_report_id=>wwv_flow_imp.id(3967499283193459944)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3737699273649071381)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3648170034014317704)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967477009250459884)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3880252505058689665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967477884312459886)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3880252564577689666)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967478833655459888)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3880252692843689667)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967479741764459891)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3880252809446689668)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967480620697459893)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3880252892347689669)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967481459428459895)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3880252966489689670)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967482393350459898)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3880253068935689671)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967483256018459900)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3880253224231689672)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967484168876459903)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3880253287200689673)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967485076857459905)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3880253426109689674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967486019782459907)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3880253520931689675)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967486939514459910)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3880253558457689676)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967487758515459912)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3880253661403689677)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967488687434459914)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3880253755366689678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967489644290459917)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3880253915533689679)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967490532890459919)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3880253946392689680)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967491408681459922)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3880254077177689681)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967492287323459924)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3880456357122852632)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967493253949459927)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3880456499378852633)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967494066376459930)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3880456627662852634)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967494970054459932)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3880456697445852635)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3967495857774459935)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3880456744259852636)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4042575261373213016)
,p_view_id=>wwv_flow_imp.id(3967499069983459944)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3880254077177689681)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3870120833815246729)
,p_plug_name=>'NetPay Disbursements'
,p_parent_plug_id=>wwv_flow_imp.id(3261907439046826277)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>13
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    salary_id,AMOUNT_SPLIT,PRIORITY_SEQ,COUNTRY,',
'    payment_mode_dist payment_mode,BANK_TRANSIT,',
'    percent_split,',
'    start_date,',
'    end_date,',
'    bank_branch_id_dist,',
'    bank_account_no_dist,',
'    joint_acc,bank_account_type,bank_routing_no,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'   EMP_ID_disp, reason_for_change,',
'   TRANSACTION_CODE,',
'   Reference',
'FROM',
'    hr_rcm_disbursement',
'where EMP_ID_disp=:P1281_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1281_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(442752479170608485)
,p_name=>'TRANSACTION_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(442766012188793779)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(442752545003608486)
,p_name=>'REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reference'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2941365347911398207)
,p_name=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632664427924627395)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'The Bahamas'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3349896844294342404)
,p_name=>'BANK_TRANSIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_TRANSIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Transit No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3382121848293649290)
,p_name=>'BANK_ROUTING_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ROUTING_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Routing No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3539607119187080177)
,p_name=>'AMOUNT_SPLIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_SPLIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Split'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3539607337226080179)
,p_name=>'PRIORITY_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY_SEQ'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Priority SEQ'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3539607421654080180)
,p_name=>'BANK_ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Acc. Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :G_PARSING_SCHEMA = ''STARFISH'' then',
'    return ''',
'        select VALUE_DESCRIPTION||''''(''''||TABLE_VALUE||'''')'''' a , TABLE_VALUE b ',
'        from HR_HCF_LOOKUP ',
'        where table_name=''''TBLBANKACCOUNTTYPE'''' ',
'        AND ORG_ID =:APP_ORG_ID',
'    '';',
'elsif :G_PARSING_SCHEMA = ''CAMEX'' then',
'    return ''',
'        select VALUE_DESCRIPTION||''''(''''||TABLE_VALUE||'''')'''' a , TABLE_VALUE b ',
'        from HR_HCF_LOOKUP ',
'        where table_name=''''TBLBANKACCOUNTTYPE'''' ',
'        AND ORG_ID =:APP_ORG_ID',
'    '';',
'else',
'    return ''',
'        select ''''SAV'''' a, ''''SAV'''' b from dual',
'        union',
'        select ''''CHQ'''' a, ''''CHQ'''' b from dual',
'    '';',
'end if;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Account Type--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3539608983936080195)
,p_name=>'EMP_ID_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID_DISP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Id Disp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1281_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3542183391379113498)
,p_name=>'REASON_FOR_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_FOR_CHANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason For Change'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3862980160046380548)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3862980281719380549)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121034516246731)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121139294246732)
,p_name=>'SALARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1281_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121232711246733)
,p_name=>'PERCENT_SPLIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_SPLIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'% split'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_help_text=>'Enter a decimal percent value e.g. 0.25 for 25%.'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121317781246734)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date) - (to_number(to_char(current_date,''DD'')) - 1) '
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121418892246735)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121564063246736)
,p_name=>'BANK_BRANCH_ID_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_BRANCH_ID_DIST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Bank Branch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, id',
'from HR_HCF_organisation a',
'where organisation_type=''BANK''',
'and  a.USER_org_id = :APP_ORG_SHR_DED',
'AND upper(COUNTRY)=upper(:COUNTRY)',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Bank Branch--'
,p_lov_cascade_parent_items=>'COUNTRY'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121636021246737)
,p_name=>'BANK_ACCOUNT_NO_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_NO_DIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Account no'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121751690246738)
,p_name=>'JOINT_ACC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOINT_ACC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Joint?'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121907680246739)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870121934751246740)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870122043877246741)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870122185222246742)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3870122226365246743)
,p_name=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Payment mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632462712366335719)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3870120961194246730)
,p_internal_uid=>624561894604703671
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3870156235679313319)
,p_interactive_grid_id=>wwv_flow_imp.id(3870120961194246730)
,p_static_id=>'17970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3870156313821313319)
,p_report_id=>wwv_flow_imp.id(3870156235679313319)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(442767337885801814)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(442752479170608485)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(442862019821271496)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(442752545003608486)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2951264163752538085)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2941365347911398207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3351808030306232360)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3349896844294342404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3388937218585015923)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3382121848293649290)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3446516551452753289)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3542183391379113498)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3539613168285080486)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3539607119187080177)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3540115793187394179)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3539607337226080179)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3540271235196110254)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3539607421654080180)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3540725542323461545)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3539608983936080195)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3863125796299196602)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3862980160046380548)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870156844353313321)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3870121034516246731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870157399995313326)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3870121139294246732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870157799585313330)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3870121232711246733)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870158233719313334)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3870121317781246734)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870158735685313338)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3870121418892246735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870159283264313343)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3870121564063246736)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870159738328313346)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3870121636021246737)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870160236333313351)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3870121751690246738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870160773540313354)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3870121907680246739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870161238616313357)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3870121934751246740)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870161772907313362)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3870122043877246741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870162266615313366)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3870122185222246742)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3870164362962326747)
,p_view_id=>wwv_flow_imp.id(3870156313821313319)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3870122226365246743)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3261907526798826278)
,p_plug_name=>'Resulting Payments & Deduction'
,p_parent_plug_id=>wwv_flow_imp.id(3635624881937247113)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>83
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3445483839211523807)
,p_plug_name=>'Payroll Income Details 360'
,p_parent_plug_id=>wwv_flow_imp.id(3261907526798826278)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.ID as ID,',
'    B.PAY_SLIPNO as PAY_SLIPNO,',
'    B.INCOME_AMOUNT as INCOME_AMOUNT,',
'    B.INCOME_AMOUNT_YTD as INCOME_AMOUNT_YTD,',
'    A.DESCRIPTION as DESCRIPTION,',
'    B.QUANTITY as QUANTITY,',
'    B.RATE as RATE,',
'    c.INCOME_TYPE,',
'    c.TAXABLE, earnings_period_id',
' from PA_PMG_PAYROLLINCOME B JOIN HR_RCM_EMPENTITLE C ON C.ID=B.EMPENT_ID',
' JOIN PA_PCF_INCOMECODE A ON A.ID=C.INCOME_CODE_ID',
' join pa_pmg_payrolldtl d on d.id=b.pay_slipno',
' WHERE  B.emp_id=:P1281_ID',
' and d.period_start between :P1281_PAYMENT_START_INC and :P1281_PAYMENT_END_INC'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1281_ID,P1281_PAYMENT_START_INC,P1281_PAYMENT_END_INC'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMPAYROLLANALYSIS'') > 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Payroll Income Details 360'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561392949595477969)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632589967933532454)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561393099429477970)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Taxable'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561393146504477971)
,p_name=>'INCOME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Income Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>16
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561595584857229022)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561595692256229023)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561595740136229024)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561595880555229025)
,p_name=>'INCOME_AMOUNT_YTD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_AMOUNT_YTD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income Amount Ytd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561595995096229026)
,p_name=>'INCOME_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561596042078229027)
,p_name=>'PAY_SLIPNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_SLIPNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View Payslip'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:1356:P1356_ID:&PAY_SLIPNO.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3561596142404229028)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3561596228529229029)
,p_internal_uid=>76089474779220343
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3561387295072477470)
,p_interactive_grid_id=>wwv_flow_imp.id(3561596228529229029)
,p_static_id=>'762985'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3561387062638477470)
,p_report_id=>wwv_flow_imp.id(3561387295072477470)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561374409404459149)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3561392949595477969)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561379310233477448)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3561393099429477970)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561380260916477450)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3561393146504477971)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561381154695477452)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3561595584857229022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561382013486477454)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3561595692256229023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561382991828477456)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3561595740136229024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561383881675477458)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3561595880555229025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561384745836477461)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3561595995096229026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561385639932477465)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3561596042078229027)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561386528807477468)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3561596142404229028)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3637673283190440138)
,p_view_id=>wwv_flow_imp.id(3561387062638477470)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3561595995096229026)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3457595945452807623)
,p_plug_name=>'Payments 360'
,p_parent_plug_id=>wwv_flow_imp.id(3261907526798826278)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ID, ',
'PAY_BATCH_ID,',
'EMP_ID,',
'TIME_TAX_EARNINGS,',
'TIME_NONTAX_EARNINGS,',
'PIECE_TAX_EARNINGS,',
'PIECE_NONTAX_EARNINGS,',
'ALLOWANCE_TAXABLE,',
'ALLOWANCE_NONTAXABLE,',
'INCENTIVES_TAXABLE,',
'INCENTIVES_NONTAXABLE,',
'BENEFIT_TAXABLE,',
'BENEFIT_NONTAXABLE,',
'MISC_TAX_PAYMENT,',
'MISC_NONTAX_PAYMENT,',
'TOTAL_TAX_EARNINGS,',
'TOTAL_NONTAX_EARNINGS,',
'GROSS_TAXABLE,',
'GROSS_NONTAXABLE,',
'NIS_EMPLOYEE,',
'NIS_EMPLOYER,',
'TAX_AMOUNT,',
'MISC_DEDUCTION_SUM,',
'MEDICAL_SUM,',
'UNION_DUES,',
'TOTAL_DEDUCTION,',
'NET_PAY,',
'TIME_TAX_EARNINGS_YTD,',
'TIME_NONTAX_EARNINGS_YTD,',
'PIECE_TAX_EARNINGS_YTD,',
'PIECE_NONTAX_EARNINGS_YTD,',
'ALLOWANCE_TAXABLE_YTD,',
'ALLOWANCE_NONTAXABLE_YTD,',
'INCENTIVES_TAXABLE_YTD,',
'INCENTIVES_NONTAXABLE_YTD,',
'BENEFIT_TAXABLE_YTD,',
'BENEFIT_NONTAXABLE_YTD,',
'MISC_TAX_PAYMENT_YTD,',
'MISC_NONTAX_PAYMENT_YTD,',
'TOTAL_TAX_EARNINGS_YTD,',
'TOTAL_NONTAX_EARNINGS_YTD,',
'GROSS_TAXABLE_YTD,',
'GROSS_NONTAXABLE_YTD,',
'NIS_EMPLOYEE_YTD,',
'NIS_EMPLOYER_YTD,',
'TAX_AMOUNT_YTD,',
'MISC_DEDUCTION_SUM_YTD,',
'MEDICAL_SUM_YTD,',
'UNION_DUES_YTD,',
'TOTAL_DEDUCTION_YTD,',
'NET_PAY_YTD,',
'EMPLOYER_MEDICAL_SUM_YTD,',
'NO_PAY_EARNINGS_YTD,',
'NO_PAY_HOURS_YTD,',
'BASIC_PAY_HOURS_YTD,',
'BASIC_PERSONAL_RATE_YTD,',
'PAY_STATUS,',
'RETRO_TAXES,',
'GROSS_NIS,',
'PRVYTD_ID,',
'PRVYTD_FREEPAY,',
'FREEPAY,',
'NISRATE_ID,',
'TAXRATE_ID,',
'EMPLOYER_MEDICAL_SUM,',
'UNION_NAME,',
'HEALTHPLAN_NAME,',
'case when org_id=18658 and payment_type_hist=''WEEKLY'' then HOURLY_RATE*200 ELSE BASIC_PERSONAL_RATE END BASIC_PERSONAL_RATE,',
'BASIC_PAY_HOURS,',
'NO_PAY_HOURS,',
'NIS_CONTRIBUTION,',
'HOURLY_RATE,',
'NO_PAY_EARNINGS,',
'EARNINGS_PERIOD_ID,',
'PERIOD_START,',
'PERIOD_END,',
'ORG_ID,',
'--POSITION_LOCATION_ID,',
'WKLOCATION_ID,',
'CANCEL_SALARY_ID,',
'PAYROLL_EFFECTIVE,',
'TAX_ADJUSTMENTS,',
'TAX_ADJ_EARNINGS_PRD,',
'TAX_ADJUSTMENTS_DIFF,',
'NO_OF_PERIODS_WORKED,',
'IS_SUPPLEMENTAL,',
'MACHINE_INSERT,',
'MACHINE_UPDATE,',
'ENTERED_BY,',
'ENTRY_DATE,',
'LAST_CHANGED_BY,',
'LAST_CHANGED_DATE,',
'REPORT_TO_HIST,',
'EMPLOYMENT_CLASS_HIST,',
'PAYMENT_TYPE_HIST,',
'PAYMENT_MODE_HIST,',
'EMP_COMPANY_NO_HIST,',
'CONFIRMED_HIST,',
'PERMANENT_STAFF_HIST,',
'SURNAME_HIST,',
'FIRST_NAME_HIST,',
'LOT_STREET_HIST,',
'VILLAGE_NAME_HIST,',
'DISTRICT_NAME_HIST,',
'MARITAL_NAME_HIST,',
'BANK_BRANCH_ID_HIST,',
'BANK_ACCOUNT_NO_HIST,',
'decode(DEPARTMENT_NAME_HIST,null,ORG_STRUCTURE,DEPARTMENT_NAME_HIST) DEPARTMENT_NAME_HIST,',
'POSITION_NAME_HIST,',
'LOCATION_NAME_HIST,',
'REPORT_TO_FNCT_HIST,',
'FREEPAY_YTD,',
'ORGANISATION_NAME,',
'DEPT_SECTION_HIST',
'from #OWNER#.PA_PMG_PAYROLLDTL V',
'WHERE  emp_id = :P1281_ID',
'AND PERIOD_START BETWEEN :P1281_PAYMENT_START AND :P1281_PAYMENT_END'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID,P1281_PAYMENT_START,P1281_PAYMENT_END'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMPAYROLLANALYSIS'') > 0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3457596124996807634)
,p_name=>'Listing of Employee Paid'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.::P1356_ID,P1356_PAGE_RETURN:#ID#,1355'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>600545516523059862
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489118292902368410)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Payslip'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489117820290368406)
,p_db_column_name=>'PAY_BATCH_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Pay Batch Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_BATCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489117419295368404)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489117033324368401)
,p_db_column_name=>'TIME_TAX_EARNINGS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'TM Tax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489116677193368400)
,p_db_column_name=>'TIME_NONTAX_EARNINGS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'TM Ntax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489116239945368399)
,p_db_column_name=>'PIECE_TAX_EARNINGS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Piece Tax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489115883345368398)
,p_db_column_name=>'PIECE_NONTAX_EARNINGS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Piece Ntax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489115444042368396)
,p_db_column_name=>'ALLOWANCE_TAXABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Allow Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489115047141368395)
,p_db_column_name=>'ALLOWANCE_NONTAXABLE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Allow Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489114661063368394)
,p_db_column_name=>'INCENTIVES_TAXABLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Inc Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489114220796368394)
,p_db_column_name=>'INCENTIVES_NONTAXABLE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Inc Nontax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489113799478368392)
,p_db_column_name=>'BENEFIT_TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ben Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489113466120368392)
,p_db_column_name=>'BENEFIT_NONTAXABLE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Ben Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489113064643368391)
,p_db_column_name=>'MISC_TAX_PAYMENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Misc Tax Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_TAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489112673716368390)
,p_db_column_name=>'MISC_NONTAX_PAYMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Misc Ntax Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_NONTAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489112246501368389)
,p_db_column_name=>'TOTAL_TAX_EARNINGS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Total Tax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489111804496368388)
,p_db_column_name=>'TOTAL_NONTAX_EARNINGS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Total Ntax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489111457799368387)
,p_db_column_name=>'GROSS_TAXABLE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Gross Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489111076403368386)
,p_db_column_name=>'GROSS_NONTAXABLE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Gross Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489110635976368385)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'NIB'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489110250241368381)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'NIB/SS Emplr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489109799167368377)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Tax Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TAX_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489109445435368372)
,p_db_column_name=>'MISC_DEDUCTION_SUM'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Misc Ded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_DEDUCTION_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489109118448368368)
,p_db_column_name=>'MEDICAL_SUM'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Medical Sum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MEDICAL_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489108738370368365)
,p_db_column_name=>'UNION_DUES'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Union Dues'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'UNION_DUES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489108336826368361)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Total Ded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489107937512368356)
,p_db_column_name=>'NET_PAY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NET_PAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489107564439368351)
,p_db_column_name=>'TIME_TAX_EARNINGS_YTD'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Time Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489107181189368345)
,p_db_column_name=>'TIME_NONTAX_EARNINGS_YTD'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Time Ntax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489106733733368338)
,p_db_column_name=>'PIECE_TAX_EARNINGS_YTD'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Piece Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489106387104368334)
,p_db_column_name=>'PIECE_NONTAX_EARNINGS_YTD'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Piece Ntax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489105937783368329)
,p_db_column_name=>'ALLOWANCE_TAXABLE_YTD'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Allowance Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489105504882368325)
,p_db_column_name=>'ALLOWANCE_NONTAXABLE_YTD'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Allowance Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489105129262368321)
,p_db_column_name=>'INCENTIVES_TAXABLE_YTD'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Incentives Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489104718191368316)
,p_db_column_name=>'INCENTIVES_NONTAXABLE_YTD'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Incentives Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489104358773368310)
,p_db_column_name=>'BENEFIT_TAXABLE_YTD'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Benefit Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489103938026368303)
,p_db_column_name=>'BENEFIT_NONTAXABLE_YTD'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Benefit Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489103503596368298)
,p_db_column_name=>'MISC_TAX_PAYMENT_YTD'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Misc Tax Payment Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_TAX_PAYMENT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489103148542368292)
,p_db_column_name=>'MISC_NONTAX_PAYMENT_YTD'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Misc Nontax Payment Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_NONTAX_PAYMENT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489102720588368288)
,p_db_column_name=>'TOTAL_TAX_EARNINGS_YTD'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Total Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489102352653368282)
,p_db_column_name=>'TOTAL_NONTAX_EARNINGS_YTD'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Total Nontax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489101979063368278)
,p_db_column_name=>'GROSS_TAXABLE_YTD'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Gross Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489101536363368278)
,p_db_column_name=>'GROSS_NONTAXABLE_YTD'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Gross Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489101112687368277)
,p_db_column_name=>'NIS_EMPLOYEE_YTD'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'NIB/SS Employee Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYEE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489100772219368276)
,p_db_column_name=>'NIS_EMPLOYER_YTD'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'NIB/SS Employer Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYER_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489100375995368275)
,p_db_column_name=>'TAX_AMOUNT_YTD'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Tax Amount Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TAX_AMOUNT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489099956917368274)
,p_db_column_name=>'MISC_DEDUCTION_SUM_YTD'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Misc Deduction Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_DEDUCTION_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489099507638368273)
,p_db_column_name=>'MEDICAL_SUM_YTD'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Medical Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MEDICAL_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489099148220368273)
,p_db_column_name=>'UNION_DUES_YTD'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Union Dues Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'UNION_DUES_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489098738705368272)
,p_db_column_name=>'TOTAL_DEDUCTION_YTD'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Total Deduction Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_DEDUCTION_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489098430511368271)
,p_db_column_name=>'NET_PAY_YTD'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Net Pay Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NET_PAY_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489098030540368270)
,p_db_column_name=>'EMPLOYER_MEDICAL_SUM_YTD'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Employer Medical Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'EMPLOYER_MEDICAL_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489097630220368269)
,p_db_column_name=>'NO_PAY_EARNINGS_YTD'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'No Pay Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NO_PAY_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489097200606368268)
,p_db_column_name=>'NO_PAY_HOURS_YTD'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'No Pay Hours Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NO_PAY_HOURS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489096877696368268)
,p_db_column_name=>'BASIC_PAY_HOURS_YTD'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Basic Pay Hours Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BASIC_PAY_HOURS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489096446371368267)
,p_db_column_name=>'BASIC_PERSONAL_RATE_YTD'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Basic Personal Rate Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'BASIC_PERSONAL_RATE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489096032369368266)
,p_db_column_name=>'RETRO_TAXES'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Retro Taxes'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'RETRO_TAXES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489095628119368265)
,p_db_column_name=>'GROSS_NIS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Gross NIB'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NIS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489095291621368264)
,p_db_column_name=>'PRVYTD_ID'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Prvytd Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PRVYTD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489094851590368263)
,p_db_column_name=>'PRVYTD_FREEPAY'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Prvytd Freepay'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PRVYTD_FREEPAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489094399175368263)
,p_db_column_name=>'FREEPAY'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Freepay'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'FREEPAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489094009314368260)
,p_db_column_name=>'NISRATE_ID'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Nibrate Id'
,p_column_type=>'NUMBER'
,p_static_id=>'NISRATE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489093624884368258)
,p_db_column_name=>'TAXRATE_ID'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Taxrate Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAXRATE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489093244787368256)
,p_db_column_name=>'EMPLOYER_MEDICAL_SUM'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Employer Medical Sum'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'EMPLOYER_MEDICAL_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489092793857368255)
,p_db_column_name=>'BASIC_PERSONAL_RATE'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Basic Personal Rate'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BASIC_PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489092474229368253)
,p_db_column_name=>'BASIC_PAY_HOURS'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Basic Pay Hours'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'BASIC_PAY_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489092009271368251)
,p_db_column_name=>'NO_PAY_HOURS'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'No Pay Hours'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_PAY_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489091640732368250)
,p_db_column_name=>'NIS_CONTRIBUTION'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'NIB/SS Contribution'
,p_column_type=>'NUMBER'
,p_static_id=>'NIS_CONTRIBUTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489091287669368248)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489090884248368246)
,p_db_column_name=>'NO_PAY_EARNINGS'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'No Pay Earnings'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_PAY_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489090433935368241)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632589967933532454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489090071790368240)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD_START'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489089687252368238)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD_END'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489089246930368235)
,p_db_column_name=>'ORG_ID'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Org id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489088872951368234)
,p_db_column_name=>'CANCEL_SALARY_ID'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Cancel Salary Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CANCEL_SALARY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489088486919368230)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489088051473368227)
,p_db_column_name=>'TAX_ADJUSTMENTS'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Tax Adjustments'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJUSTMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489087674016368222)
,p_db_column_name=>'TAX_ADJ_EARNINGS_PRD'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Tax Adj Earnings Prd'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJ_EARNINGS_PRD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489087277456368221)
,p_db_column_name=>'TAX_ADJUSTMENTS_DIFF'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Tax Adjustments Diff'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJUSTMENTS_DIFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489086824573368220)
,p_db_column_name=>'NO_OF_PERIODS_WORKED'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'No Of Periods Worked'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_PERIODS_WORKED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489086452603368219)
,p_db_column_name=>'IS_SUPPLEMENTAL'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Is Supplemental'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'IS_SUPPLEMENTAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489086089638368219)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489085651582368218)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489085219713368217)
,p_db_column_name=>'CONFIRMED_HIST'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CONFIRMED_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489084822077368216)
,p_db_column_name=>'PERMANENT_STAFF_HIST'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERMANENT_STAFF_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489084399885368215)
,p_db_column_name=>'FREEPAY_YTD'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Freepay Ytd'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FREEPAY_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489084041488368214)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORGANISATION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489083642325368213)
,p_db_column_name=>'DEPT_SECTION_HIST'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Dept Section'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPT_SECTION_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489083215279368212)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489082863450368211)
,p_db_column_name=>'UNION_NAME'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Union Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489082454608368210)
,p_db_column_name=>'HEALTHPLAN_NAME'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Healthplan Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HEALTHPLAN_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489082075743368209)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489081600390368209)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489081207421368208)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489080800116368207)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489080434110368206)
,p_db_column_name=>'REPORT_TO_HIST'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Report To Hist'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489080092795368203)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYMENT_CLASS_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489079680827368196)
,p_db_column_name=>'PAYMENT_TYPE_HIST'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_TYPE_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489079268176368193)
,p_db_column_name=>'PAYMENT_MODE_HIST'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_MODE_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489078850579368193)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_COMPANY_NO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489078458547368192)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SURNAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489078082402368191)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489077677459368190)
,p_db_column_name=>'LOT_STREET_HIST'
,p_display_order=>128
,p_column_identifier=>'DX'
,p_column_label=>'Lot Street'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOT_STREET_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489077193095368189)
,p_db_column_name=>'VILLAGE_NAME_HIST'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Village Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VILLAGE_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489076850927368188)
,p_db_column_name=>'DISTRICT_NAME_HIST'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'District Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISTRICT_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489076444202368187)
,p_db_column_name=>'MARITAL_NAME_HIST'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Marital Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MARITAL_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489075994485368187)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>132
,p_column_identifier=>'EB'
,p_column_label=>'Bank Branch'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_BRANCH_ID_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489075614226368186)
,p_db_column_name=>'BANK_ACCOUNT_NO_HIST'
,p_display_order=>133
,p_column_identifier=>'EC'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_ACCOUNT_NO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489075200653368185)
,p_db_column_name=>'DEPARTMENT_NAME_HIST'
,p_display_order=>134
,p_column_identifier=>'ED'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTMENT_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489074877614368184)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>135
,p_column_identifier=>'EE'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSITION_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489074441021368183)
,p_db_column_name=>'LOCATION_NAME_HIST'
,p_display_order=>136
,p_column_identifier=>'EF'
,p_column_label=>'Location Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOCATION_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489073993958368182)
,p_db_column_name=>'REPORT_TO_FNCT_HIST'
,p_display_order=>137
,p_column_identifier=>'EG'
,p_column_label=>'Report To Fnct'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TO_FNCT_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489118648872368412)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>147
,p_column_identifier=>'EH'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3457607749562812593)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825573'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:ID:EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY:'
,p_break_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_break_enabled_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_sum_columns_on_break=>'TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3489073280567368181)
,p_report_id=>wwv_flow_imp.id(3457607749562812593)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'R + S'
,p_format_mask=>'FML999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Gross'
,p_report_label=>'Gross'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3839416704099355736)
,p_plug_name=>'Deduction Details 360'
,p_parent_plug_id=>wwv_flow_imp.id(3261907526798826278)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PMG_PAYROLLDEDUCTION.ID as ID, REDUCE_TAX_NIS_TOTAL,',
'    PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO as PAY_SLIPNO, PA_PMG_PAYROLLDEDUCTION.group_medical, PA_PMG_PAYROLLDEDUCTION.union_deduction,',
'    PA_PMG_PAYROLLDEDUCTION.DEDUCTION_NO as DEDUCTION_NO,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED as AMOUNT_DEDUCTED,AMOUNT_DEDUCTED_TOTAL,b.DEDUCTION_TYPE,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED_YTD as AMOUNT_DEDUCTED_YTD, ',
'    PA_PMG_PAYROLLDEDUCTION.EXPENSE_CODE as EXPENSE_CODE',
' from PA_PMG_PAYROLLDEDUCTION PA_PMG_PAYROLLDEDUCTION join PA_PCF_ADMINDEDUCTION b on PA_PMG_PAYROLLDEDUCTION.ADM_DEDUCTION_ID = b.id',
' join PA_PCF_DEDUCTIONCODE c on c.id = b.expense_id',
' JOIN PA_PMG_PAYROLLDTL D ON D.ID = PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO',
'WHERE ',
'--PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO = :P1281_ID',
'--AND   ',
'UPPER(PA_PMG_PAYROLLDEDUCTION.DEDUCTION_TYPE)=''EMPLOYEE''',
'and PA_PMG_PAYROLLDEDUCTION.emp_id = :P1281_ID',
'and TO_DATE(PERIOD_START, ''DD-MON-YYYY'') BETWEEN TO_DATE(:P1281_DED_START, ''DD-MON-YYYY'') and TO_DATE(:P1281_DED_END, ''DD-MON-YYYY'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID,P1281_DED_START,P1281_DED_END'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMPAYROLLANALYSIS'') > 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction Details 360'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2908903013831105903)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ICARTER'
,p_internal_uid=>352521109981446426
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903139473105904)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903286235105905)
,p_db_column_name=>'REDUCE_TAX_NIS_TOTAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Reduce Tax NIB/SS Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903306696105906)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payslip No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903783514105910)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903427733105907)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903508929105908)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2908903663345105909)
,p_db_column_name=>'AMOUNT_DEDUCTED_YTD'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Amount Deducted Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2993957084329956215)
,p_db_column_name=>'AMOUNT_DEDUCTED_TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount Deducted Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2993957180285956216)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2993957270508956217)
,p_db_column_name=>'GROUP_MEDICAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Group Medical'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2993957318529956218)
,p_db_column_name=>'UNION_DEDUCTION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Union Deduction'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2959562937258811236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4031811'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAY_SLIPNO:DEDUCTION_NO:EXPENSE_CODE:DEDUCTION_TYPE:GROUP_MEDICAL:UNION_DEDUCTION:AMOUNT_DEDUCTED:AMOUNT_DEDUCTED_TOTAL:AMOUNT_DEDUCTED_YTD:'
,p_break_on=>'PAY_SLIPNO:0:0:0:0:0'
,p_break_enabled_on=>'PAY_SLIPNO:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT_DEDUCTED'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635625039010247114)
,p_plug_name=>'Welfare'
,p_parent_plug_id=>wwv_flow_imp.id(3635624352406247107)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3421123613668234605)
,p_plug_name=>'Offence 360'
,p_parent_plug_id=>wwv_flow_imp.id(3635625039010247114)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent10::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'join hr_rcm_employee k on k.id=a.DISCIPLINARIAN',
'where dis_ORG_ID=:APP_ORG_ID',
'and x.emp_id= :P1281_ID',
' and  exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0',
'AND :P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMOFFENCEHISTORY'')>0'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3421123821499234605)
,p_name=>'Listing of Employee Offence History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.::P1423_ID,P1423_RETURN_VALUE:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>564073213025486833
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489071011484368179)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489070611719368179)
,p_db_column_name=>'OFFENCE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Offence'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'OFFENCE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632492668116373425)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489070275960368179)
,p_db_column_name=>'OFFENCE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Offence Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489069886055368178)
,p_db_column_name=>'DISCIPLINARIAN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Disciplinarian'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DISCIPLINARIAN'
,p_rpt_named_lov=>wwv_flow_imp.id(3609631245311822370)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489069450728368178)
,p_db_column_name=>'OFFENCE_END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Offence End Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489068999530368178)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489068599067368178)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489068239696368178)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489067527587368176)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489067123613368176)
,p_db_column_name=>'STATUS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489066751997368176)
,p_db_column_name=>'REMARKS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489066357989368176)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489065893480368176)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489065517339368175)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489065123682368175)
,p_db_column_name=>'INCIDENT_LEADING_UP'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Incident Leading Up'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'INCIDENT_LEADING_UP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489064772215368175)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489064304366368175)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489063917593368175)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3609631245311822370)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489071842891368179)
,p_db_column_name=>'MAGISTRATE_NAME'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Magistrate Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAGISTRATE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489071464543368179)
,p_db_column_name=>'COURT_NAME'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Court Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COURT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3389006993450887178)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'825674'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCIDENT_LEADING_UP:OFFENCE_ID:OFFENCE_DATE:DISCIPLINARIAN:OFFENCE_END_DATE:REMARKS:'
,p_break_on=>'OFFENCE_ID:0:0:0:0:0'
,p_break_enabled_on=>'OFFENCE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3489063134052368175)
,p_report_id=>wwv_flow_imp.id(3389006993450887178)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3421155725519287257)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825682'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCIDENT_LEADING_UP:OFFENCE_ID:OFFENCE_DATE:DISCIPLINARIAN:OFFENCE_END_DATE:REMARKS:'
,p_break_on=>'OFFENCE_ID:0:0:0:0:0'
,p_break_enabled_on=>'OFFENCE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3433622301127667654)
,p_name=>'Employer Items Held'
,p_parent_plug_id=>wwv_flow_imp.id(3635625039010247114)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPITEM.ID as ID,',
'    HR_RCM_EMPITEM.EMP_ID as EMP_ID,',
'    HR_RCM_EMPITEM.ITEM_CODE as ITEM_CODE,',
'    HR_RCM_EMPITEM.START_PERIOD as START_PERIOD,',
'    HR_RCM_EMPITEM.END_PERIOD as END_PERIOD,',
'    HR_RCM_EMPITEM.PURPOSE_REMARKS_REASONS_REPLACEMENT as PURPOSE,',
'    HR_RCM_EMPITEM.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPITEM.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPITEM.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPITEM.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPITEM.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPITEM.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_RCM_EMPITEM HR_RCM_EMPITEM',
'where HR_RCM_EMPITEM.EMP_ID =:P1281_ID',
'ORDER BY  HR_RCM_EMPITEM.START_PERIOD  desc'))
,p_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPITEM'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1281_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489061287213368174)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1286:&SESSION.::&DEBUG.::P1286_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489060822117368174)
,p_query_column_id=>2
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'EMP_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489060426574368174)
,p_query_column_id=>3
,p_column_alias=>'ITEM_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'ITEM'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632664977771627398)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'--null-'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489060087104368174)
,p_query_column_id=>4
,p_column_alias=>'START_PERIOD'
,p_column_display_sequence=>5
,p_column_heading=>'START PERIOD'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489059634539368173)
,p_query_column_id=>5
,p_column_alias=>'END_PERIOD'
,p_column_display_sequence=>6
,p_column_heading=>'END PERIOD'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489059247468368173)
,p_query_column_id=>6
,p_column_alias=>'PURPOSE'
,p_column_display_sequence=>4
,p_column_heading=>'PURPOSE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489058854888368173)
,p_query_column_id=>7
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489058457519368173)
,p_query_column_id=>8
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489058033016368173)
,p_query_column_id=>9
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489057616661368173)
,p_query_column_id=>10
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489057232811368173)
,p_query_column_id=>11
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>11
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3489056875040368173)
,p_query_column_id=>12
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>12
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3444391532091261950)
,p_plug_name=>'Medicals 360'
,p_parent_plug_id=>wwv_flow_imp.id(3635625039010247114)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent4::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_MED_MEDICALHISTORYDTL.ID as ID,',
'    HR_MED_MEDICALHISTORYDTL.MED_HIS_ID as MED_HIS_ID,',
'(SELECT EMP_COMPANY_NO||''- ''|| INITCAP(PKG_GLOBAL_FNTS.Get_Lookup_Col(C.LEAVE_TYPE_ID,''VALUE_DESCRIPTION'')) || '': ''|| ''( ''|| CAST(FROMDATE AS VARCHAR(12)) || '' -- '' || CAST(TODATE AS VARCHAR(12))|| '')'' AS EXPR1 ',
'FROM hr_lv_LeaveHistory a JOIN hr_rcm_employee b ON a.Emp_id= b.id ',
'JOIN HR_RCM_EMPLEAVEENTITLE C ON B.ID=C.EMP_ID',
'WHERE A.ID=HR_MED_MEDICALHISTORYDTL.LEAVE_ID ',
'AND PKG_GLOBAL_FNTS.Get_Lookup_Col(C.LEAVE_TYPE_ID,''TABLE_VALUE'') IN (''CERTSK'',''SL''))',
'    as LEAVE_ID,',
'DATE_SUBMITTED,',
'    HR_MED_MEDICALHISTORYDTL.DATE_OF_OCCURANCE as DATE_OF_OCCURANCE,',
'    HR_MED_MEDICALHISTORYDTL.DATE_EXAMINED as DATE_EXAMINED,',
'    HR_MED_MEDICALHISTORYDTL.FINDINGS as FINDINGS,',
'    HR_MED_MEDICALHISTORYDTL.DOCTOR_ID as DOCTOR_ID,',
'    HR_MED_MEDICALHISTORYDTL.DAYS_GIVEN as DAYS_GIVEN,',
'    HR_MED_MEDICALHISTORYDTL.VERIFIED_BY as VERIFIED_BY,',
'    HR_MED_MEDICALHISTORYDTL.VERIFIED_DATE as VERIFIED_DATE,',
'    HR_MED_MEDICALHISTORYDTL.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_MED_MEDICALHISTORYDTL.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_MED_MEDICALHISTORYDTL.MEDICAL_TYPE as MEDICAL_TYPE,',
'    HR_MED_MEDICALHISTORYDTL.HOSPITAL_CODE as HOSPITAL_CODE,',
'    HR_MED_MEDICALHISTORYDTL.WARD_NO as WARD_NO ',
' from HR_MED_MEDICALHISTORYDTL HR_MED_MEDICALHISTORYDTL join HR_MED_MEDICALHISTORY b on b.id=HR_MED_MEDICALHISTORYDTL.MED_HIS_ID',
' where emp_id=:P1281_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1281_ID'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P1281_ID is not null and PKG_SECURITY.GET_REGION_ACCESS(''FRMMEDICALHISTORYDETAIL'')>0'
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="overflow:auto;">'
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3444391610042261950)
,p_name=>'Listing of Medicals'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:1410:P1410_ID,P1410_RETURN_VALUE:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>587341001568514178
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489055039417368172)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489054690399368172)
,p_db_column_name=>'MED_HIS_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Med His Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MED_HIS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489054247378368171)
,p_db_column_name=>'DATE_OF_OCCURANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Occurance'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_OCCURANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489053884026368171)
,p_db_column_name=>'DATE_EXAMINED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Examined'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EXAMINED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489053455411368170)
,p_db_column_name=>'FINDINGS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Findings'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FINDINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489053020572368169)
,p_db_column_name=>'DAYS_GIVEN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DAYS_GIVEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489052672958368169)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489052221837368169)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489051814396368169)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489051396310368169)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489051038753368169)
,p_db_column_name=>'MEDICAL_TYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Medical Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MEDICAL_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489050675408368169)
,p_db_column_name=>'HOSPITAL_CODE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Hospital Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HOSPITAL_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489050270544368168)
,p_db_column_name=>'WARD_NO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Ward No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WARD_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489049835317368168)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Related Leave'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489055724040368172)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTOR_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3489055463357368172)
,p_db_column_name=>'DATE_SUBMITTED'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Date Submitted'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SUBMITTED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3444393835901263033)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'825815'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'MEDICAL_TYPE:DATE_OF_OCCURANCE:DATE_EXAMINED:DATE_SUBMITTED:FINDINGS:DAYS_GIVEN:LEAVE_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317681242257398964)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3085027209460136704)
,p_button_name=>'1261_DELETE_SIGN'
,p_button_static_id=>'1261_DELETE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Remove'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317680216000398960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3492728633850032322)
,p_button_name=>'1261_DELETE_IMAGE'
,p_button_static_id=>'1261_DELETE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Remove'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317886943030693361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489396507149789151)
,p_button_name=>'CREATE_ADDR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1270:&SESSION.::&DEBUG.:1270:P1270_IND_ID,P1270_SHOW_BREADCRUMB:&P1281_ID_IND.,1270'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317965876857805293)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489479626248901100)
,p_button_name=>'CREATE_NATID'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:1271:P1271_IND_ID,P1271_SHOW_BREADCRUMB:&P1281_ID_IND.,1271'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317972124626806671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489487624329902471)
,p_button_name=>'CREATE_QUAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:1272:P1272_IND_ID,P1272_SHOW_BREADCRUMB:&P1281_ID_IND.,1272'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317979224114808086)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489496290492903896)
,p_button_name=>'CREATE_PASTEMP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1273:&SESSION.::&DEBUG.:1273:P1273_IND_ID,P1273_SHOW_BREADCRUMB:&P1281_ID_IND.,1273'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317985579558809566)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489505328644905380)
,p_button_name=>'CREATE_EXTERN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:1274:P1274_IND_ID,P1274_SHOW_BREADCRUMB:&P1281_ID_IND.,1274'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317991096479811024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489513397856906841)
,p_button_name=>'CREATE_REF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_REFEREE_FOR,P1275_SHOW_BREADCRUMB:&P1281_ID_IND.,1275'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(317998153579812660)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3489520680280908475)
,p_button_name=>'CREATE_REL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_RELATED_TO,P1276_SHOW_BREDCRUMB:&P1281_ID_IND.,1276'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DOD,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2993958015783956225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3551471013662151587)
,p_button_name=>'CREATE_CAL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Gemerate Missing Entries'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488887292818368105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433612283921667621)
,p_button_name=>'CREATE_AWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1288:&SESSION.::&DEBUG.:1288:P1288_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488893572925368107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3424487563893765079)
,p_button_name=>'CREATE_ALTPOSLOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1299:&SESSION.::&DEBUG.:1299:P1299_ORG_ID,P1299_EMP_ID:&P1281_ORGANISATION.,&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488900208469368109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3539474377076036134)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Home'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488906538522368111)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3456794117511060544)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488916348102368115)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433619477665667649)
,p_button_name=>'CREATE_TRAVEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1292:&SESSION.::&DEBUG.:1292:P1292_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488921809965368117)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433616390117667638)
,p_button_name=>'CREATE_PERMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1290:&SESSION.::&DEBUG.:1290:P1290_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488927208878368119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433617876957667646)
,p_button_name=>'CREATE_REQDOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1291:&SESSION.::&DEBUG.:1291:P1291_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488933166168368121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433614078928667630)
,p_button_name=>'CREATE_TRAINING'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:1289:P1289_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488941820299368123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3411154548720764092)
,p_button_name=>'CREATE_SPECDUTY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3000:&SESSION.::&DEBUG.:3000:P3000_EMP_ID:&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488949368432368126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3471008223175029877)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488967160981368132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433598487292667592)
,p_button_name=>'CREATE_EMPREQ'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1283:&SESSION.::&DEBUG.:1283:P1283_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488987166975368141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3470851768882947961)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489009632602368150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433607977921667613)
,p_button_name=>'CREATE_CONTRACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1287:&SESSION.::&DEBUG.:1287:P1287_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489023762168368155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433596497208667590)
,p_button_name=>'CREATE_LVENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:1284:P1284_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489034472553368162)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3485633072548907465)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489049002923368168)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3444391532091261950)
,p_button_name=>'RETURN1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489056419330368172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433622301127667654)
,p_button_name=>'CREATE_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1286:&SESSION.::&DEBUG.:1286:P1286_EMP_ID:&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489062378065368174)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3421123613668234605)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489119380569368416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3438440363765326588)
,p_button_name=>'CREATE_DEDUCTIBLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1265:&SESSION.::&DEBUG.:RP,1297:P1265_EMP_ID:&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489125624285368418)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433594291925667588)
,p_button_name=>'CREATE_SALARY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_EMP_GRADE_ID,P1282_EMPLOYMENT_CLASS_ID,P1282_EMP_ID:&P1281_EMP_GRADE_ID.,&P1281_EMPLOYMENT_CLASS_ID.,&P1281_ID.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489136723794368426)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3433591878921667585)
,p_button_name=>'CREATE_REMUNERATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_EMP_ID,P1285_IND_DEL_BR:&P1281_ID.,&P1281_ID_IND.'
,p_button_condition=>':P1281_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489217843152368459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(318034989635823507)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3493888320014914132)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488899849924368109)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3539474377076036134)
,p_button_name=>'CREATE_DOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_RETURN_VALUE:1281'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488906137777368111)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3456794117511060544)
,p_button_name=>'CREATE_MEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.:1429::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488948976317368126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3471008223175029877)
,p_button_name=>'CREATE_APP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:1496:P1496_RETURN_VALUE,P1496_EMP_ID:1281,&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488973004462368134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3421055394327350014)
,p_button_name=>'RETURN3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488986732181368141)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3470851768882947961)
,p_button_name=>'CREATE_MOV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:37:P51_RETURN_VALUE:1281'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489034080462368162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3485633072548907465)
,p_button_name=>'CREATE_LV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_RETURN_VALUE,P1417_EMP_FROM_SCREEN:1281,&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489048653387368168)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3444391532091261950)
,p_button_name=>'CREATE_MED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:RP,1410:P1410_RETURN_VALUE,P1410_EMP_PASS:1281,&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489061935543368174)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3421123613668234605)
,p_button_name=>'CREATE_OFF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:1423:P1423_RETURN_VALUE:1281'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489152196347368433)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3431041322853213535)
,p_button_name=>'RETURN_DED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary::t-Button--iconRight:::::::'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1281_NAVIGATOR.:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489217445341368459)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_EMPLOYEE',
'WHERE ID=:P1281_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3488972689724368134)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3421055394327350014)
,p_button_name=>'CREATE_ACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:RP,1437:P1437_RETURN_VALUE,P1437_PASS_EMP_ID:1281,&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489217018504368458)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
end;
/
begin
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489033602135368161)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3485633072548907465)
,p_button_name=>'LEAVE_CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Leave calendar'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10006:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489151892825368433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3431041322853213535)
,p_button_name=>'CREATE_DED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:RP,1297:P1297_EMP_ID:&P1281_ID.'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489216640493368458)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489215427174368457)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489215033149368457)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109::'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585333832930360203)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489214255123368457)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'GEN_CALENDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calendar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1',
'From Hr_Att_Empcalendar_Hd A JOIN HR_RCM_EMPLOYEE B ON B.ID=A.EMP_ID',
'where b.id=:P1281_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489213850311368457)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'EMP_PROFILE'
,p_button_static_id=>'PROFILE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Profile'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489213427864368456)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_condition=>'P1281_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489212996633368456)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'job_letter'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Job Letter'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_EMP_ID:&P1281_ID.'
,p_icon_css_classes=>'fa-file-text'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489212655701368456)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'JOB_DESCRIPTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Job Description'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3489212218541368456)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P1281_ID.,ID,&P1281_STATUS.,HR_RCM_EMPLOYEE,&P1281_TRANSACTION_TYPE_ID.,Employee Management,1281,&P1281_WORK_FLOW_COMMENT.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'where :P1281_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(443925678631705543)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'TIME_CLOCK_FORM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Time Clock Form '
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'APP_ORG_ID'
,p_button_condition2=>'208'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(443925973433705546)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_button_name=>'Warning_Letter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Warning Letter'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'APP_ORG_ID'
,p_button_condition2=>'208'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(407015389097142470)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3489216640493368458)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P1281_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3488818686579368081)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID_IND:&P1281_ID_IND.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3489215427174368457)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3488819022215368082)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3489217445341368459)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3488820997439368082)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:6,FRMEMPLOYEE,&P1281_ID.,&P1281_ID.,1281'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3489213427864368456)
,p_branch_sequence=>40
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1281_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3488820617790368082)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1281_DOC_EXIST_1.,1281'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3489213427864368456)
,p_branch_sequence=>50
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1281_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3488819431502368082)
,p_branch_name=>'Go To Page 1281'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID_IND,P1281_ID:&P1281_ID_IND.,&P1281_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(443925525343705541)
,p_name=>'P1281_TIMECLOCK_REPORT_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	TABLE_VALUE || ''&p2='' || (select REPORT_LOCATION from report where report_name like ''TIME_CLOCK_ADDITION_FORM_SINGLE'') P1281_REPORT_URL',
'from HR_HCF_LOOKUP ',
'where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' ',
'and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_SHR_DED);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(495386897630305806)
,p_name=>'P1281_ALTERNATIVE_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Work Email'
,p_source=>'ALTERNATIVE_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(495387711218305814)
,p_name=>'P1281_WORK_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Work Phone'
,p_source=>'WORK_PHONE'
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
  'subtype', 'TEL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1839504443698747064)
,p_name=>'P1281_REPORT_URL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2556726742429351166)
,p_name=>'P1281_EMPLOYEE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select salutation||''.''||surname||'', ''||first_name||'' (''||sEX_CODE||'')''',
'from hr_rcm_individual',
'where id = :P1281_IND_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2993957483055956219)
,p_name=>'P1281_CAL_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3551471013662151587)
,p_prompt=>'End Calendar'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2993957544229956220)
,p_name=>'P1281_CAL_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3551471013662151587)
,p_prompt=>'Start Calendar'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3002979566303591578)
,p_name=>'P1281_CHK_FIELDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3551471013662151587)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3015131651887813859)
,p_name=>'P1281_EMP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT max(id)',
'FROM hr_rcm_employee',
'WHERE ind_id=:P1281_ID',
'and date_separated is null'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3085028303132136722)
,p_name=>'P1281_LOAD_SIG'
,p_source_data_type=>'BLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Add Signature'
,p_source=>'SIG_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'SIG_LAST_UPDATE',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'download_link_text', 'Download',
  'filename_column', 'SIG_FILENAME',
  'mime_type_column', 'SIG_MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3085043122728136772)
,p_name=>'P1281_IND_SIG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3085027209460136704)
,p_use_cache_before_default=>'NO'
,p_source=>'SIG_PHOTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'DB_COLUMN',
  'blob_last_updated_column', 'SIG_LAST_UPDATE',
  'filename_column', 'SIG_FILENAME',
  'mime_type_column', 'SIG_MIMETYPE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3261907626821826279)
,p_name=>'P1281_END_ADHOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3860230831348281251)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Adhoc'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261907750592826280)
,p_name=>'P1281_START_ADHOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3860230831348281251)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Adhoc'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261908262600826285)
,p_name=>'P1281_PAYMENT_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3457595945452807623)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261908397954826286)
,p_name=>'P1281_PAYMENT_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3457595945452807623)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261908833889826291)
,p_name=>'P1281_PAYMENT_START_INC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3445483839211523807)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261908904913826292)
,p_name=>'P1281_PAYMENT_END_INC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3445483839211523807)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261909474651826297)
,p_name=>'P1281_DED_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3839416704099355736)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3261909515025826298)
,p_name=>'P1281_DED_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3839416704099355736)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3489151038034368433)
,p_name=>'P1281_END_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3431041322853213535)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3489151489416368433)
,p_name=>'P1281_START_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3431041322853213535)
,p_item_default=>'trunc((current_date),''MONTH'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3489177215803368442)
,p_name=>'P1281_ATTACH_CV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3433611680228667619)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attach Cv'
,p_source=>'ATTACH_CV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_CV',
  'character_set_column', 'MIMETYPE',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'download_link_text', 'Download Cv',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489177625263368443)
,p_name=>'P1281_SKILLS'
,p_source_data_type=>'CLOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3433611680228667619)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Skills'
,p_source=>'SKILLS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'FULL',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489179954481368443)
,p_name=>'P1281_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
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
 p_id=>wwv_flow_imp.id(3489180611060368444)
,p_name=>'P1281_WORK_FLOW_COMMENT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_prompt=>'<font color="purple" size="2"><b> Work Flow Notes</b></font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489181006832368444)
,p_name=>'P1281_COMENT_SWITCH'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489181397327368444)
,p_name=>'P1281_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Shift Rotation'
,p_source=>'SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(shift_cycle_name)||''(Req hrs:''||hours_worked||'' and Req Dys:''||num_working_days||'')''  a, id',
'from HR_ATT_SHIFT_ROTA A',
'where ',
'a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_SHR_DED',
'and UPPER(payment_type) = :P1281_PAYMENT_TYPE',
'order by 1',
''))
,p_lov_cascade_parent_items=>'P1281_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3489181889561368444)
,p_name=>'P1281_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1281_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1281_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P1281_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489182262605368444)
,p_name=>'P1281_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489182993151368444)
,p_name=>'P1281_HAS_CONTRACT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPCONTRACT ',
'where EMP_ID =:P1281_ID',
'and end_date > current_date'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489183492935368446)
,p_name=>'P1281_DATE_SEPARATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Date Separated'
,p_source=>'DATE_SEPARATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3489184337373368448)
,p_name=>'P1281_SEPARATED_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Separated Type'
,p_source=>'SEPARATED_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEPARATED_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLSEPARATEDSTATUS'')) a',
'where org_id= :APP_ORG_SHR_DED',
'',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'States the process through which the employee was separated from the company. E.g. resigned, retired or dismissed. '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489184779292368448)
,p_name=>'P1281_RETIREMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Retirement Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RETIREMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3489185131784368449)
,p_name=>'P1281_PENSIONSCHEME_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Pension Scheme Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'PENSIONSCHEME_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3489185518662368449)
,p_name=>'P1281_CONFIRMATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Confirmation Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CONFIRMATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3489185919556368449)
,p_name=>'P1281_PENSION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Pension Scheme'
,p_source=>'PENSION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'PENSION_SCHEME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and PENSION_DEDUCTION=1',
'order by 1'))
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489186346496368449)
,p_name=>'P1281_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Union Join Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3489186734235368449)
,p_name=>'P1281_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Union'
,p_source=>'UNION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'ORGANISATION_UNION_AND_CREDITUNION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'order by 1'))
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489187167548368449)
,p_name=>'P1281_LIVE_OVERSEAS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Live Overseas'
,p_source=>'LIVE_OVERSEAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO_NUM'
,p_lov=>'.'||wwv_flow_imp.id(3632356345784240867)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489188038105368449)
,p_name=>'P1281_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Payroll Effective'
,p_source=>'PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'The date from which the employee will be paid by the organisation.'
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
 p_id=>wwv_flow_imp.id(3489188968850368450)
,p_name=>'P1281_APPOINTMENT_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Appointment To Date'
,p_source=>'APPOINTMENT_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'The date the employee was appointed to the position currently held.'
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
 p_id=>wwv_flow_imp.id(3489189836890368450)
,p_name=>'P1281_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Leave Ann Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'The date to be used when computing leave entitlement.'
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
 p_id=>wwv_flow_imp.id(3489190770736368450)
,p_name=>'P1281_APPOINTMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Appointment From Date'
,p_source=>'APPOINTMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'The date the employee was appointed to the position currently held.'
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
 p_id=>wwv_flow_imp.id(3489191680228368450)
,p_name=>'P1281_PRIMARY_TAX_JOB'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_item_default=>'1'
,p_prompt=>'Primary Tax Job'
,p_source=>'PRIMARY_TAX_JOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'A law of Guyana states that employees are to pay taxes at 40% without taxfree if the job is a second job, this option facilitates that.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489192069042368450)
,p_name=>'P1281_REHIRED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_item_default=>'0'
,p_prompt=>'Rehired'
,p_source=>'REHIRED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489192986592368451)
,p_name=>'P1281_IS_PENSIONER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Is pensioner'
,p_source=>'IS_PENSIONER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Used to identify employees who are pensioners. Ensure the active employee is entered first, then enter the pensioners profile.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489193358808368451)
,p_name=>'P1281_ADD_RELATED_RECORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3411905704344146499)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT B.PAGE_TITLE,',
'APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1281_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= :APP_PAGE_ID',
'and add_child_only=1',
'and UPPER(PAGE_TITLE) like ''CREATE/EDIT%''',
'and application_id=:APP_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_display_when=>'P1281_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489194014182368451)
,p_name=>'P1281_JOB_DESCRIPTION_URL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489194463446368451)
,p_name=>'P1281_EMP_GRADE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Grade'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_code, e.id',
'from HR_HCF_POSITION b join hr_hcf_positiongrade e on e.id = b.GRADE_ID',
'WHERE ORG_ID=:APP_ORG_SHR_DED',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'display_only'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489195357980368451)
,p_name=>'P1281_PERMANENT_STAFF'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_use_cache_before_default=>'NO'
,p_source=>'PERMANENT_STAFF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Specific to the employee contract with the employer, permanent employees normally enjoy greater benefits like health insurance and pension plan.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489196224953368452)
,p_name=>'P1281_CONTRACT_STAFF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Has Active Contract'
,p_source=>'CONTRACT_STAFF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'All employees that have entered into a contractual arrangement with their employers should be flagged as contract staff.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489197187323368452)
,p_name=>'P1281_INCLUDE_PAYROLL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_item_default=>'Y'
,p_prompt=>'Include Payroll'
,p_source=>'INCLUDE_PAYROLL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'A specific status that states whether to pay an employee or not'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489198027941368452)
,p_name=>'P1281_CONFIRMED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Confirmed'
,p_source=>'CONFIRMED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Based on the company''s rules employees are on probation when employed, they must complete an evaluation after that time to be confirmed. Confirmed employees are not necessarily permanent employees.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489198403857368452)
,p_name=>'P1281_EMPLOYMENT_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYMENT_TYPE_DYN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, table_value b',
'from hr_hcf_lookup  a',
'where table_name=''TBLEMPLOYMENTTYPE''',
'AND ORG_ID =:APP_ORG_SHR_DED',
'order by 1',
''))
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489198815802368452)
,p_name=>'P1281_YRS_SRV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_prompt=>'Years of Service'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489199248646368452)
,p_name=>'P1281_DATE_EMPLOYED'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Date Employed'
,p_source=>'DATE_EMPLOYED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(3489199597328368453)
,p_name=>'P1281_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTE_GROSS'
,p_lov=>'.'||wwv_flow_imp.id(3628710815723471759)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489200590241368453)
,p_name=>'P1281_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Payment Frequency'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'WHERE EMPLOYMENT_CLASS_ID=:P1281_EMPLOYMENT_CLASS_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1281_EMPLOYMENT_CLASS_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Formally payment type, tells how often an employee will receive wages/salary'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489201486626368453)
,p_name=>'P1281_EMPLOYMENT_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value_description a, a.id b',
'from  hr_hcf_lookup a ',
'where table_name=''TBLEMPLOYMENTCLASS''',
'and a.org_id = :APP_ORG_SHR_DED',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and exists (select 1',
'           from tbluserdetail X',
'           where a.id = X.EMPLOYMENT_CLASS_ID          ',
'           AND org_id =:APP_ORG_ID',
'           and user_id = :APP_USER_ID',
'           and APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'           )',
'union',
'select VALUE_DESCRIPTION, ID',
'from hr_hcf_lookup x',
'where upper(table_name) = ''TBLEMPLOYMENTCLASS''',
'and  upper(table_value)= ''MULTIOPTPAYROLL''',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and org_id = :APP_ORG_SHR_DED',
'and pkg_global_fnts.get_payroll_option(:APP_ORG_SHR_DED)=''DETAIL''',
'and exists (select 1',
'           from tbluserdetail W',
'           where X.id = W.EMPLOYMENT_CLASS_ID          ',
'           AND org_id =:APP_ORG_ID',
'           and user_id = :APP_USER_ID',
'           and APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'           )',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Classification of employees based on company policy and contractual agreements for wages and benefits'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489202301595368453)
,p_name=>'P1281_REPORT_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Report To Administrative'
,p_source=>'REPORT_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1281_ID is null then',
'',
'return',
'        ''SELECT  initcap(Surname || '''', '''' || nvl(First_Name, '''''''')) ||'''' ''''||nvl(Middle_Name,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||case when x.verified_by is null then '''' Un'
||'verified)'''' else ',
'        case when DATE_SEPARATED is null then '''' Active'''' else '''' Separated'''' end|| '''')'''' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where Date_Separated Is Null Or Date_Separated > current_date',
'        order by 1'';',
'      ',
'else',
'return',
' ''SELECT  initcap(Surname || '''', '''' || nvl(First_Name, '''''''')) ||'''' ''''||nvl(Middle_Name,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||case when x.verified_by is null then '''' Unverifie'
||'d)'''' else ',
'        case when DATE_SEPARATED is null then '''' Active'''' else '''' Separated'''' end|| '''')'''' end a,x.ID b',
'        from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where org_id=:APP_ORG_ID',
'        order by 1'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1281_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the immediate administrative boss/supervisor of the employee.'
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
 p_id=>wwv_flow_imp.id(3489203255681368454)
,p_name=>'P1281_REPORT_TO_FUNCTIONAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Report To Functional/Technical'
,p_source=>'REPORT_TO_FUNCTIONAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1281_ID is null then',
'',
'return',
'        ''SELECT  initcap(Surname || '''', '''' || nvl(First_Name, '''''''')) ||'''' ''''||nvl(Middle_Name,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||case when x.verified_by is null then '''' Un'
||'verified)'''' else ',
'        case when DATE_SEPARATED is null then '''' Active'''' else '''' Separated'''' end|| '''')'''' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where Date_Separated Is Null Or Date_Separated > current_date',
'        order by 1'';',
'      ',
'else',
'return',
' ''SELECT  initcap(Surname || '''', '''' || nvl(First_Name, '''''''')) ||'''' ''''||nvl(Middle_Name,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||case when x.verified_by is null then '''' Unverifie'
||'d)'''' else ',
'        case when DATE_SEPARATED is null then '''' Active'''' else '''' Separated'''' end|| '''')'''' end a,x.ID b',
'        from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where org_id=:APP_ORG_ID',
'        order by 1'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1281_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the immediate functional boss/supervisor of the employee.'
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
 p_id=>wwv_flow_imp.id(3489204162862368454)
,p_name=>'P1281_EMPLOYEE_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Employee Status'
,p_source=>'EMPLOYEE_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEE_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYEESTATUS'')) a',
'where org_id = :APP_ORG_SHR_DED',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Tells the employee current status as it relates to being available to work. E.g. on leave, suspended, seconded.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489205078376368454)
,p_name=>'P1281_EMPLOYMENT_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Employment Status'
,p_source=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYMENT_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTSTATUS'')) a',
'where org_id = :APP_ORG_SHR_DED',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Tells the employment current status as it relates to being available to work. E.g. Active, In-Active and Suspended'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489205895674368454)
,p_name=>'P1281_WKLOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Work Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a, a.id',
'from HR_HCF_WORKLOCATION a join hr_hcf_position b on b.def_work_location_id = a.id',
'where  trunc(a.start_date) <= trunc(current_date)',
'and (trunc(a.end_date) is null or a.end_date >= trunc(current_date))',
'and org_id = :APP_ORG_ID',
''))
,p_lov_cascade_parent_items=>'P1281_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'Current work location for employee with stated position.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489206810873368455)
,p_name=>'P1281_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Position'
,p_source=>'POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name) label ,b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'WHERE E.org_id =:APP_ORG_SHR_DED',
'AND exists(select 1',
'            from hr_hcf_orgstructurehd x',
'            where x.id = d.org_structure_id',
'            and x.org_id=:P1281_ORGANISATION)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1281_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Position are based on the organisation selected, note the organisation structure must be configured.'
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
 p_id=>wwv_flow_imp.id(3489208166602368455)
,p_name=>'P1281_IND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Individual'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1281_ID IS NULL THEN',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'And Not Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id',
'                And Org_Id=:APP_ORG_ID',
'                And (Date_Separated Is Null Or Date_Separated > current_date))',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)   ',
'union       ',
'SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'And  Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id',
'                And Org_Id=:APP_ORG_ID',
'                And Date_Separated Is not Null',
'                and pkg_global_fnts.fn_calcage(date_employed,Date_Separated)  >= 10)            ',
'UNION',
'SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'And  Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id',
'                And Org_Id=:APP_ORG_ID',
'                And IS_PENSIONER=''''Y'''')',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)            ',
'order by 1'';',
'',
'ELSE',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A     ',
'where ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'order by 1'';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1281_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Selected from the individual records. conditions include the prevention of individuals already employed for current organisation, auto assignment of rehire status if employee worked for current organisation. Individuals must be verified. Individual''s'
||' age must be equal to or greater than the company''s minimum employment age.'
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
 p_id=>wwv_flow_imp.id(3489208564254368455)
,p_name=>'P1281_ORG_STRUCTURE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489209428896368455)
,p_name=>'P1281_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Employee No.'
,p_source=>'EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_help_text=>'The employee company number, system will generate the next number in series if zero(0) is entered.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489210344893368455)
,p_name=>'P1281_ORGANISATION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE id= :APP_ORG_ID',
'ORDER BY 1       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Current Company/Organisation that employee is at.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489210720854368456)
,p_name=>'P1281_DOC_EXIST_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3411905815105146500)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1281_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489211490500368456)
,p_name=>'P1281_NAVIGATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_item_default=>'1280'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489211865515368456)
,p_name=>'P1281_FULL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3427841397296838647)
,p_use_cache_before_default=>'NO'
,p_source=>'FULL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3489218564052368459)
,p_name=>'P1281_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3619538113618911014)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>2000
,p_cHeight=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3545933509437193082)
,p_name=>'P1281_LOAD_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Add Photograph'
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>20
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'download_link_text', 'Download',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545937211331193091)
,p_name=>'P1281_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>100
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3545937343197193129)
,p_name=>'P1281_BADGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Badge'
,p_source=>'BADGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545937648932193091)
,p_name=>'P1281_CELL_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Cell Phone'
,p_source=>'CELL_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3545937683973193129)
,p_name=>'P1281_LAPEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Lapel'
,p_source=>'LAPEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545938009695193091)
,p_name=>'P1281_TELEPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Telephone'
,p_source=>'TELEPHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>18
,p_cMaxlength=>25
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3545938124499193129)
,p_name=>'P1281_SHIRT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Shirt'
,p_source=>'SHIRT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545938512593193129)
,p_name=>'P1281_SHOE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Shoe'
,p_source=>'SHOE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545938900663193130)
,p_name=>'P1281_TROUSERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Trousers'
,p_source=>'TROUSERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545939251991193130)
,p_name=>'P1281_CAP_SIZE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Cap_Size'
,p_source=>'CAP_SIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545939693890193130)
,p_name=>'P1281_WAIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Waist'
,p_source=>'WAIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545940144366193130)
,p_name=>'P1281_DRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Dress'
,p_source=>'DRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545940521531193130)
,p_name=>'P1281_SKIRT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3643564387285955155)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Skirt'
,p_source=>'SKIRT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>100
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545944215775193139)
,p_name=>'P1281_OTHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Other'
,p_source=>'FOOD_OTHER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>200
,p_cHeight=>2
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545944675860193139)
,p_name=>'P1281_PORK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Pork'
,p_source=>'FOOD_PORK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545945057879193140)
,p_name=>'P1281_BEEF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Beef'
,p_source=>'FOOD_BEEF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545945459795193140)
,p_name=>'P1281_CHICKEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Chicken'
,p_source=>'FOOD_CHICKEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545945904564193140)
,p_name=>'P1281_FISH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Fish'
,p_source=>'FOOD_FISH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545946286362193140)
,p_name=>'P1281_VEGAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Vegan'
,p_source=>'FOOD_VEGAN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545946621621193140)
,p_name=>'P1281_VEGETARIAN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3643565258240955163)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Vegetarian'
,p_source=>'FOOD_VEGETARIAN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545948001452193125)
,p_name=>'P1281_ID_IND'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3492728633850032322)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_item_default=>'P1281_IND_ID'
,p_item_default_type=>'ITEM'
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
 p_id=>wwv_flow_imp.id(3545949884471193151)
,p_name=>'P1281_IND_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3676350049847735674)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Remarks'
,p_source=>'IND_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>3
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3545953045831193141)
,p_name=>'P1281_IND_PHOTO_IND'
,p_source_data_type=>'BLOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3492728633850032322)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'DB_COLUMN',
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545998450510193114)
,p_name=>'P1281_BUILT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Built'
,p_source=>'BUILT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>50
,p_cHeight=>1
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3545998875178193114)
,p_name=>'P1281_DISTINGUISHED_MARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Distinguished Marks'
,p_source=>'DISTINGUISHED_MARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>500
,p_cHeight=>1
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
 p_id=>wwv_flow_imp.id(3545999233254193114)
,p_name=>'P1281_RELIGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Religion'
,p_source=>'RELIGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RELIGION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLRELIGION'')) a',
'where org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3545999598517193114)
,p_name=>'P1281_PLACE_OF_MARRIAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Place Of Marriage'
,p_source=>'PLACE_OF_MARRIAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3546000028583193114)
,p_name=>'P1281_DATE_OF_MARRIAGE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3469404351882689713)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Date Of Marriage'
,p_source=>'DATE_OF_MARRIAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3546004990975193131)
,p_name=>'P1281_WORK_FLOW_COMMENT_IND'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546005452336193131)
,p_name=>'P1281_COMENT_SWITCH_IND'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546005837265193131)
,p_name=>'P1281_STATUS_IND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1281_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=1261     ',
'and TRANSACTION_TYPE_ID=:P1281_TRANSACTION_TYPE_ID_IND',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P1281_TRANSACTION_TYPE_ID_IND'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546006196834193132)
,p_name=>'P1281_TRANSACTION_TYPE_ID_IND'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(3433600092069667594)
,p_prompt=>'Transaction'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546006628572193132)
,p_name=>'P1281_NATIONALITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Nationality'
,p_source=>'NATIONALITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description A,value_description B',
'from table(pkg_global_fnts.get_lookup_value(''TBLNATIONALITY'')) k',
'where org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3546007056212193133)
,p_name=>'P1281_RACE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Ethnicity'
,p_source=>'RACE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ETHNICITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLRACE'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546007385811193133)
,p_name=>'P1281_HAIR_COLOUR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Hair Colour'
,p_source=>'HAIR_COLOUR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Black;BLACK,Brown;BROWN,Blonde;BLONDE,Red;RED,Grey;GREY,White;WHITE,Black And Grey;BLACK_AND_GREY,Brown And Grey;BROWN_AND_GREY,Blonde And Grey;BLONDE_AND_GREY,Red And Grey;RED_AND_GREY,White And Grey;WHITE_AND_GREY'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546007853223193133)
,p_name=>'P1281_EYE_COLOUR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3469404499100689714)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Eye Colour'
,p_source=>'EYE_COLOUR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Amber;AMBER,Blue;BLUE,Brown;BROWN,Grey;GREY,Green;GREEN,Hazel;HAZEL,Red;RED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546011357525193143)
,p_name=>'P1281_WEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_item_default=>'0'
,p_prompt=>'Weight(lbs)'
,p_source=>'WEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546011776952193144)
,p_name=>'P1281_HEIGHT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_item_default=>'0'
,p_prompt=>'Height(cm)'
,p_source=>'HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546012136119193144)
,p_name=>'P1281_MAIDEN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Maiden Name'
,p_source=>'MAIDEN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>50
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3546012485661193144)
,p_name=>'P1281_MARITAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Marital Status'
,p_source=>'MARITAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MARITAL STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from HR_HCF_LOOKUP  ',
'WHERE table_NAME=''TBLMARITALSTATUS'' ',
'and org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546012878083193144)
,p_name=>'P1281_NO_OF_CHILDREN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_item_default=>'0'
,p_prompt=>'No of Children'
,p_source=>'NO_OF_CHILDREN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546013342186193144)
,p_name=>'P1281_SEX_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Gender'
,p_source=>'SEX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3632393837414252895)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546013729219193144)
,p_name=>'P1281_PLACE_OF_BIRTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3469404591770689715)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Birth Place'
,p_source=>'PLACE_OF_BIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'PLACE OF BIRTH'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLHOSPITAL'')) k',
'where org_id= :APP_ORG_SHR_DED',
'',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546016955252193152)
,p_name=>'P1281_DOD'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'DOD'
,p_source=>'DOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3546017372587193153)
,p_name=>'P1281_AGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546017687008193153)
,p_name=>'P1281_DOB'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'DOB'
,p_source=>'DOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>16
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'STATIC',
  'max_static', '+0d',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546018094712193153)
,p_name=>'P1281_ALIAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Alias'
,p_source=>'ALIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>25
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3546018540123193153)
,p_name=>'P1281_MIDDLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Middle Name'
,p_source=>'MIDDLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3546018970554193153)
,p_name=>'P1281_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>50
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3546019338344193153)
,p_name=>'P1281_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Surname'
,p_source=>'SURNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(3546019777314193153)
,p_name=>'P1281_SALUTATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_prompt=>'Salutation'
,p_source=>'SALUTATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SALUTATION'
,p_lov=>'.'||wwv_flow_imp.id(3636673128175547672)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546020090399193153)
,p_name=>'P1281_ADD_RELATED_RECORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1281_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1261---the specific parent screen',
'and webpage_id !=:app_page_id',
'and upper( B.PAGE_TITLE) not like ''%ADRE%''',
'and add_child_only=1',
'and workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'order by  B.PAGE_TITLE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P1281_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546020584903193154)
,p_name=>'P1281_IND_ORG_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3469404695401689716)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'IND_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546209336983487560)
,p_name=>'P1281_ADDRESS_REQUEST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3489396507149789151)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546297986384617675)
,p_name=>'P1281_VALUE_DESCRIPTION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3493888320014914132)
,p_prompt=>'Value Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>75
,p_cMaxlength=>250
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546298342845617675)
,p_name=>'P1281_TABLE_VALUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3493888320014914132)
,p_prompt=>'Table Value/Abbreviation'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546298726314617675)
,p_name=>'P1281_START_PERIOD_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3493888320014914132)
,p_prompt=>'Start Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(3546299169361617675)
,p_name=>'P1281_TABLE_DESCRIPTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3493888320014914132)
,p_prompt=>'Table Description'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DIStinct INITCAP(table_description) A, table_description B',
'from hr_hcf_lookup',
'where org_id=:APP_ORG_ID',
'and upper(table_name) in (''TBLHOSPITAL'',''TBLRACE'',''TBLNATIONALITY'')',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546299437693614532)
,p_name=>'P1281_DOC_EXIST'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3489552751742916181)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1281_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546299855977614532)
,p_name=>'P1281_MACHINE_UPDATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3489552751742916181)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546300274442614532)
,p_name=>'P1281_MACHINE_INSERT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3489552751742916181)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3546301842270614533)
,p_name=>'P1281_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3489552751742916181)
,p_item_source_plug_id=>wwv_flow_imp.id(2613308955691047149)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488879360890368102)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_employee',
'where IND_ID=:P1281_IND_ID',
'and org_id=:P1281_ORGANISATION',
'and (date_separated is null or date_separated > current_date)',
'AND :P1281_IS_PENSIONER=''N''',
'and id != nvl(:P1281_ID,1);',
'',
'IF  v_cnt >=1 AND :P1281_DATE_SEPARATED IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You need to close off the previous employment stint the employee has at this company before adding a new one.'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488878914488368102)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>2
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_employee',
'where IND_ID=:P1281_IND_ID',
'and org_id=:P1281_ORGANISATION',
'and (date_separated is null or date_separated > current_date)',
'AND :P1281_IS_PENSIONER=''N''',
'and id != nvl(:P1281_ID,1);',
'',
'IF  v_cnt >=1 AND :P1281_DATE_SEPARATED IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You need to close off the previous employment stint the employee has at this company before opening the separated dates for this one. Illegal attempt to rehire an employee, kindly use the re-hiring process.'
,p_when_button_pressed=>wwv_flow_imp.id(3489217018504368458)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488878530850368102)
,p_validation_name=>'enf_all_separation_fields'
,p_validation_sequence=>3
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if (:P1281_DATE_SEPARATED IS NULL AND :P1281_SEPARATED_STATUS_ID IS NOT NULL) OR (:P1281_DATE_SEPARATED IS NOT NULL and :P1281_SEPARATED_STATUS_ID IS NULL) THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must enter data into both Date Separated and Separated Status fields when separating employees.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488878188278368102)
,p_validation_name=>'enf_primary_tax_job'
,p_validation_sequence=>4
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cnt_Tax_job pls_integer:=0;',
'',
'begin',
'    ',
'    select count(1) into cnt_Tax_job ',
'    from hr_rcm_Employee',
'    where Primary_Tax_Job=1',
'    and ind_id =:P1281_IND_ID',
'    and (Date_Separated is null or Separated_Status is null)',
'    and id !=nvl(:P1281_ID,1);',
'',
'   IF cnt_Tax_job >=1 AND :P1281_PRIMARY_TAX_JOB=1 then',
'       return false;',
'   else',
'       return true;',
'   end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Two employment records with primary tax job (free pay granted) is not allowed. Kindly select the employment you would like to grant the free pay to.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488877715207368101)
,p_validation_name=>'chk_primary_tax_job'
,p_validation_sequence=>5
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cnt_Tax_job pls_integer:=0;',
'',
'begin',
'    ',
'    select count(1) into cnt_Tax_job ',
'    from hr_rcm_Employee',
'    where Primary_Tax_Job=1',
'    and ind_id =:P1281_IND_ID',
'    and (Date_Separated is null or Separated_Status is null)',
'    and id !=nvl(:P1281_ID,1);',
'',
'   IF cnt_Tax_job =0 AND :P1281_PRIMARY_TAX_JOB is null then',
'       return false;',
'   else',
'       return true;',
'   end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must set primary tax job (free pay granted) to checked.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488877299056368101)
,p_validation_name=>'chk_emp_age'
,p_validation_sequence=>6
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_emp_age hr_hcf_org_rule.employment_age%type;',
'  v_dob pls_integer:=0;',
'',
'begin',
'    SELECT to_number(employment_age) into v_emp_age',
'    FROM hr_hcf_org_rule',
'    where org_id=:P1281_ORGANISATION',
'    and ((trunc(current_date) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'    or  (trunc(start_date) <= TRUNC(current_date) and trunc(end_date) is null ));',
'    ',
'    select pkg_global_fnts.fn_calcage(DOB,trunc(current_date)) into v_dob',
'    from hr_rcm_individual',
'    where id=nvl(:P1281_IND_ID,1);',
'    ',
'    ',
'    if v_dob < v_emp_age then',
'      return false;',
'    else',
'      return true;    ',
'    end if;',
'   ',
'exception',
'   when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the date of birth or organisation employment age is incorrect.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488876936738368101)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>9
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P1281_DATE_EMPLOYED, :P1281_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488876577463368101)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1281_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1281_ID, :P1281_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488883760776368104)
,p_validation_name=>'chk_tin_perm'
,p_validation_sequence=>11
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.fn_getcurnistaxno(:P1281_IND_ID, ''TIN'',  current_date) is null ',
'AND PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P1281_EMPLOYMENT_CLASS_ID, ''VALUE_DESCRIPTION'') not in (''APPLICANT'',''PENSIONERS'') and :APP_COUNTRY=''GUYANA'' then',
'return false;',
'else',
' return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'There is no TIN available for this individual. Kindly update the individual data before continuing.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488883371291368103)
,p_validation_name=>'chk_nis_perm'
,p_validation_sequence=>12
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.fn_getcurnistaxno(:P1281_IND_ID, ''NIS NUMBER'',  current_date) is null ',
'AND PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P1281_EMPLOYMENT_CLASS_ID, ''VALUE_DESCRIPTION'')  not in (''APPLICANT'',''PENSIONERS'') THEN',
'return false;',
'else',
' return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'There is no NIB/SS No. available for this individual. Kindly update the individual data before continuing.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488876093369368101)
,p_validation_name=>'chk_address_perm'
,p_validation_sequence=>22
,p_validation=>'select 1 from hr_rcm_address addr join hr_rcm_individual ind on ind.id=addr.ind_id where ind.id=:P1281_IND_ID'
,p_validation_type=>'EXISTS'
,p_error_message=>'You must have an address attached to your employee record'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488884557598368104)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>32
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1281_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488884095917368104)
,p_validation_name=>'enforce_employee_license'
,p_validation_sequence=>42
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cur_emp_count number(10):=0;',
'    v_get_license varchar2(300);',
'',
'begin',
'',
'    v_get_license := pkg_security.GET_LICENCE(:APP_ORG_ID, :G_PARSING_SCHEMA);',
'    ',
'    IF v_get_license =''GOOD'' then     ',
'         return NULL;',
'    ELSE',
'         return v_get_license;   ',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488882158159368103)
,p_validation_name=>'chk_DOE_DOB'
,p_validation_sequence=>82
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob date;',
'BEGIN',
'',
'select dob into v_dob ',
'from hr_rcm_individual',
'where id= nvl(:P1281_IND_ID,1);',
'',
'IF TO_DATE(:P1281_DATE_EMPLOYED) < v_dob  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'EXCEPTION',
' WHEN OTHERS THEN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date employed is incorrect when compared to the employee date of birth!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488881726127368103)
,p_validation_name=>'chk_dtappt_DOE'
,p_validation_sequence=>92
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1281_APPOINTMENT_DATE) < TO_DATE(:P1281_DATE_EMPLOYED) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The appointment date must be on or after the date employed.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488880584257368103)
,p_validation_name=>'chk_spaning_DOE'
,p_validation_sequence=>122
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'/*NO PAIR of dates should overlap anyother pair of dates. Even if the date separated is empty, then default to trunc(current_date)*/',
'select count(*) into v_cnt',
'from hr_rcm_employee',
'where IND_ID=to_number(:P1281_IND_ID)',
'and',
'(',
'to_date(:P1281_DATE_EMPLOYED) between date_employed and nvl(DATE_SEPARATED,trunc(current_date))',
'OR',
'nvl(to_date(:P1281_DATE_separated) , trunc(current_date)) between date_employed and nvl(DATE_SEPARATED,trunc(current_date))',
')',
'and id !=nvl(:P1281_ID,1);',
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
,p_error_message=>'Overlapping dates for employee stints are not allowed.'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE, CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3632867828374024963)
,p_validation_name=>'chk_spaning_DOE_SAVE'
,p_validation_sequence=>132
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'/*NO PAIR of dates should overlap anyother pair of dates. Even if the date separated is empty, then default to trunc(current_date)*/',
'',
'IF :P1281_IS_PENSIONER=''N'' THEN',
'    select count(*) into v_cnt',
'    from hr_rcm_employee',
'    where IND_ID=to_number(:P1281_IND_ID)',
'    and IS_PENSIONER =''N''',
'    and',
'    (',
'    to_date(:P1281_DATE_EMPLOYED) between date_employed and nvl(DATE_SEPARATED,trunc(current_date))',
'    OR',
'    nvl(to_date(:P1281_DATE_separated) , trunc(current_date)) between date_employed and nvl(DATE_SEPARATED,trunc(current_date))',
'    )',
'    and id !=nvl(:P1281_ID,1);',
'',
'if v_cnt > 0 then',
'  return false;',
'else',
'  return true;',
'end if;',
'',
'ELSE',
'     return true;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Overlapping dates for employee stints are not allowed.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3489217018504368458)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488880112613368103)
,p_validation_name=>'chk_DOE_payeff'
,p_validation_sequence=>142
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1281_PAYROLL_EFFECTIVE) < TO_DATE(:P1281_DATE_EMPLOYED) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The payroll effective date must be on or after the date employed.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488879769184368102)
,p_validation_name=>'chk_DOS_with_AllDates'
,p_validation_sequence=>152
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1281_DATE_SEPARATED) < TO_DATE(:P1281_DATE_EMPLOYED)',
'or TO_DATE(:P1281_DATE_SEPARATED) < TO_DATE(:P1281_APPOINTMENT_DATE)   ',
'or TO_DATE(:P1281_DATE_SEPARATED) < TO_DATE(:P1281_PAYROLL_EFFECTIVE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date separated must be on or after all employment related dates.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488885335276368104)
,p_validation_name=>'chk_date_employed'
,p_validation_sequence=>162
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'if :P1281_DATE_EMPLOYED is null and UPPER(pkg_global_fnts.Get_Lookup_Col(:P1281_EMPLOYMENT_CLASS_ID, ''VALUE_DESCRIPTION'')) !=''APPLICANT'' then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must enter an employement date only applicants are exempted.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488884969979368104)
,p_validation_name=>'chk_payroll_effdate_include_payroll'
,p_validation_sequence=>172
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   if :P1281_INCLUDE_PAYROLL = ''Y'' and  :P1281_PAYROLL_EFFECTIVE is null then ',
'     return FALSE;  ',
'   else',
'     return TRUE;',
'   end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the include payroll or Payroll Effective date is null with one having a value. Either both be null or both should have a value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488885781151368104)
,p_validation_name=>'chk_emp_number'
,p_validation_sequence=>182
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number(10):=0;',
'',
'begin',
'    select count(1) into v_cnt',
'    from hr_rcm_employee',
'    where emp_company_no =:P1281_EMP_COMPANY_NO',
'    and org_id=:APP_ORG_ID',
'    AND IND_ID = :P1281_IND_ID',
'    AND DATE_EMPLOYED = :P1281_DATE_EMPLOYED',
'    and id !=nvl(:P1281_ID,1);',
'    ',
'    if v_cnt > 0 then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The employee number entered already exist for the employee.'
,p_validation_condition=>'CREATE, SAVE, CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3489209428896368455)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3488886098091368104)
,p_validation_name=>'Prev_Contract_Change_perm'
,p_validation_sequence=>192
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_contract_staff number(1):=0;',
'    ',
'begin',
'        select contract_staff into v_contract_staff',
'        from hr_rcm_employee',
'        where id = :P1281_ID;',
'        ',
'      if v_contract_staff != :P1281_CONTRACT_STAFF then',
'            return FALSE;',
'        ',
'      else',
'             return TRUE;',
'      end if;',
'      ',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Direct changes to Has Contract not allowed. Add a new active contract or end date existing one will affect this status.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3341237069252911992)
,p_validation_name=>'chk_joreq_vvalues_perm'
,p_validation_sequence=>202
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_allow number(20); v_leave number(20);  v_Req number(20);',
'',
'begin',
'        select count(1) into v_allow',
'        from hr_hcf_job a join hr_hcf_jobentitle b on a.id = b.job_id',
'        join hr_hcf_position c on c.job_id = a.id',
'        where c.id = :P1281_Position_Id;',
'        ',
'      /*  select count(1) into v_leave',
'        from hr_hcf_job a join hr_hcf_jobleaveentitle b on a.id = b.job_id',
'        join hr_hcf_position c on c.job_id = a.id',
'        where c.id = :P1281_POSITION_ID;',
'     */',
'        select count(1) into v_Req',
'        from hr_hcf_job a join HR_HCF_JOBRULE b on a.id = b.job_id',
'        join hr_hcf_position c on c.job_id = a.id',
'        where c.id = :P1281_POSITION_ID;',
'        ',
'        if v_allow = 0 then        ',
'            return ''There is no Allowance entitlements setup for the job this employee has. Please do so now!'';',
'      --  elsif v_leave = 0 then',
'      --      return ''There is no Leave entitlements setup for the job this employee has. Please do so now!'';',
'        elsif v_Req = 0 then',
'            return ''There is no Job Requirements setup for the job this employee has. Please do so now!'';',
'        else',
'            return '''';',
'        end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(3489217018504368458)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(353724452755508493)
,p_tabular_form_region_id=>wwv_flow_imp.id(3870120833815246729)
,p_validation_name=>'enforce_total_precision'
,p_validation_sequence=>212
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_total_percent number(3,2):=0;',
'    v_test_dis number:=0;',
'    ',
'begin',
'',
'    select nvl(count(1),0) into v_test_dis',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P1281_ID ;',
'',
'if  v_test_dis > 0 then',
'',
'    select nvl(sum(PERCENT_SPLIT),0) into v_total_percent',
'    from HR_RCM_DISBURSEMENT',
'    where SALARY_ID=:P1281_ID',
'    and start_date <=trunc(current_date)',
'    and (end_date is null or end_date >=trunc(current_date));',
'    ',
'    if v_total_percent < 1 then',
'     return FALSE;',
'    elsif  v_total_percent > 1 then',
'     return FALSE;',
'    else',
'     return TRUE;',
'    end if;',
'',
'else',
'      return TRUE;',
'end if;',
'',
'exception',
'    when others then null;',
'       v_total_percent :=0;',
'        return TRUE;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The total disbursement percent is higher than 1, reduce the percentage split.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488870246704368097)
,p_name=>'set_rehired'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_IND_ID'
,p_condition_element=>'P1281_IND_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488869697423368097)
,p_event_id=>wwv_flow_imp.id(3488870246704368097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_REHIRED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select DECODE(count(1),0,0,1)',
'  from hr_rcm_employee',
'  where org_id=:P1281_ORGANISATION',
'  and ind_id=:P1281_IND_ID;',
''))
,p_attribute_07=>'P1281_ORGANISATION,P1281_IND_ID,P1281_REHIRED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488869363067368097)
,p_name=>'set_app_payroll_dates'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DATE_EMPLOYED'
,p_condition_element=>'P1281_DATE_EMPLOYED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488868843937368096)
,p_event_id=>wwv_flow_imp.id(3488869363067368097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_APPOINTMENT_DATE,P1281_PAYROLL_EFFECTIVE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1281_DATE_EMPLOYED'
,p_attribute_07=>'P1281_DATE_EMPLOYED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488868452471368096)
,p_name=>'set_dtsep'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_SEPARATED_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488867968187368096)
,p_event_id=>wwv_flow_imp.id(3488868452471368096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_DATE_SEPARATED'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return (case when :P1281_SEPARATED_STATUS_ID is null then null else current_date() end);',
'end;'))
,p_attribute_07=>'P1281_SEPARATED_STATUS_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488867528062368096)
,p_name=>'gen_emp_number'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_EMP_COMPANY_NO'
,p_condition_element=>'P1281_EMP_COMPANY_NO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488867037991368096)
,p_event_id=>wwv_flow_imp.id(3488867528062368096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_EMP_COMPANY_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pkg_global_fnts.get_system_no(''EMP_COMPANY_NO'') A',
'FROM DUAL'))
,p_attribute_07=>'P1281_ORGANISATION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488866604602368096)
,p_name=>'set_org_structure'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_POSITION_ID'
,p_condition_element=>'P1281_POSITION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488866165348368096)
,p_event_id=>wwv_flow_imp.id(3488866604602368096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_ORG_STRUCTURE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'JOIN hr_hcf_position c on  m.id=c.orgdtl_id',
'WHERE C.id=:P1281_POSITION_ID'))
,p_attribute_07=>'P1281_POSITION_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488865644567368096)
,p_event_id=>wwv_flow_imp.id(3488866604602368096)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_EMP_GRADE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id',
'from hr_hcf_positiongrade a join hr_hcf_position b on a.id=b.grade_id',
'where  b.id = :P1281_POSITION_ID'))
,p_attribute_07=>'P1281_POSITION_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488865113349368096)
,p_event_id=>wwv_flow_imp.id(3488866604602368096)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WKLOCATION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.id',
'from HR_HCF_WORKLOCATION a join hr_hcf_position b on b.def_work_location_id = a.id',
'where  trunc(a.start_date) <= trunc(current_date)',
'and (trunc(a.end_date) is null or a.end_date >= trunc(current_date))',
'and org_id = :APP_ORG_ID',
'AND B.ID = :P1281_POSITION_ID',
''))
,p_attribute_07=>'P1281_POSITION_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3414608555418585373)
,p_event_id=>wwv_flow_imp.id(3488866604602368096)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_EMPLOYMENT_CLASS_ID,P1281_PAYMENT_TYPE,P1281_SHIFT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT employment_class_job, UPPER(b.payment_type) payment_type, shift_rota_id',
'from hr_hcf_job a join hr_att_shift_rota b on b.id = a.shift_rota_id',
'join hr_hcf_position c on c.job_id=a.id',
'where c.id = :P1281_POSITION_ID',
'and a.org_id = :APP_ORG_ID'))
,p_attribute_07=>'P1281_POSITION_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488864719163368095)
,p_name=>'SET_IN_ACTIVE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DATE_SEPARATED,P1281_SEPARATED_STATUS_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488863780251368095)
,p_event_id=>wwv_flow_imp.id(3488864719163368095)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_EMPLOYMENT_STATUS_ID,P1281_INCLUDE_PAYROLL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,''Y''',
'FROM TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTSTATUS'')) A',
'where upper(VALUE_DESCRIPTION)=''ACTIVE''',
''))
,p_attribute_07=>'P1281_SEPARATED_STATUS_ID,P1281_DATE_SEPARATED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488864275379368095)
,p_event_id=>wwv_flow_imp.id(3488864719163368095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_EMPLOYMENT_STATUS_ID,P1281_INCLUDE_PAYROLL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,''N''',
'FROM TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTSTATUS'')) A',
'where upper(VALUE_DESCRIPTION)=''IN-ACTIVE''',
''))
,p_attribute_07=>'P1281_DATE_SEPARATED,P1281_SEPARATED_STATUS_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488863336854368095)
,p_name=>'set_separated_date'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_SEPARATED_STATUS_ID'
,p_condition_element=>'P1281_SEPARATED_STATUS_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488862313184368095)
,p_event_id=>wwv_flow_imp.id(3488863336854368095)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_DATE_SEPARATED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when upper(Wfl_Status_Description)=''SEPARATED'' then current_date ',
'           else  to_date(:P1281_DATE_SEPARATED,''DD-MON-YYYY'')            ',
'           END separate',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1281_STATUS',
'and :P1281_TRANSACTION_TYPE_ID !=131'))
,p_attribute_07=>'P1281_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488862852488368095)
,p_event_id=>wwv_flow_imp.id(3488863336854368095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_DATE_SEPARATED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when upper(Wfl_Status_Description)=''SEPARATED'' then current_date ',
'           else  to_date(:P1281_DATE_SEPARATED,''DD-MON-YYYY'')            ',
'           END separate',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1281_STATUS',
'and :P1281_TRANSACTION_TYPE_ID =131'))
,p_attribute_07=>'P1281_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488861893267368095)
,p_name=>'set_confirmed'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_CONFIRMED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488861481834368093)
,p_event_id=>wwv_flow_imp.id(3488861893267368095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_APPOINTMENT_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select case when :P1281_CONFIRMED=1 then current_date else null end',
'    from hr_rcm_employee',
'    WHERE ID=TO_NUMBER(:P1281_ID);',
'',
''))
,p_attribute_07=>'P1281_CONFIRMED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488861009496368092)
,p_name=>'set_in_payroll'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_INCLUDE_PAYROLL'
,p_condition_element=>'P1281_INCLUDE_PAYROLL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'''Y'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488860531615368092)
,p_event_id=>wwv_flow_imp.id(3488861009496368092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_PAYROLL_EFFECTIVE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P1281_INCLUDE_PAYROLL=''Y'' then current_date else null end',
'    from hr_rcm_employee',
'    WHERE ID=TO_NUMBER(:P1281_ID);'))
,p_attribute_07=>'P1281_INCLUDE_PAYROLL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488859217237368092)
,p_name=>'set_enable_disable_union_date'
,p_event_sequence=>115
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_UNION_CODE_ID'
,p_condition_element=>'P1281_UNION_CODE_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488858757688368092)
,p_event_id=>wwv_flow_imp.id(3488859217237368092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_UNION_JOIN_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488858196906368092)
,p_event_id=>wwv_flow_imp.id(3488859217237368092)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_UNION_JOIN_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488860120174368092)
,p_name=>'get_yrs_srv'
,p_event_sequence=>115
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DATE_EMPLOYED'
,p_condition_element=>'P1281_DATE_EMPLOYED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488859620869368092)
,p_event_id=>wwv_flow_imp.id(3488860120174368092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_YRS_SRV'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select PKG_GLOBAL_FNTS.fn_calcage(:P1281_DATE_EMPLOYED,nvl(:P1281_DATE_SEPARATED, current_date)) age from dual'
,p_attribute_07=>'P1281_DATE_EMPLOYED,P1281_DATE_SEPARATED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488857810088368092)
,p_name=>'Print_Profile_OnPreme'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489213850311368457)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488857329358368092)
,p_event_id=>wwv_flow_imp.id(3488857810088368092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:EMP_NO=&P1281_ID.,PeoplePay_GPL/01_HR/Standard_Letters/EMPLOYEE_PROFILE'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus();}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488856970679368092)
,p_name=>'Refresh SpecDuty - Create'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488941820299368123)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488856421726368091)
,p_event_id=>wwv_flow_imp.id(3488856970679368092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3411154548720764092)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488856091736368091)
,p_name=>'Refresh SpecDuty - Edit'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3411154548720764092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488855546160368091)
,p_event_id=>wwv_flow_imp.id(3488856091736368091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3411154548720764092)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488855168814368091)
,p_name=>'Refresh EmpReq - Create'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488967160981368132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488854664791368091)
,p_event_id=>wwv_flow_imp.id(3488855168814368091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433598487292667592)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488854242291368091)
,p_name=>'Refresh EmpReq - Edit'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433598487292667592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488853734222368091)
,p_event_id=>wwv_flow_imp.id(3488854242291368091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433598487292667592)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488853342859368091)
,p_name=>'Refresh AltPosLoc - Create'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488893572925368107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488852803998368091)
,p_event_id=>wwv_flow_imp.id(3488853342859368091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3424487563893765079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488852454570368091)
,p_name=>'Refresh AltPosLoc - Edit'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3424487563893765079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488851897512368090)
,p_event_id=>wwv_flow_imp.id(3488852454570368091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3424487563893765079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488851591739368090)
,p_name=>'Refresh Salary - Create'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489125624285368418)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488851027548368090)
,p_event_id=>wwv_flow_imp.id(3488851591739368090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433594291925667588)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488850593112368090)
,p_name=>'Refresh Salary - Edit'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433594291925667588)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488850108715368090)
,p_event_id=>wwv_flow_imp.id(3488850593112368090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433594291925667588)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488849726900368090)
,p_name=>'Refresh LvEnt - Create'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489023762168368155)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488849243890368089)
,p_event_id=>wwv_flow_imp.id(3488849726900368090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433596497208667590)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488848839133368089)
,p_name=>'Refresh LvEnt - Edit'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433596497208667590)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488848391708368089)
,p_event_id=>wwv_flow_imp.id(3488848839133368089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433596497208667590)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488847983389368089)
,p_name=>'Refresh Remuneration - Create'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489136723794368426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488847482248368089)
,p_event_id=>wwv_flow_imp.id(3488847983389368089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433591878921667585)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488847008760368089)
,p_name=>'Refresh Remuneration - Edit'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433591878921667585)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488846577454368089)
,p_event_id=>wwv_flow_imp.id(3488847008760368089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433591878921667585)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488846123118368089)
,p_name=>'Refresh Item - Create'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489056419330368172)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488845595980368089)
,p_event_id=>wwv_flow_imp.id(3488846123118368089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433622301127667654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488845262703368089)
,p_name=>'Refresh Item - Edit'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433622301127667654)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488844786654368088)
,p_event_id=>wwv_flow_imp.id(3488845262703368089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433622301127667654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488844348993368088)
,p_name=>'Refresh Contract - Create'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489009632602368150)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488843796267368088)
,p_event_id=>wwv_flow_imp.id(3488844348993368088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433607977921667613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488843470527368088)
,p_name=>'Refresh Contract - Edit'
,p_event_sequence=>290
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433607977921667613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488842911267368088)
,p_event_id=>wwv_flow_imp.id(3488843470527368088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433607977921667613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488842562924368088)
,p_name=>'Refresh Award - Create'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488887292818368105)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488842035571368088)
,p_event_id=>wwv_flow_imp.id(3488842562924368088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433612283921667621)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488841604999368088)
,p_name=>'Refresh Award - Edit'
,p_event_sequence=>310
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433612283921667621)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488841154337368088)
,p_event_id=>wwv_flow_imp.id(3488841604999368088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433612283921667621)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488840717970368088)
,p_name=>'Refresh Training - Create'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488933166168368121)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488840256324368087)
,p_event_id=>wwv_flow_imp.id(3488840717970368088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433614078928667630)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488839872118368087)
,p_name=>'Refresh Training - Edit'
,p_event_sequence=>330
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433614078928667630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488839332936368087)
,p_event_id=>wwv_flow_imp.id(3488839872118368087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433614078928667630)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488838939694368087)
,p_name=>'Refresh Permit - Create'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488921809965368117)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488838493052368087)
,p_event_id=>wwv_flow_imp.id(3488838939694368087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433616390117667638)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488838044565368087)
,p_name=>'Refresh Permit - Edit'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433616390117667638)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488837516843368087)
,p_event_id=>wwv_flow_imp.id(3488838044565368087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433616390117667638)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488837093935368087)
,p_name=>'Refresh ReqDoc - Create'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488927208878368119)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488836642840368087)
,p_event_id=>wwv_flow_imp.id(3488837093935368087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433617876957667646)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488836261984368087)
,p_name=>'Refresh ReqDoc - Edit'
,p_event_sequence=>370
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433617876957667646)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488835722535368086)
,p_event_id=>wwv_flow_imp.id(3488836261984368087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433617876957667646)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488835391854368086)
,p_name=>'Refresh Travel - Create'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3488916348102368115)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488834885407368086)
,p_event_id=>wwv_flow_imp.id(3488835391854368086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433619477665667649)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488834482870368086)
,p_name=>'Refresh Travel - Edit'
,p_event_sequence=>390
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3433619477665667649)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488833952723368086)
,p_event_id=>wwv_flow_imp.id(3488834482870368086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3433619477665667649)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488832192159368086)
,p_name=>'print_report'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489212996633368456)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488831649655368085)
,p_event_id=>wwv_flow_imp.id(3488832192159368086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1251_ID.,PeoplePay/02_PAYROLL/Payslip'', "popupWindow", "scrollbars=yes");',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488831220513368085)
,p_name=>'show_comment'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_COMENT_SWITCH'
,p_condition_element=>'P1281_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488830284155368085)
,p_event_id=>wwv_flow_imp.id(3488831220513368085)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488830744187368085)
,p_event_id=>wwv_flow_imp.id(3488831220513368085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488829834087368085)
,p_name=>'show_comments'
,p_event_sequence=>430
,p_condition_element=>'P1281_WORK_FLOW_COMMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488828853183368085)
,p_event_id=>wwv_flow_imp.id(3488829834087368085)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488829372709368085)
,p_event_id=>wwv_flow_imp.id(3488829834087368085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488828467986368085)
,p_name=>'dyHasContract'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_HAS_CONTRACT'
,p_condition_element=>'P1281_HAS_CONTRACT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488827407066368085)
,p_event_id=>wwv_flow_imp.id(3488828467986368085)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_CONTRACT_STAFF'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488827932565368085)
,p_event_id=>wwv_flow_imp.id(3488828467986368085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_CONTRACT_STAFF'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488827007686368084)
,p_name=>'Print_Profile_Cloud'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489213850311368457)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488826551216368083)
,p_event_id=>wwv_flow_imp.id(3488827007686368084)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/Peoplepay_GPL_TRAINING/01_HR/Standard_Letters/EMPLOYEE_PROFILE-EMP_NO=&P1281_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,tool'
||'bar=yes,menubar=no,location=yes,directories=no, status=yes'')',
'if (window.focus) {win.focus()}*/',
'',
'var win = window.open(''&P1281_REPORT_URL.&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/EMPLOYEE_PROFILE-EMP_NO=&P1281_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes'
||',directories=no, status=yes'')',
'if (window.focus) {win.focus()}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488826191720368083)
,p_name=>'change_value'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_SHIFT_ID'
,p_condition_element=>'P1281_SHIFT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488825682646368083)
,p_event_id=>wwv_flow_imp.id(3488826191720368083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    p_shift_rota_id  NUMBER;',
'    p_emp_id         NUMBER;',
'    p_org_id         NUMBER;',
'BEGIN',
'    p_shift_rota_id := :P1281_SHIFT_ID;',
'    p_emp_id := :P1281_ID;',
'    p_org_id := :APP_ORG_ID;',
'    sp_linkshift_std_day_hours_new(',
'                                  p_shift_rota_id => p_shift_rota_id,',
'                                  p_emp_id => p_emp_id,',
'                                  p_org_id => p_org_id',
'    );',
'--rollback; ',
'END;',
'',
'    -- pkg_hr.sp_linkshift_std_day_hours(:P1281_SHIFT_ID, :P1281_ID);',
''))
,p_attribute_02=>'P1281_SHIFT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488825255374368083)
,p_name=>'New'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489212655701368456)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488824756695368083)
,p_event_id=>wwv_flow_imp.id(3488825255374368083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_JOB_DESCRIPTION_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlString varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'V_SCHEMA VARCHAR2(50);',
'',
'begin',
'',
'select job_id into v_variable from HR_HCF_POSITION where id=:P1281_POSITION_ID;',
'',
'--v_url_1:=''http://reports.innosysgy.com:8080/Report/showPDF?p2=/reports/Peoplepay_WT/01_HR/Job_Description-JOB_ID=''||v_variable;',
'',
'SELECT SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') AS current_schema into v_schema FROM DUAL;',
'',
'if upper(v_schema) = ''STARFISH'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=SF&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'elsif upper(v_schema) = ''CAMEX'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=CMX&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'elsif upper(v_schema) = ''TEMPLATE_APPV8'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=SG&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'elsif upper(v_schema) = ''APPS'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=LC&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'elsif upper(v_schema) = ''CORREIA'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=CRR&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'elsif upper(v_schema) = ''GAFOORS'' then',
'    v_url_1:=''http://reports.innosysgy.com:8080/Report_Multi/showPDF?p1=GF&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/Job_Description-JOB_ID=''||v_variable;',
'end if;',
'',
'',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'exception ',
'    when others then null;',
'end;'))
,p_attribute_07=>'P1281_POSITION_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488824277961368083)
,p_event_id=>wwv_flow_imp.id(3488825255374368083)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open(document.getElementById(''P1281_JOB_DESCRIPTION_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488823824441368083)
,p_name=>'search_ded1'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_START_PERIOD'
,p_condition_element=>'P1281_END_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488823377975368082)
,p_event_id=>wwv_flow_imp.id(3488823824441368083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3431041322853213535)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488822919208368082)
,p_name=>'search_ded2'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_END_PERIOD'
,p_condition_element=>'P1281_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488822396371368082)
,p_event_id=>wwv_flow_imp.id(3488822919208368082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3431041322853213535)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3488822065554368082)
,p_name=>'Refresh Deductions'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3489119380569368416)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3488821554937368082)
,p_event_id=>wwv_flow_imp.id(3488822065554368082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3438440363765326588)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3382121909907649291)
,p_name=>'pop_banktransit_and bankroutingno'
,p_event_sequence=>510
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3870120833815246729)
,p_triggering_element=>'BANK_BRANCH_ID_DIST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3382121988851649292)
,p_event_id=>wwv_flow_imp.id(3382121909907649291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'BANK_TRANSIT,BANK_ROUTING_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select transits, bank_routing_no',
'from hr_hcf_organisation',
'where user_org_id = :APP_ORG_SHR_DED',
'and organisation_type = ''BANK''',
'and id = :BANK_BRANCH_ID_DIST'))
,p_attribute_07=>'BANK_BRANCH_ID_DIST'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261907882771826281)
,p_name=>'search_adhoc'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_START_ADHOC'
,p_condition_element=>'P1281_END_ADHOC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261907901643826282)
,p_event_id=>wwv_flow_imp.id(3261907882771826281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3860230831348281251)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261908057265826283)
,p_name=>'search_adhoc1'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_END_ADHOC'
,p_condition_element=>'P1281_START_ADHOC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261908154007826284)
,p_event_id=>wwv_flow_imp.id(3261908057265826283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3860230831348281251)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261908407202826287)
,p_name=>'PAY_SEARCH_START'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_PAYMENT_START'
,p_condition_element=>'P1281_PAYMENT_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261908556510826288)
,p_event_id=>wwv_flow_imp.id(3261908407202826287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3457595945452807623)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261908600440826289)
,p_name=>'PAY_SEARCH_END'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_PAYMENT_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261908798926826290)
,p_event_id=>wwv_flow_imp.id(3261908600440826289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3457595945452807623)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261909072939826293)
,p_name=>'SEARCH_INC_ST'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_PAYMENT_START_INC'
,p_condition_element=>'P1281_PAYMENT_END_INC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261909170511826294)
,p_event_id=>wwv_flow_imp.id(3261909072939826293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3445483839211523807)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3261909255646826295)
,p_name=>'SEARCH_INC_EN'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_PAYMENT_END_INC'
,p_condition_element=>'P1281_PAYMENT_START_INC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3261909317146826296)
,p_event_id=>wwv_flow_imp.id(3261909255646826295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3445483839211523807)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2908903825442105911)
,p_name=>'SEARCH_DED_ST'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DED_START'
,p_condition_element=>'P1281_DED_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2908903926689105912)
,p_event_id=>wwv_flow_imp.id(2908903825442105911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3839416704099355736)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2908904066836105913)
,p_name=>'SEARCH_DED_END'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DED_END'
,p_condition_element=>'P1281_DED_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2908904130962105914)
,p_event_id=>wwv_flow_imp.id(2908904066836105913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3839416704099355736)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2993957615045956221)
,p_name=>'refresh_cal'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_CAL_START'
,p_condition_element=>'P1281_CAL_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2993957704371956222)
,p_event_id=>wwv_flow_imp.id(2993957615045956221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3551471013662151587)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3002979766330591580)
,p_event_id=>wwv_flow_imp.id(2993957615045956221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_CHK_FIELDS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'from HR_ATT_EMPCALENDAR_HD',
'where emp_id = :P1281_ID',
'and work_date between NVL(:P1281_CAL_START, trunc((current_date),''MONTH'')) and NVL(:P1281_CAL_END, last_day(current_date))'))
,p_attribute_07=>'P1281_CAL_START,P1281_CAL_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2993957865057956223)
,p_name=>'refresh_start'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_CAL_END'
,p_condition_element=>'P1281_CAL_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2993957977564956224)
,p_event_id=>wwv_flow_imp.id(2993957865057956223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3551471013662151587)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3002979862907591581)
,p_event_id=>wwv_flow_imp.id(2993957865057956223)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_CHK_FIELDS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'from HR_ATT_EMPCALENDAR_HD',
'where emp_id = :P1281_ID',
'and work_date between NVL(:P1281_CAL_START, trunc((current_date),''MONTH'')) and NVL(:P1281_CAL_END, last_day(current_date))'))
,p_attribute_07=>'P1281_CAL_START,P1281_CAL_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3002979931881591582)
,p_name=>'show_hide_tbn'
,p_event_sequence=>620
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_CHK_FIELDS'
,p_condition_element=>'P1281_CHK_FIELDS'
,p_triggering_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3002980005238591583)
,p_event_id=>wwv_flow_imp.id(3002979931881591582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2993958015783956225)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3002980151617591584)
,p_event_id=>wwv_flow_imp.id(3002979931881591582)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2993958015783956225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(391199572239489717)
,p_name=>'set_appt_date_n_leave_ann'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DATE_EMPLOYED'
,p_condition_element=>'P1281_DATE_EMPLOYED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391199751610489718)
,p_event_id=>wwv_flow_imp.id(391199572239489717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'set appt date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_APPOINTMENT_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P1281_DATE_EMPLOYED from dual;'
,p_attribute_07=>'P1281_DATE_EMPLOYED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(391199785831489719)
,p_event_id=>wwv_flow_imp.id(391199572239489717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'set leave ann'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_LEAVE_ANN_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P1281_DATE_EMPLOYED from dual;'
,p_attribute_07=>'P1281_DATE_EMPLOYED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(317820948879603548)
,p_name=>'show_comment_ind'
,p_event_sequence=>640
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_COMENT_SWITCH_IND'
,p_condition_element=>'P1281_COMENT_SWITCH_IND'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(317821064242603549)
,p_event_id=>wwv_flow_imp.id(317820948879603548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT_IND'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(317821165950603550)
,p_event_id=>wwv_flow_imp.id(317820948879603548)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_WORK_FLOW_COMMENT_IND'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(317821252238603551)
,p_name=>'getage'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1281_DOB'
,p_condition_element=>'P1281_DOB'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(317821328900603552)
,p_event_id=>wwv_flow_imp.id(317821252238603551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1281_AGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select PKG_GLOBAL_FNTS.fn_calcage(:P1281_DOB,sysdate) age from dual'
,p_attribute_07=>'P1281_DOB'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(443925863661705544)
,p_name=>'TIME_CLOCK_REPORT'
,p_event_sequence=>660
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(443925678631705543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'APP_ORG_ID'
,p_display_when_cond2=>'208'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(443925914450705545)
,p_event_id=>wwv_flow_imp.id(443925863661705544)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''&P1281_TIMECLOCK_REPORT_URL.-IN_ORG_ID=&APP_ORG_ID.-IN_EMP_ID=&P1281_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'')',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(443926071478705547)
,p_name=>'warning_letter_report'
,p_event_sequence=>670
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(443925973433705546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(443926257502705548)
,p_event_id=>wwv_flow_imp.id(443926071478705547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''http://158.101.107.28:8080/Report_Multi/showPDF?p1=GF&p2=/reports/PeoplePay_Multi_Cloud/01_HR/Standard_Letters/WARNING_LETTER_GAFOORS-IN_ORG_ID=&APP_ORG_ID.-EMP_NO=&P1281_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,'
||'resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'')',
'',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(318120582825081649)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2613308955691047149)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'process form Individual form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57037164634378736
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(318120793680081651)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3433600092069667594)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'process form employees form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57037375489378738
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488875471682368101)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GEN_EMP_NUMBER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_R NUMBER:=0;',
'  V_unique boolean:= false;',
'  v_count number := 0;',
'  v_NUMBER_PREFIX varchar2(50);',
'  ',
'BEGIN',
'',
' IF :P1281_EMP_COMPANY_NO =0 THEN',
' ',
'',
'   V_R:=pkg_global_fnts.get_system_no(''EMP_COMPANY_NO'');',
'',
' begin',
'   ',
'   select NUMBER_PREFIX into v_NUMBER_PREFIX',
'   from HR_SYS_NUMBER',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'   ',
' exception',
'     when no_data_found then',
'         V_NUMBER_PREFIX := null;',
' end; ',
'',
' ',
'  while (v_unique = false)',
'    loop',
'        ',
'       V_R :=V_R + 1;',
'       ',
'    if v_NUMBER_PREFIX is null then ',
'   ',
'        select count(1) into v_count from hr_rcm_employee where emp_company_no =  to_char(V_R) and org_id=:APP_ORG_ID;',
'    else',
'         select count(1) into v_count from hr_rcm_employee where emp_company_no = v_NUMBER_PREFIX||TO_CHAR(V_R) and org_id=:APP_ORG_ID;',
'    end if;',
'    ',
'    if v_count = 0 then',
'        ',
'        v_unique := true;',
'        ',
'        exit;',
'        ',
'    end if;',
'    ',
'    end loop;',
'   ',
'   if v_NUMBER_PREFIX is null then ',
'    ',
'    :P1281_EMP_COMPANY_NO := V_R;',
'   else',
'    :P1281_EMP_COMPANY_NO := v_NUMBER_PREFIX||TO_CHAR(V_R);',
'    ',
'   end if;',
'   ',
'   UPDATE HR_SYS_NUMBER',
'   SET NUMBER_VALUE = V_R',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'   ',
' END IF;  ',
' ',
' exception    ',
'     when others then null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3067083478484371527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3346301910005646159)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3870120833815246729)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2924509916807649585
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488873048713368100)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'281'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3489217445341368459)
,p_internal_uid=>3067081055515371526
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488872682347368100)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1281_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1281_STATUS;',
'',
'Select Individual into v_Individual ',
'From Vw_Individual ',
'where Id=:P1281_IND_ID;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	   ',
'    ''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID,P''||:APP_PAGE_ID||''_WORK_FLOW_COMMENT:''|| :P1281_ID||'',''||:P1281_WORK_FLOW_COMMENT,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employees'',',
'	:P1281_STATUS,:APP_PAGE_ID,:P1281_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_EMPLOYEE'', :P1281_WORK_FLOW_COMMENT, :P1281_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3489217018504368458)
,p_process_when=>'P1281_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3067080689149371526
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488872235768368100)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_attendance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_Att_count pls_integer:=0;  v_startdate date; v_enddate date;  V_USE_DATE DATE;',
'',
'begin',
'    select count(1) into v_att_count',
'    from HR_ATT_EMPCALENDAR_HD ',
'    where emp_id=:P1281_ID;',
'',
'  IF  extract(year from to_date(:P1281_DATE_EMPLOYED)) <  extract(year from current_date) then ',
'            V_USE_DATE := trunc(current_date,''YEAR'');',
'  else',
'            V_USE_DATE := :P1281_DATE_EMPLOYED;',
'  end if;',
'',
'  if v_att_count=0 then',
'  ',
'    for I in (',
'            select  :P1281_DATE_EMPLOYED v_startdate,  end_date    ',
'            from pa_pcf_earningperiod',
'            where upper(payment_type)=upper(:P1281_PAYMENT_TYPE)',
'            and org_id = :P1281_ORGANISATION',
'            and employment_class_id= :P1281_EMPLOYMENT_CLASS_ID',
'            and compute_gross =  :P1281_COMPUTE_GROSS',
'            and V_USE_DATE <  end_date ) loop',
'        ',
'        --   pkg_hr.genearndays(:P1281_ID, null, i.v_startdate, i.end_date);',
'        generate_calendar_days(i.v_startdate, i.end_date,:P1281_ID, :APP_ORG_ID,null);',
'',
'    end loop;',
'',
'  end if;',
'EXCEPTION',
'   WHEN OTHERS THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,GEN_CALENDAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3067080242570371526
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488871077911368100)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gen_data_FromJobs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     v_emprule pls_integer:=0; V_VALUE_STDDAY NUMBER(8,2):=0; V_VALUE_STDHOURS NUMBER(8,2):=0; V_ID_STDHRS_VALUE pls_integer:=0; ',
'      V_ID_STDDAY_VALUE pls_integer:=0; V_ID_DAYAVL_VALUE  pls_integer:=0;  v_pk_value number(10);',
'  ',
'begin',
'  ',
'        SELECT count(1) INTO v_emprule',
'        FROM hr_rcm_emprule',
'        where emp_id= :P1281_ID;',
'',
'    if v_emprule = 0 then',
'',
'        select ID into V_ID_STDDAY_VALUE',
'        from table(pkg_global_fnts.get_lookup_value(''TBLEMPRULE'')) a',
'        where org_id =:APP_ORG_SHR_DED',
'        AND TABLE_VALUE=''STANDARD_DAYS'';',
'',
'        select ID into V_ID_STDHRS_VALUE',
'        from table(pkg_global_fnts.get_lookup_value(''TBLEMPRULE'')) a',
'        where org_id =:APP_ORG_SHR_DED',
'        AND TABLE_VALUE=''STANDARD_HOURS'';',
'      ',
'        select ID into V_ID_DAYAVL_VALUE',
'        from table(pkg_global_fnts.get_lookup_value(''TBLEMPRULE'')) a',
'        where org_id =:APP_ORG_SHR_DED',
'        AND TABLE_VALUE=''DAY_AVAILABLE'';',
'    ',
'  --  EXECUTE IMMEDIATE ''ALTER TRIGGER SYS_TRG_EMPRULE_BI DISABLE'';',
'    ',
'  ',
'    begin',
'',
'        select  hours_worked, num_working_days into  V_VALUE_STDHOURS,  V_VALUE_STDDAY',
'        from hr_rcm_employee a join Hr_Att_Shift_Rota b on b.id = a.shift_id',
'        where a.id =:P1281_ID; ',
'',
'     begin',
'        INSERT INTO hr_rcm_emprule ( ID, emp_id, start_date, rule_option, rule_value)',
'        select  EMPRULE_SEQ.nextval, :P1281_ID, nvl(:P1281_DATE_EMPLOYED,trunc(current_date)), V_ID_STDDAY_VALUE, V_VALUE_STDDAY',
'        FROM dual;',
'',
'    exception',
'        when others then null;',
'    end;',
'',
'    begin',
'        INSERT INTO hr_rcm_emprule ( ID, emp_id, start_date, rule_option, rule_value)',
'        select  EMPRULE_SEQ.nextval, :P1281_ID, nvl(:P1281_DATE_EMPLOYED,trunc(current_date)), V_ID_STDHRS_VALUE,  V_VALUE_STDHOURS',
'        FROM dual;',
'',
'    exception',
'        when others then null;',
'    end;',
'',
'    begin',
'        INSERT INTO hr_rcm_emprule (ID,  emp_id, start_date, rule_option, rule_value)',
'        select  EMPRULE_SEQ.nextval, :P1281_ID, nvl(:P1281_DATE_EMPLOYED,trunc(current_date)), V_ID_DAYAVL_VALUE, 1',
'        FROM dual;',
'',
'    exception',
'        when others then null;',
'    end;   ',
'',
'    exception',
'        when others then null;',
'    end; ',
'',
'    end if;',
'   ',
'   if :P1281_EMPLOYMENT_TYPE_ID = 2 then --Permanent employees only',
'    BEGIN',
'       for I in (',
'                    select :P1281_ID emp_id, income_type,  income_code_id,  taxable,  nis_deduction, amount ,  expense_code_id,',
'                        std_detail_key,  admin_status,  percentage, remarks,  quick_entry,  start_date, entitlement_currency, pensionable,percent_option',
'                    from HR_HCF_JOBENTITLE a ',
'                    where exists(select 1',
'                                from hr_hcf_job c join hr_hcf_position b on c.id=b.job_id',
'                                where a.job_id=c.id',
'                                and b.id =:P1281_POSITION_ID)) loop',
'',
'               INSERT INTO hr_rcm_empentitle (emp_id, income_type,  income_code_id,  taxable,  nis_deduction,  amount,  expense_code_id,',
'                 std_detail_key,  admin_status,  percentage, remarks,  quick_entry,  start_date, entitlement_currency, pensionable,percent_option )',
'                ',
'                values (i.emp_id, i.income_type,  i.income_code_id,  i.taxable,  i.nis_deduction, i.amount ,  i.expense_code_id,',
'                        i.std_detail_key,  i.admin_status,  i.percentage, i.remarks,  i.quick_entry,  i.start_date, i.entitlement_currency, i.pensionable, i.percent_option)',
'                returning id into v_pk_value;',
'',
'                if i.percent_option is not null then',
'                    update hr_rcm_empentitle',
'                    set amount = pkg_global_fnts.fn_ComputeEntPercentof(INCOME_CODE_ID, AMOUNT, START_DATE, PERCENT_OPTION, EMP_ID, PERCENTAGE, TAXABLE) ',
'                    where id = v_pk_value;',
'                end if;',
'        end loop;',
'',
'        INSERT INTO hr_rcm_empleaveentitle ( allow_leave_overdraft, leave_rate ,emp_id, leave_type_id,  quantity, working_days,  max_accumulation,  accumulative, reduce_sal_overspent, start_date)',
'',
'        select  allow_leave_overdraft, leave_rate ,:P1281_ID, leave_type_id,  quantity, working_days,  max_accumulation,  accumulative, reduce_sal_overspent, start_date',
'        from hr_hcf_jobleaveentitle a ',
'        where exists(select 1',
'                     from hr_hcf_job c join hr_hcf_position b on c.id=b.job_id',
'                     where a.job_id=c.id',
'                     and b.id =:P1281_POSITION_ID);',
'                     ',
'                     ',
'    -- EXECUTE IMMEDIATE ''ALTER TRIGGER SYS_TRG_EMPRULE_BI ENABLE'';',
'    exception',
'        when others then null;',
'    --  EXECUTE IMMEDIATE ''ALTER TRIGGER SYS_TRG_EMPRULE_BI ENABLE'';',
'    end;   ',
'end if;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3489216640493368458)
,p_internal_uid=>3067079084713371526
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3488875831176368101)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'retention_management'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   update hr_hcf_POSITION',
'      set NO_FILLED=',
'                        (',
'                          select DECODE(count(1),0,1,count(1))',
'                          from hr_rcm_employee',
'                          where position_id=:P1281_POSITION_ID)',
'      where id=:P1281_POSITION_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3067083837978371527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3277598398135396405)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'emp_requirments_gen'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    p_shift_rota_id  NUMBER;',
'    p_emp_id         NUMBER;',
'    p_org_id         NUMBER;',
'BEGIN',
'    p_shift_rota_id := :P1281_SHIFT_ID;',
'    p_emp_id := :P1281_ID;',
'    p_org_id := :APP_ORG_ID;',
'    pkg_hr.sp_linkshift_std_day_hours(',
'                                  p_shift_rota_id => p_shift_rota_id,',
'                                  p_emp_id => p_emp_id,',
'                                  p_org_id => p_org_id',
'    );',
'--rollback; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3489217018504368458)
,p_internal_uid=>2855806404937399831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3298152806487784172)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GEENRATE CALENDAR DAYS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'        l_last_day      date;',
'        v_sqlcode       VARCHAR2 (25);',
'        v_sqlerrm       VARCHAR2 (2000);',
'begin',
'        SELECT to_date(to_char(ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1,''DD-MM-YYYY''),''DD-MM-YYYY'') last_date ',
'        into l_last_day ',
'        FROM DUAL;',
'',
'for i in(',
'        select e.id emp_id, d.gendt workdate, fn_get_earnings_period(e.id,d.gendt, e.org_id) earn_prd',
'        from(',
'            select to_date(:P1281_DATE_EMPLOYED) + level - 1 as gendt ',
'            from dual',
'            connect by level <= to_date(l_last_day) - to_date(:P1281_DATE_EMPLOYED) + 1) d',
'        cross join hr_rcm_employee e',
'        left join hr_att_empcalendar_hd a on (a.emp_id=e.id and a.work_date = d.gendt)',
'        where e.id = :P1281_ID',
'        and a.work_date is null',
'        AND (e.date_separated is null)',
'        order by 1',
') loop',
'',
'begin ',
'    insert into hr_att_empcalendar_hd(',
'                emp_id,',
'                work_date,',
'                earning_period_id,',
'                transaction_type_id,',
'                status',
'    ) values (',
'                i.emp_id,',
'                i.workdate,',
'                i.earn_prd,',
'                110,',
'                1993',
'    );',
'',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'        ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;',
'        pkg_biz_rules.log_message(v_sqlcode, v_sqlerrm, ''error occurred while executing generating calendar days for new employee'', ''GEENRATE CALENDAR DAYS'', null);',
'  END;',
'',
'end loop;',
'COMMIT;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2876360813289787598
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3002980277502591585)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GEN CAL BY PERIOD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'       ',
'        v_sqlcode       VARCHAR2 (25);',
'        v_sqlerrm       VARCHAR2 (2000);',
'begin',
'     ',
'',
'for i in(',
'        select e.id emp_id, d.gendt workdate, fn_get_earnings_period(e.id,d.gendt, e.org_id) earn_prd',
'        from(',
'            select to_date(:P1281_DATE_EMPLOYED) + level - 1 as gendt ',
'            from dual',
'            connect by level <= to_date(:P1281_CAL_END) - to_date(:P1281_CAL_START) + 1) d',
'        cross join hr_rcm_employee e',
'        left join hr_att_empcalendar_hd a on (a.emp_id=e.id and a.work_date = d.gendt)',
'        where e.id = :P1281_ID',
'        and a.work_date is null',
'        AND (e.date_separated is null)',
'        order by 1',
') loop',
'',
'begin ',
'    insert into hr_att_empcalendar_hd(',
'                emp_id,',
'                work_date,',
'                earning_period_id,',
'                transaction_type_id,',
'                status',
'    ) values (',
'                i.emp_id,',
'                i.workdate,',
'                i.earn_prd,',
'                110,',
'                1993',
'    );',
'',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'        ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;',
'        pkg_biz_rules.log_message(v_sqlcode, v_sqlerrm, ''error occurred while executing generating calendar days for new employee'', ''GEENRATE CALENDAR DAYS'', null);',
'  END;',
'',
'end loop;',
'COMMIT;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2993958015783956225)
,p_internal_uid=>2581188284304595011
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(315739702765907141)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2613308955691047149)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Individual'
,p_internal_uid=>54656284575204228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(317715287078441422)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3433600092069667594)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmEmployee'
,p_internal_uid=>56631868887738509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3255484082152937057)
,p_process_sequence=>500
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Handling Calendar Records After Separation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P1281_SEPARATED_STATUS_ID IS NOT NULL THEN',
'PRCD_DELETE_SEPRECORDS(:P1281_ID, :P1281_DATE_SEPARATED, :APP_ORG_ID);',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3489217018504368458)
,p_internal_uid=>2833692088954940483
);
wwv_flow_imp.component_end;
end;
/
