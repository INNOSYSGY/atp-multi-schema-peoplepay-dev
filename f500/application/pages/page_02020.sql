prompt --application/pages/page_02020
begin
--   Manifest
--     PAGE: 02020
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
 p_id=>2020
,p_name=>'frmwizRegister'
,p_step_title=>'Company Registration'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836629432805428593)
,p_plug_name=>'Migrate System References'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836699522947426068)
,p_plug_name=>'wizregion'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3854275489414502657)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836731901537569015)
,p_plug_name=>'Create/Edit Work Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"ORG_ID",',
'"WKLOCATION_ID",',
'"LOCATION_CODE",',
'"LOCATION_DESCRIPTION",',
'"CLASSIFICATION",',
'"START_DATE",',
'"END_DATE",',
'"ADDRESS",',
'"BILLING_ADDRESS",',
'"TEL_NO",',
'"ENTRY_DATE",',
'"ENTERED_BY",',
'"LAST_CHANGED_DATE",',
'"LAST_CHANGED_BY",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE"',
'from "#OWNER#"."HR_HCF_WORKLOCATION"',
'where org_id = :P2020_ID'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3832111999321092330)
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
 p_id=>wwv_flow_imp.id(3832112113349092331)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3832112143799092332)
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
 p_id=>wwv_flow_imp.id(3832112913402092339)
,p_name=>'TEL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tel no'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3832113075321092341)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>80
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3832113309520092343)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start date'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P2020_START_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3832113363048092344)
,p_name=>'CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFICATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3832113513249092345)
,p_name=>'LOCATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Location description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>70
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3832113619993092346)
,p_name=>'LOCATION_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>20
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3832113717084092347)
,p_name=>'WKLOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WKLOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3832113768635092348)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(3832113888510092349)
,p_name=>'ID_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_DISPLAY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3832113944472092350)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3832114108136092351)
,p_internal_uid=>42127614592506912
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
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_imp.id(3832084253589973544)
,p_interactive_grid_id=>wwv_flow_imp.id(3832114108136092351)
,p_static_id=>'18363'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3832084184068973544)
,p_report_id=>wwv_flow_imp.id(3832084253589973544)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832074201804973488)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3832112113349092331)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832074628829973490)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3832112143799092332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832078186052973509)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3832112913402092339)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832079165766973514)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3832113075321092341)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>400
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832080192894973519)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3832113309520092343)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832080720698973522)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3832113363048092344)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832081206081973524)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3832113513249092345)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832081708627973527)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3832113619993092346)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832082150080973531)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3832113717084092347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832082681999973533)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3832113768635092348)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832083222140973537)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3832113888510092349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3832083720462973541)
,p_view_id=>wwv_flow_imp.id(3832084184068973544)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3832113944472092350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3836896556012612313)
,p_plug_name=>'Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2020_LOAD_PHOTO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837681952132345418)
,p_plug_name=>' Second'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="overflow: auto; height: 280px;">',
''))
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837686748724348266)
,p_plug_name=>' First'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_ORGANISATION'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="overflow: auto; height: 280px;">',
''))
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837719094644385688)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>8
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>'Welcome to PeoplePay HRMIS configuration wizard. Most of the fields on these forms are required. Be sure to save your data after each entry, the system will remember where you last stop and will continue from next step once you haven''t completed. You'
||'r user account must be set to show wizard for this wizard to display at login.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837719501862385689)
,p_plug_name=>'Register'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854285038562502679)
,p_button_sequence=>470
,p_button_plug_id=>wwv_flow_imp.id(3836629432805428593)
,p_button_name=>'P2020_MIGRATE'
,p_button_static_id=>'P1311_MIGRATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate'
,p_button_condition=>'P2020_ID'
,p_button_condition2=>'1668'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_column=>12
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854284654122502677)
,p_button_sequence=>500
,p_button_plug_id=>wwv_flow_imp.id(3836629432805428593)
,p_button_name=>'P2020_BTNGENORG'
,p_button_static_id=>'P1311_MIGRATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Migrate Org'
,p_button_condition=>'P2020_ID'
,p_button_condition2=>'1668'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_grid_new_row=>'N'
,p_grid_column=>12
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854304569451502733)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3837719501862385689)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P2020_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854303393276502729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3837719501862385689)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Home'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854304132280502730)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3837719501862385689)
,p_button_name=>'SAVE_HEAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P2020_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854303791862502729)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3837719501862385689)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833287081798299119)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_button_name=>'REMOVE_LOGO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Remove Logo'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM hr_hcf_organisation',
'where id=:APP_ORG_ID',
'and photo is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3854276370093502661)
,p_branch_name=>'Go To Page 2020'
,p_branch_action=>'f?p=&APP_ID.:2020:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3854304569451502733)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3854276726511502662)
,p_branch_name=>'Go To Page 2021'
,p_branch_action=>'f?p=&APP_ID.:2021:&SESSION.::&DEBUG.::P2021_ID:&P2020_ORG_RULE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3854303791862502729)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854279283316502667)
,p_name=>'P2020_ORG_RULE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
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
 p_id=>wwv_flow_imp.id(3854279696394502668)
,p_name=>'P2020_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_default=>'280'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854280030509502668)
,p_name=>'P2020_TRANSACTION_TYPE_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_default=>'110'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854280469389502668)
,p_name=>'P2020_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854280823717502668)
,p_name=>'P2020_LOAD_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Add Logo'
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>20
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854281253084502670)
,p_name=>'P2020_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
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
 p_id=>wwv_flow_imp.id(3854281662631502670)
,p_name=>'P2020_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854282048408502671)
,p_name=>'P2020_SHORT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>100
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3854282446520502673)
,p_name=>'P2020_ORGANISATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Organisation Name'
,p_source=>'ORGANISATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>1000
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3854283478306502675)
,p_name=>'P2020_ORGANISATION'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(3836629432805428593)
,p_prompt=>'Migrate Reference'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT INITCAP(ORGANISATION_NAME) A, ID',
'FROM HR_HCF_ORGANISATION A',
'where not EXISTS (SELECT 1 ',
'                FROM HR_HCF_ORGANISATION b',
'                WHERE A.ORGANISATION_TYPE = b.ORGANISATION_TYPE',
'                AND A.ORGANISATION_NAME  = b.ORGANISATION_NAME',
'                and id = :P2020_ID',
'                )',
'AND ORGANISATION_TYPE=:P2020_ORGANISATION_TYPE_G',
'and USER_ORG_ID=1668',
'order by 1'))
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854283831846502675)
,p_name=>'P2020_ORGANISATION_TYPE_G'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3836629432805428593)
,p_prompt=>'Organisation Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORGANISATION_TYPE a, oRGANISATION_TYPE b',
'from HR_HCF_ORGANISATION',
'where oRGANISATION_TYPE!=''SOFTWARE USER''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854284322411502677)
,p_name=>'P2020_MIGRATE_REFERENCE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3836629432805428593)
,p_prompt=>'Migrate Reference'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT initcap(Table_Description) A,Table_Name ',
'from hr_hcf_lookup a',
'where org_id=1749',
'AND table_name NOT IN (''TBLPAYMENTTYPE'',''TBLPAYMENTMODE'')',
'AND not EXISTS (SELECT 1 ',
'                FROM hr_hcf_lookup b',
'                WHERE A.TABLE_NAME = b.TABLE_NAME',
'                AND A.TABLE_DESCRIPTION  = b.TABLE_DESCRIPTION',
'                AND A.TABLE_VALUE = b.TABLE_VALUE',
'                and org_id = :P2020_ID',
'                )',
'order by 1'))
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3854300264775502713)
,p_name=>'P2020_ID_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
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
 p_id=>wwv_flow_imp.id(3854300666289502715)
,p_name=>'P2020_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>200
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3854301031850502715)
,p_name=>'P2020_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
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
 p_id=>wwv_flow_imp.id(3854301441471502715)
,p_name=>'P2020_NIS_REG_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'NIB/SS Reg No'
,p_source=>'NIS_REG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3854301916988502715)
,p_name=>'P2020_TAX_REG_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'TIN'
,p_source=>'TAX_REG_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3854302318078502719)
,p_name=>'P2020_TELNUM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Tel Nos.'
,p_source=>'TELNUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>35
,p_cMaxlength=>200
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3854302691915502728)
,p_name=>'P2020_WEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3837681952132345418)
,p_item_source_plug_id=>wwv_flow_imp.id(3837686748724348266)
,p_prompt=>'Website'
,p_source=>'WEBSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>200
,p_grid_label_column_span=>2
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3852155363935449998)
,p_validation_name=>'CHK_LOCATION'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    select 1',
'    from hr_hcf_worklocation a',
'    where exists(select 1',
'                 from hr_hcf_organisation b',
'                 where a.org_id = b.id',
'                 and b.id = :APP_ORG_ID);'))
,p_validation_type=>'EXISTS'
,p_error_message=>'kindly enter data into the work location before moving on.'
,p_when_button_pressed=>wwv_flow_imp.id(3854303791862502729)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3854278840256502665)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3837686748724348266)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from wizORGANISATION'
,p_internal_uid=>3211084290476894397
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3854278462779502664)
,p_process_sequence=>9
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3837686748724348266)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of wizORGANISATION'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3211083912999894396
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3832111880643092329)
,p_process_sequence=>19
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3836731901537569015)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Work Locations - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3188917330863484061
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3854278076371502664)
,p_process_sequence=>29
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'migrate_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'',
'',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P2020_MIGRATE_REFERENCE);',
'',
'  ',
'FOR j IN 1..l_selected.COUNT',
'LOOP',
'',
'  ',
'for I in (',
'      select lookup_id, table_name,table_description, table_value, value_description, classification, custom_field,',
'          custom_field1, start_period, end_period, transaction_type_id, status, :APP_ORG_ID ORG_ID, verified_by, verified_date',
'      from hr_hcf_lookup',
'      where org_id=1749',
'      AND TABLE_NAME = l_selected(j)',
'      ) loop',
'      ',
'begin     ',
'    insert into hr_hcf_lookup (lookup_id, table_name,table_description, table_value, value_description, classification, custom_field, ',
'                   custom_field1, start_period, end_period, transaction_type_id, status, org_id,verified_by, verified_date)		           		',
'    values(  i.lookup_id,   i.table_name,   i.table_description,   i.table_value,   i.value_description,   i.classification,   i.custom_field,',
'                    i.custom_field1,   i.start_period,   i.end_period,   i.transaction_type_id,   i.status,   i.ORG_ID,  i.verified_by,   i.verified_date);',
'      ',
'exception ',
'  when others then null;',
'end;',
'',
'end loop;',
'',
'',
'END LOOP;  ',
'',
'--hoildays',
'',
'begin',
'INSERT INTO HR_HCF_HOLIDAY(HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'                           FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, ORG_ID )',
'                           ',
'select  HOLIDAY_CODE, HOLIDAY_DATE, HOLIDAY_DESCRIP,  RATE_OF_PAY,  TENTATIVE_STATUS,  STATUS_CODE, ADHOC_HOLIDAY,',
'    FOR_CALCULATION, TRANSACTION_TYPE_ID, STATUS, :APP_ORG_ID',
'from HR_HCF_HOLIDAY',
'where org_id=1749',
'and extract(year from HOLIDAY_DATE) = (select max( extract(year from HOLIDAY_DATE))',
'                                      from HR_HCF_HOLIDAY b',
'                                      where org_id=1749);',
'',
'exception',
'    when others then null;',
'end;',
'',
'',
'--income codes',
'begin',
'',
'INSERT INTO PA_PCF_INCOMECODE(INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,org_id )',
'      ',
'select INCOME_CODE, DESCRIPTION, ACCOUNT_CODE,USE_STANDARD_HOURS,SORT_ORDER,START_DATE,',
'      VERIFIED_BY,VERIFIED_DATE,TRANSACTION_TYPE_ID,STATUS,BULK_PAYMENT,INCOME_TYPE,TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,:APP_ORG_ID',
'from PA_PCF_INCOMECODE     ',
'where org_id=1626;',
'',
'exception',
'    when others then null;',
'end;',
'',
'',
'    :P2020_MIGRATE_REFERENCE :=null;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3854285038562502679)
,p_process_success_message=>'System references successfully migrated to current organisaton.'
,p_internal_uid=>3211083526591894396
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3854277673305502663)
,p_process_sequence=>39
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'migrate_organisations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; V_TEST_REMIT NUMBER:=1;',
' ',
'BEGIN',
'',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P2020_ORGANISATION);',
'  ',
'FOR j IN 1..l_selected.COUNT',
'LOOP',
'',
'  ',
'for I in (',
'          SELECT PARENT_ORG_ID, ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'          FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'          TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY, PHOTO, FILENAME,MIMETYPE, LAST_UPDATE_PHOTO,  BASE_CURRENCY',
'          FROM HR_HCF_ORGANISATION',
'          WHERE USER_ORG_ID=1749',
'          AND ORGANISATION_TYPE!=''SOFTWARE USER''',
'          AND ID = l_selected(j)',
'      ) loop',
'      ',
'      ',
'begin     ',
'    insert into HR_HCF_ORGANISATION( PARENT_ORG_ID, ORGANISATION_NAME,  ORGANISATION_TAG, ORGANISATION_TYPE, SHORT_NAME, ADDRESS,  TELNUM,',
'          FAXNUM, CATCH_LINE, NIS_REG_NO, TAX_REG_NO, LETTER_HEAD_LOGO, START_DATE, END_DATE, VERIFIED_DATE, VERIFIED_BY,',
'          TRANSACTION_TYPE_ID, STATUS, TRANSITS, COUNTRY,  BASE_CURRENCY, USER_ORG_ID)',
'          ',
'    VALUES( I.PARENT_ORG_ID, I.ORGANISATION_NAME,  I.ORGANISATION_TAG, I.ORGANISATION_TYPE, I.SHORT_NAME, I.ADDRESS,  I.TELNUM,',
'          I.FAXNUM, I.CATCH_LINE, I.NIS_REG_NO, I.TAX_REG_NO, I.LETTER_HEAD_LOGO, I.START_DATE, I.END_DATE, I.VERIFIED_DATE, I.VERIFIED_BY,',
'          I.TRANSACTION_TYPE_ID, I.STATUS, I.TRANSITS, I.COUNTRY,  I.BASE_CURRENCY, :P1311_ID );',
'      ',
'exception ',
'  when others then null;',
'end;',
'',
'end loop;',
'',
'',
'END LOOP;  ',
'',
'SELECT COUNT(1) INTO V_TEST_REMIT',
'from vw_organisationCUR',
'where organisation_type=''REMITTANCE'';',
'',
'IF V_TEST_REMIT > 0 THEN',
'',
'--deduction code',
'begin',
'INSERT INTO PA_PCF_DEDUCTIONCODE(EXPENSE_CODE, DESCRIPTION, PRIORITY_LEVEL, ACCOUNT_CODE, WHO_PAYS, SORT_ORDER, START_DATE, VERIFIED_BY,',
'    VERIFIED_DATE, QUERY_EMPLOYEE_DATA, ACCOUNT_CODE_EMPLR, UNION_AMOUNT, ENTITY_ABBREVIATION, UNION_DEDUCTION, GROUP_MED, TRANSACTION_TYPE_ID,',
'    STATUS, REDUCE_TAX_NIS_TOTAL, ORG_ID )',
'    ',
'select EXPENSE_CODE, DESCRIPTION, PRIORITY_LEVEL, ACCOUNT_CODE, WHO_PAYS, SORT_ORDER, START_DATE, VERIFIED_BY,',
'    VERIFIED_DATE, QUERY_EMPLOYEE_DATA, ACCOUNT_CODE_EMPLR, UNION_AMOUNT, ENTITY_ABBREVIATION, UNION_DEDUCTION, GROUP_MED, TRANSACTION_TYPE_ID,',
'    STATUS, REDUCE_TAX_NIS_TOTAL, :APP_ORG_ID',
'from     PA_PCF_DEDUCTIONCODE',
'where org_id=1626;',
'',
'exception',
'    when others then null;',
'end;',
'',
'END IF;',
'',
'',
'   :P2020_ORGANISATION:=NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3854284654122502677)
,p_process_success_message=>'Successful generation of Organisations.'
,p_internal_uid=>3211083123525894395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3854277287430502663)
,p_process_sequence=>49
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'verify_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update HR_HCF_ORGANISATION',
'set   TRANSACTION_TYPE_ID = 110',
'    , STATUS              = 280',
'    , verified_by = :APP_USER',
'    , verified_date =trunc(current_date)',
'where id = :APP_ORG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3854285038562502679)
,p_internal_uid=>3211082737650894395
);
wwv_flow_imp.component_end;
end;
/
