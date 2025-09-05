prompt --application/pages/page_01407
begin
--   Manifest
--     PAGE: 01407
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
 p_id=>1407
,p_name=>'frmInsuranceCategory'
,p_step_title=>'Create/Edit Insurance Classifications'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885332136703809)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142632193900158854)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>35
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3007807201856341127)
,p_plug_name=>'Create/Edit Insurance Classifications Detail (Enter Decimal Percentages e.g. 0.75 for 75%)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"CATEGORY_ID",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"NO_OF_CHILDREN",',
'"EMPLOYEE_CONTRIBUTION_PER",',
'"EMPLOYEE_SPOUSE_PER",',
'"EMPLOYEE_CHILD_PER",',
'"EMPLOYEE_RELATIVE_PER",',
'"EMPLOYER_CONTRIBUTION_PER",',
'"EMPLOYER_SPOUSE_PER",',
'"EMPLOYER_CHILD_PER",',
'"EMPLOYER_RELATIVE_PER",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"ENTERED_BY",',
'"ENTRY_DATE"',
'from "HR_MED_INSURANCECATGRYDTL"',
'where "CATEGORY_ID" = :P1407_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1407_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Create/Edit Insurance Classifications Detail (Enter Decimal Percentages e.g. 0.75 for 75%)'
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
 p_id=>wwv_flow_imp.id(3007807376791341129)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3007807462072341130)
,p_name=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_ID'
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
,p_default_expression=>'P1407_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3007807747051341133)
,p_name=>'NO_OF_CHILDREN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_CHILDREN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No Of Children'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3025610917038554784)
,p_name=>'EMPLOYEE_CONTRIBUTION_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_CONTRIBUTION_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Empl Contribution %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(3025610976681554785)
,p_name=>'EMPLOYEE_SPOUSE_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_SPOUSE_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Empl Spouse %'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3025611078366554786)
,p_name=>'EMPLOYEE_CHILD_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_CHILD_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Empl Child %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3025611214742554787)
,p_name=>'EMPLOYEE_RELATIVE_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_RELATIVE_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Empl Relative %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3025611323720554788)
,p_name=>'EMPLOYER_CONTRIBUTION_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYER_CONTRIBUTION_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emplr Contribution %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3025611369310554789)
,p_name=>'EMPLOYER_SPOUSE_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYER_SPOUSE_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emplr Spouse %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3025611485245554790)
,p_name=>'EMPLOYER_CHILD_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYER_CHILD_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emplr Child %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3025611639882554791)
,p_name=>'EMPLOYER_RELATIVE_PER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYER_RELATIVE_PER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emplr Relative %'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3025611716785554792)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3025611775711554793)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(3025611888611554794)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(3025611980461554795)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(3025612114591554796)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3025612231063554797)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3007807317534341128)
,p_internal_uid=>367176977115525045
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
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
 p_id=>wwv_flow_imp.id(3025616715180555606)
,p_interactive_grid_id=>wwv_flow_imp.id(3007807317534341128)
,p_static_id=>'3849864'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3025616935445555607)
,p_report_id=>wwv_flow_imp.id(3025616715180555606)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025617374482555610)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3007807376791341129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025618285843555614)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3007807462072341130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025620959531555624)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3007807747051341133)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025621934931555627)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3025610917038554784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025622746610555631)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3025610976681554785)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025623720903555635)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3025611078366554786)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025624571299555640)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3025611214742554787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025625450039555644)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3025611323720554788)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025626355228555648)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3025611369310554789)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025627241333555651)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3025611485245554790)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025628206168555654)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3025611639882554791)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025629059128555658)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3025611716785554792)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025629946285555661)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3025611775711554793)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025630851116555664)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3025611888611554794)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025631702393555667)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3025611980461554795)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3025634026134557330)
,p_view_id=>wwv_flow_imp.id(3025616935445555607)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3025612114591554796)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3209708172489378632)
,p_name=>'Create/Edit Insurance Classifications Detail (Enter Decimal Percentages e.g. 0.75 for 75%)'
,p_template=>4072358936313175081
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"CATEGORY_ID",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"NO_OF_CHILDREN",',
'"EMPLOYEE_CONTRIBUTION_PER",',
'"EMPLOYEE_SPOUSE_PER",',
'"EMPLOYEE_CHILD_PER",',
'"EMPLOYEE_RELATIVE_PER",',
'"EMPLOYER_CONTRIBUTION_PER",',
'"EMPLOYER_SPOUSE_PER",',
'"EMPLOYER_CHILD_PER",',
'"EMPLOYER_RELATIVE_PER",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"ENTERED_BY",',
'"ENTRY_DATE"',
'from "#OWNER#"."HR_MED_INSURANCECATGRYDTL"',
'where "CATEGORY_ID" = :P1407_ID',
''))
,p_display_condition_type=>'NEVER'
,p_header=>'<div style="overflow:auto;">'
,p_footer=>'</div>'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_imp.id(3301026173675923487)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301025790312923487)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301025323136923486)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Category Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P1407_ID'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'CATEGORY_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301024947153923486)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>4
,p_column_heading=>'Machine Insert'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'MACHINE_INSERT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301024541479923486)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Machine Update'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'MACHINE_UPDATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301024158496923486)
,p_query_column_id=>6
,p_column_alias=>'NO_OF_CHILDREN'
,p_column_display_sequence=>6
,p_column_heading=>'Children'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'NO_OF_CHILDREN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301023801245923484)
,p_query_column_id=>7
,p_column_alias=>'EMPLOYEE_CONTRIBUTION_PER'
,p_column_display_sequence=>7
,p_column_heading=>'Emp Cont''btn%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYEE_CONTRIBUTION_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301023339165923484)
,p_query_column_id=>8
,p_column_alias=>'EMPLOYEE_SPOUSE_PER'
,p_column_display_sequence=>8
,p_column_heading=>'Emp Spouse%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYEE_SPOUSE_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301022979047923484)
,p_query_column_id=>9
,p_column_alias=>'EMPLOYEE_CHILD_PER'
,p_column_display_sequence=>9
,p_column_heading=>'Emp Child%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYEE_CHILD_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301022562400923484)
,p_query_column_id=>10
,p_column_alias=>'EMPLOYEE_RELATIVE_PER'
,p_column_display_sequence=>10
,p_column_heading=>'Emp Rel%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYEE_RELATIVE_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301022107059923482)
,p_query_column_id=>11
,p_column_alias=>'EMPLOYER_CONTRIBUTION_PER'
,p_column_display_sequence=>11
,p_column_heading=>'Emplr Cont''btn%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYER_CONTRIBUTION_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301021771047923482)
,p_query_column_id=>12
,p_column_alias=>'EMPLOYER_SPOUSE_PER'
,p_column_display_sequence=>12
,p_column_heading=>'Emplr Spouse%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYER_SPOUSE_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301021325593923481)
,p_query_column_id=>13
,p_column_alias=>'EMPLOYER_CHILD_PER'
,p_column_display_sequence=>13
,p_column_heading=>'Emplr Child%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYER_CHILD_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301021003883923480)
,p_query_column_id=>14
,p_column_alias=>'EMPLOYER_RELATIVE_PER'
,p_column_display_sequence=>14
,p_column_heading=>'Emplr Rel%'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_column_default=>'0'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'EMPLOYER_RELATIVE_PER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301020572641923480)
,p_query_column_id=>15
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'Last Chg By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'LAST_CHANGED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301020198046923479)
,p_query_column_id=>16
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'Last Chg Date'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'LAST_CHANGED_DATE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301019763340923479)
,p_query_column_id=>17
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>17
,p_column_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'ENTERED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3301019343177923478)
,p_query_column_id=>18
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>18
,p_column_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_MED_INSURANCECATGRYDTL'
,p_ref_column_name=>'ENTRY_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3209723688247378715)
,p_plug_name=>'Create/Edit Insurance Classifications'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3209695987775981502)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_template=>2664334895415463485
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_MED_INSURANCECATGRY',
'where  id = :P1407_ID'))
,p_display_when_condition=>'P1407_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1407_ID'
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
 p_id=>wwv_flow_imp.id(159228684694480139)
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
 p_id=>wwv_flow_imp.id(159228820130480140)
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
 p_id=>wwv_flow_imp.id(159228884885480141)
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
 p_id=>wwv_flow_imp.id(159229018702480142)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159229110197480143)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159229203838480144)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301018576787923478)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3209708172489378632)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."HR_MED_INSURANCECATGRYDTL"',
'where "CATEGORY_ID" = :P1407_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301042729114923516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301018969670923478)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3209708172489378632)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Row'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301039518808923513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301040005239923513)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:1407::'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301040319046923514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301040767284923514)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1407_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301041121396923514)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1407_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301041585589923515)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301041969145923515)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301042400093923516)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(142632193900158854)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1407_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301005008658923461)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.:1407::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301040319046923514)
,p_branch_sequence=>9
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301006633154923463)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1406:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301042400093923516)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301006250281923462)
,p_branch_action=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.::P1407_ID:&P1407_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301040767284923514)
,p_branch_sequence=>11
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301007410784923464)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY_ID,P129_RETURN_VALUE:101,FRMINSURANCECATEGORY,&P1407_ID.,1407'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301039518808923513)
,p_branch_sequence=>15
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1407_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301007029276923463)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1407_DOC_EXIST.,1407'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301039518808923513)
,p_branch_sequence=>16
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1407_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301005833528923462)
,p_branch_action=>'f?p=&APP_ID.:1407:&SESSION.::&DEBUG.::P1407_ID:&P1407_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301041121396923514)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301005489842923462)
,p_branch_action=>'f?p=&APP_ID.:1407:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301026830581923489)
,p_name=>'P1407_DOC_EXIST'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3209695987775981502)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1407_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301027252315923491)
,p_name=>'P1407_MACHINE_UPDATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3209695987775981502)
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
 p_id=>wwv_flow_imp.id(3301027671119923491)
,p_name=>'P1407_MACHINE_INSERT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3209695987775981502)
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
 p_id=>wwv_flow_imp.id(3301028447998923492)
,p_name=>'P1407_VERIFIED_BY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3209695987775981502)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301030721081923496)
,p_name=>'P1407_ID_PREV'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301031116958923496)
,p_name=>'P1407_ID_NEXT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301031565089923496)
,p_name=>'P1407_ID_COUNT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301031968838923496)
,p_name=>'P1407_SALARY_PERCENT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Salary Percent'
,p_source=>'SALARY_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3301032382120923498)
,p_name=>'P1407_STATUS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'and upper(Wfl_Status_Description) not like DECODE(:P1407_ID, NULL,''%VERI%'',''test'')   ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1407_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1407_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301032799762923499)
,p_name=>'P1407_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
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
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301033128630923499)
,p_name=>'P1407_END_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3301033532687923500)
,p_name=>'P1407_START_DATE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3301033935284923500)
,p_name=>'P1407_LEDGER_CODE_EMPLR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ledger Code Employer'
,p_source=>'LEDGER_CODE_EMPLR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode a',
'where  trunc(start_date) <= trunc(current_date)',
'AND (TRUNC(END_DATE) IS NULL OR END_DATE >= TRUNC(current_date))',
'and account_code_emplr is not null',
'and org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301034857602923505)
,p_name=>'P1407_CONSISTENT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_source=>'CONSISTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Consistent means that payment are not influenced by the number of children.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301035241418923506)
,p_name=>'P1407_LEDGER_CODE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_prompt=>'Ledger Code'
,p_source=>'LEDGER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode a',
'where  trunc(start_date) <= trunc(current_date)',
'AND (TRUNC(END_DATE) IS NULL OR END_DATE >= TRUNC(current_date))',
'and GROUP_MED = 1',
'and a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301035704470923506)
,p_name=>'P1407_MEDICAL_EXPENSES'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Medical Expenses'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'MEDICAL_EXPENSES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>19
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301036044247923507)
,p_name=>'P1407_DISABLEMENT_COVERAGE'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Disablement Coverage'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'DISABLEMENT_COVERAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>19
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301036491181923507)
,p_name=>'P1407_DEATH_COVERAGE_SUM'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Death Coverage Sum'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'DEATH_COVERAGE_SUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>19
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301036813752923507)
,p_name=>'P1407_CONTRIBUTION_RELATIVE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Contribution Relative'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'CONTRIBUTION_RELATIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301037249315923508)
,p_name=>'P1407_CONTRIBUTION_SPOUSE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Contribution Spouse'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'CONTRIBUTION_SPOUSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301037645149923508)
,p_name=>'P1407_CONTRIBUTION_CHILD'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Contribution Child'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'CONTRIBUTION_CHILD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301038105979923509)
,p_name=>'P1407_CONTRIBUTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Employee Contribution'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'CONTRIBUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301038437708923509)
,p_name=>'P1407_CATEGORY_DESCRIP'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Description'
,p_source=>'CATEGORY_DESCRIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>35
,p_cMaxlength=>400
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301038817996923510)
,p_name=>'P1407_CATEGORY_CODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Code'
,p_source=>'CATEGORY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301039122236923512)
,p_name=>'P1407_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318553597493138251)
,p_name=>'P1407_COMENT_SWITCH'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3318553905782142229)
,p_name=>'P1407_WORK_FLOW_COMMENT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3209723688247378715)
,p_prompt=>'<font color="purple" size="2"><b> Work Flow Notes</b></font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301017660729923477)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'NO_OF_CHILDREN must be numeric'
,p_validation_sequence=>50
,p_validation=>'NO_OF_CHILDREN'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'NO_OF_CHILDREN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301018011828923478)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'NO_OF_CHILDREN not null'
,p_validation_sequence=>50
,p_validation=>'NO_OF_CHILDREN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'NO_OF_CHILDREN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301016817768923475)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_CONTRIBUTION_PER must be numeric'
,p_validation_sequence=>60
,p_validation=>'EMPLOYEE_CONTRIBUTION_PER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_CONTRIBUTION_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301017232551923475)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_CONTRIBUTION_PER not null'
,p_validation_sequence=>60
,p_validation=>'EMPLOYEE_CONTRIBUTION_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_CONTRIBUTION_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301016077580923475)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_SPOUSE_PER must be numeric'
,p_validation_sequence=>70
,p_validation=>'EMPLOYEE_SPOUSE_PER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_SPOUSE_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301016460822923475)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_SPOUSE_PER not null'
,p_validation_sequence=>70
,p_validation=>'EMPLOYEE_SPOUSE_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_SPOUSE_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301015286724923474)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_CHILD_PER must be numeric'
,p_validation_sequence=>80
,p_validation=>'EMPLOYEE_CHILD_PER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_CHILD_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301015679280923475)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_CHILD_PER not null'
,p_validation_sequence=>80
,p_validation=>'EMPLOYEE_CHILD_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_CHILD_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301014438098923474)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_RELATIVE_PER must be numeric'
,p_validation_sequence=>90
,p_validation=>'EMPLOYEE_RELATIVE_PER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_RELATIVE_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301014811683923474)
,p_tabular_form_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_validation_name=>'EMPLOYEE_RELATIVE_PER not null'
,p_validation_sequence=>90
,p_validation=>'EMPLOYEE_RELATIVE_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'EMPLOYEE_RELATIVE_PER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301012893915923471)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>91
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1407_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301012017144923471)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1407_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1407_ID, :P1407_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3301012424101923471)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>111
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1407_END_DATE) < TO_DATE(:P1407_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3301013206943923472)
,p_validation_name=>'chk_cntrib_value_salary_per'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P1407_SALARY_PERCENT is null and :P1407_CONTRIBUTION= ''$0'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot select percent of salary and have a contribution about or vice versa.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3301008996591923466)
,p_name=>'set_enable_disable'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1407_SALARY_PERCENT'
,p_condition_element=>'P1407_SALARY_PERCENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3301008475146923465)
,p_event_id=>wwv_flow_imp.id(3301008996591923466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_CONTRIBUTION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3301007981597923464)
,p_event_id=>wwv_flow_imp.id(3301008996591923466)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_CONTRIBUTION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3318554155855145538)
,p_name=>'show_comments'
,p_event_sequence=>20
,p_condition_element=>'P1407_COMENT_SWITCH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3318554568286145544)
,p_event_id=>wwv_flow_imp.id(3318554155855145538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3318555055895145547)
,p_event_id=>wwv_flow_imp.id(3318554155855145538)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3318555457494147970)
,p_name=>'show_comment'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1407_COMENT_SWITCH'
,p_condition_element=>'P1407_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3318555849589147971)
,p_event_id=>wwv_flow_imp.id(3318555457494147970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3318556305857147971)
,p_event_id=>wwv_flow_imp.id(3318555457494147970)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1407_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301010910366923470)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_MED_INSURANCECATGRY'
,p_attribute_02=>'HR_MED_INSURANCECATGRY'
,p_attribute_03=>'P1407_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_internal_uid=>3185226776510609765
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301009770675923468)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_MED_INSURANCECATGRY'
,p_attribute_03=>'P1407_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'CATEGORY_DESCRIP'
,p_attribute_09=>'P1407_ID_NEXT'
,p_attribute_10=>'P1407_ID_PREV'
,p_attribute_13=>'P1407_ID_COUNT'
,p_attribute_14=>'ORG_ID=:APP_ORG_ID'
,p_internal_uid=>3185225636819609763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301011729889923470)
,p_process_sequence=>8
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1407_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
' :P1407_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P1407_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P1407_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3185227596033609765
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301011361960923470)
,p_process_sequence=>9
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1407_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P1407_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P1407_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301041969145923515)
,p_internal_uid=>3185227228104609765
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301010541921923468)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_MED_INSURANCECATGRY'
,p_attribute_02=>'HR_MED_INSURANCECATGRY'
,p_attribute_03=>'P1407_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1407_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3185226408065609763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301014182423923473)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HR_MED_INSURANCECATGRYDTL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>3185230048567609768
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301013799269923473)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3209708172489378632)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HR_MED_INSURANCECATGRYDTL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>3185229665413609768
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301010163805923468)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301042400093923516)
,p_internal_uid=>3185226029949609763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301009388429923467)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1407_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1407_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1407_CATEGORY_DESCRIP,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1407_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||'' Insurance Category'',',
'	:P1407_STATUS,:APP_PAGE_ID,:P1407_TRANSACTION_TYPE_ID,',
'        ''HR_MED_INSURANCECATGRY'',:P1407_WORK_FLOW_COMMENT, :P1407_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301041969145923515)
,p_process_when=>'P1407_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3185225254573609762
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3025612293305554798)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3007807201856341127)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Create/Edit Insurance Classifications Detail (Enter Decimal Percentages e.g. 0.75 for 75%) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2909828159449241093
);
wwv_flow_imp.component_end;
end;
/
