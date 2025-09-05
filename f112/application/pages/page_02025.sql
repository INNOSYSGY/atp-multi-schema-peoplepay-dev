prompt --application/pages/page_02025
begin
--   Manifest
--     PAGE: 02025
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
 p_id=>2025
,p_name=>'frmwizPayReq'
,p_step_title=>'Payroll Requirements'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307675808314514406)
,p_plug_name=>'Company Year'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>32
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"PAYMENT_TYPE",',
'"ORG_ID",',
'"COMPANY_YEAR",',
'"START_YEAR",',
'"END_YEAR",',
'"ENTRY_DATE",',
'"ENTERED_BY",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE"',
'from "#OWNER#"."HR_HCF_COMPANYYEAR" x',
'where  exists (select 1',
'               from vw_useraccess v',
'               where x.ORG_ID = v.org_id',
'               and x.payment_type = v.payment_type',
'               and ORG_ID = :APP_ORG_ID)'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3304649150569638663)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_ORG_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3304649259689638664)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3304649311776638665)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3304649486293638666)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last changed date'
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
 p_id=>wwv_flow_imp.id(3304649510939638667)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last changed by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3304649686187638668)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3304649758952638669)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry date'
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
 p_id=>wwv_flow_imp.id(3304649843844638670)
,p_name=>'END_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_YEAR'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Year'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3304650076057638672)
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
 p_id=>wwv_flow_imp.id(3304650110364638673)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3304650297783638674)
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
 p_id=>wwv_flow_imp.id(3304651008036638682)
,p_name=>'START_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_YEAR'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start year'
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
 p_id=>wwv_flow_imp.id(3304651183124638683)
,p_name=>'COMPANY_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Company year'
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
 p_id=>wwv_flow_imp.id(3304651292286638684)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Payment type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3297921391420761695)
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
 p_id=>wwv_flow_imp.id(3304651454291638686)
,p_name=>'ID_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_DISPLAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(3304651509054638687)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3304651642565638688)
,p_internal_uid=>42179664239666012
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
 p_id=>wwv_flow_imp.id(3304601857930508436)
,p_interactive_grid_id=>wwv_flow_imp.id(3304651642565638688)
,p_static_id=>'18393'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3304601731135508436)
,p_report_id=>wwv_flow_imp.id(3304601857930508436)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304578397948449762)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3304649150569638663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304578905012449764)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3304649259689638664)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304579364747449766)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3304649311776638665)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304579900625449768)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3304649486293638666)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304580317408449770)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3304649510939638667)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304580868967449772)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3304649686187638668)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304581373042449774)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3304649758952638669)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304586247323493440)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3304649843844638670)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304594217095508384)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3304650110364638673)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304594716193508387)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3304650297783638674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304598766725508412)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3304651008036638682)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304599247901508416)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3304651183124638683)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304599734772508419)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3304651292286638684)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304600728238508427)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3304651454291638686)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3304601266863508432)
,p_view_id=>wwv_flow_imp.id(3304601731135508436)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3304651509054638687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307963736552149462)
,p_plug_name=>'Create/Edit Tax Rate'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307949777328149454)
,p_plug_name=>'Generate Tax'
,p_parent_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>11
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307984408843157393)
,p_plug_name=>'Create/Edit  NIB/SS Rates'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_NISRATE'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307968198793157383)
,p_plug_name=>'Generate NIS'
,p_parent_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>11
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3308061418160652902)
,p_plug_name=>'wizregion'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3326865073491208094)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3308069519926994421)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>8
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'Once you have license the payroll module, data must be entered for both NIS/TAX computations. The company year is necessary for all modules, be sure to create a company year.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325721593023258733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3307675808314514406)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2025:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325729523488258761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3307949777328149454)
,p_button_name=>'P2025_GENERATE_BTN_TAX'
,p_button_static_id=>'P1314_GENERATE_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate TAX'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325742303282258778)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3307968198793157383)
,p_button_name=>'P2025_GENERATE_BTN_NIS'
,p_button_static_id=>'P1313_GENERATE_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate NIS'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325755666428258801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2020:&SESSION.::&DEBUG.::P2020_ID:&APP_ORG_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325722333739258735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3307675808314514406)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325754473431258799)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325722003411258734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3307675808314514406)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325740671509258775)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_button_name=>'SAVE_TAX'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P2025_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325754851034258800)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325721160332258733)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3307675808314514406)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325740218458258775)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_button_name=>'CREATE_TAX'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P2025_ID_1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325756075135258801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_button_name=>'SAVE_NIS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P2025_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325755277282258800)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_button_name=>'CREATE_NIS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P2025_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325712655302258717)
,p_branch_action=>'f?p=&APP_ID.:2025:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325722003411258734)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325713098877258718)
,p_branch_name=>'Go To Page 2022'
,p_branch_action=>'f?p=&APP_ID.:2022:&SESSION.::&DEBUG.::P2022_ID:&P2025_ORG_STRUCT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325754851034258800)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325713499838258718)
,p_branch_action=>'f?p=&APP_ID.:2021:&SESSION.::&DEBUG.::P2021_ID:&P2025_ORG_RULE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325754473431258799)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325729165947258760)
,p_name=>'P2025_GEN_TAX_RATE'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(3307949777328149454)
,p_prompt=>'Existing TAX Rate'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(ORGANISATION_NAME||'' ''||PAYMENT_TYPE||'' :-''||DATE_OF_RATE) a, a.id',
'from HR_HCF_taxRATE a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'where upper(payment_type)=:P2025_PAYMENT_TYPE',
'and exists(select 1',
'           from APP_MODULE_LICENCE c',
'           where b.id=c.org_id',
'           and trunc(current_date)<=EXPIRY_LICENCE_DATE',
'           )',
'order by b.id,DATE_OF_RATE desc',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2025_PAYMENT_TYPE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'To generate NIB/SS enter the date of rate and select from the existing NIB/SS rate, then click Generate NIB/SS.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325730265814258762)
,p_name=>'P2025_ORG_STRUCT_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID',
'From HR_HCF_ORGSTRUCTUREHD',
'WHERE ORG_ID=:APP_ORG_ID',
'AND DATE_STARTED<= TRUNC(current_date)',
'and (DATE_ENDED is null or DATE_ENDED >  trunc(current_date) )'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325730668462258762)
,p_name=>'P2025_COUNTRY_1'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Guyana'
,p_prompt=>'Country'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNTRY',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325731044934258763)
,p_name=>'P2025_DAILY_TAX_CEILING_UPPER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Daily Tax Ceiling Upper'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DAILY_TAX_CEILING_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325731439049258763)
,p_name=>'P2025_DAILY_TAX_CEILING_LOWER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Daily Tax Ceiling Lower'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DAILY_TAX_CEILING_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325731827496258764)
,p_name=>'P2025_DATE_EFFECTIVE_END_1'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Effective End'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATE_EFFECTIVE_END',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3325732283225258764)
,p_name=>'P2025_DATE_EFFECTIVE_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Effective'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DATE_EFFECTIVE',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325732624318258765)
,p_name=>'P2025_ADJ_ANN_TAX_CEILING_UPPER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Adj Ann Tax Ceiling Upper'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADJ_ANN_TAX_CEILING_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325733045398258765)
,p_name=>'P2025_ADJ_ANN_TAX_CEILING_LOWER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adj Ann Tax Ceiling Lower'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADJ_ANN_TAX_CEILING_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325733480642258766)
,p_name=>'P2025_ADJ_CEILING_UPPER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Adj Ceiling Upper'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADJ_CEILING_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325733859697258766)
,p_name=>'P2025_ADJ_CEILING_LOWER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adj Ceiling Lower'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADJ_CEILING_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325734259709258767)
,p_name=>'P2025_TAX_CEILING_UPPER_B'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Ceiling Upper B'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_CEILING_UPPER_B',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325734624014258767)
,p_name=>'P2025_TAX_CEILING_FRACTION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax ceiling fraction'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_CEILING_UPPER_FRACTION',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325735090853258768)
,p_name=>'P2025_PRO_RATE_TAXFREE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pro Rate Taxfree'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRO_RATE_TAXFREE',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325735489452258768)
,p_name=>'P2025_ANN_TAX_CEILING_UPPER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Ann Tax Ceiling Upper'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ANN_TAX_CEILING_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325735855589258769)
,p_name=>'P2025_ANN_TAX_CEILING_LOWER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Ann Tax Ceiling Lower'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ANN_TAX_CEILING_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE TAXRATE_ID=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325736268939258769)
,p_name=>'P2025_CONSISTENT_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Consistent'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONSISTENT',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325736633431258770)
,p_name=>'P2025_TAX_PERCENTAGE_UPPER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Tax Percentage Upper'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_PERCENTAGE_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325737037892258770)
,p_name=>'P2025_TAX_CEILING_UPPER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Tax Ceiling Upper A'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_CEILING_UPPER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325737418437258771)
,p_name=>'P2025_TAX_PERCENTAGE_LOWER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Percentage Lower'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_PERCENTAGE_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE TAXRATE_ID=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325737820322258772)
,p_name=>'P2025_TAX_CEILING_LOWER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Tax Ceiling Lower'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAX_CEILING_LOWER',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE TAXRATE_ID=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325738304614258772)
,p_name=>'P2025_PAYMENT_TYPE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Frequency'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PAYMENT_TYPE',
'from HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325738660112258773)
,p_name=>'P2025_DATE_OF_RATE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Of Rate'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DATE_OF_RATE',
'FROM HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325739009090258773)
,p_name=>'P2025_ORGANISATION_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_prompt=>'Organisation Name:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name',
'from hr_hcf_organisation',
'where id=:APP_ORG_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325739425941258774)
,p_name=>'P2025_ORG_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_item_default=>'&APP_ORG_SHR_DED.'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ORG_ID',
'FROM HR_HCF_TAXRATE',
'where ID=:P2025_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325739894081258774)
,p_name=>'P2025_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3307963736552149462)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT max(ID)',
'FROM HR_HCF_TAXRATE v',
'where v.org_id=:APP_ORG_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325741839356258778)
,p_name=>'P2025_GEN_NIS_RATE'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(3307968198793157383)
,p_prompt=>'Existing NIB/SS Rate'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(ORGANISATION_NAME||'' ''||PAYMENT_TYPE||'' :-''||DATE_OF_RATE) a, a.id',
'from HR_HCF_NISRATE a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'where upper(payment_type)=:P2025_PAYMENT_TYPE',
'and exists(select 1',
'           from APP_MODULE_LICENCE c',
'           where b.id=c.org_id',
'           and trunc(current_date)<=EXPIRY_LICENCE_DATE',
'           )',
'order by b.id, DATE_OF_RATE desc',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2025_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'To generate NIB/SS enter the date of rate and payment frequency then select from the existing NIB/SS rate, click Generate NIB/SS.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325742931553258785)
,p_name=>'P2025_ORG_RULE_ID'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Hr_Hcf_Org_Rule',
'Where Org_Id=:APP_ORG_ID',
'and start_date <= trunc(current_date)',
'and (end_date is null or end_date >  trunc(current_date))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325743340068258785)
,p_name=>'P2025_DATE_EFFECTIVE_END'
,p_source_data_type=>'DATE'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Date Effective End'
,p_source=>'DATE_EFFECTIVE_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3325743742563258786)
,p_name=>'P2025_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325744609580258787)
,p_name=>'P2025_OVER_60_UNDER_16'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Over 60 Under 16(%)'
,p_source=>'OVER_60_UNDER_16'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'For Trinidad this value represents a dollar amount and not a percentage.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325745094054258788)
,p_name=>'P2025_CONSISTENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Consistent'
,p_source=>'CONSISTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325745469833258789)
,p_name=>'P2025_UPPER_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Upper Age'
,p_source=>'UPPER_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325745890585258789)
,p_name=>'P2025_LOWER_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Lower Age'
,p_source=>'LOWER_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325746736248258789)
,p_name=>'P2025_EMPLOYER_PER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Employer(%)'
,p_source=>'EMPLOYER_PER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE nisrate_id=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter a decimal number e.g. 0.058 for 5.8%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325747199971258790)
,p_name=>'P2025_NIS_CEILING'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'NIB/SS Ceiling'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'NIS_CEILING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE nisrate_id=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325748042800258791)
,p_name=>'P2025_EMPLOYEE_PER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>285
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Employee(%)'
,p_source=>'EMPLOYEE_PER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrolldtl',
'WHERE nisrate_id=:P2025_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter a decimal number e.g. 0.058 for 5.8%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325748443674258791)
,p_name=>'P2025_DATE_OF_RATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>251
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Date Of Rate'
,p_source=>'DATE_OF_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3325748815327258792)
,p_name=>'P2025_DATE_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>241
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Date Effective'
,p_source=>'DATE_EFFECTIVE'
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
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325749730250258794)
,p_name=>'P2025_GOV_EMPLOYEE_PER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_source=>'GOV_EMPLOYEE_PER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'The percentage the employee will paid whenever the amount falls below the NIB/SS FREE CEILING.Enter a decimal number e.g. 0.058 for 5.8%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325750667105258795)
,p_name=>'P2025_GOV_EMPLOYER_PER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_source=>'GOV_EMPLOYER_PER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'The percentage the employer will paid whenever the amount falls below the NIB/SS FREE CEILING.Enter a decimal number e.g. 0.058 for 5.8%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325751586799258796)
,p_name=>'P2025_GOVERNMENT_PER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_source=>'GOVERNMENT_PER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'The percentage government will pay for employees earning below the NIB/SS FREE CEILING. Enter a decimal number e.g. 0.058 for 5.8%'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325751968808258796)
,p_name=>'P2025_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Payment Frequency'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325752896439258797)
,p_name=>'P2025_NIS_FREE_CEILING'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'NIS_FREE_CEILING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'The cut off amount for which government will pay a particular percentage on behalf of the employees.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325753211191258798)
,p_name=>'P2025_ORGANISATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_prompt=>'Organisation Name:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name',
'from hr_hcf_organisation',
'where id=:APP_ORG_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3325753628854258798)
,p_name=>'P2025_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_default=>'&APP_ORG_SHR_DED.'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325754061649258799)
,p_name=>'P2025_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_item_source_plug_id=>wwv_flow_imp.id(3307984408843157393)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325716334765258722)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3307984408843157393)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_HCF_NISRATE'
,p_internal_uid=>3209932200908945017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325715919117258722)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3307984408843157393)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_HCF_NISRATE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3209931785260945017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325715551044258722)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'taxes_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P2025_ID_1 is null then',
'',
'INSERT INTO HR_HCF_TAXRATE(TAX_CEILING_UPPER_B, TAX_CEILING_UPPER_FRACTION, DATE_OF_RATE, PAYMENT_TYPE, TAX_CEILING_LOWER, TAX_PERCENTAGE_LOWER, TAX_CEILING_UPPER, TAX_PERCENTAGE_UPPER,',
'    CONSISTENT, ANN_TAX_CEILING_LOWER, ANN_TAX_CEILING_UPPER, DATE_EFFECTIVE, DATE_EFFECTIVE_END,  PRO_RATE_TAXFREE )',
'    ',
'values (:P2025_TAX_CEILING_UPPER_B, :P2025_TAX_CEILING_FRACTION, :P2025_DATE_OF_RATE_1, :P2025_PAYMENT_TYPE_1, :P2025_TAX_CEILING_LOWER, :P2025_TAX_PERCENTAGE_LOWER, :P2025_TAX_CEILING_UPPER, :P2025_TAX_PERCENTAGE_UPPER,',
'    :P2025_CONSISTENT_1, :P2025_ANN_TAX_CEILING_LOWER, :P2025_ANN_TAX_CEILING_UPPER, :P2025_DATE_EFFECTIVE_1, :P2025_DATE_EFFECTIVE_END_1,  :P2025_PRO_RATE_TAXFREE );',
'    ',
'commit;',
'',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325756075135258801)
,p_process_success_message=>'Successful creation of tax record.'
,p_internal_uid=>3209931417187945017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325715179807258720)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_taxes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update HR_HCF_TAXRATE',
'set DATE_OF_RATE =:P2025_DATE_OF_RATE_1',
', PAYMENT_TYPE =:P2025_PAYMENT_TYPE_1',
', TAX_CEILING_LOWER =:P2025_TAX_CEILING_LOWER',
', TAX_PERCENTAGE_LOWER =:P2025_TAX_PERCENTAGE_LOWER',
', TAX_CEILING_UPPER =:P2025_TAX_CEILING_UPPER',
', TAX_PERCENTAGE_UPPER =:P2025_TAX_PERCENTAGE_UPPER',
', CONSISTENT =:P2025_CONSISTENT_1',
', ANN_TAX_CEILING_LOWER =:P2025_ANN_TAX_CEILING_LOWER',
', ANN_TAX_CEILING_UPPER =:P2025_ANN_TAX_CEILING_UPPER',
', DATE_EFFECTIVE =:P2025_DATE_EFFECTIVE_1',
', DATE_EFFECTIVE_END =:P2025_DATE_EFFECTIVE_END_1',
', PRO_RATE_TAXFREE =:P2025_PRO_RATE_TAXFREE',
',TAX_CEILING_UPPER_B =:P2025_TAX_CEILING_UPPER_B',
', TAX_CEILING_UPPER_FRACTION = :P2025_TAX_CEILING_FRACTION',
'where id=:P2025_ID_1;',
'',
'commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325740671509258775)
,p_process_success_message=>'Successful update of taxes.'
,p_internal_uid=>3209931045950945015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325714716040258720)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_NIS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ',
' if :P2025_GEN_NIS_RATE is not null then',
'     pkg_generators.gen_nis_rates(:P2025_GEN_NIS_RATE, :P2025_ORG_ID, :P2025_DATE_OF_RATE);',
' end if;',
'  ',
'  select max(id) into :P2025_ID',
'  from hr_hcf_nisrate',
'  where org_id=:APP_ORG_ID;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325742303282258778)
,p_process_success_message=>'Successful generation of NIB/SS rate.'
,p_internal_uid=>3209930582183945015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325714350426258719)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_TAX'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P2025_GEN_TAX_RATE is not null then',
'  pkg_generators.gen_tax_rates(:P2025_GEN_TAX_RATE, :P2025_ORG_ID_1, :P2025_DATE_OF_RATE_1);',
'end if;',
'  ',
'  select max(id) into :P2025_ID_1',
'  from HR_HCF_TAXRATE',
'  where org_id=:APP_ORG_ID;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325729523488258761)
,p_process_success_message=>'Successful generation of Tax rate.'
,p_internal_uid=>3209930216569945014
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325713961706258719)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'compute_adj'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' pkg_generators.GENERATE_TAX_ADJUSTMENTS(:P2025_ID_1);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE_TAX,SAVE_TAX'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3209929827849945014
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3304649917822638671)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3307675808314514406)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Company Year - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3188865783966324966
);
wwv_flow_imp.component_end;
end;
/
