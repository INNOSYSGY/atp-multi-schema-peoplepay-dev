prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_name=>'rptrpcoretimesheet'
,p_alias=>'RPTRPCORETIMESHEET'
,p_step_title=>'Procore timesheet'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134430077592637549)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134430737591637553)
,p_plug_name=>'Procore Timesheets'
,p_region_name=>'procore'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'PROCORE_TIMESHEET_IMPORT'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'to_date(work_date,''DD-MON-YYYY'') between :P245_PERIOD_START and :P245_PERIOD_END',
'AND FILENAME = NVL(:P245_FILE_NAME,FILENAME)'))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P245_PERIOD_START,P245_PERIOD_END'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Procore Timesheets'
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
 p_id=>wwv_flow_imp.id(134659596270207406)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134659648988207407)
,p_name=>'START_TIME__AMERICA_NEW_YORK_GMT__05_00_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME__AMERICA_NEW_YORK_GMT__05_00_'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Start Time America New York Gmt 05 00'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134659787320207408)
,p_name=>'STOP_TIME__AMERICA_NEW_YORK_GMT__05_00_'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOP_TIME__AMERICA_NEW_YORK_GMT__05_00_'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Stop Time America New York Gmt 05 00'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134659843607207409)
,p_name=>'LUNCH_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUNCH_START'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Lunch Start'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660009491207410)
,p_name=>'LUNCH_STOP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUNCH_STOP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Lunch Stop'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660080106207411)
,p_name=>'LUNCH_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUNCH_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Lunch Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660141189207412)
,p_name=>'TOTAL_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Time'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(134660327968207413)
,p_name=>'TIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Time Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(134660425346207414)
,p_name=>'TIME_TYPE_ABBREVIATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_TYPE_ABBREVIATION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Time Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description,id',
'from pa_pmg_sagecode_mapping'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(134660437653207415)
,p_name=>'BILLABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BILLABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Billable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660592801207416)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660725574207417)
,p_name=>'CLOCK_IN_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOCK_IN_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Clock In Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660793256207418)
,p_name=>'CLOCK_OUT_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOCK_OUT_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Clock Out Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660854137207419)
,p_name=>'SIGNATURE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGNATURE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Signature Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134660996883207420)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134661093857207421)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
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
 p_id=>wwv_flow_imp.id(134661135483207422)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134661280034207423)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Ent.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3038366748028033100)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(134661355363207424)
,p_name=>'EARNING_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNING_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'EarnPeriod'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if 1=0 THEN ',
'   return  ''select earn_description,id',
'                from vw_earnnotpaid ep'';',
'  else ',
'  return ''select earn_description, id',
'            from vw_earnall ep '';',
' end if;           '))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'EARNING_PERIOD_ID'
,p_ajax_items_to_submit=>'EARNING_PERIOD_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(134661524723207425)
,p_name=>'PERIOD_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD_START'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Period Start'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(134661544937207426)
,p_name=>'PERIOD_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD_END'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Period End'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(134661634518207427)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134661813361207428)
,p_name=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILENAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Filename'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(134661843289207429)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(134661960648207430)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>390
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(136062462477754344)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(136062535382754345)
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
 p_id=>wwv_flow_imp.id(152899382433612744)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152899459142612745)
,p_name=>'EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152899595106612746)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152899702358612747)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152899825707612748)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152899863714612749)
,p_name=>'CLASS_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Class Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152899944015612750)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152900035773612751)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(152900210217612752)
,p_name=>'SUB_JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_JOB'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Sub Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152900269251612753)
,p_name=>'SUB_JOB_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_JOB_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Sub Job Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152900421851612754)
,p_name=>'COST_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(152900440139612755)
,p_name=>'COST_CODE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CODE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Code Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(152899294205612743)
,p_internal_uid=>37115160349299038
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
 p_id=>wwv_flow_imp.id(134665339527208207)
,p_interactive_grid_id=>wwv_flow_imp.id(152899294205612743)
,p_static_id=>'188813'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(134665582780208209)
,p_report_id=>wwv_flow_imp.id(134665339527208207)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(115787354732322246)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(136062462477754344)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134666131946208216)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(152899382433612744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134667002486208225)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(152899459142612745)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134667920387208230)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(152899595106612746)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134668816505208234)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(152899702358612747)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134669678207208237)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(152899825707612748)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134670593254208240)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(152899863714612749)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134671448989208244)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(152899944015612750)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134672335406208247)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(152900035773612751)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96.51400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134673294517208250)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(152900210217612752)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134674210832208253)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(152900269251612753)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134674971986208256)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(152900421851612754)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134675909440208259)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(152900440139612755)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134676830396208263)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(134659596270207406)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134677684166208267)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(134659648988207407)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134678633199208270)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(134659787320207408)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134679528547208274)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(134659843607207409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134680337315208277)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(134660009491207410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134681266373208280)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(134660080106207411)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134682213086208283)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(134660141189207412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134683050150208287)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(134660327968207413)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134683945918208290)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(134660425346207414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134684914488208293)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(134660437653207415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134685831822208297)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(134660592801207416)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134686652505208300)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(134660725574207417)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134687602227208304)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(134660793256207418)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134688506835208307)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(134660854137207419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134689368360208311)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(134660996883207420)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134690237780208314)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(134661093857207421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134691232796208318)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(134661135483207422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134692124262208321)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(134661280034207423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.6565
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134692960704208324)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(134661355363207424)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134693920623208327)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(134661524723207425)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134694780295208331)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(134661544937207426)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134695664435208335)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(134661634518207427)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134696603701208338)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(134661813361207428)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134697457760208342)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(134661843289207429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134698395962208345)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(134661960648207430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(115784308625315477)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134661960648207430)
,p_show_grand_total=>false
,p_is_enabled=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(115784438032318133)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134661843289207429)
,p_show_grand_total=>true
,p_is_enabled=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(115784511404319351)
,p_view_id=>wwv_flow_imp.id(134665582780208209)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134660141189207412)
,p_show_grand_total=>true
,p_is_enabled=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(172280983087627661)
,p_interactive_grid_id=>wwv_flow_imp.id(152899294205612743)
,p_name=>'Procore Timesheet With EarningPeriod Column'
,p_static_id=>'376159'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(172281226340627663)
,p_report_id=>wwv_flow_imp.id(172280983087627661)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153402998292741700)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(136062462477754344)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172281775506627670)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(152899382433612744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172282646046627679)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(152899459142612745)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172283563947627684)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(152899595106612746)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172284460065627688)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(152899702358612747)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172285321767627691)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(152899825707612748)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172286236814627694)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(152899863714612749)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172287092549627698)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(152899944015612750)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172287978966627701)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(152900035773612751)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172288938077627704)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(152900210217612752)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172289854392627707)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(152900269251612753)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172290615546627710)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(152900421851612754)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172291553000627713)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(152900440139612755)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172292473956627717)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(134659596270207406)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172293327726627721)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(134659648988207407)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172294276759627724)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(134659787320207408)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172295172107627728)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(134659843607207409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172295980875627731)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(134660009491207410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172296909933627734)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(134660080106207411)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172297856646627737)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(134660141189207412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172298693710627741)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(134660327968207413)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172299589478627744)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(134660425346207414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172300558048627747)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(134660437653207415)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172301475382627751)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(134660592801207416)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172302296065627754)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(134660725574207417)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172303245787627758)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(134660793256207418)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172304150395627761)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(134660854137207419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172305011920627765)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(134660996883207420)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172305881340627768)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(134661093857207421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172306876356627772)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(134661135483207422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172307767822627775)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(134661280034207423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172308604264627778)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(134661355363207424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>525.2690456542969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172309564183627781)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(134661524723207425)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172310423855627785)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(134661544937207426)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172311307995627789)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(134661634518207427)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172312247261627792)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(134661813361207428)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172313101320627796)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(134661843289207429)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(172314039522627799)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(134661960648207430)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52.00654373168945
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(153399952185734931)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134661960648207430)
,p_show_grand_total=>false
,p_is_enabled=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(153400081592737587)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134661843289207429)
,p_show_grand_total=>true
,p_is_enabled=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(153400154964738805)
,p_view_id=>wwv_flow_imp.id(172281226340627663)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(134660141189207412)
,p_show_grand_total=>true
,p_is_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134662397198207434)
,p_plug_name=>'Sage Code Mapping'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'PA_PMG_SAGECODE_MAPPING'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sage Code Mapping'
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
 p_id=>wwv_flow_imp.id(134662596186207436)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(134662655314207437)
,p_name=>'SAGE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAGE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sage Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(134662764563207438)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(134663010968207440)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(134663092553207441)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(134663158054207442)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(134663255642207443)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(134663369096207444)
,p_name=>'DEDUCTION_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_CODE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Deduction Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326617330175913802)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Deduction Code--'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
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
 p_id=>wwv_flow_imp.id(134663495376207445)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326548349276798356)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Income Code--'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
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
 p_id=>wwv_flow_imp.id(134663547815207446)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(134663672807207447)
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
 p_id=>wwv_flow_imp.id(134662493944207435)
,p_internal_uid=>18878360087893730
,p_is_editable=>true
,p_edit_operations=>'i:d'
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
 p_id=>wwv_flow_imp.id(134734459952297436)
,p_interactive_grid_id=>wwv_flow_imp.id(134662493944207435)
,p_static_id=>'189504'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(134734643365297437)
,p_report_id=>wwv_flow_imp.id(134734459952297436)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134735203318297440)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(134662596186207436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134736060950297443)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(134662655314207437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134736951701297447)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(134662764563207438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134737900389297450)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(134663010968207440)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134738794254297453)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(134663092553207441)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134739566307297456)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(134663158054207442)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134740483954297459)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(134663255642207443)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134741380667297463)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(134663369096207444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134742324406297466)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(134663495376207445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(134744044788300405)
,p_view_id=>wwv_flow_imp.id(134734643365297437)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(134663547815207446)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>50
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134663929035207449)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144184524841649523)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(134430737591637553)
,p_button_name=>'MAP_EARNING_PERIOD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--primary:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Map Earning Period'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152897962137612730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(134430077592637549)
,p_button_name=>'UPLOAD_TIMESHEET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Upload Timesheet'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:11200:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152898584336612736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(134430077592637549)
,p_button_name=>'MAP_ENTITLEMENTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Map Entitlements'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134664503159207455)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(134430077592637549)
,p_button_name=>'LOAD_TO_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load To Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134772275043333050)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(134430077592637549)
,p_button_name=>'PURGE_FROM_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge From Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from pa_pcf_adhocpayment ',
'where earnings_period_id = :P245_EARNINGPERIOD and procore_t_id is not null;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136058724102754306)
,p_name=>'P245_FILE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(134430737591637553)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct filename d ,filename r',
'from procore_timesheet_import ',
'where trunc(work_date) between :P245_PERIOD_START and :P245_PERIOD_END '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Uploaded File--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152898063938612731)
,p_name=>'P245_PERIOD_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134430737591637553)
,p_item_default=>'TRUNC(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152898162976612732)
,p_name=>'P245_PERIOD_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134430737591637553)
,p_item_default=>'current_date - 31'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152898530456612735)
,p_name=>'P245_EARNINGPERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(134430737591637553)
,p_prompt=>'Earningperiod'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT earn_description, id',
'FROM vw_earnnotpaid ep',
'WHERE start_paid_for BETWEEN :P245_PERIOD_START AND :P245_PERIOD_END',
'ORDER BY start_paid_for DESC',
'',
'',
'-- where exists (select 1 ',
'--                 from procore_timesheet_import',
'--                  where earning_period_id = ep.id ',
'--                  and work_date between :P245_PERIOD_START and :P245_PERIOD_END',
'                 ',
'--                  );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_lov_cascade_parent_items=>'P245_PERIOD_START,P245_PERIOD_END'
,p_ajax_items_to_submit=>'P245_PERIOD_START,P245_PERIOD_END'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152898297686612733)
,p_name=>'dyrefreshdates'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_PERIOD_START,P245_PERIOD_END'
,p_condition_element=>'P245_PERIOD_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152898396787612734)
,p_event_id=>wwv_flow_imp.id(152898297686612733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134430737591637553)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136058740786754307)
,p_event_id=>wwv_flow_imp.id(152898297686612733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P245_FILE_NAME'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134664210824207452)
,p_name=>'setvalue'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(134430737591637553)
,p_triggering_element=>'TIME_TYPE_ABBREVIATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134664274999207453)
,p_event_id=>wwv_flow_imp.id(134664210824207452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TIME_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description',
'from pa_pmg_sagecode_mapping where id = :TIME_TYPE_ABBREVIATION'))
,p_attribute_07=>'TIME_TYPE_ABBREVIATION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136059009742754309)
,p_name=>'refresh_region1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_FILE_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136059132445754310)
,p_event_id=>wwv_flow_imp.id(136059009742754309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134430737591637553)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152898668210612737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'procresstimesheets'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for i in (',
'select ip.id, ',
'employee, full_name, ',
'        employee_id, emp_company_no,-- ep.id epid, ',
'        e.id emp_id,work_date,--start_date,',
'        --end_date, --start_paid_for,end_paid_for,',
'        (select (et.id)',
'            from hr_rcm_empentitle et',
'            join pa_pcf_incomecode ic on et.income_code_id = ic.id ',
'            where et.end_date is null and et.emp_id = e.id',
'            and et.income_code_id in (select to_number(description) from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => ( select income_code_id',
'            from pa_pmg_sagecode_mapping where sage_code = ip.time_type_abbreviation)',
'            ,in_delimiter => '':'')))',
'            order by description asc',
'             FETCH FIRST 1 ROW ONLY',
'            ) entitlement',
', pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_ID',
'                                             ,in_emp_id => e.id',
'                                             ,in_entitlement => (select (et.id)',
'                                                                    from hr_rcm_empentitle et',
'                                                                    join pa_pcf_incomecode ic on et.income_code_id = ic.id ',
'                                                                    where et.end_date is null and et.emp_id = e.id',
'                                                                    and et.income_code_id in (select to_number(description) from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => ( select income_code_id',
'                                                                    from pa_pmg_sagecode_mapping where sage_code = ip.time_type_abbreviation)',
'                                                                    ,in_delimiter => '':'')))',
'                                                                    order by description asc',
'                                                                     FETCH FIRST 1 ROW ONLY',
'                                                                    )',
'                                             ,in_deduct_code => null',
'                                             ,in_start_date => ip.work_date ) rate',
'',
'',
'from (select * from procore_timesheet_import where work_date between :P245_PERIOD_START and :P245_PERIOD_END) ip ',
'join hr_rcm_employee e on to_char(ip.employee_id) = ltrim(e.emp_company_no,''0'')',
'-- join pa_pcf_earningperiod ep on (e.employment_class_id = ep.employment_class_id ',
'--                                 and e.compute_gross = ep.compute_gross ',
'--                                 and e.org_id = ep.org_id ',
'--                                 and e.payment_type = ep.payment_type)',
'--where work_date between ep.start_paid_for and ep.end_paid_for',
'',
') loop',
'',
'',
'',
'',
'                    update procore_timesheet_import',
'                    set emp_id = i.emp_id',
'                    --, earning_period_id = i.epid',
'                    -- ,period_start = i.start_date',
'                    -- ,period_end = i.end_date',
'                    ,empent_id = i.entitlement',
'                    ,rate = i.rate',
'                    ,amount = i.rate * total_time',
'                    where id = i.id;',
'',
'    end loop;',
'end;',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(152898584336612736)
,p_internal_uid=>37114534354299032
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134663738671207448)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(134662397198207434)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Sage Code Mapping - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>18879604814893743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134664386767207454)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'loadtoadhocpayroll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'MERGE INTO pa_pcf_adhocpayment dest',
'USING (',
'    SELECT ',
'        ti.emp_id,',
'        empent_id,',
'        period_start,',
'        period_end,',
'        SUM(total_time) AS total_time,',
'        ROUND(SUM(ti.amount) / SUM(total_time), 2) AS rate,',
'        SUM(ti.amount) AS amount,',
'        earning_period_id,',
'        LISTAGG(ti.id, '','') WITHIN GROUP (ORDER BY ti.id) AS pid,',
'        MAX(income_code_id) AS income_code_id',
'    FROM ',
'        PROCORE_TIMESHEET_IMPORT ti',
'    JOIN ',
'        hr_rcm_empentitle et ON ti.empent_id = et.id',
'    WHERE ',
'        earning_period_id = :P245_EARNINGPERIOD',
'    GROUP BY ',
'        ti.emp_id, empent_id, earning_period_id, period_start, period_end',
') src ON (dest.empent_id = src.empent_id and dest.earnings_period_id = src.earning_period_id)',
'WHEN MATCHED THEN',
'    UPDATE SET',
'        dest.rate = src.rate,',
'        dest.quantity = src.total_time,',
'        dest.amount_paid = src.amount,',
'        dest.procore_t_id = src.pid',
'WHEN NOT MATCHED THEN',
'    INSERT (',
'        emp_id,',
'        empent_id,',
'        start_period_paid,',
'        end_period_paid,',
'        rate,',
'        quantity,',
'        amount_paid,',
'        earnings_period_id,',
'        procore_t_id,',
'        ADHOC_INC_CODE_ID',
'    ) VALUES (',
'        src.emp_id,',
'        src.empent_id,',
'        src.period_start,',
'        src.period_end,',
'        src.rate,',
'        src.total_time,',
'        src.amount,',
'        src.earning_period_id,',
'        src.pid,',
'        src.income_code_id',
'    );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully loaded timesheet records to payroll postings.'
,p_internal_uid=>18880252910893749
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134772423833333051)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'deletefrompayroll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from pa_pcf_adhocpayment ',
'where earnings_period_id = :P245_EARNINGPERIOD',
'and procore_t_id is not null',
'and pay_status = ''N'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(134772275043333050)
,p_process_success_message=>'Successfully purged records from payroll postings.'
,p_internal_uid=>18988289977019346
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(136062664769754346)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(134430737591637553)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Procore Timesheets - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20278530913440641
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144184617061649524)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(134430737591637553)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'map_earningperiod'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'for i in (',
'select ip.id,ep.id earningperiodid',
'from (select * from procore_timesheet_import where work_date between :P245_PERIOD_START and :P245_PERIOD_END and  FILENAME = NVL(:P245_FILE_NAME,FILENAME)) ip ',
'join hr_rcm_employee e on to_char(ip.employee_id) = ltrim(e.emp_company_no,''0'')',
'join pa_pcf_earningperiod ep on (e.employment_class_id = ep.employment_class_id ',
'                                and e.compute_gross = ep.compute_gross ',
'                                and e.org_id = ep.org_id ',
'                                and e.payment_type = ep.payment_type)',
'where work_date between ep.start_paid_for and ep.end_paid_for',
'and ep.id = nvl(:P245_EARNINGPERIOD,ep.id)',
'and not exists (select 1 from pa_pcf_adhocpayment ',
'                where ip.id  in (select to_number(description) ',
'                    from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => procore_t_id',
'                                        ,in_delimiter => '',''))) )) loop',
'',
'',
'update PROCORE_TIMESHEET_IMPORT',
'set earning_period_id = i.earningperiodid',
'where id = i.id;',
'',
'end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Earning Period Mapping Successful'
,p_internal_uid=>28400483205335819
);
wwv_flow_imp.component_end;
end;
/
