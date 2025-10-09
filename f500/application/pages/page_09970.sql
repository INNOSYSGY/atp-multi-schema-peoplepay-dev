prompt --application/pages/page_09970
begin
--   Manifest
--     PAGE: 09970
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
 p_id=>9970
,p_name=>'frmRefereeGradingApplicant'
,p_alias=>'FRMREFEREEGRADINGAPPLICANT'
,p_step_title=>'Create/Edit Applicant Referee Evaluation'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295018965991165)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}',
'.t-Report-report .pretius--strechReport {text-align:center}',
''))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670039366722453385)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4855121727078980887)
,p_plug_name=>'Responses'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    refrate_id,',
'    configrefdtl_question,',
'    configrefdtl_id,',
'    rating,',
'    entered_by,',
'    entry_date,',
'    last_changed_date,',
'    last_changed_by,',
'    SEQUENCE,',
'    OPEN_RESPONSE',
'FROM',
'    hr_rcm_referee_ratingdtl',
'    WHERE refrate_id=:P9970_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9970_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P9970_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855121926361980889)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855122078001980890)
,p_name=>'REFRATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFRATE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P9970_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855122133388980891)
,p_name=>'CONFIGREFDTL_QUESTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIGREFDTL_QUESTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855122254106980892)
,p_name=>'CONFIGREFDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIGREFDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Evaluation Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select questions,id',
'from HR_RCM_CONFIGREF_DTLS',
'where CONFIG_ID = :P9970_CONFIG_ID'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P9970_CONFIG_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855122336506980893)
,p_name=>'RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Response Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853822230051876605)
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
 p_id=>wwv_flow_imp.id(4855122491056980894)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
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
 p_id=>wwv_flow_imp.id(4855122519176980895)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(4855122637712980896)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(4855122745248980897)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(4855122887071980898)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855122947851980899)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4855123042625980900)
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
 p_id=>wwv_flow_imp.id(4860585970330555355)
,p_name=>'SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQUENCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sequence'
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4860586181286555357)
,p_name=>'OPEN_RESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN_RESPONSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Open response Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4855121826735980888)
,p_internal_uid=>2077337366304709717
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
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
 p_id=>wwv_flow_imp.id(4860478013580103041)
,p_interactive_grid_id=>wwv_flow_imp.id(4855121826735980888)
,p_static_id=>'18681'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4860478117437103042)
,p_report_id=>wwv_flow_imp.id(4860478013580103041)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4843473776344522869)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4860586181286555357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>277
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860478681169103043)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4855121926361980889)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860479184420103048)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4855122078001980890)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860479626802103052)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4855122133388980891)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860480176917103055)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4855122254106980892)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>406
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860480634220103061)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4855122336506980893)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860481179159103065)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4855122491056980894)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860481702705103068)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4855122519176980895)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860482188532103074)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4855122637712980896)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860482643439103078)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4855122745248980897)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860486520578110109)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4855122887071980898)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860486930293110112)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4855122947851980899)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4860591923047557212)
,p_view_id=>wwv_flow_imp.id(4860478117437103042)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4860585970330555355)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.993
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4855123223702980902)
,p_plug_name=>'Audit Record Verified by: &P9970_VERIFIED_BY.'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P9970_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4860448363172040213)
,p_plug_name=>'Create/Edit Applicant Referee Evaluation'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_REFEREE_RATING'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4972030894549633759)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5446014935221048764)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5247661482177072677)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(5446014935221048764)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'        select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'       union',
'       select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_apl_individual a ',
'     where id=:P9970_IND_ID',
'       union',
'      select 2 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'         union',
'     select 2 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_apl_individual a ',
'     where id=:P9970_IND_ID',
'         union',
'     select 3 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'         union',
'      select 3 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_apl_individual a ',
'     where a.id=:P9970_IND_ID',
'         union',
'     select 4 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'         union',
'      select 4 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_apl_individual a',
'     where id=:P9970_IND_ID',
'         union',
'     select 5 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'          union',
'     select 5 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_apl_individual ',
'     where id=:P9970_IND_ID',
'          union',
'     select 6 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'         union',
'     select 7 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'       union',
'     select 7 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_apl_individual a ',
'     where id=:P9970_IND_ID',
'       union',
'     select 8 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P9970_IND_ID',
'     union',
'     select 8 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a ',
'     where id=:P9970_IND_ID',
'     union',
'     select 9 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a',
'    where a.id=:P9970_IND_ID',
'    union',
'    select 10 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where a.id=:P9970_IND_ID',
'     union',
'    select 11 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a ',
'    where a.ID=:P9970_IND_ID',
'    union',
'   select 11 order_num, ''Gender:'' label, initcap(sex_code) label_value',
'    from hr_apl_individual a ',
'    where a.ID=:P9970_IND_ID',
'    union',
'    select 12 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) label_value',
'    from hr_rcm_individual a',
'    where a.ID=:P9970_IND_ID',
'    union',
'    select 13 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a',
'    where a.ID=:P9970_IND_ID',
'    union',
'     select 13 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY q_year desc) label_value',
'    FROM HR_apl_QUALIFICATION',
'    where applicant_id=a.id',
'    and rownum=1)label_value',
'    from hr_apl_individual a',
'    where a.ID=:P9970_IND_ID',
'    order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354835318422301409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354844727521301421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5247661482177072677)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP,1261:P1261_ID:&P9970_IND_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354835703545301409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:RP,9970::'
,p_button_condition=>'P9970_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354836100619301410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9970_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354836502419301410)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P9970_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354836953509301410)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9970_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3354837307645301411)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(670039366722453385)
,p_button_name=>'POPULATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Populate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9970_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3354851806316301429)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:9969:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3354836502419301410)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3354851455195301428)
,p_branch_name=>'Go To Page 9970'
,p_branch_action=>'f?p=&APP_ID.:9970:&SESSION.::&DEBUG.:9970:P9970_ID:&P9970_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354832582256301405)
,p_name=>'P9970_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354832971175301406)
,p_name=>'P9970_ENTRY_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354833402092301406)
,p_name=>'P9970_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354833781204301407)
,p_name=>'P9970_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354834179786301407)
,p_name=>'P9970_DATE_VERIFIED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Verified'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'DATE_VERIFIED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354834625490301408)
,p_name=>'P9970_LAST_CHANGED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4855123223702980902)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354837695730301411)
,p_name=>'P9970_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(3354838080001301412)
,p_name=>'P9970_CONFIG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_prompt=>'Configuration Rule'
,p_source=>'CONFIG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select config_name||'' Started :-''||start_date a, id',
'from HR_RCM_CONFIGREF',
'where org_id=:APP_ORG_ID',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3354838484254301412)
,p_name=>'P9970_DATE_OF_REFERENCE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Of Reference'
,p_source=>'DATE_OF_REFERENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3354838952239301413)
,p_name=>'P9970_IND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_prompt=>'Applicant'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(INDIVIDUAL||'' Int-Applicant '') label, to_number(x.id) ID',
'from vw_individual_only x Join hr_rcm_reference y on x.id = y.ind_id',
'where to_char(nvl(upper(x.email),''NULL'')) =case when fn_testEmpUser =0 then :APP_USER else  to_char(nvl(upper(x.email),''NULL'')) end',
'and IND_ORG_ID=:APP_ORG_ID',
'union',
'select to_char(surname||'', ''|| FIRST_NAME||'' DOB: ''||dob||'' ''||SEX_CODE||'':-''||MARITAL_CODE||''  Ext-Applicant '') label, to_number(a.id) ID',
'from HR_APL_INDIVIDUAL a join Hr_Apl_Reference ref on a.id = ref.applicant_id',
'where nvl(upper(ref.ref_email),''NULL'') =case when fn_testEmpUser =0 then :APP_USER else  nvl(upper(ref.ref_email),''NULL'') end',
'and exists (select 1 ',
'              from HR_APL_INDSECURITY B',
'              where  B.APPLICANT_ID = A.ID',
'              AND ORG_ID=:APP_ORG_ID)  ',
'and not exists(select 1',
'               from HR_RCM_INDIVIDUAL w',
'               where w.ext_applicant_id = a.id',
'               )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354839311189301413)
,p_name=>'P9970_REFEREE_FIRST_NAME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Referee Name'
,p_source=>'REFEREE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(INITCAP(x.SURNAME || '', '' || nvl(x.FIRST_NAME, ''''))||'' ''||nvl(x.MIDDLE_NAME,'''')||'':-''||CELL_PHONE',
'||'' (''||nvl(SEX_CODE,'''')||''):-''||nvl(PKG_GLOBAL_FNTS.Ind_status(x.id),'''')) a, y.id',
'FROM hr_rcm_individual X join hr_rcm_reference Y on x.id=ind_id',
'WHERE y.REFEREE_FOR=:P9970_IND_ID',
'AND to_char(nvl(upper(x.email),''NULL'')) =case when fn_testEmpUser =0 then :APP_USER else  to_char(nvl(upper(x.email),''NULL'')) end',
'union',
'select to_char(REF_surname||'', ''|| REF_FIRST_NAME||'':- ''||ref_cell) label, a.id',
'from HR_APL_REFERENCE a join HR_APL_INDIVIDUAL b on b.id = a.APPLICANT_ID',
'where exists (select 1 ',
'              from HR_APL_INDSECURITY c',
'              where  c.APPLICANT_ID = b.ID',
'              AND ORG_ID=:APP_ORG_ID)  ',
'and b.id =:P9970_IND_ID',
'AND nvl(upper(A.ref_email),''NULL'') =case when fn_testEmpUser =0 then :APP_USER else  nvl(upper(A.ref_email),''NULL'') end',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P9970_IND_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'These are individuals who has been stated as references for applicant.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354840236544301414)
,p_name=>'P9970_SUMMARY_RECOMMENDED_GRAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Summary Recommended Grade'
,p_source=>'SUMMARY_RECOMMENDED_GRADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REFEREE_APPROVAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREFERENCEAPPROVE'')) a',
'where org_id= :APP_ORG_SHR_DED',
'',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Not Currently Available--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354840584878301415)
,p_name=>'P9970_REMARKS_COMMENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks Comments'
,p_source=>'REMARKS_COMMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>3
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3354841011954301415)
,p_name=>'P9970_GENERAL_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'General Remarks'
,p_source=>'GENERAL_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cMaxlength=>50
,p_cHeight=>3
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
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354841436032301416)
,p_name=>'P9970_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
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
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354841804735301416)
,p_name=>'P9970_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and upper(Wfl_Status_Description) not like DECODE(:P9970_ID, NULL,''%VERI%'',''%test%'')               ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P9970_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P9970_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354842181074301417)
,p_name=>'P9970_COMENT_SWITCH'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
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
 p_id=>wwv_flow_imp.id(3354842570007301417)
,p_name=>'P9970_WORK_FLOW_COMMENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354842994123301418)
,p_name=>'P9970_APPLICANT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_item_source_plug_id=>wwv_flow_imp.id(4860448363172040213)
,p_use_cache_before_default=>'NO'
,p_source=>'REFEREE_FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3354843973820301419)
,p_name=>'P9970_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5446014935221048764)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a ',
    'where exists (select 1',
    '              from HR_RCM_REFEREE_RATING C ',
    '              where  C.ind_ID=a.ID',
    '              and c.id=:P9970_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3354847071810301424)
,p_name=>'ENABLE_DISABLE_OPEN_SEQUENCE'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4855121727078980887)
,p_triggering_element=>'RATING'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'RATING'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Open_Response'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354847603907301425)
,p_event_id=>wwv_flow_imp.id(3354847071810301424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPEN_RESPONSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354848114968301425)
,p_event_id=>wwv_flow_imp.id(3354847071810301424)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPEN_RESPONSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3354848460920301426)
,p_name=>'show_comments'
,p_event_sequence=>20
,p_condition_element=>'P9970_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354849030808301426)
,p_event_id=>wwv_flow_imp.id(3354848460920301426)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9970_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354849548002301427)
,p_event_id=>wwv_flow_imp.id(3354848460920301426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9970_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3354849932967301427)
,p_name=>'show_comment'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9970_COMENT_SWITCH'
,p_condition_element=>'P9970_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354850446956301428)
,p_event_id=>wwv_flow_imp.id(3354849932967301427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9970_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3354850922475301428)
,p_event_id=>wwv_flow_imp.id(3354849932967301427)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9970_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354845468627301422)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(4860448363172040213)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_RCM_REFEREE_RATING'
,p_internal_uid=>2711650918847693154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354845880425301423)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4860448363172040213)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_RCM_REFEREE_RATING'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2711651330645693155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354846267740301423)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3354836502419301410)
,p_internal_uid=>2711651717960693155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354831871760301404)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4855121727078980887)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Create/Edit Evaluators - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2711637321980693136
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354845134146301422)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POPULATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO hr_rcm_referee_ratingdtl (refrate_id, configrefdtl_question, configrefdtl_id, SEQUENCE)',
'SELECT :P9970_ID, QUESTIONS, ID,DISPLAY_SEQUENCE',
'FROM HR_RCM_CONFIGREF_DTLS',
'WHERE CONFIG_ID =:P9970_CONFIG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3354837307645301411)
,p_internal_uid=>2711650584366693154
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3354846672987301424)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'     v_full_name varchar2(100);',
'   ',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P9970_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P9970_STATUS;',
'',
'v_full_name :=:P9970_APPLICANT;',
'',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_full_name,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P9970_ID,',
'	v_description||'' ''||get_transaction||'' for applicant: ''||v_full_name,',
'	:P9970_STATUS,:APP_PAGE_ID,:P9970_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_REFEREE_RATING'',:P9970_WORK_FLOW_COMMENT,:P9970_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3354836100619301410)
,p_process_when=>'P9970_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>2711652123207693156
);
wwv_flow_imp.component_end;
end;
/
