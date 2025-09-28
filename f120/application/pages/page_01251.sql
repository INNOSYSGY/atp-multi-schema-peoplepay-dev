prompt --application/pages/page_01251
begin
--   Manifest
--     PAGE: 01251
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
 p_id=>1251
,p_name=>'frmPayrollHeader'
,p_step_title=>'Payroll Execution'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P1251_EMPLOYEE_TOBEPAID_DISPLAY,',
'#P1251_PAID_DISPLAY,',
'#P1251_EMPLOYEES_NOT_PAID_DISPLAY,',
'#P1251_NEGATIVE_PAYMENTS_DISPLAY,',
'#P1251_TOTAL_NIS_DISPLAY,',
'#P1251_TOTAL_TAXES_DISPLAY,',
'#P1251_TOTAL_GROSS_DISPLAY,',
'#P1251_TOTAL_NETPAY_DISPLAY,',
'#P1251_GRAND_EMPLOYEE_TOBEPAID_DISPLAY,',
'#P1251_GRAND_PAID_DISPLAY,',
'#P1251_GRAND_EMPLOYEES_NOT_PAID_DISPLAY,',
'#P1251_GRAND_NEGATIVE_PAYMENTS_DISPLAY,',
'#P1251_GRAND_TOTAL_NIS_DISPLAY,',
'#P1251_GRAND_TOTAL_TAXES_DISPLAY,',
'#P1251_GRAND_TOTAL_GROSS_DISPLAY,',
'#P1251_GRAND_TOTAL_NETPAY_DISPLAY{',
'    width: 75%;',
'    text-align: right;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(573024092165709474)
,p_plug_name=>'Payroll Process Flow'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PROCESS_FLOW_NAME,expense_code,',
'       SOURCE_NAME,',
'       ORG_ID,',
'       COUNTRY,',
'       PROCESS_SEQ,',
'       REMARKS,',
'       START_DATE,',
'       END_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,',
'       PROCESS_TABLE_NAME',
'  from PA_PCF_PROCESS_FLOW',
'  WHERE org_id=:APP_ORG_ID',
'  and trim(upper(COUNTRY)) =:APP_COUNTRY',
' '))
,p_plug_source_type=>'NATIVE_IG'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552524038823408)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552560744823409)
,p_name=>'PROCESS_FLOW_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_FLOW_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Process Flow Name'
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
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552663301823410)
,p_name=>'EXPENSE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Expense Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552790741823411)
,p_name=>'SOURCE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOURCE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Source Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552956093823412)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
,p_heading_alignment=>'RIGHT'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402552965859823413)
,p_name=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402553138126823414)
,p_name=>'PROCESS_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_SEQ'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Process Seq'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402553245960823415)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402553316806823416)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(402553424516823417)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(402553516659823418)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
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
 p_id=>wwv_flow_imp.id(402553578367823419)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(413169561388404470)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(413169734782404471)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(413169799005404472)
,p_name=>'PROCESS_TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_TABLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Process Table Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(402552360469823407)
,p_internal_uid=>96544501128140538
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
 p_id=>wwv_flow_imp.id(413175454920405196)
,p_interactive_grid_id=>wwv_flow_imp.id(402552360469823407)
,p_static_id=>'1071676'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(413175583497405197)
,p_report_id=>wwv_flow_imp.id(413175454920405196)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413176059944405205)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(402552524038823408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413177006544405214)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(402552560744823409)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413177920864405218)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(402552663301823410)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413178768944405221)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(402552790741823411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>262.41700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413179723312405224)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(402552956093823412)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413180612957405227)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(402552965859823413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413181468536405230)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(402553138126823414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413182440482405234)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(402553245960823415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413183310949405238)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(402553316806823416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413184230049405241)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(402553424516823417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413185121298405245)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(402553516659823418)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413185999045405249)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(402553578367823419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413186944475405253)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(413169561388404470)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.417
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413187791460405256)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(413169734782404471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(413188750346405260)
,p_view_id=>wwv_flow_imp.id(413175583497405197)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(413169799005404472)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3361801213242499861)
,p_plug_name=>'Errors in Payroll'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="red" size="3"><b>',
' This Payroll has errors please check the payroll logs listing of database errors!</b></font>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from error_log',
'where earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'and upper(package_name) like ''%PKG_PAYROLL_%'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3394610762253807782)
,p_plug_name=>'Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="red" size="3"><b>',
' This Payroll has employees with zero or negative net payments!</b></font>'))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrolldtlneg',
'where pay_batch_id = :P1251_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3517653719594505933)
,p_plug_name=>'Salary/Entitlements Turn Over'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1251_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3417707155050841244)
,p_plug_name=>'All Systematic Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3517653719594505933)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as pkID, ',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY, income_status, pensionable,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,  ',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    v.employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        v.employment_status,',
'        v.employment_class,',
'        v.payment_type,',
'        wklocation_id,',
'   pkg_global_fnts.fn_proratesys( emp_id , amount , x.start_date , x.end_date , HR_RCM_EMPENTITLE.start_date , HR_RCM_EMPENTITLE.end_date , HR_RCM_EMPENTITLE.PRORATION_DAYS ) Amount_Paid',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type',
'              )          ',
'and x.id = :P1251_EARNINGS_PERIOD_ID',
'and (',
'    HR_RCM_EMPENTITLE.start_date between x.start_date and x.end_date',
'    OR HR_RCM_EMPENTITLE.entry_date between  x.start_date and x.end_date ',
'    OR (HR_RCM_EMPENTITLE.start_date <= x.start_date AND X.end_date IS NULL)',
'    )',
'AND admin_status IN (''SYS'',''BOTH'')',
'AND amount > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3417707529769841252)
,p_name=>'Search Employee Rules'
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
,p_internal_uid=>300608100370720735
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630640104185662269)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID,P1285_RETURN_VALUE:#ID#,1251'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630640465264662270)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630640904166662272)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630641256520662273)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630641665815662274)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630642068765662275)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630642461220662276)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630642844707662277)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630643232964662278)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630643688659662279)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630644119067662281)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632556208618481225)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630644491171662282)
,p_db_column_name=>'TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630644919493662283)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630645304501662284)
,p_db_column_name=>'AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630645717141662285)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630645964839662286)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630646323042662287)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630646726156662288)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630647186716662290)
,p_db_column_name=>'REMARKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630647578896662291)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630651154621662299)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630650727592662298)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630650345058662297)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630649957533662296)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630649593942662296)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630649199680662295)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630648744263662294)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630648361001662293)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630648002972662292)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630652022282662301)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630651607456662300)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630639243221662267)
,p_db_column_name=>'PKID'
,p_display_order=>140
,p_column_identifier=>'AF'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630639686603662268)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>150
,p_column_identifier=>'AG'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3417716140592841270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255969'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCOME_TYPE:ID:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:PKID:'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3517669670778572920)
,p_plug_name=>'Stopped Systematic Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3517653719594505933)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as pkID, ',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY, income_status, pensionable,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,  ',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    v.employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        v.employment_status,',
'        v.employment_class,',
'        v.payment_type,',
'        wklocation_id,',
'   pkg_global_fnts.fn_proratesys( emp_id , amount , x.start_date , x.end_date , HR_RCM_EMPENTITLE.start_date , HR_RCM_EMPENTITLE.end_date , HR_RCM_EMPENTITLE.PRORATION_DAYS ) Amount_Paid',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'              )        ',
'and HR_RCM_EMPENTITLE.end_date between case when X.payment_type=''MONTHLY'' then trunc(X.end_date, ''MM'') - 1',
'                                            when X.payment_type=''WEEKLY'' then X.start_date -7',
'                                            when X.payment_type=''FORTNIGHTLY'' then X.start_date -14',
'                                            when X.payment_type=''BI-MONTHLY'' then X.start_date - 15',
'                                     END',
'                                and case when X.payment_type=''MONTHLY'' then trunc(trunc(X.start_date, ''MM'') - 1, ''MM'')',
'                                        when X.payment_type=''WEEKLY'' then X.end_date -7',
'                                        when X.payment_type=''FORTNIGHTLY'' then X.end_date -14',
'                                        when X.payment_type=''BI-MONTHLY'' then X.end_date - 15',
'                                    END ',
'AND admin_status IN (''SYS'',''BOTH'')',
'AND amount > 0',
'and x.id = :P1251_EARNINGS_PERIOD_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3517669542490572918)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>138566280221490847
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630680524782662381)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630680197665662380)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630679771082662378)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630679384099662377)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630678970182662376)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630678576256662375)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630678163074662373)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630677762313662372)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630677401430662371)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630676961451662369)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630676547675662368)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630676195639662367)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630675777644662366)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630675333795662364)
,p_db_column_name=>'PKID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630674961956662363)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630674581992662362)
,p_db_column_name=>'EMP_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630674207392662361)
,p_db_column_name=>'START_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630673784446662360)
,p_db_column_name=>'END_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630673341725662359)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630672988328662357)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630672570617662356)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630672156016662355)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630671765447662354)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630671414226662353)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630670925691662351)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632556208618481225)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630670571026662350)
,p_db_column_name=>'TAXABLE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630670182344662349)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630669745950662348)
,p_db_column_name=>'AMOUNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630669419493662347)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630669009848662346)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630668584389662345)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630668166474662343)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630667764649662342)
,p_db_column_name=>'REMARKS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3517632945566445564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3518076746773158806)
,p_plug_name=>'New Systematic Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3517653719594505933)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as pkID, ',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY, income_status, pensionable,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,  ',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    v.employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        v.employment_status,',
'        v.employment_class,',
'        v.payment_type,',
'        wklocation_id,',
'   pkg_global_fnts.fn_proratesys( emp_id , amount , x.start_date , x.end_date , HR_RCM_EMPENTITLE.start_date , HR_RCM_EMPENTITLE.end_date , HR_RCM_EMPENTITLE.PRORATION_DAYS ) Amount_Paid',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type                     ',
'              )          ',
'and x.id = :P1251_EARNINGS_PERIOD_ID',
'and HR_RCM_EMPENTITLE.start_date >= x.start_date',
'AND admin_status IN (''SYS'',''BOTH'')',
'AND amount > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3518076481369158804)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>138159341342904961
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630666268681662338)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630665909255662337)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630665423819662336)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630665085976662335)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630664666845662334)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630664242112662333)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630663848185662332)
,p_db_column_name=>'PKID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630663470973662331)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630663066452662330)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630662637636662330)
,p_db_column_name=>'START_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630662263202662329)
,p_db_column_name=>'END_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630661876715662328)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630661478509662327)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630661107364662326)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630660697076662325)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630660288293662323)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630659877819662322)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630659451639662321)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632556208618481225)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630659074922662320)
,p_db_column_name=>'TAXABLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630658700966662319)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630658235265662318)
,p_db_column_name=>'AMOUNT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630657840720662317)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630657465578662316)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630657108203662315)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630656656207662313)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630656307802662312)
,p_db_column_name=>'REMARKS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630655835061662311)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630655470761662310)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630655122677662309)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630654671379662307)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630654291710662306)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630653886468662305)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630653435362662304)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3517656146076568907)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255827'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:START_DATE:ENTRY_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3610481522489480505)
,p_plug_name=>'Salary Changes(New and Old)'
,p_parent_plug_id=>wwv_flow_imp.id(3517653719594505933)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct HR_RCM_salary.id, emp_id, personal_rate, HOURLY_RATE, PAYMENT_MODE,  HR_RCM_salary.START_DATE, HR_RCM_salary.end_DATE,SALARY_CURRENCY, SAL_GRADE_ID, GRADE_POINT_ID, GRADE_POINT_AMOUNT, GRADE_POINT  ',
'from HR_RCM_salary  join HR_RCM_EMPLOYEE V on  HR_RCM_salary.emp_id = v.id',
'join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type                 ',
'              )          ',
'and x.id  = :P1251_ID',
'and (',
'    HR_RCM_salary.start_date between x.start_date and x.end_date',
'    OR HR_RCM_salary.entry_date between  x.start_date and x.end_date ',
'    OR (HR_RCM_salary.start_date <= x.start_date AND X.end_date IS NULL)',
'     )',
'and personal_rate > 0',
'union',
'select distinct HR_RCM_salary.id, emp_id, personal_rate, HOURLY_RATE, PAYMENT_MODE,  HR_RCM_salary.START_DATE, HR_RCM_salary.end_DATE,SALARY_CURRENCY, SAL_GRADE_ID, GRADE_POINT_ID, GRADE_POINT_AMOUNT, GRADE_POINT  ',
'from HR_RCM_salary  join HR_RCM_EMPLOYEE V on  HR_RCM_salary.emp_id = v.id',
'join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type               ',
'              )          ',
'and x.id  = :P1251_EARNINGS_PERIOD_ID',
'and HR_RCM_salary.end_date between case when X.payment_type=''MONTHLY'' then trunc(X.end_date, ''MM'') - 1',
'                                            when X.payment_type=''WEEKLY'' then X.start_date -7',
'                                            when X.payment_type=''FORTNIGHTLY'' then X.start_date -14',
'                                            when X.payment_type=''BI-MONTHLY'' then X.start_date - 15',
'                                     END',
'                                and case when X.payment_type=''MONTHLY'' then trunc(trunc(X.start_date, ''MM'') - 1, ''MM'')',
'                                        when X.payment_type=''WEEKLY'' then X.end_date -7',
'                                        when X.payment_type=''FORTNIGHTLY'' then X.end_date -14',
'                                        when X.payment_type=''BI-MONTHLY'' then X.end_date - 15',
'                                    END   ',
'and personal_rate > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3610481341422480503)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLPAYDEMO'
,p_internal_uid=>45754481289583262
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630686390656662402)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1285:P1282_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630685997025662400)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630685592802662399)
,p_db_column_name=>'START_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630685192879662397)
,p_db_column_name=>'END_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630684788551662396)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>120
,p_column_identifier=>'AH'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630684377735662395)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>130
,p_column_identifier=>'AI'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630684002555662393)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>140
,p_column_identifier=>'AJ'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632462712366335719)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630683594284662392)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632641603382596691)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630683204810662391)
,p_db_column_name=>'SAL_GRADE_ID'
,p_display_order=>160
,p_column_identifier=>'AL'
,p_column_label=>'Sal Grade Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632558643709481228)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630682791617662390)
,p_db_column_name=>'GRADE_POINT_ID'
,p_display_order=>170
,p_column_identifier=>'AM'
,p_column_label=>'Grade Point Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630682021343662387)
,p_db_column_name=>'GRADE_POINT'
,p_display_order=>180
,p_column_identifier=>'AO'
,p_column_label=>'Grade Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630682394406662388)
,p_db_column_name=>'GRADE_POINT_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'AN'
,p_column_label=>'Grade Point Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3605441274377677720)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:START_DATE:END_DATE:PERSONAL_RATE:HOURLY_RATE:PAYMENT_MODE:SALARY_CURRENCY:SAL_GRADE_ID_ID_AMOUNT:GRADE_POINT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3605387903648095838)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3574986817761020134)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3610497932544483118)
,p_plug_name=>'Employee Turn Over'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1251_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3541760895877134515)
,p_plug_name=>'Newly Hired Employees'
,p_parent_plug_id=>wwv_flow_imp.id(3610497932544483118)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed, pkg_global_fnts.fn_hourlyrate(b.id, end_date) hourly_rate,',
' pkg_global_fnts.fn_PersonalRate(b.id, end_date) Personal_Rate, date_separated, separated_status',
'from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id and b.EMPLOYMENT_CLASS_ID = v_earn.EMPLOYMENT_CLASS_ID)',
'where b.date_employed between start_date and end_date                                 ',
'and v_earn.id = :P1251_EARNINGS_PERIOD_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Newly Hired Employees'
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
 p_id=>wwv_flow_imp.id(3541760739747134514)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR:#EMP_ID#,1251'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GPL'
,p_internal_uid=>114475082964929251
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630702454352665018)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630702075878665017)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630701662731665016)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630701225675665016)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630700907822665015)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630700472421665014)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630700062253665014)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630699655233665013)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630699245786665013)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630698889597665012)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630698482574665012)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630698115342665011)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630697681769665010)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630697284959665010)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630696884345665009)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630696459713665009)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630696119180665008)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630695696828665008)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3541740095333112917)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_STRUCTURE:EMP_ID:EMP_COMPANY_NO:EMPLOYMENT_STATUS:PAYMENT_TYPE:EMPLOYMENT_CLASS:WKLOCATION_ID:EMPLOYMENT_TYPE_ID:POSITION_ID:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:DATE_SEPARATED:SEPARATED_STATUS:'
,p_break_on=>'ORG_STRUCTURE:ORG_STRUCTURE:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:ORG_STRUCTURE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3607331897341626186)
,p_plug_name=>'Newly Separated Employees'
,p_parent_plug_id=>wwv_flow_imp.id(3610497932544483118)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed, pkg_global_fnts.fn_hourlyrate(b.id, end_date) hourly_rate,',
' pkg_global_fnts.fn_PersonalRate(b.id, end_date) Personal_Rate, date_separated, separated_status',
'from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id and b.EMPLOYMENT_CLASS_ID = v_earn.EMPLOYMENT_CLASS_ID)',
'where (( b.date_separated between v_earn.start_paid_for and v_earn.end_paid_for)',
'/*reworked to provide flexibility for the user to select the date range that they are paying in the current earnings period',
'/*edited by : Mohamed Khan 07/07/2021*/',
'/*between case when v_earn.payment_type=''MONTHLY'' then start_date -31',
'                                    when v_earn.payment_type=''WEEKLY'' then start_date -7',
'                                    when v_earn.payment_type=''FORTNIGHTLY'' then start_date -14',
'                                    when v_earn.payment_type=''BI-MONTHLY'' then start_date - 15',
'                                    END',
'',
'and case when v_earn.payment_type=''MONTHLY'' then start_date -31',
'                                    when v_earn.payment_type=''WEEKLY'' then end_date -7',
'                                    when v_earn.payment_type=''FORTNIGHTLY'' then end_date -14',
'                                    when v_earn.payment_type=''BI-MONTHLY'' then end_date - 15',
'                                    END )*/',
'or (include_payroll=''N'' and date_separated is null) )                                   ',
'and v_earn.id = :P1251_EARNINGS_PERIOD_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Newly Separated Employees'
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
 p_id=>wwv_flow_imp.id(3607331763170626185)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR:#EMP_ID#,1251'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GPL'
,p_internal_uid=>48904059541437580
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630694621542665005)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630694215561665005)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630693729035665004)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630693380844665003)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630692977398665003)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630692606703665002)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630692157196665002)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630691753472665001)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630691337285665001)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630690940986665000)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630690568812665000)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630690157794664999)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630689777324664998)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630689381054664998)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630688972071664997)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630688545591664997)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630688162227664996)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630687747859664996)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3541747425845123072)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_ID:EMP_COMPANY_NO:EMPLOYMENT_STATUS:WKLOCATION_ID:EMPLOYMENT_TYPE_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:DATE_SEPARATED:SEPARATED_STATUS:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3610552401166487651)
,p_plug_name=>'Current vs Paid for Period'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1251_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(346000917462266493)
,p_plug_name=>'Employees NOT paid'
,p_parent_plug_id=>wwv_flow_imp.id(3610552401166487651)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id,  last_changed_by,  last_changed_date, entered_by, entry_date,  payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed,hourly_rate,Personal_Rate, salary_taxable ',
'from ',
'    (    SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'        EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'        EMPLOYMENT_TYPE_id , date_employed,c.hourly_rate, c.Personal_Rate, c.salary_taxable ',
'        from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'        join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id) ',
'        Join (select x.emp_id, x.start_date, x.end_date, x.hourly_rate, x.Personal_Rate, x.salary_taxable ',
'            from Hr_Rcm_Salary x',
'            where :P1251_START_DATE BETWEEN TRUNC(x.START_DATE) AND TRUNC(NVL(x.END_DATE, trunc(current_date) + 60))',
'            ) C On B.Id = C.Emp_Id',
'        join hr_hcf_position p on p.id = b.position_id',
'        where v_earn.id = :P1251_EARNINGS_PERIOD_ID',
'        and  exists (select 1',
'                      from pa_pcf_payroll_emp pemp',
'                      where b.id =pemp.emp_id',
'                      and earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'                     )',
'    ) x',
'where not exists (',
'                        select 1',
'                        from pa_pmg_payrolldtl notpaid',
'                        where earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'                        and notpaid.emp_id=x.emp_id',
'                 )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_START_DATE, P1251_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Current Employees'
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
 p_id=>wwv_flow_imp.id(346001042125266494)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>39993182783583625
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001116987266495)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001219845266496)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001323482266497)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001395098266498)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001519977266499)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001584350266500)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001729168266501)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001780227266502)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346001881414266503)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002000793266504)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002135049266505)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002239261266506)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002293388266507)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002450458266508)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002498112266509)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002608620266510)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(346002700757266511)
,p_db_column_name=>'SALARY_TAXABLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Salary Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(346010646490291882)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'400028'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_ID:EMPLOYMENT_CLASS:EMP_COMPANY_NO:EMPLOYMENT_STATUS:WKLOCATION_ID:PAYMENT_TYPE:EMPLOYMENT_TYPE_ID:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:SALARY_TAXABLE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435230518732469827)
,p_plug_name=>'Listing of Employees Paid'
,p_parent_plug_id=>wwv_flow_imp.id(3610552401166487651)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
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
'WHERE EARNINGS_PERIOD_ID= :P1251_EARNINGS_PERIOD_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3435230339188469816)
,p_name=>'Listing of Employee Paid'
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
,p_detail_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.::P1356_ID,P1356_PAGE_RETURN:#ID#,1251'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>221005483523593949
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630749059678669510)
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
 p_id=>wwv_flow_imp.id(3630748696139669509)
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
 p_id=>wwv_flow_imp.id(3630748282514669509)
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
 p_id=>wwv_flow_imp.id(3630747909228669508)
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
 p_id=>wwv_flow_imp.id(3630747439551669507)
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
 p_id=>wwv_flow_imp.id(3630747081896669506)
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
 p_id=>wwv_flow_imp.id(3630746654763669505)
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
 p_id=>wwv_flow_imp.id(3630746248632669504)
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
 p_id=>wwv_flow_imp.id(3630745883151669503)
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
 p_id=>wwv_flow_imp.id(3630745439228669502)
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
 p_id=>wwv_flow_imp.id(3630745065119669501)
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
 p_id=>wwv_flow_imp.id(3630744687996669500)
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
 p_id=>wwv_flow_imp.id(3630744281605669499)
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
 p_id=>wwv_flow_imp.id(3630743851682669498)
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
 p_id=>wwv_flow_imp.id(3630743475337669497)
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
 p_id=>wwv_flow_imp.id(3630743026357669496)
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
 p_id=>wwv_flow_imp.id(3630742685353669495)
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
 p_id=>wwv_flow_imp.id(3630742229006669494)
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
 p_id=>wwv_flow_imp.id(3630741892999669493)
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
 p_id=>wwv_flow_imp.id(3630741443457669491)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630741056287669490)
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
 p_id=>wwv_flow_imp.id(3630740666919669489)
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
 p_id=>wwv_flow_imp.id(3630740224632669488)
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
 p_id=>wwv_flow_imp.id(3630739912834669487)
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
 p_id=>wwv_flow_imp.id(3630739570375669485)
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
 p_id=>wwv_flow_imp.id(3630739127957669484)
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
 p_id=>wwv_flow_imp.id(3630738789404669483)
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
 p_id=>wwv_flow_imp.id(3630738328910669482)
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
 p_id=>wwv_flow_imp.id(3630737926706669481)
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
 p_id=>wwv_flow_imp.id(3630737547062669481)
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
 p_id=>wwv_flow_imp.id(3630737194465669480)
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
 p_id=>wwv_flow_imp.id(3630736762121669479)
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
 p_id=>wwv_flow_imp.id(3630736360164669478)
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
 p_id=>wwv_flow_imp.id(3630735930043669477)
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
 p_id=>wwv_flow_imp.id(3630735527922669475)
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
 p_id=>wwv_flow_imp.id(3630735189362669474)
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
 p_id=>wwv_flow_imp.id(3630734727728669473)
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
 p_id=>wwv_flow_imp.id(3630734386005669472)
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
 p_id=>wwv_flow_imp.id(3630734008457669471)
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
 p_id=>wwv_flow_imp.id(3630733537351669470)
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
 p_id=>wwv_flow_imp.id(3630733208095669469)
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
 p_id=>wwv_flow_imp.id(3630732790621669468)
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
 p_id=>wwv_flow_imp.id(3630732357771669467)
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
 p_id=>wwv_flow_imp.id(3630731945848669466)
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
 p_id=>wwv_flow_imp.id(3630731591511669465)
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
 p_id=>wwv_flow_imp.id(3630731156396669465)
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
 p_id=>wwv_flow_imp.id(3630730763071669464)
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
 p_id=>wwv_flow_imp.id(3630730340642669463)
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
 p_id=>wwv_flow_imp.id(3630729977861669461)
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
 p_id=>wwv_flow_imp.id(3630729542616669460)
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
 p_id=>wwv_flow_imp.id(3630729135719669459)
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
 p_id=>wwv_flow_imp.id(3630728762508669458)
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
 p_id=>wwv_flow_imp.id(3630728338341669457)
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
 p_id=>wwv_flow_imp.id(3630727960466669456)
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
 p_id=>wwv_flow_imp.id(3630727552587669455)
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
 p_id=>wwv_flow_imp.id(3630727147208669454)
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
 p_id=>wwv_flow_imp.id(3630726723307669453)
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
 p_id=>wwv_flow_imp.id(3630726405653669452)
,p_db_column_name=>'GROSS_NIS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Gross Nis'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NIS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630725927037669450)
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
 p_id=>wwv_flow_imp.id(3630725608348669449)
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
 p_id=>wwv_flow_imp.id(3630725182306669448)
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
 p_id=>wwv_flow_imp.id(3630724806080669447)
,p_db_column_name=>'NISRATE_ID'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Nisrate Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NISRATE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630724330504669446)
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
 p_id=>wwv_flow_imp.id(3630723974870669445)
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
 p_id=>wwv_flow_imp.id(3630723592800669445)
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
 p_id=>wwv_flow_imp.id(3630723123836669444)
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
 p_id=>wwv_flow_imp.id(3630722800998669443)
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
 p_id=>wwv_flow_imp.id(3630722325052669442)
,p_db_column_name=>'NIS_CONTRIBUTION'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'NIB/SS Contribution'
,p_column_type=>'NUMBER'
,p_static_id=>'NIS_CONTRIBUTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630722007774669441)
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
 p_id=>wwv_flow_imp.id(3630721599080669440)
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
 p_id=>wwv_flow_imp.id(3630721184852669439)
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
 p_id=>wwv_flow_imp.id(3630720803356669438)
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
 p_id=>wwv_flow_imp.id(3630720416989669437)
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
 p_id=>wwv_flow_imp.id(3630719930646669436)
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
 p_id=>wwv_flow_imp.id(3630719556547669435)
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
 p_id=>wwv_flow_imp.id(3630719211763669434)
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
 p_id=>wwv_flow_imp.id(3630718758423669433)
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
 p_id=>wwv_flow_imp.id(3630718388626669432)
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
 p_id=>wwv_flow_imp.id(3630717978726669431)
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
 p_id=>wwv_flow_imp.id(3630717607339669430)
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
 p_id=>wwv_flow_imp.id(3630717134543669429)
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
 p_id=>wwv_flow_imp.id(3630716817410669428)
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
 p_id=>wwv_flow_imp.id(3630716344675669427)
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
 p_id=>wwv_flow_imp.id(3630715967051669426)
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
 p_id=>wwv_flow_imp.id(3630715608865669425)
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
 p_id=>wwv_flow_imp.id(3630715139689669424)
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
 p_id=>wwv_flow_imp.id(3630714818777669423)
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
 p_id=>wwv_flow_imp.id(3630714329611669422)
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
 p_id=>wwv_flow_imp.id(3630713930545669420)
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
 p_id=>wwv_flow_imp.id(3630713549139669419)
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
 p_id=>wwv_flow_imp.id(3630713151766669418)
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
 p_id=>wwv_flow_imp.id(3630712819429669417)
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
 p_id=>wwv_flow_imp.id(3630712370790669416)
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
 p_id=>wwv_flow_imp.id(3630711998822669415)
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
 p_id=>wwv_flow_imp.id(3630711619748669414)
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
 p_id=>wwv_flow_imp.id(3630711135015669413)
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
 p_id=>wwv_flow_imp.id(3630710746908669412)
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
 p_id=>wwv_flow_imp.id(3630710380600669411)
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
 p_id=>wwv_flow_imp.id(3630710016809669410)
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
 p_id=>wwv_flow_imp.id(3630709615452669410)
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
 p_id=>wwv_flow_imp.id(3630709125948669408)
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
 p_id=>wwv_flow_imp.id(3630708785471669407)
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
 p_id=>wwv_flow_imp.id(3630708388133669406)
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
 p_id=>wwv_flow_imp.id(3630707952673669405)
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
 p_id=>wwv_flow_imp.id(3630707583376669405)
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
 p_id=>wwv_flow_imp.id(3630707206035669404)
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
 p_id=>wwv_flow_imp.id(3630706792900669403)
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
 p_id=>wwv_flow_imp.id(3630706404950669402)
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
 p_id=>wwv_flow_imp.id(3630705955016669401)
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
 p_id=>wwv_flow_imp.id(3630705554711669400)
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
 p_id=>wwv_flow_imp.id(3630705177032669399)
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
 p_id=>wwv_flow_imp.id(3630704798646669398)
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
 p_id=>wwv_flow_imp.id(3630749446108669511)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>147
,p_column_identifier=>'EH'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3435218714622464857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255314'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:ID:EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY:'
,p_break_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_break_enabled_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_sum_columns_on_break=>'TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3630703945448669395)
,p_report_id=>wwv_flow_imp.id(3435218714622464857)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'R + S'
,p_format_mask=>'FML999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Gross'
,p_report_label=>'Gross'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3513313036534375645)
,p_plug_name=>'Employees To Be paid'
,p_parent_plug_id=>wwv_flow_imp.id(3610552401166487651)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed,c.hourly_rate, c.Personal_Rate, c.salary_taxable ',
'from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id) ',
'left outer join (select x.emp_id, x.start_date, x.end_date, x.hourly_rate, x.Personal_Rate, x.salary_taxable ',
'    from Hr_Rcm_Salary x',
'    where :P1251_START_DATE BETWEEN TRUNC(x.START_DATE) AND TRUNC(NVL(x.END_DATE, trunc(current_date) + 60))',
'    ) C On B.Id = C.Emp_Id',
'join hr_hcf_position p on p.id = b.position_id',
'where v_earn.id = :P1251_EARNINGS_PERIOD_ID',
'and  exists (select 1',
'              from pa_pcf_payroll_emp pemp',
'              where b.id =pemp.emp_id',
'              and earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'             )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_START_DATE, P1251_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Current Employees'
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
 p_id=>wwv_flow_imp.id(3513312850815375644)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>142922971896688121
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630756982061669542)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630756619204669539)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630756178773669537)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630755765415669536)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630755377841669535)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630754960906669534)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630754551954669533)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630754213349669532)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630753756797669531)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630753344764669529)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630753007197669528)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630752540179669527)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630752209930669525)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3508177309009370904)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630751746565669524)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630751416748669523)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630751003102669522)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3630750571935669521)
,p_db_column_name=>'SALARY_TAXABLE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Salary Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3512627701025428215)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMP_ID:POSITION_ID:ORG_STRUCTURE:EMP_COMPANY_NO:EMPLOYMENT_STATUS:WKLOCATION_ID:EMPLOYMENT_TYPE_ID:DATE_EMPLOYED::HOURLY_RATE:PERSONAL_RATE:SALARY_TAXABLE'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3630806119062880862)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3630806179012880863)
,p_plug_name=>'Statistics'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3499504079322400498)
,p_plug_name=>'All Payroll for Periods'
,p_parent_plug_id=>wwv_flow_imp.id(3630806179012880863)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3504059782591597208)
,p_plug_name=>'Current'
,p_parent_plug_id=>wwv_flow_imp.id(3630806179012880863)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3630806270312880864)
,p_plug_name=>'Payroll'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3543527371797023219)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3630806270312880864)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||case when verified_date is null then '''' else'' by '' end||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated, manager_approved_by, manager_approved_date',
'from ',
'  pa_pmg_payrollhd',
'where ',
'  id = :p1251_id'))
,p_display_when_condition=>':P1251_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1251_ID'
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
 p_id=>wwv_flow_imp.id(3598253769625262738)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>1
,p_column_heading=>'Entered'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3598253700548262737)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>2
,p_column_heading=>'Last changed'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3598253628656262736)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>3
,p_column_heading=>'Verified'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3598253526245262735)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>4
,p_column_heading=>'Machine insert'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3598253427280262734)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Machine update'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3598253297080262733)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3415151155972862791)
,p_query_column_id=>7
,p_column_alias=>'MANAGER_APPROVED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Approved By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3415151243171862792)
,p_query_column_id=>8
,p_column_alias=>'MANAGER_APPROVED_DATE'
,p_column_display_sequence=>26
,p_column_heading=>'Approved Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3543531753552023239)
,p_plug_name=>'Execution'
,p_parent_plug_id=>wwv_flow_imp.id(3630806270312880864)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4999070629876236215)
,p_plug_name=>'Disable Deduction/s, Income/s or Employee/s for Payment (NB. Only records disabled via this tool can be enabled here.)'
,p_parent_plug_id=>wwv_flow_imp.id(3630806270312880864)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'plsql code',
'',
':P1251_PAY_STATUS in (''CL'',''OPEN'') AND :P1251_ID IS NOT NULL'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5052903731629265442)
,p_plug_name=>'Current Disabled Listing of Employees'
,p_parent_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", v.transaction_type_id,COMPUTE_GROSS,employee_status,employment_type_id,emp_grade_id,',
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
'join hr_hcf_position c on  m.id=c.orgdtl_id where c.id =v.position_id) ORG_STRUCTURE,w.id Ind_link',
'from "HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'where  V.ORG_ID = :APP_ORG_ID',
'AND INCLUDE_PAYROLL = ''N''',
'AND PAY_EXE_STATUS = ''EMPLOYEE_OFF'' ',
'  and exists (select 1',
'                     from pa_pcf_earningperiod c ',
'                     where c.org_id = v.org_id ',
'                     and c.payment_type = v.payment_type ',
'                     and c.employment_class_id = v.employment_class_id ',
'                     and c.compute_gross = v.compute_gross',
'                     and c.id = :P1251_EARNINGS_PERIOD_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ENABLE,P1251_EARNINGS_PERIOD_ID'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5052904259271265448)
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
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID,SELF_SERVE_ID,P1281_NAVIGATOR:#ID#,#ID#,66'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>2106266059510766496
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333033661680191708)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333034046180191708)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'In Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333034473843191709)
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
 p_id=>wwv_flow_imp.id(3333034868994191709)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333035251554191709)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333035647169191710)
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
 p_id=>wwv_flow_imp.id(3333036006308191710)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333036477145191711)
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
 p_id=>wwv_flow_imp.id(3333036888875191711)
,p_db_column_name=>'SHIRT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Shirt'
,p_column_type=>'STRING'
,p_static_id=>'SHIRT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333037236249191712)
,p_db_column_name=>'SHOE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shoe'
,p_column_type=>'STRING'
,p_static_id=>'SHOE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333037632329191712)
,p_db_column_name=>'TROUSERS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Trousers'
,p_column_type=>'STRING'
,p_static_id=>'TROUSERS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333038086482191713)
,p_db_column_name=>'CAP_SIZE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cap Size'
,p_column_type=>'STRING'
,p_static_id=>'CAP_SIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333038420059191713)
,p_db_column_name=>'WAIST'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Waist'
,p_column_type=>'STRING'
,p_static_id=>'WAIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333038850548191714)
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
 p_id=>wwv_flow_imp.id(3333039204027191715)
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
 p_id=>wwv_flow_imp.id(3333039631125191715)
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
 p_id=>wwv_flow_imp.id(3333040064920191716)
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
 p_id=>wwv_flow_imp.id(3333040467922191716)
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
 p_id=>wwv_flow_imp.id(3333040828011191716)
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
 p_id=>wwv_flow_imp.id(3333041265157191717)
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
 p_id=>wwv_flow_imp.id(3333041676985191717)
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
 p_id=>wwv_flow_imp.id(3333042023543191718)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333042477354191718)
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
 p_id=>wwv_flow_imp.id(3333042850615191719)
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
 p_id=>wwv_flow_imp.id(3333043205665191719)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_static_id=>'JOB_APPLIED_FOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333043620008191720)
,p_db_column_name=>'UNION_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Union Code'
,p_column_type=>'STRING'
,p_static_id=>'UNION_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333044041452191720)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_static_id=>'SEPARATED_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333044472442191721)
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
 p_id=>wwv_flow_imp.id(3333044891217191721)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333045261394191722)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Report To'
,p_column_type=>'NUMBER'
,p_static_id=>'REPORT_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333045667793191723)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333046060654191723)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333046474206191724)
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
 p_id=>wwv_flow_imp.id(3333046828043191724)
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
 p_id=>wwv_flow_imp.id(3333047209220191725)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333047932031191725)
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
 p_id=>wwv_flow_imp.id(3333048396213191726)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333048764844191726)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Transaction type id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333033236492191707)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333032412113191707)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333032870416191707)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333049165525191727)
,p_db_column_name=>'BADGE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Badge'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333029608575191703)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333030094564191704)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333030493376191705)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333030857844191705)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333031257164191705)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>540
,p_column_identifier=>'BC'
,p_column_label=>'Emp Grade'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333031694259191706)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333032057107191706)
,p_db_column_name=>'IND_LINK'
,p_display_order=>560
,p_column_identifier=>'BE'
,p_column_label=>'Ind Link'
,p_column_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP,1261:P1261_ID:#IND_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5060708257322786625)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3864121'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:IND_ID:INCLUDE_PAYROLL:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:COMPUTE_GROSS:EMPLOYEE_STATUS:EMPLOYMENT_TYPE_ID:EMP_GRADE_ID:IND_LINK:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3333050726737191729)
,p_report_id=>wwv_flow_imp.id(5060708257322786625)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is null'
,p_condition_sql=>'"SEPARATED_STATUS" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5079220494232762440)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated Employees'
,p_report_seq=>10
,p_report_alias=>'3864113'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:IND_ID:DATE_EMPLOYED:DATE_SEPARATED:YRS_SRV:POSITION_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:IND_LINK'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3333049950571191728)
,p_report_id=>wwv_flow_imp.id(5079220494232762440)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is not null'
,p_condition_sql=>'"SEPARATED_STATUS" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5102217184611273935)
,p_plug_name=>'Current Disabled Employee Fringe Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, full_name,',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    AMOUNT as AMOUNT,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'     HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        employment_status,',
'        employment_class,',
'        v.payment_type,',
'        wklocation_id,income_status',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod c on (c.org_id = v.org_id and c.payment_type = v.payment_type ',
'                                 and c.employment_class_id = v.employment_class_id and c.compute_gross = v.compute_gross)',
'where HR_RCM_EMPENTITLE.income_status=''SP''',
'and HR_RCM_EMPENTITLE.PAY_EXE_STATUS like ''%DISABLE%''',
'and INCOME_CODE_ID = to_number(:P1251_INCOME_NAME) ',
'and c.id = nvl(:P1251_EARNINGS_PERIOD_ENABLE,:P1251_EARNINGS_PERIOD_ID)',
'ORDER BY START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_INCOME_NAME,,P1251_EARNINGS_PERIOD_ID,P1251_EARNINGS_PERIOD_ENABLE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5102217559330273943)
,p_name=>'Search Employee Rules'
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
,p_internal_uid=>2155579359569774991
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333063734472191746)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333063323425191746)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333062900311191745)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333062550129191745)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333062176819191745)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333061799653191744)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333061352025191744)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333060899854191743)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333060553760191743)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333060149177191742)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333059702617191742)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632556208618481225)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333059329789191742)
,p_db_column_name=>'TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333058978966191741)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333058520339191741)
,p_db_column_name=>'AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333058140634191740)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333057702085191740)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333057331396191739)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333056957599191739)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333056500736191738)
,p_db_column_name=>'REMARKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333056129560191738)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333052682415191734)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333052972183191734)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333053323478191735)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333053712915191735)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333054128464191736)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333054539130191736)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333054947970191737)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333055301175191737)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333055748379191738)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333052261719191732)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333051828083191732)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5102226170153273961)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3864259'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCOME_TYPE:ID:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY::INCOME_STATUS:FULL_NAME'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5129453661265948156)
,p_plug_name=>'Current Disabled Employee-Non Statutory Deductions '
,p_parent_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select x."ID", ',
'        "EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'        x."EMP_ID",x."EMP_ID" employee_id,',
'        "DATESTART",',
'        "DISCIPLINE_ID",',
'        "DEDUCT_STATUS",',
'        "AMOUNT_BORROWED",',
'        "AMOUNT_OWING",',
'        "INTEREST_TYPE",',
'        "INTEREST_RATE",',
'        "PERIOD",',
'        "DATE_CLOSE",',
'        "CLOSED_BY",',
'        "DEDUCTION_AMOUNT",',
'        "APPROVED_BY",',
'        "APPROVED_DATE",',
'        "DEDUCTION_NO",',
'        x."REMARKS",',
'        "PREVIOUS_START_DATE",',
'        "CLOSING_EARNING_PERIOD",',
'        "CURRENT_BALANCE",',
'        "DEDUCTION_TYPE",',
'        x."HOURLY_RATE",',
'        "FOR_PRV_YTD_ENTRY",',
'        x."ENTERED_BY",',
'        x."ENTRY_DATE",',
'        x."VERIFIED_BY",',
'        x."VERIFIED_DATE",',
'        x."LAST_CHANGED_BY",',
'        x."LAST_CHANGED_DATE",',
'        x."MACHINE_INSERT",',
'        x."MACHINE_UPDATE",',
'        x."TRANSACTION_TYPE_ID",',
'        x."STATUS"',
'        from "PA_PCF_ADMINDEDUCTION" x ',
'        where  DEDUCT_STATUS=''SP''',
'        and PAY_EXE_STATUS  like ''%DISABLE%''       ',
'        and  expense_id = :P1251_DEDUCTION_NAME',
'        and exists (select 1',
'                     from pa_pcf_earningperiod c ',
'                     where c.org_id = x.org_id ',
'                     and c.payment_type = x.payment_type ',
'                     and c.employment_class_id = x.employment_class_id ',
'                     and c.compute_gross = x.compute_gross',
'                     and c.id = nvl(:P1251_EARNINGS_PERIOD_ENABLE,:P1251_EARNINGS_PERIOD_ID))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_DEDUCTION_NAME,P1251_EARNINGS_PERIOD_ID,P1251_EARNINGS_PERIOD_ENABLE'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5129453883333948158)
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
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD,P1297_POST_EARN:#ID#,1251,0'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>2182815683573449206
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333065666622191750)
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
 p_id=>wwv_flow_imp.id(3333066025953191751)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333066421814191752)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333066838357191752)
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
 p_id=>wwv_flow_imp.id(3333067281475191753)
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
 p_id=>wwv_flow_imp.id(3333067697178191754)
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
 p_id=>wwv_flow_imp.id(3333068030332191754)
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
 p_id=>wwv_flow_imp.id(3333068472070191755)
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
 p_id=>wwv_flow_imp.id(3333068821346191755)
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
 p_id=>wwv_flow_imp.id(3333069274681191756)
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
 p_id=>wwv_flow_imp.id(3333069668623191757)
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
 p_id=>wwv_flow_imp.id(3333070065441191757)
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
 p_id=>wwv_flow_imp.id(3333070441833191758)
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
 p_id=>wwv_flow_imp.id(3333070883827191758)
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
 p_id=>wwv_flow_imp.id(3333071244588191758)
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
 p_id=>wwv_flow_imp.id(3333071669912191759)
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
 p_id=>wwv_flow_imp.id(3333072038100191759)
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
 p_id=>wwv_flow_imp.id(3333072464078191760)
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
 p_id=>wwv_flow_imp.id(3333072858351191760)
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
 p_id=>wwv_flow_imp.id(3333073265355191760)
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
 p_id=>wwv_flow_imp.id(3333073654612191761)
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
 p_id=>wwv_flow_imp.id(3333074043761191761)
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
 p_id=>wwv_flow_imp.id(3333074449103191762)
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
 p_id=>wwv_flow_imp.id(3333074831658191762)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_static_id=>'DEDUCT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333075246580191763)
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
 p_id=>wwv_flow_imp.id(3333075693983191764)
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
 p_id=>wwv_flow_imp.id(3333076025957191764)
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
 p_id=>wwv_flow_imp.id(3333076490035191765)
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
 p_id=>wwv_flow_imp.id(3333076872818191765)
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
 p_id=>wwv_flow_imp.id(3333077207409191766)
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
 p_id=>wwv_flow_imp.id(3333077629975191766)
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
 p_id=>wwv_flow_imp.id(3333078023134191767)
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
 p_id=>wwv_flow_imp.id(3333078488555191767)
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
 p_id=>wwv_flow_imp.id(3333078842825191768)
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
 p_id=>wwv_flow_imp.id(3333079224552191768)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3333065290438191750)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5020578945549153275)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'3864414'
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
 p_id=>wwv_flow_imp.id(3333080064876191770)
,p_report_id=>wwv_flow_imp.id(5020578945549153275)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5049937656044380109)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Active Deductions'
,p_report_seq=>10
,p_report_alias=>'3864422'
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
,p_break_on=>'EMP_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:DEDUCTION_TYPE:0:0:0:0'
,p_sum_columns_on_break=>'DEDUCTION_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3333080897946191771)
,p_report_id=>wwv_flow_imp.id(5049937656044380109)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5100284762296848064)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'3864430'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:EXPENSE_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:DEDUCTION_TYPE:'
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
 p_id=>wwv_flow_imp.id(3333081617437191772)
,p_report_id=>wwv_flow_imp.id(5100284762296848064)
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
 p_id=>wwv_flow_imp.id(5129457661687948967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3864438'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3636025943060881815)
,p_plug_name=>'Payroll Logs'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417510525416119837)
,p_plug_name=>'Back Ground Process Monitoring'
,p_region_name=>'MY_BG_REGION'
,p_parent_plug_id=>wwv_flow_imp.id(3636025943060881815)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REQUEST, EXECUTION_ID,PROCESS_NAME, STATUS, STATUS_CODE',
'from APEX_APPL_PAGE_BG_PROC_STATUS ',
'where EXECUTION_ID =:P1251_EXECUTION_ID',
'order by execution_Id desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EXECUTION_ID'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(417510637547119838)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>228615369436495204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417510710844119839)
,p_db_column_name=>'REQUEST'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Request'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417510851128119840)
,p_db_column_name=>'EXECUTION_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Execution Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417510905470119841)
,p_db_column_name=>'PROCESS_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Process Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417511040782119842)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417511079724119843)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(417520654748204198)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2286254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQUEST:EXECUTION_ID:PROCESS_NAME:STATUS:STATUS_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(423718906982747576)
,p_plug_name=>'Listing of Errors'
,p_parent_plug_id=>wwv_flow_imp.id(3636025943060881815)
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TBLERRORLOG.ERROR_ID as ERROR_ID,',
'    TBLERRORLOG.ORA_ERROR_CODE as ORA_ERROR_CODE,',
'    TBLERRORLOG.ORA_DESCRIPTION as ORA_DESCRIPTION,',
'    TBLERRORLOG.APP_DESCRIPTION as APP_DESCRIPTION,',
'    TBLERRORLOG.CREATED_BY as CREATED_BY,',
'    TBLERRORLOG.CREATION_DATE as CREATION_DATE,',
'    TBLERRORLOG.MODULE_NAME as MODULE_NAME,',
'    TBLERRORLOG.TRANSACTION_SOURCE_ID as TRANSACTION_SOURCE_ID,',
'    TBLERRORLOG.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'     NULL   PROCEDURE_NAME,',
'     NULL   PACKAGE_NAME,',
'     NULL   ip_address, ',
'     NULL CLIENT_MACHINE,',
'     NULL   BACKTRACE',
' from TBLERRORLOG TBLERRORLOG',
' where  org_id=:APP_ORG_ID',
' AND EARNINGS_PERIOD_ID = :P1251_EARNINGS_PERIOD_ID',
' and upper(MODULE_NAME) like ''PKG_PAYROLL.%''',
'UNION',
'select id  as ERROR_ID,',
'     ERROR_CODE as ORA_ERROR_CODE,',
'     ERROR_message as ORA_DESCRIPTION,',
'     ERROR_MESSAGE_DEV as APP_DESCRIPTION,',
'     CREATED_BY as CREATED_BY,',
'     CREATED_ON as CREATION_DATE,',
'     MODULE as MODULE_NAME,',
'     NULL as TRANSACTION_SOURCE_ID,',
'     EARNINGS_PERIOD_ID,',
'    PROCEDURE_NAME,',
'    PACKAGE_NAME,',
'    ip_address, ',
'    CLIENT_MACHINE,',
'    BACKTRACE',
' from ERROR_LOG ',
' where  org_id=:APP_ORG_ID',
' AND EARNINGS_PERIOD_ID = :P1251_EARNINGS_PERIOD_ID',
' and upper(package_name) like ''PKG_PAYROLL_%''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from error_log',
'where earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'and upper(package_name) like ''%PKG_PAYROLL_%'''))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(353198741465541613)
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
,p_owner=>'APPS'
,p_internal_uid=>47190882123858744
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353198850057541614)
,p_db_column_name=>'ERROR_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Error Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353198920262541615)
,p_db_column_name=>'ORA_ERROR_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ora Error Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353199024532541616)
,p_db_column_name=>'ORA_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ora Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353199108749541617)
,p_db_column_name=>'APP_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'App Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353199201332541618)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353199264831541619)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722099961508470)
,p_db_column_name=>'MODULE_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722160027508471)
,p_db_column_name=>'PROCEDURE_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Procedure Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722349077508472)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722452409508473)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722540445508474)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722565144508475)
,p_db_column_name=>'CLIENT_MACHINE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Client Machine'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(353722715360508476)
,p_db_column_name=>'BACKTRACE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Backtrace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(312466556235386579)
,p_db_column_name=>'TRANSACTION_SOURCE_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Transaction Source Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(353742896181508090)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'477351'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ERROR_ID:ORA_ERROR_CODE:ORA_DESCRIPTION:APP_DESCRIPTION:CREATED_BY:CREATION_DATE:MODULE_NAME:PROCEDURE_NAME:PACKAGE_NAME:EARNINGS_PERIOD_ID:IP_ADDRESS:CLIENT_MACHINE:BACKTRACE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3437925092464961774)
,p_plug_name=>'Logs of System Processes'
,p_parent_plug_id=>wwv_flow_imp.id(3636025943060881815)
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_APU_PROCESSFEEDBACKLOG.ID as ID,time_elapse,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_TYPE as PROCESS_TYPE,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_NAME as PROCESS_NAME,',
'    HR_APU_PROCESSFEEDBACKLOG.EMP_ID as EMP_ID,',
'    HR_APU_PROCESSFEEDBACKLOG.MESSAGE as MESSAGE,',
'    HR_APU_PROCESSFEEDBACKLOG.LOG_DATE as LOG_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.AFFECTED_TABLE as AFFECTED_TABLE,',
'    HR_APU_PROCESSFEEDBACKLOG.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    HR_APU_PROCESSFEEDBACKLOG.EXECTIME_STAMP as EXECTIME_STAMP,',
'    HR_APU_PROCESSFEEDBACKLOG.PAYROLL_RUN_NUMBER as PAYROLL_RUN_NUMBER,',
'    HR_APU_PROCESSFEEDBACKLOG.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_APU_PROCESSFEEDBACKLOG.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_APU_PROCESSFEEDBACKLOG.ENTERED_BY as ENTERED_BY,',
'    HR_APU_PROCESSFEEDBACKLOG.ENTRY_DATE as ENTRY_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_APU_PROCESSFEEDBACKLOG.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_ID as PROCESS_ID,rec_count, process_start, process_end',
' from HR_APU_PROCESSFEEDBACKLOG HR_APU_PROCESSFEEDBACKLOG',
'where org_id=:APP_ORG_ID',
'and earnings_period_id=:P1251_EARNINGS_PERIOD_ID',
'AND PROCESS_TYPE in (''PAYROLL PROCESS'',''PAYROLL PURGE'')',
'and payroll_RUN_NUMBER=:P1251_RUN_NUMBER'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID,P1251_RUN_NUMBER'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
' from HR_APU_PROCESSFEEDBACKLOG',
'where org_id=:APP_ORG_ID',
'and earnings_period_id=:P1251_EARNINGS_PERIOD_ID',
'AND PROCESS_TYPE in (''PAYROLL PROCESS'',''PAYROLL PURGE'')'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3437925002263961774)
,p_name=>'Logs of System Processes'
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
,p_internal_uid=>373062802610102778
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497373622426004036)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497374073771004038)
,p_db_column_name=>'PROCESS_TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Process Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497374476759004038)
,p_db_column_name=>'PROCESS_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Process Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497374803389004038)
,p_db_column_name=>'EMP_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497375293844004038)
,p_db_column_name=>'MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Message Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497375661380004039)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LOG_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497376093609004039)
,p_db_column_name=>'AFFECTED_TABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Affected Table'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AFFECTED_TABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497376428203004039)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ern Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497376846479004040)
,p_db_column_name=>'EXECTIME_STAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Exectime Stamp'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'EXECTIME_STAMP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497377263443004040)
,p_db_column_name=>'PAYROLL_RUN_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Run'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_RUN_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497377660907004040)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497378027529004041)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497378494643004041)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497378832244004041)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497379290867004041)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497379611141004042)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3497380029906004042)
,p_db_column_name=>'PROCESS_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Proc ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3556752040332381365)
,p_db_column_name=>'REC_COUNT'
,p_display_order=>27
,p_column_identifier=>'R'
,p_column_label=>'Rec Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3556751936166381364)
,p_db_column_name=>'PROCESS_START'
,p_display_order=>37
,p_column_identifier=>'S'
,p_column_label=>'Process Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3556751834875381363)
,p_db_column_name=>'PROCESS_END'
,p_display_order=>47
,p_column_identifier=>'T'
,p_column_label=>'Process End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(423720693576747594)
,p_db_column_name=>'TIME_ELAPSE'
,p_display_order=>57
,p_column_identifier=>'U'
,p_column_label=>'Elapse(Sec)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3437922883161956597)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'329968'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROCESS_TYPE:PAYROLL_RUN_NUMBER:PROCESS_NAME:MESSAGE:EARNINGS_PERIOD_ID:AFFECTED_TABLE:LAST_CHANGED_BY:REC_COUNT:PROCESS_START:PROCESS_END:TIME_ELAPSE:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EXECTIME_STAMP'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'PROCESS_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'PROCESS_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353722813787508477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(423718906982747576)
,p_button_name=>'PURGE_ERRORLOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Purge Errorlog'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423721001661747597)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3437925092464961774)
,p_button_name=>'PURGE_RUN_LOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Purge Run Log'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3333026111793191698)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_button_name=>'PROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3333026508909191699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_button_name=>'MANAUL_STUFF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manaul Stuff'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630606206855584317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1251_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630607799520584321)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1251_RETURN_VALUE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630607423528584320)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'(:P1251_PAY_STATUS = ''OPEN'' AND :P1251_STATUS = 307)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630607027031584320)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P1251_ID is not null and LENGTH(:P1251_VERIFIED_BY)=0) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P1251_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630606602772584318)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1251_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630611778245584325)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'EXECUTE_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute Payroll'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd y',
'where upper(pay_status)=''CL''',
'and verified_by is not null',
'and id=:P1251_ID',
'and exists (select 1',
'           from pa_pcf_payroll_emp x',
'           where x.earnings_period_id = y.earnings_period_id',
'           and x.earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'           )'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(394756875333391881)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'EXECUTE_PAYROLL_BG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute Payroll BG'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd y',
'where upper(pay_status)=''CL''',
'and verified_by is not null',
'and id=:P1251_ID',
'and exists (select 1',
'           from pa_pcf_payroll_emp x',
'           where x.earnings_period_id = y.earnings_period_id',
'           and x.earnings_period_id = :P1251_EARNINGS_PERIOD_ID',
'           )'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630611434851584325)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'PURGE_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Payroll'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrolldtl',
'where earnings_period_id=:P1251_EARNINGS_PERIOD_ID',
'and pay_status !=''AR''',
'and  pkg_global_fnts.status_descript(:P1251_STATUS) !=''VERIFY'''))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630611025581584325)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'GEN_POSTING'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Posting'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1505:&SESSION.::&DEBUG.:1505:P1505_CURRENT_EARN,P1505_PASS_ERN:&P1251_EARNINGS_PERIOD_ID.,&P1251_EARNINGS_PERIOD_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd',
'where id = :P1251_ID',
'and TRIM(UPPER(pay_status))=''OPEN''',
'and  pkg_security.fn_testfinegradeOrgStruct(:APP_USER)=0'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630610632474584324)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'POST_ENTRIES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Post Entries'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1251_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630610248725584324)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'QUICK_ENTRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Quick Entry Posting'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd',
'where id = :P1251_ID',
'and TRIM(UPPER(pay_status))=''OPEN'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3603582155156229744)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'GENERAL_DEDUCTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Quick Deductions'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd',
'where id = :P1251_ID',
'and TRIM(UPPER(pay_status))=''OPEN'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630605410396584317)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1251_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630604982999584316)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:1251::'
,p_button_condition=>'P1251_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630609391489584322)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'RESET_ARCHIVE_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Archive Payroll'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_archive  number(10):=0; v_reset number(10):=0;',
'',
'',
'begin ',
'        Select count(1) into v_archive',
'        from PA_PMG_PAYROLLHD',
'        where id=:P1251_ID',
'        and PAY_STATUS=''AR'';',
'           ',
'        select count(1) into v_reset',
'        from tbluser',
'        where trim(user_name)=:APP_USER',
'        and RESET_ARCHIVE_PAYROLL=1;',
'',
'IF v_archive > 0 AND v_reset > 0 then',
'    return TRUE;',
'else',
'    return FALSE;',
'end if;',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630608969719584322)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'GENERATE_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Payroll Headers'
,p_button_position=>'EDIT'
,p_button_condition=>':P1251_EARNINGS_PERIOD_ID is not null'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630608662062584322)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'PAYSLIP'
,p_button_static_id=>'PAYSLIP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'View Payslips'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrolldtl',
'where earnings_period_id = :P1251_EARNINGS_PERIOD_ID;'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(332767376517246106)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3487232185846242734)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'PAY_CHANGE'
,p_button_static_id=>'PAYCHANGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'HR Export '
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1350:&SESSION.::&DEBUG.:1350:P1350_EARNINGS_PERIOD_ID:&P1251_EARNINGS_PERIOD_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollhd a',
'join PA_PCF_EARNINGPERIOD b on b.id=a.EARNINGS_PERIOD_ID',
'where a.id = :P1251_ID',
'and TRIM(UPPER(a.pay_status)) in (''CR'',''AR'')',
'and b.EARNINGS_TYPE=''RG'''))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602741144902778336)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'CHECK_PRINTING'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Check Printing'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15:P15_PAY_BATCH:&P1251_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PMG_PAYROLLHD',
'WHERE ID=:P1251_ID',
'AND PAY_STATUS=''AR'''))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630605796068584317)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(3605387903648095838)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1251_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630582342025584265)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:1251::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630605410396584317)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630582720293584265)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630607423528584320)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630581933887584265)
,p_branch_name=>'purge_branch'
,p_branch_action=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630611434851584325)
,p_branch_sequence=>4
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(359642731624981319)
,p_branch_name=>'posting_deduct'
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_PAY_BATCH,P45_EARNINGS_PERIOD_ID,P45_EPFLAG,P45_PASS_EARN_PRD:&P1251_ID.,&P1251_EARNINGS_PERIOD_ID.,1,&P1251_EARNINGS_PERIOD_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3603582155156229744)
,p_branch_sequence=>14
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630581470478584264)
,p_branch_name=>'posting_branch'
,p_branch_action=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:1298:P1298_EARNINGS_PERIOD_ID:&P1251_EARNINGS_PERIOD_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630610632474584324)
,p_branch_sequence=>24
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3470385785513801359)
,p_branch_name=>'set_values_quick_branch'
,p_branch_action=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:RP,1400:P1400_EARNINGS_PERIOD_ID,P1400_EMP_ID,P1400_ENTITLEMENTS_ENT,P1400_RETURN_PAGE,P1400_PAY_BATCH,P1400_EPFLAG,P1400_PASS_EARN_PRD_ID:&P1251_EARNINGS_PERIOD_ID.,0,0,1251,&P1251_ID.,0,&P1251_EARNINGS_PERIOD_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630610248725584324)
,p_branch_sequence=>44
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3496338116381650103)
,p_branch_name=>'post adhoc'
,p_branch_action=>'f?p=&APP_ID.:1351:&SESSION.::&DEBUG.:RP,1351::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3603582155156229744)
,p_branch_sequence=>54
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630583127819584266)
,p_branch_name=>'Go To Page 1251'
,p_branch_action=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>64
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630583562745584266)
,p_branch_action=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.::P1251_ID:&P1251_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630606206855584317)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630583905398584267)
,p_branch_action=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.::P1251_ID:&P1251_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3630605796068584317)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417510382772119836)
,p_name=>'P1251_EXECUTION_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(423720380528747591)
,p_name=>'P1251_RUN_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3437925092464961774)
,p_prompt=>'Run Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct payroll_run_number a, payroll_run_number b',
'from HR_APU_PROCESSFEEDBACKLOG',
'where EARNINGS_PERIOD_ID= :P1251_EARNINGS_PERIOD_ID',
'ORDER BY 1 DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1251_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(1839504315486747063)
,p_name=>'P1251_REPORT_URL'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    TABLE_VALUE || ''&p2='' || (select REPORT_LOCATION from report where report_name like ''Standard Payslip v3.4 Freepay'') ',
'from HR_HCF_LOOKUP ',
'where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' ',
'and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_SHR_DED);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333026918209191699)
,p_name=>'P1251_DISABLE_FROM_PAYROLL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Enable/Disable Payroll Options'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Disable Deductions;DEDUCTION_DISABLE,Enable Deductions;DEDUCTION_ENABLE,Enable All/Inc/Ben;PAYMENT_ENABLE,Disable All/Inc/Ben;PAYMENT_DISABLE,Employee/s Off Payroll;EMPLOYEE_OFF,Employee/s On Payroll;EMPLOYEE_ON'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333027386572191700)
,p_name=>'P1251_DEDUCTION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Deduction Name'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'AND exists(select 1',
'            from pa_pcf_admindeduction x join pa_pcf_earningperiod z ',
'            on (x.org_id = z.org_id and x.payment_type = z.payment_type and x.employment_class_id = z.employment_class_id and x.compute_gross = z.compute_gross )',
'            where x.expense_id=v.id',
'            and z.id = :P1251_EARNINGS_PERIOD_ID',
'            and x.org_id=:APP_ORG_ID)'))
,p_lov_cascade_parent_items=>'P1251_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333027742762191700)
,p_name=>'P1251_INCOME_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Income Name'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct description||''( ''|| admin_status||'')'' a, v.id',
'from pa_pcf_incomecode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'and  admin_status in (''BOTH'',''SYS'')',
'AND exists(select 1',
'            from hr_rcm_empentitle y join hr_rcm_employee x on x.id = y.emp_id',
'            join pa_pcf_earningperiod z  on (x.org_id = z.org_id and x.payment_type = z.payment_type and x.employment_class_id = z.employment_class_id and x.compute_gross = z.compute_gross )',
'            where y.income_code_id=v.id',
'            and z.id = :P1251_EARNINGS_PERIOD_ID',
'            and x.org_id = :APP_ORG_ID',
'            and  admin_status in (''BOTH'',''SYS'')',
'            and not exists (select 1',
'                            from pa_pcf_adhocpayment w',
'                            where z.id =w.earnings_period_id',
'                            and y.id = w.empent_id',
'                            )',
'            )'))
,p_lov_cascade_parent_items=>'P1251_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333028185945191701)
,p_name=>'P1251_EARNINGS_PERIOD_ENABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Source Earnings Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1251_DISABLE_FROM_PAYROLL = ''DEDUCTION_ENABLE'' then',
'return',
'       ''select EARN_DESCRIPTION,id',
'        from VW_EARNALL_NO_SEC a',
'        where exists (select 1',
'                      from vw_useraccess x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and upper(x.payment_type)=upper(a.payment_type))',
'        and exists (select 1',
'                    from pa_pcf_earningperiod ernprd',
'                    where  ernprd.employment_class_id=a.employment_class_id',
'                    and upper(ernprd.payment_type)=upper(a.payment_type)',
'                    and ernprd.id=:P1251_EARNINGS_PERIOD_ID',
'                    )',
'        and exists (select 1',
'                    from pa_pcf_admindeduction_sus b',
'                    where b.earnings_period_disabled = a.id                   ',
'                    and end_date is null',
'                    )'';',
'',
'elsif :P1251_DISABLE_FROM_PAYROLL = ''PAYMENT_ENABLE'' then       ',
'return',
'       ''select EARN_DESCRIPTION,id',
'        from VW_EARNALL_NO_SEC a',
'        where exists (select 1',
'                      from vw_useraccess x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and upper(x.payment_type)=upper(a.payment_type))',
'        and exists (select 1',
'                    from pa_pcf_earningperiod ernprd',
'                    where  ernprd.employment_class_id=a.employment_class_id',
'                    and upper(ernprd.payment_type)=upper(a.payment_type)',
'                    and ernprd.id=:P1251_EARNINGS_PERIOD_ID',
'                    )',
'        and exists (select 1',
'                    from HR_RCM_EMPENTITLE_SUS b',
'                    where b.earnings_period_disabled = a.id                   ',
'                    --and end_date is null',
'                    )'';',
'',
'else ',
'return',
'    ''select null a , null b',
'     from dual'';',
'',
'end if;  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1251_DISABLE_FROM_PAYROLL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333028599690191701)
,p_name=>'P1251_EMPLOYEES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Employees'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Emp_description, Emp_id ',
'from table(pkg_payroll_change_status.emp_disable_enable_list(:P1251_DISABLE_FROM_PAYROLL, :P1251_START_DATE, :P1251_INCOME_NAME, ',
':APP_ORG_ID, :P1251_DEDUCTION_NAME, nvl(:P1251_EARNINGS_PERIOD_ENABLE,:P1251_EARNINGS_PERIOD_ID)))'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1251_DISABLE_FROM_PAYROLL,P1251_EARNINGS_PERIOD_ENABLE,P1251_DEDUCTION_NAME,P1251_INCOME_NAME,P1251_EARNINGS_PERIOD_ID,P1251_START_DATE'
,p_ajax_items_to_submit=>'P1251_EARNINGS_PERIOD_ID,P1251_START_DATE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3333028908696191702)
,p_name=>'P1251_REMARKS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4999070629876236215)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333051134400191730)
,p_name=>'P1251_ENTRY_SCREEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5052903731629265442)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when emP_hist_change=0 then 1281 else 51 end a',
'from hr_hcf_org_rule',
'where org_id = :APP_ORG_ID',
'and start_date < trunc(current_date)',
'and (end_date > trunc(current_date) or end_date is null)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3333064560697191748)
,p_name=>'P1251_INIT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5102217184611273935)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289056581743036)
,p_name=>'P1251_GRAND_TOTAL_NIS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(''$''|| to_char(sum(nis_employee),''999,999,999''))  Tax',
'from pa_pmg_payrolldtl a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'where b.start_date = :P1251_START_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Total Nis'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289121450743037)
,p_name=>'P1251_GRAND_TOTAL_NETPAY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(''$''|| to_char(SUM(net_pay),''999,999,999'')) "Net Pay"',
'from pa_pmg_payrolldTL a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'where b.start_date = :P1251_START_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Total Netpay'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289277028743038)
,p_name=>'P1251_GRAND_EMPLOYEES_NOT_PAID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'FROM hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'JOIN (SELECT  emp_id,  start_date, end_date, hourly_rate, personal_rate FROM hr_rcm_salary WHERE end_date IS NULL',
'      OR :P1251_START_DATE BETWEEN trunc(start_date) AND trunc(end_date) ) c ON b.id = c.emp_id',
'WHERE',
'( upper(b.include_payroll) = ''N''',
'or b.payroll_effective > (select PAYROLL_CUTOFF from PA_PCF_EARNINGPERIOD where id =:P1251_EARNINGS_PERIOD_ID) ',
'or b.date_employed > :P1251_END_DATE',
'or c.personal_rate <= 0',
'or pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') !=''ACT''',
'or b.verified_by IS  NULL',
'or ( a.dod IS not NULL',
'      OR a.dod < :P1251_END_DATE ) )',
'AND ( date_separated IS NULL',
'      OR date_separated >= :P1251_END_DATE',
'      OR date_separated BETWEEN :P1251_START_DATE AND :P1251_END_DATE ) ',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Employees Not Paid'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289334362743039)
,p_name=>'P1251_GRAND_PAID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(count(1),''FM999,999'')',
'from pa_pmg_payrolldtl  a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'where b.start_date = :P1251_START_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Employees Paid'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289578713743041)
,p_name=>'P1251_GRAND_TOTAL_TAXES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(''$''|| to_char(sum(tax_amount),''999,999,999''))  Tax',
'from pa_pmg_payrolldtl a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'where b.start_date = :P1251_START_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Total Taxes'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3477289806322743043)
,p_name=>'P1251_GRAND_TOTAL_GROSS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'trim(''$''|| to_char(SUM(GROSS_TAXABLE) + SUM(GROSS_NONTAXABLE),''999,999,999'')) "Gross Pay"',
'from',
'    pa_pmg_payrolldtl a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'where b.start_date = :P1251_START_DATE',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Total Gross'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3487233555087242747)
,p_name=>'P1251_ORG_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select ORG_ID from PA_PCF_EARNINGPERIOD where id=:P1251_EARNINGS_PERIOD_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3487233656957242748)
,p_name=>'P1251_SESSION_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select :app_session from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3487233718106242749)
,p_name=>'P1251_EARNINGS_TYPE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select EARNINGS_TYPE from PA_PCF_EARNINGPERIOD where id=:P1251_EARNINGS_PERIOD_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3488075444184128053)
,p_name=>'P1251_GRAND_EMPLOYEE_TOBEPAID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(count(1),''FM999,999'') A',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id   ',
'Join (select emp_id,start_date, end_date, hourly_rate, Personal_Rate from Hr_Rcm_Salary ',
'      where END_DATE IS NULL or to_date(:P1251_START_DATE) BETWEEN TRUNC(START_DATE) AND TRUNC(END_DATE)',
' ) C On B.Id = C.Emp_Id',
'where Upper(b.include_payroll) = ''Y''',
'and b.payroll_effective <= :P1251_PAYROLL_CUTOFF ',
'and b.Date_Employed <= :P1251_END_DATE',
'and  c.Personal_Rate > 0 ',
'and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') = ''ACT'' ',
'and b.VERIFIED_BY is not null ',
'and (a.dod  Is Null Or a.dod >= :P1251_END_DATE Or a.dod  Between :P1251_START_DATE And :P1251_END_DATE) ',
'And (Date_Separated Is Null Or Date_Separated>= :P1251_END_DATE Or Date_Separated Between :P1251_START_DATE And :P1251_END_DATE) ',
'and exists (select 1',
'            from pa_pcf_earningperiod ERN',
'             where b.employment_class_id = ERN.EMPLOYMENT_CLASS_ID ',
'              and b.payment_type = ERN.PAYMENT_TYPE ',
'              AND B.COMPUTE_GROSS = ERN.COMPUTE_GROSS',
'              and b.org_id= ERN.ORG_ID',
'              and ern.START_DATE = :P1251_START_DATE)',
'and ((:P1251_START_DATE between trunc(start_date) and trunc(end_date) and end_date is not null)',
' or  (trunc(start_date) <= :P1251_START_DATE and trunc(end_date) is null ))'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Employee To be paid'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3488075489376128054)
,p_name=>'P1251_GRAND_NEGATIVE_PAYMENTS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3499504079322400498)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'from pa_pmg_payrolldtlneg A JOIN PA_PCF_EARNINGPERIOD B ON B.ID = a.earnings_period_id',
'where b.start_date= :P1251_START_DATE',
'AND B.END_DATE = :P1251_END_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Negative Payments'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3490917019829329514)
,p_name=>'P1251_RETURN_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3497384658841039799)
,p_name=>'P1251_COMPUTE_GROSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select COMPUTE_GROSS from pa_pcf_earningperiod a join PA_PMG_PAYROLLHD b on a.id=b.EARNINGS_PERIOD_ID where b.id=:P1251_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583066227408571493)
,p_name=>'P1251_EMPLOYEE_TOBEPAID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Total Employees to be Paid</font>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(count(1),''FM999,999'') A',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id   ',
'Join (select emp_id,start_date, end_date, hourly_rate, Personal_Rate from Hr_Rcm_Salary ',
'      where END_DATE IS NULL or to_date(:P1251_START_DATE) BETWEEN TRUNC(START_DATE) AND TRUNC(END_DATE)',
' ) C On B.Id = C.Emp_Id',
'where Upper(b.include_payroll) = ''Y''',
'and b.payroll_effective <= :P1251_PAYROLL_CUTOFF ',
'and b.Date_Employed <= :P1251_END_DATE',
'and  c.Personal_Rate > 0 ',
'and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') = ''ACT'' ',
'and b.VERIFIED_BY is not null ',
'and (a.dod  Is Null Or a.dod >= :P1251_END_DATE Or a.dod  Between :P1251_START_DATE And :P1251_END_DATE) ',
'And (Date_Separated Is Null Or Date_Separated>= :P1251_END_DATE Or Date_Separated Between :P1251_START_DATE And :P1251_END_DATE) ',
'and exists (select 1',
'            from pa_pcf_earningperiod ERN',
'             where b.employment_class_id = ERN.EMPLOYMENT_CLASS_ID ',
'              and b.payment_type = ERN.PAYMENT_TYPE ',
'              AND B.COMPUTE_GROSS = ERN.COMPUTE_GROSS',
'              and b.org_id= ERN.ORG_ID',
'              and ern.id= :P1251_EARNINGS_PERIOD_ID)',
'and ((:P1251_START_DATE between trunc(start_date) and trunc(end_date) and end_date is not null)',
' or  (trunc(start_date) <= :P1251_START_DATE and trunc(end_date) is null ))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583066574220571494)
,p_name=>'P1251_PAID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Employees Paid'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(count(1),''FM999,999'')',
'from pa_pmg_payrolldtl',
'where pay_batch_id =:P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583066930906571494)
,p_name=>'P1251_NEGATIVE_PAYMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Negative/Zero NetPay Employees'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(id)',
'from pa_pmg_payrolldtlneg',
'where pay_batch_id =:P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_imp.id(3583067344726571494)
,p_name=>'P1251_EMPLOYEES_NOT_PAID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_prompt=>'Total Employees Not Paid'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'FROM hr_rcm_individual a JOIN hr_rcm_employee b ON a.id = b.ind_id',
'JOIN (SELECT  emp_id,  start_date, end_date, hourly_rate, personal_rate FROM hr_rcm_salary WHERE end_date IS NULL',
'      OR :P1251_START_DATE BETWEEN trunc(start_date) AND trunc(end_date) ) c ON b.id = c.emp_id',
'WHERE',
'( upper(b.include_payroll) = ''N''',
'or b.payroll_effective > (select PAYROLL_CUTOFF from PA_PCF_EARNINGPERIOD where id =:P1251_EARNINGS_PERIOD_ID) ',
'or b.date_employed > :P1251_END_DATE',
'or c.personal_rate <= 0',
'or pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') !=''ACT''',
'or b.verified_by IS  NULL',
'or ( a.dod IS not NULL',
'      OR a.dod < :P1251_END_DATE ) )',
'AND ( date_separated IS NULL',
'      OR date_separated >= :P1251_END_DATE',
'      OR date_separated BETWEEN :P1251_START_DATE AND :P1251_END_DATE ) ',
'AND b.employment_class_id = to_number(:P1251_EMPLOYMENT_CLASS_ID)',
'AND b.payment_type = :P1251_PAYMENT_TYPE',
'AND b.org_id = :APP_ORG_ID',
'AND compute_gross = :P1251_COMPUTE_GROSS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583067775218571495)
,p_name=>'P1251_TOTAL_GROSS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Gross Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'trim(''$''|| to_char(SUM(GROSS_TAXABLE) + SUM(GROSS_NONTAXABLE),''999,999,999'')) "Gross Pay"',
'from',
'    pa_pmg_payrolldtl',
'where',
'    pay_batch_id = :P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583068112531571495)
,p_name=>'P1251_TOTAL_NIS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total NIS'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  trim(''$''|| to_char(sum(nis_employee),''999,999,999'')) NIS',
'from pa_pmg_payrolldtl',
'where pay_batch_id = :P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583068498912571495)
,p_name=>'P1251_TOTAL_TAXES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Taxes'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(''$''|| to_char(sum(tax_amount),''999,999,999''))  Tax',
'from pa_pmg_payrolldtl',
'where pay_batch_id =:P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3583068891178571495)
,p_name=>'P1251_TOTAL_NETPAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3504059782591597208)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total NetPay'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(''$''|| to_char(SUM(net_pay),''999,999,999'')) "Net Pay"',
'from pa_pmg_payrolldTL',
'where pay_batch_id =:P1251_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603580998068229733)
,p_name=>'P1251_PAYMENT_TYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select payment_type from pa_pcf_earningperiod a join PA_PMG_PAYROLLHD b on a.id=b.EARNINGS_PERIOD_ID where b.id=:P1251_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603581120039229734)
,p_name=>'P1251_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select EMPLOYMENT_CLASS_ID from pa_pcf_earningperiod a join PA_PMG_PAYROLLHD b on a.id=b.EARNINGS_PERIOD_ID where b.id=:P1251_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603581256226229735)
,p_name=>'P1251_END_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select END_DATE from pa_pcf_earningperiod a join PA_PMG_PAYROLLHD b on a.id=b.EARNINGS_PERIOD_ID where b.id=:P1251_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603581267022229736)
,p_name=>'P1251_PAYROLL_CUTOFF'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>'select payroll_cutoff from pa_pcf_earningperiod a join PA_PMG_PAYROLLHD b on a.id=b.EARNINGS_PERIOD_ID where b.id=:P1251_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603581439921229737)
,p_name=>'P1251_START_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select start_date',
'from pa_pcf_earningperiod',
'where id=:P1251_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3624723310747037856)
,p_name=>'P1251_COMENT_SWITCH'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Send notes via workflow notification about payroll execution to fellow staff'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3624723592220039610)
,p_name=>'P1251_WORK_FLOW_COMMENT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
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
 p_id=>wwv_flow_imp.id(3630593816685584285)
,p_name=>'P1251_MACHINE_UPDATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630594232321584286)
,p_name=>'P1251_MACHINE_INSERT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P101_MACHINE_NAME.'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630594569215584286)
,p_name=>'P1251_VERIFIED_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630594978183584287)
,p_name=>'P1251_VERIFIED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630595401241584287)
,p_name=>'P1251_LAST_CHANGED_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630595823133584288)
,p_name=>'P1251_LAST_CHANGED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630596176252584288)
,p_name=>'P1251_ENTRY_DATE'
,p_item_sequence=>79
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630596640579584289)
,p_name=>'P1251_ENTERED_BY'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_imp.id(3543527371797023219)
,p_use_cache_before_default=>'NO'
,p_source=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630597332033584291)
,p_name=>'P1251_PAGE_URL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_item_default=>'http://innosys-mob-3:8181/jasperserver/flow.html?_flowId=viewReportFlow&reportUnit=/reports/PeoplePay/02_PAYROLL/Payslip&output=pdf&j_username=jasperadmin&j_password=jasperadmin&ID=&P1251_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630597673213584297)
,p_name=>'P1251_ID_PREV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630598142838584298)
,p_name=>'P1251_ID_NEXT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630598496498584298)
,p_name=>'P1251_MANAGER_APPROVED_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager Approved Date'
,p_source=>'MANAGER_APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PMG_PAYROLLDTL',
'where earnings_period_id=NVL(:P1251_EARNINGS_PERIOD_ID,0)',
'and pay_status IN (''CR'',''AR'')'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
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
 p_id=>wwv_flow_imp.id(3630599443401584305)
,p_name=>'P1251_MANAGER_APPROVED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager Approved By'
,p_source=>'MANAGER_APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1251_MANAGER_APPROVED_BY IS NULL THEN',
'return',
'''select  initcap(c.Surname || '''', '''' || nvl(c.First_Name, '''''''')) ||'''' ''''||nvl(c.Middle_Name,'''''''') ',
'||''''(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(a.employment_class_id, ''''TABLE_VALUE'''' )||'''')'''' ',
'||''''(No.:''''||a.emp_company_no||'''')'''' a, a.id b',
'from hr_rcm_employee a ',
'join tbluser b on a.id=b.employee_no ',
'JOIN TBLUSERDETAIL F ON B.USER_ID=F.USER_ID',
'join HR_RCM_INDIVIDUAL c on c.id=a.ind_id',
'where RESET_ARCHIVE_PAYROLL = 1',
'and user_name= :APP_USER',
'and (separated_status is null or date_separated > current_date)',
'union',
'select  initcap(c.Surname || '''', '''' || nvl(c.First_Name, '''''''')) ||'''' ''''||nvl(c.Middle_Name,'''''''') ',
'||''''(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||'''')'''' ',
'||''''(No.:''''||emp_company_no||'''')'''' a, a.id b',
'from hr_rcm_employee a join tbluser b on a.id=b.employee_no',
'join HR_RCM_INDIVIDUAL c on c.id=a.ind_id',
'where RESET_ARCHIVE_PAYROLL = 1',
'and user_name= :APP_USER',
'and (separated_status is null or date_separated > current_date)',
'and exists(select 1',
'          from VW_USERACCESS_FULL k',
'          where k.org_id =A.org_id)'';',
'',
'else',
'',
'return',
'',
'''select employee||''''(No.:''''||emp_company_no||'''')'''' a,id b',
'from vw_availemployeeFULL a join tbluser b on a.id=b.employee_no',
'order by 1'';',
'',
'',
'end if;',
'',
'',
'-- IF :P1251_MANAGER_APPROVED_BY IS NULL THEN',
'-- return',
'-- ''select  initcap(c.Surname || '''', '''' || nvl(c.First_Name, '''''''')) ||'''' ''''||nvl(c.Middle_Name,'''''''') ',
'-- ||''''(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||'''')'''' ',
'-- ||''''(No.:''''||emp_company_no||'''')'''' a, a.id b',
'-- from hr_rcm_employee a join tbluser b on a.id=b.employee_no',
'-- join HR_RCM_INDIVIDUAL c on c.id=a.ind_id',
'-- where RESET_ARCHIVE_PAYROLL = 1',
'-- and org_id = :APP_ORG_ID',
'-- and user_name= :APP_USER',
'-- and (separated_status is null or date_separated > current_date)',
'-- union',
'-- select  initcap(c.Surname || '''', '''' || nvl(c.First_Name, '''''''')) ||'''' ''''||nvl(c.Middle_Name,'''''''') ',
'-- ||''''(''''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''''TABLE_VALUE'''' )||'''')'''' ',
'-- ||''''(No.:''''||emp_company_no||'''')'''' a, a.id b',
'-- from hr_rcm_employee a join tbluser b on a.id=b.employee_no',
'-- join HR_RCM_INDIVIDUAL c on c.id=a.ind_id',
'-- where RESET_ARCHIVE_PAYROLL = 1',
'-- and user_name= :APP_USER',
'-- and (separated_status is null or date_separated > current_date)',
'-- and exists(select 1',
'--            from hr_hcf_organisation d',
'--            where a.org_id = d.parent_org_id',
'--            and d.id =:APP_ORG_ID',
'--            and exists(select 1',
'--                       from VW_USERACCESS_FULL k',
'--                       where k.org_id =d.parent_org_id))'';',
'',
'-- else',
'',
'-- return',
'',
'-- ''select employee||''''(No.:''''||emp_company_no||'''')'''' a,id b',
'-- from vw_availemployeeFULL a join tbluser b on a.id=b.employee_no',
'-- order by 1'';',
'',
'',
'-- end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PMG_PAYROLLDTL',
'where earnings_period_id=NVL(:P1251_EARNINGS_PERIOD_ID,0)',
'and pay_status IN (''CR'',''AR'')'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'Employee must be a senior employee whose user account is configured to ''Reset Error Payroll'' with an employee assigned to user account.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630599850870584306)
,p_name=>'P1251_STATUS'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
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
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1251_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1251_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1251_TRANSACTION_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(3630600169907584309)
,p_name=>'P1251_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
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
 p_id=>wwv_flow_imp.id(3630601057960584311)
,p_name=>'P1251_PURGE_ADHOC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_item_default=>'KEEP'
,p_prompt=>'Purge Adhoc'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:BACKUP;BACKUP,KEEP;KEEP'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'Decides how to treat posted data relating to overtime etc when payroll is purged. If set to ''keep'' data is keep in current form, if ''Backup'' the data removed and not available unless restored.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630601382510584312)
,p_name=>'P1251_REF_EARN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1251_EARNINGS_PERIOD_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630601784341584312)
,p_name=>'P1251_PAY_TASK'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Pay Task'
,p_source=>'PAY_TASK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, INCOME_CODE',
'from pa_pcf_incomecode',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'AND BULK_PAYMENT=''Y''',
'and org_id=:APP_ORG_SHR_DED',
'UNION',
'SELECT cast(''Regular'' as VARCHAR2(200)), cast(''RG'' as VARCHAR2(50)) from dual',
'UNION',
'SELECT cast(''Any Supplimentary'' as VARCHAR2(200)), cast(''SUPPL'' as VARCHAR2(50)) from dual',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630602230540584313)
,p_name=>'P1251_PAY_STATUS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OPEN'
,p_prompt=>'Payroll Status'
,p_source=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYROLL_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(3632459982728335696)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Pay status represents the status of the payroll as it relates to payroll execution and whether the user is allowed to post entries. </p>',
'<ol>',
'<li><strong>OPEN</strong> - entries can be posted but payroll cannot be executed. </li>',
'<li><strong>CLOSED </strong>- entries cannot be posted and payroll can be executed. </li>',
'<li><strong>CURRENT</strong> - payroll has been executed successfully and can be reviewed, entries cannot be posted. </li>',
'<li><strong>ARCHIVED</strong> - executed payroll has been approved and is under permanent lockdown.</li>',
'</ol>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630602658055584313)
,p_name=>'P1251_EARNINGSPERIODID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_item_default=>'&P1251_EARNINGS_PERIOD_ID.'
,p_prompt=>'Earnings Period ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3630603019545584314)
,p_name=>'P1251_EARNINGS_PERIOD_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1251_PAYROLL_DATE is null then',
'RETURN ',
' ''select earn_description,id',
'from VW_EARNNOTPAID a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and (x.employment_class_id=a.employment_class_id or upper(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(a.EMPLOYMENT_CLASS_ID,''''TABLE_VALUE'''')) =''''MULTIOPTPAYROLL'''' )',
'              and upper(x.payment_type)=upper(a.payment_type))',
'and not exists (select 1',
'               from PA_PMG_PAYROLLHD w',
'               where a.id=w.earnings_period_id)          ',
'order by end_date desc'';',
'ELSE',
'return',
'''select earn_description, id',
'from vw_earnall',
'order by end_date desc'';',
'',
'END IF;'))
,p_lov_cascade_parent_items=>'P1251_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630603814584584315)
,p_name=>'P1251_PAYROLL_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Date'
,p_source=>'PAYROLL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>13
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'The date an employee will receive his wage or salary specific to his/her payment mode (Cash, Bank, Check or MMG).'
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
 p_id=>wwv_flow_imp.id(3630604185491584315)
,p_name=>'P1251_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3543531753552023239)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630638426445662264)
,p_name=>'P1251_INIT_SEARCH_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3417707155050841244)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630652674752662302)
,p_name=>'P1251_INIT_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3518076746773158806)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630666941958662340)
,p_name=>'P1251_INIT_SEARCH_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3517669670778572920)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630681273265662385)
,p_name=>'P1251_INIT_SEARCH_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3610481522489480505)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630592234417584282)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where exists(select 1',
'            from vw_useraccess b',
'            where a.org_id=b.org_id)',
'AND workflow_required =1',
'and ((to_date(:P1251_PAYROLL_DATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1251_PAYROLL_DATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1251_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630591790562584280)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>11
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1251_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1251_ID, :P1251_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3630592573217584282)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>21
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1251_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3630593055399584284)
,p_validation_name=>'CHK_BOTH_APPROVED'
,p_validation_sequence=>31
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  if (:P1251_MANAGER_APPROVED_BY is not null and :P1251_MANAGER_APPROVED_DATE is null)',
'or (:P1251_MANAGER_APPROVED_BY is null and :P1251_MANAGER_APPROVED_DATE is not null) then',
'    return FALSE;',
'else',
'    RETURN TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the approved by or approved date is null, both must have a value when approving.'
,p_when_button_pressed=>wwv_flow_imp.id(3630607027031584320)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3588900531788789562)
,p_validation_name=>'PAY_STATUS_CHK'
,p_validation_sequence=>41
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1251_ID IS NULL AND :P1251_PAY_STATUS NOT IN (''CL'',''OPEN'') Then',
' return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Only closed or Open Payrolls allowed for new entries.'
,p_validation_condition=>'CREATE, CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3484931673824497893)
,p_validation_name=>'REJECT_USER_AR_CR'
,p_validation_sequence=>51
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_test_status varchar2(20):=0;',
'',
'begin',
'    select PAY_STATUS into v_test_status',
'    from pa_pmg_payrollhd',
'    where id= :P1251_ID;',
'',
'',
'IF (:P1251_PAY_STATUS = ''AR'' and :P1251_PAY_STATUS != v_test_status )    OR  ( :P1251_PAY_STATUS =''CR''  and :P1251_PAY_STATUS != v_test_status ) then',
'    RETURN FALSE;',
'else',
'    RETURN TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Changing the pay status to Archive or Currrent is not allowed by end users.'
,p_when_button_pressed=>wwv_flow_imp.id(3630607027031584320)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3333116366099433384)
,p_validation_name=>'chk_enable_disable_remarks'
,p_validation_sequence=>61
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1251_REMARKS is null then',
'    return ''You must enter remarks before this process can be executed.'';',
'else',
'    return '''';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3333026111793191698)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3630585311661584269)
,p_name=>'View Payslip OnPreme'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3630608662062584322)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3630584777151584269)
,p_event_id=>wwv_flow_imp.id(3630585311661584269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1251_ID.,PeoplePay_GPL/02_PAYROLL/Payslip'', "popupWindow", "scrollbars=yes");',
'if (window.focus) {win.focus()}',
'',
'',
'',
'/*var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/02_PAYROLL/Payslip-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menu'
||'bar=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}*/'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3603580837322229731)
,p_name=>'set_values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1251_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3603580758103229730)
,p_event_id=>wwv_flow_imp.id(3603580837322229731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_START_DATE,P1251_PAYROLL_CUTOFF,P1251_END_DATE,P1251_EMPLOYMENT_CLASS_ID,P1251_PAYMENT_TYPE, P1251_PAY_TASK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select START_DATE, PAYROLL_CUTOFF, END_DATE, EMPLOYMENT_CLASS_ID,PAYMENT_TYPE, earnings_type',
'from PA_PCF_EARNINGPERIOD',
'where id=:P1251_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1251_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3598255932602262759)
,p_name=>'Action Btn'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624723772057041044)
,p_name=>'show_comments'
,p_event_sequence=>50
,p_condition_element=>'P1251_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624724197800041044)
,p_event_id=>wwv_flow_imp.id(3624723772057041044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624724725406041044)
,p_event_id=>wwv_flow_imp.id(3624723772057041044)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624725047356042872)
,p_name=>'show_comment'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_COMENT_SWITCH'
,p_condition_element=>'P1251_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624725535154042873)
,p_event_id=>wwv_flow_imp.id(3624725047356042872)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624725951796042873)
,p_event_id=>wwv_flow_imp.id(3624725047356042872)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633829414708910893)
,p_name=>'payment_on_off'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_condition_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'PAYMENT_ENABLE,PAYMENT_DISABLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483193756632410145)
,p_event_id=>wwv_flow_imp.id(3633829414708910893)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_INCOME_NAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483192423529410132)
,p_event_id=>wwv_flow_imp.id(3633829414708910893)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_DEDUCTION_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3483193049055410138)
,p_name=>'deduction_on_off'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_condition_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'DEDUCTION_ENABLE,DEDUCTION_DISABLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483192879779410136)
,p_event_id=>wwv_flow_imp.id(3483193049055410138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_DEDUCTION_NAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483192273080410130)
,p_event_id=>wwv_flow_imp.id(3483193049055410138)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_INCOME_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3498738218000641506)
,p_name=>'View Payslip Cloud'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3630608662062584322)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3498738132747641505)
,p_event_id=>wwv_flow_imp.id(3498738218000641506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1251_ID.,PeoplePay_GPL/02_PAYROLL/Payslip'', "popupWindow", "scrollbars=yes");',
'if (window.focus) {win.focus()}*/',
'',
'',
'',
'/*var win = window.open(''http://apps3.innosysgy.com:8080/Report/showPDF?p2=/reports/Peoplepay_WT/02_PAYROLL/Payslip-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menub'
||'ar=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}*/',
'',
'',
'/*var win = window.open(''&P1251_REPORT_URL.&p2=/reports/PeoplePay_Multi_Cloud/02_PAYROLL/Payslip-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,'
||'directories=no, status=yes'');',
'if (window.focus) {win.focus();}*/',
'',
'/* var win = window.open(''&P1251_REPORT_URL.&p2=/reports/PeoplePay_Multi_Cloud/02_PAYROLL/Standard_Payslip_v3.2-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=n'
||'o,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();} */',
'',
'//var win = window.open(''&P1251_REPORT_URL.&p2=/reports/PeoplePay_Multi_Cloud/02_PAYROLL/Standard_Payslip_v3.3-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no'
||',location=yes,directories=no, status=yes'');',
'//if (window.focus) {win.focus();}',
'',
'var win = window.open(''&P1251_REPORT_URL.-P_ORG_ID=&APP_ORG_ID.-ID=&P1251_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3483193319707410141)
,p_name=>'employee_on_off'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_condition_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'EMPLOYEE_ON,EMPLOYEE_OFF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483193294696410140)
,p_event_id=>wwv_flow_imp.id(3483193319707410141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_DEDUCTION_NAME,P1251_INCOME_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3483190626754410114)
,p_name=>'earnings_period_on_off'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_condition_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'DEDUCTION_ENABLE,PAYMENT_ENABLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
end;
/
begin
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483190436488410112)
,p_event_id=>wwv_flow_imp.id(3483190626754410114)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_EARNINGS_PERIOD_ENABLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3483190549587410113)
,p_event_id=>wwv_flow_imp.id(3483190626754410114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_EARNINGS_PERIOD_ENABLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3475724471933647334)
,p_name=>'refresh_regions'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_DISABLE_FROM_PAYROLL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3534091696787964165)
,p_name=>'show_hide_process'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_REMARKS'
,p_condition_element=>'P1251_REMARKS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423720515599747592)
,p_name=>'REFRESH_LOGS'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1251_RUN_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423720583397747593)
,p_event_id=>wwv_flow_imp.id(423720515599747592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3437925092464961774)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423721106670747598)
,p_name=>'purge_logs'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(423721001661747597)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423721189524747599)
,p_event_id=>wwv_flow_imp.id(423721106670747598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete',
'    from HR_APU_PROCESSFEEDBACKLOG',
'    where EARNINGS_PERIOD_ID= :P1251_EARNINGS_PERIOD_ID',
'    and payroll_run_number =:P1251_RUN_NUMBER;',
'end;'))
,p_attribute_02=>'P1251_EARNINGS_PERIOD_ID,P1251_RUN_NUMBER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423721260695747600)
,p_event_id=>wwv_flow_imp.id(423721106670747598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3437925092464961774)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423721456585747601)
,p_event_id=>wwv_flow_imp.id(423721106670747598)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1251_RUN_NUMBER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353722926894508478)
,p_name=>'Purge_logs'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353722813787508477)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353722979953508479)
,p_event_id=>wwv_flow_imp.id(353722926894508478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete',
'    from error_log',
'    where EARNINGS_PERIOD_ID= :P1251_EARNINGS_PERIOD_ID;',
'',
'end;'))
,p_attribute_02=>'P1251_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353723147618508480)
,p_event_id=>wwv_flow_imp.id(353722926894508478)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(423718906982747576)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(387974902670896973)
,p_name=>'refresh'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353722813787508477)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(387974984599896974)
,p_event_id=>wwv_flow_imp.id(387974902670896973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417511217188119844)
,p_name=>'auto_refresh_monitor'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417511338179119845)
,p_event_id=>wwv_flow_imp.id(417511217188119844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function(){',
'    apex.region("MY_BG_REGION").refresh();',
'}, 120000); // 30000 ms = 30 sec',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630591105246584280)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PA_PMG_PAYROLLHD'
,p_attribute_02=>'PA_PMG_PAYROLLHD'
,p_attribute_03=>'P1251_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_internal_uid=>3208799112048587706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630591550860584280)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'PA_PMG_PAYROLLHD'
,p_attribute_03=>'P1251_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'EARNINGS_PERIOD_ID'
,p_attribute_09=>'P1251_ID_NEXT'
,p_attribute_10=>'P1251_ID_PREV'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EXISTS (SELECT 1',
'            FROM PA_PCF_EARNINGPERIOD A JOIN VW_USERACCESS C ON (A.org_id=C.org_id and A.employment_class_id=C.employment_class_id AND upper(A.PAYMENT_TYPE)=C.PAYMENT_TYPE)',
'            WHERE A.ID=PA_PMG_PAYROLLHD.EARNINGS_PERIOD_ID',
'            AND A.ORG_ID =DECODE(:P1250_ORGANISATION,1, A.ORG_ID, :P1250_ORGANISATION)',
'           AND TO_CHAR(A.START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM A.START_DATE)=DECODE(:P1250_ORGANISATION_PERIODS,''1'',TO_CHAR(A.START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM A.START_DATE),:P1250_ORGANISATION_PERIODS)',
')'))
,p_internal_uid=>3208799557662587706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630587527023584275)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1251_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P1251_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P1251_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P1251_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3208795533825587701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630587159222584274)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1251_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P1251_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P1251_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630607027031584320)
,p_internal_uid=>3208795166024587700
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630590687495584280)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PA_PMG_PAYROLLHD'
,p_attribute_02=>'PA_PMG_PAYROLLHD'
,p_attribute_03=>'P1251_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1251_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3208798694297587706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630590278224584280)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'22'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630607423528584320)
,p_internal_uid=>3208798285026587706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630587917648584275)
,p_process_sequence=>41
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_payroll_header'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  PKG_GENERATORS.PopulatePayHeader(:P1251_EARNINGS_PERIOD_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630608969719584322)
,p_process_success_message=>'successful payroll generation.'
,p_internal_uid=>3208795924450587701
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630589867808584279)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EXECUTE PAYROLL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_Return varchar2(1);',
'begin',
' pkg_payroll_main.Payexecuteern (:P1251_EARNINGS_PERIOD_ID, V_Return);  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630611778245584325)
,p_process_success_message=>'Payroll ran successfully.'
,p_internal_uid=>3208797874610587705
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(394757209640391884)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'EXECUTE_PAYROLL_BG'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'P1251_EXECUTION_ID'
,p_attribute_04=>'IGNORE'
,p_attribute_09=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(394756875333391881)
,p_internal_uid=>205861941529767250
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630589554473584279)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PURGE PAYROLL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_out_return varchar2(1);',
'begin',
'',
'pkg_payroll_purge.purgepayroll(:P1251_EARNINGS_PERIOD_ID, :P1251_PURGE_ADHOC, 0, v_out_return);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error occurred while purging payroll!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630611434851584325)
,p_process_success_message=>'Payroll successfully purged! No need to recreate the payroll header.'
,p_internal_uid=>3208797561275587705
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630588711547584278)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset_archive'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  vout number(1);',
'begin',
' pkg_payroll_utils.ResetErrorPayroll(:P1251_EARNINGS_PERIOD_ID, vout);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Reset operation failed for Archived payroll!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630609391489584322)
,p_process_success_message=>'Archived payroll successfully reset to current!'
,p_internal_uid=>3208796718349587704
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630588306695584277)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_earn_prd varchar2(200);',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1251_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1251_STATUS;',
'',
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') into v_earn_prd',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id=a.org_id',
'where a.id=:P1251_EARNINGS_PERIOD_ID;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_earn_prd,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1251_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Payroll Execution'',',
'	:P1251_STATUS,:APP_PAGE_ID,:P1251_TRANSACTION_TYPE_ID,',
'        ''PA_PMG_PAYROLLHD'', :P1251_WORK_FLOW_COMMENT,:P1251_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630607027031584320)
,p_process_when=>'P1251_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3208796313497587703
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333106076108327819)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISABLE_ENABLED_DEDUCTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'  ',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
'     IF :P1251_DISABLE_FROM_PAYROLL = ''DEDUCTION_DISABLE'' then',
'     ',
'            FOR i IN 1..l_selected.COUNT LOOP',
'',
'                    Pkg_Payroll_Change_Status.disable_deduction(:P1251_DEDUCTION_NAME, l_selected(i), :P1251_REMARKS, :P1251_EARNINGS_PERIOD_ID);',
'',
'            end loop;       ',
'    end if;',
'',
'   :P1251_EMPLOYEES :=NULL;',
'   :P1251_REMARKS := null;',
'   :P1251_DEDUCTION_NAME := null;',
'   :P1251_EARNINGS_PERIOD_ENABLE :=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'DEDUCTION_DISABLE'
,p_process_success_message=>'The successful execution of disabling of deductions for payment.'
,p_internal_uid=>2911314082910331245
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333106311506329364)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DISABLE_ENABLED_PAYMENTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'  ',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
'     IF :P1251_DISABLE_FROM_PAYROLL = ''PAYMENT_DISABLE'' then',
'                FOR i IN 1..l_selected.COUNT LOOP',
'                ',
'                    Pkg_Payroll_Change_Status.disable_income(:P1251_INCOME_NAME, l_selected(i) , :P1251_REMARKS, :P1251_EARNINGS_PERIOD_ID);',
'',
'                end loop;     ',
'    end if;',
'',
'   :P1251_EMPLOYEES :=NULL;',
'   :P1251_REMARKS := null;',
'   :P1251_INCOME_NAME := null;',
'   :P1251_EARNINGS_PERIOD_ENABLE :=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'PAYMENT_DISABLE'
,p_process_success_message=>'The successful execution of disabling of entitlements for payment.'
,p_internal_uid=>2911314318308332790
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333106663166330546)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_DISABLED_DEDUCTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'  ',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
'     IF :P1251_DISABLE_FROM_PAYROLL = ''DEDUCTION_ENABLE'' then',
'',
'                FOR i IN 1..l_selected.COUNT LOOP',
'                ',
'                    Pkg_Payroll_Change_Status.enable_deduction(:P1251_DEDUCTION_NAME, l_selected(i) , :P1251_REMARKS, :P1251_EARNINGS_PERIOD_ENABLE, :P1251_EARNINGS_PERIOD_ID);',
'		',
'                end loop;',
'      ',
'    end if;',
'',
'   :P1251_EMPLOYEES :=NULL;',
'   :P1251_REMARKS := null;',
'   :P1251_DEDUCTION_NAME:= null;',
'   :P1251_EARNINGS_PERIOD_ENABLE :=null;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'DEDUCTION_ENABLE'
,p_process_success_message=>'The successful execution of enabling of non statutory deductions.'
,p_internal_uid=>2911314669968333972
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333107909399331625)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_DISABLED_PAYMENTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
'BEGIN',
'  ',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
'     IF :P1251_DISABLE_FROM_PAYROLL = ''PAYMENT_ENABLE'' then       ',
'',
'                FOR i IN 1..l_selected.COUNT LOOP',
'                ',
'                    Pkg_Payroll_Change_Status.ENable_income(:P1251_INCOME_NAME, l_selected(i) , :P1251_REMARKS, :P1251_EARNINGS_PERIOD_ENABLE, :P1251_EARNINGS_PERIOD_ID);',
'',
'                end loop;      ',
'    end if;',
'',
'   :P1251_EMPLOYEES :=NULL;',
'   :P1251_REMARKS := null;',
'   :P1251_INCOME_NAME := null;',
'   :P1251_EARNINGS_PERIOD_ENABLE :=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'PAYMENT_ENABLE'
,p_process_success_message=>'The successful execution of enabling of entitlements for payment.'
,p_internal_uid=>2911315916201335051
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333108277805332703)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'disable for employees'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'BEGIN',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
' IF :P1251_DISABLE_FROM_PAYROLL = ''EMPLOYEE_OFF''  then',
' ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'  ',
'	    Pkg_Payroll_Change_Status.disable_employees(l_selected(i), :P1251_EARNINGS_PERIOD_ID);',
'    ',
'  END LOOP;  ',
'',
'end if;',
'   commit;',
'  :P1251_EMPLOYEES :=NULL;',
'  :P1251_REMARKS  :=NULL;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'EMPLOYEE_OFF'
,p_process_success_message=>'The successful execution of disabling of employees for payment.'
,p_internal_uid=>2911316284607336129
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3333108525125333908)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'enable for employees'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'BEGIN',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P1251_EMPLOYEES);',
'',
' IF :P1251_DISABLE_FROM_PAYROLL =''EMPLOYEE_ON'' then',
' ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'',
'    Pkg_Payroll_Change_Status.enable_employees(l_selected(i), :P1251_EARNINGS_PERIOD_ID);',
'    ',
'  END LOOP;  ',
'',
'end if;',
'  commit;',
'  :P1251_EMPLOYEES :=NULL;',
'  :P1251_REMARKS  :=NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3333026111793191698)
,p_process_when=>'P1251_DISABLE_FROM_PAYROLL'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'EMPLOYEE_ON'
,p_process_success_message=>'The successful execution of enabling of employees for payment.'
,p_internal_uid=>2911316531927337334
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(417510352216119835)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(394757209640391884)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RUN_PAYROLL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_Return varchar2(1);',
'begin',
' pkg_payroll_main.Payexecuteern (:P1251_EARNINGS_PERIOD_ID, V_Return);  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>228615084105495201
);
wwv_flow_imp.component_end;
end;
/
