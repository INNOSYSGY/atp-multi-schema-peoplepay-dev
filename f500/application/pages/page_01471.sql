prompt --application/pages/page_01471
begin
--   Manifest
--     PAGE: 01471
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
 p_id=>1471
,p_name=>'FrmSalaryIncrease'
,p_alias=>'FRMSALARYINCREASE'
,p_step_title=>'Remuneration Change'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3447329773380901140)
,p_plug_name=>'Change Applied'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7190742945245251214)
,p_plug_name=>'Other Income Change Applied'
,p_parent_plug_id=>wwv_flow_imp.id(3447329773380901140)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>81
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   a.id, to_char(inc_code.description) description, orgdtl_id,',
'    emp_id,',
'    a.amount, ',
'    null leave_passage_date,',
'    a.start_date,',
'    a.end_date,     ',
'    a.inc_amount,',
'    a.increase_id,',
'    rollbk_std_detail_key,',
'    a.taxable Taxable,   ',
'    a.remarks reason_salary_change',
'    --,a.nis_deduction salary_nis_deductible',
'FROm hr_Rcm_empentitle a join pa_pcf_incomecode inc_code on inc_code.id = a.income_code_id',
'join hr_Rcm_employee b on a.emp_id = b.id',
'where exists (select 1',
'              from hr_apu_standardincreasevalues b',
'              where a.emp_id=b.emp_id',
'              and b.increase_id = :P1471_ID)',
'and a.increase_id = :P1471_ID  ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Income Change Applied'
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
 p_id=>wwv_flow_imp.id(5776995612434453441)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853893589149985114)
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
 p_id=>wwv_flow_imp.id(7190743480121251220)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:&ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7190743670523251221)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7190743747993251222)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202788968704270677)
,p_name=>'LEAVE_PASSAGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_PASSAGE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Leave Passage Date'
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
,p_is_required=>false
,p_max_length=>0
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
 p_id=>wwv_flow_imp.id(7202789049147270678)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
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
 p_id=>wwv_flow_imp.id(7202789153919270679)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202789301496270681)
,p_name=>'INC_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INC_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inc Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202789396192270682)
,p_name=>'ROLLBK_STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLLBK_STD_DETAIL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rollbk Std Detail Key'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202789494915270683)
,p_name=>'REASON_SALARY_CHANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_SALARY_CHANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason Salary Change'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(7202789817341270686)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Taxable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202792371265270711)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>800
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
 p_id=>wwv_flow_imp.id(7203129924251317493)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7190743390429251219)
,p_internal_uid=>6547548840649642951
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7202798000485291134)
,p_interactive_grid_id=>wwv_flow_imp.id(7190743390429251219)
,p_static_id=>'3970395'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7202798233994291134)
,p_report_id=>wwv_flow_imp.id(7202798000485291134)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5777860849628456577)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5776995612434453441)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202799848090291139)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7190743480121251220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49.081999999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202800683578291143)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7190743670523251221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202801644152291147)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7190743747993251222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>337
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202805537104291163)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7202788968704270677)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202806411174291167)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7202789049147270678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202807283971291171)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7202789153919270679)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202809177252291178)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7202789301496270681)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120.09
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202810018014291181)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7202789396192270682)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202810954021291185)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7202789494915270683)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202812762985291191)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7202789817341270686)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202830258958291261)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7202792371265270711)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>171.54199999999997
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7203361491378857838)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7203129924251317493)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223196331795775597)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7203129924251317493)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223201526974778221)
,p_view_id=>wwv_flow_imp.id(7202798233994291134)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7202789301496270681)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7924871628440972878)
,p_plug_name=>'Salary Change Applied'
,p_parent_plug_id=>wwv_flow_imp.id(3447329773380901140)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.id, ''Basic Normal Pay'' Income_code, a.id pkey, orgdtl_id,',
'    emp_id,',
'    personal_rate,',
'    leave_passage_amount, ',
'HOURLY_RATE,',
'DAILY_RATE,',
'    leave_passage_date,',
'    start_date,',
'    end_date,  ',
'    inc_amount,',
'    increase_id,',
'    rollbk_std_detail_key',
'   --, salary_taxable Taxable',
'    --,reason_salary_change',
'     --,salary_nis_deductible',
'from hr_Rcm_salary a ',
'join hr_Rcm_employee b on a.emp_id = b.id',
'where  exists (select 1',
'              from hr_apu_standardincreasevalues b',
'              where a.emp_id=b.emp_id',
'              and increase_id = :P1471_ID)',
'and  increase_id = :P1471_ID              ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Salary Change Applied'
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
 p_id=>wwv_flow_imp.id(1087815284172489180)
,p_name=>'DAILY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAILY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Daily Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(5776995490304453439)
,p_name=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURLY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Hourly Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(5776995519289453440)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853893589149985114)
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
 p_id=>wwv_flow_imp.id(7190742692725251212)
,p_name=>'INCOME_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(7202792264775270710)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkey'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(7924872276063972885)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_ID:&ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7924872421232972886)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7924872622103972888)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7924875142696972913)
,p_name=>'PERSONAL_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSONAL_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Method Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(7924875468498972916)
,p_name=>'LEAVE_PASSAGE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_PASSAGE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Passage Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(7924875518861972917)
,p_name=>'LEAVE_PASSAGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_PASSAGE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Leave Passage Date'
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
,p_is_required=>false
,p_max_length=>0
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
 p_id=>wwv_flow_imp.id(7924875580799972918)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
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
 p_id=>wwv_flow_imp.id(7924875700093972919)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
 p_id=>wwv_flow_imp.id(7924875897774972921)
,p_name=>'INC_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INC_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inc Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(7924876072469972922)
,p_name=>'ROLLBK_STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLLBK_STD_DETAIL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rollbk Std Detail Key'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7924872192310972884)
,p_internal_uid=>7281677642531364616
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7925296850686456204)
,p_interactive_grid_id=>wwv_flow_imp.id(7924872192310972884)
,p_static_id=>'3367536'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7925297028673456205)
,p_report_id=>wwv_flow_imp.id(7925296850686456204)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1188287974947681541)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1087815284172489180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5223232259494984620)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5776995490304453439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5777859357568449780)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5776995519289453440)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202583723513293986)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7190742692725251212)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202829466185291256)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7202792264775270710)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925297529931456208)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7924872276063972885)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925298381932456211)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7924872421232972886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925299315205456214)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7924872622103972888)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>241
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925301526754456223)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7924875142696972913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925304237430456232)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7924875468498972916)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925305158636456237)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7924875518861972917)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925305974665456241)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7924875580799972918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925306876431456244)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7924875700093972919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925308722137456250)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7924875897774972921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7925309588084456253)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7924876072469972922)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223197178307779429)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7924875142696972913)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223197650101779429)
,p_view_id=>wwv_flow_imp.id(7925297028673456205)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7924875897774972921)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8581092150167940926)
,p_plug_name=>'Deduction Change Applied'
,p_parent_plug_id=>wwv_flow_imp.id(3447329773380901140)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>91
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID",',
'     PAYMENT_TYPE,',
'    "EXPENSE_ID",',
'    "EXPENSE_ID" expense_LKID,',
'    x."EMP_ID",',
'    x."EMP_ID" employee_id,',
'    initcap((select full_name from hr_rcm_employee where id = x.emp_id)) Employee_fullname,',
'     initcap((select employment_class from hr_rcm_employee where id = x.emp_id)) Employment_class,',
'    initcap((select decode(employment_status, ''IN-ACTIVE'',''SEPARATED'',employment_status) from hr_rcm_employee where id = x.emp_id )) Employment_status,',
'    initcap((select emp_company_no from hr_rcm_employee where id = x.emp_id )) emp_company_no,',
'    "DATESTART",',
'    "DISCIPLINE_ID",',
'    "DEDUCT_STATUS",',
'    "AMOUNT_BORROWED",',
'    "AMOUNT_OWING",',
'    "INTEREST_TYPE",',
'    "INTEREST_RATE",',
'    "PERIOD",',
'    "DATE_CLOSE",',
'    "CLOSED_BY",',
'    "DEDUCTION_AMOUNT",',
'    "APPROVED_BY",',
'    "APPROVED_DATE",',
'    "DEDUCTION_NO",',
'    x."REMARKS",',
'    "PREVIOUS_START_DATE",',
'    "CLOSING_EARNING_PERIOD",',
'    "CURRENT_BALANCE",',
'    "DEDUCTION_TYPE",',
'    x."HOURLY_RATE",',
'    "FOR_PRV_YTD_ENTRY",',
'    x."ENTERED_BY",',
'    x."ENTRY_DATE",',
'    x."VERIFIED_BY",',
'    x."VERIFIED_DATE",',
'    x."LAST_CHANGED_BY",',
'    x."LAST_CHANGED_DATE",',
'    x."MACHINE_INSERT",',
'    x."MACHINE_UPDATE",',
'    x."TRANSACTION_TYPE_ID",',
'    x."STATUS"',
'   , x.percent_basic',
'   ,x.percent_option',
'    from "PA_PCF_ADMINDEDUCTION" x ',
'    where increase_id =:P1471_ID',
'    ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8581091928099940924)
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
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD,P1297_POST_EARN:#ID#,1296,0'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_owner=>'PUR_INV'
,p_internal_uid=>7937897378320332656
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671418351185986241)
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
 p_id=>wwv_flow_imp.id(671418031572986241)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854027746099208365)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671417641363986241)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987993760144140)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671417200010986240)
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
 p_id=>wwv_flow_imp.id(671416757919986240)
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
 p_id=>wwv_flow_imp.id(671416381176986240)
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
 p_id=>wwv_flow_imp.id(671415977061986239)
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
 p_id=>wwv_flow_imp.id(671415606673986239)
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
 p_id=>wwv_flow_imp.id(671415232495986239)
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
 p_id=>wwv_flow_imp.id(671414778404986239)
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
 p_id=>wwv_flow_imp.id(671414438438986238)
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
 p_id=>wwv_flow_imp.id(671414002547986238)
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
 p_id=>wwv_flow_imp.id(671413600850986238)
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
 p_id=>wwv_flow_imp.id(671413194201986237)
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
 p_id=>wwv_flow_imp.id(671412820100986237)
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
 p_id=>wwv_flow_imp.id(671412445707986237)
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
 p_id=>wwv_flow_imp.id(671411979113986237)
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
 p_id=>wwv_flow_imp.id(671411557422986236)
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
 p_id=>wwv_flow_imp.id(671411167548986236)
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
 p_id=>wwv_flow_imp.id(671410790739986236)
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
 p_id=>wwv_flow_imp.id(671410357232986235)
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
 p_id=>wwv_flow_imp.id(671409971055986235)
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
 p_id=>wwv_flow_imp.id(671409637026986235)
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
 p_id=>wwv_flow_imp.id(671409160701986234)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3854027431601208365)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671408833876986234)
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
 p_id=>wwv_flow_imp.id(671408370004986234)
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
 p_id=>wwv_flow_imp.id(671408047480986233)
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
 p_id=>wwv_flow_imp.id(671407565722986233)
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
 p_id=>wwv_flow_imp.id(671407191249986233)
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
 p_id=>wwv_flow_imp.id(671406804862986232)
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
 p_id=>wwv_flow_imp.id(671406412041986232)
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
 p_id=>wwv_flow_imp.id(671405967945986232)
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
 p_id=>wwv_flow_imp.id(671405582910986232)
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
 p_id=>wwv_flow_imp.id(671405187253986231)
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
 p_id=>wwv_flow_imp.id(671404353428986231)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671404761015986231)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671402356328986229)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>75
,p_column_identifier=>'AV'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671401601802986228)
,p_db_column_name=>'PERCENT_BASIC'
,p_display_order=>85
,p_column_identifier=>'AW'
,p_column_label=>'Percent Basic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671402006490986229)
,p_db_column_name=>'PERCENT_OPTION'
,p_display_order=>95
,p_column_identifier=>'AX'
,p_column_label=>'Percent Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671402775097986229)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>105
,p_column_identifier=>'AY'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671403240198986230)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>115
,p_column_identifier=>'AZ'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671403601605986230)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>125
,p_column_identifier=>'BA'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671404046003986230)
,p_db_column_name=>'EMPLOYEE_FULLNAME'
,p_display_order=>135
,p_column_identifier=>'BB'
,p_column_label=>'Employee Fullname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8522794691906780577)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Active Deductions'
,p_report_seq=>10
,p_report_alias=>'4798168'
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
 p_id=>wwv_flow_imp.id(671419088045986242)
,p_report_id=>wwv_flow_imp.id(8522794691906780577)
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
 p_id=>wwv_flow_imp.id(8581088149745940115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4798176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_COMPANY_NO:EMPLOYEE_FULLNAME:EMPLOYMENT_CLASS:EMPLOYMENT_STATUS:EXPENSE_ID:DEDUCTION_TYPE:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:PAYMENT_TYPE:PERCENT_BASIC:PERCENT_OPTION:'
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
 p_id=>wwv_flow_imp.id(8610261049137041018)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'4798180'
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
 p_id=>wwv_flow_imp.id(671420050875986244)
,p_report_id=>wwv_flow_imp.id(8610261049137041018)
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
 p_id=>wwv_flow_imp.id(8663377550022280791)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'4798160'
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
 p_id=>wwv_flow_imp.id(671420679593986244)
,p_report_id=>wwv_flow_imp.id(8663377550022280791)
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
 p_id=>wwv_flow_imp.id(4638715934685006706)
,p_plug_name=>'Remuneration Configuration'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1172733845151268878)
,p_plug_name=>'Change Options'
,p_parent_plug_id=>wwv_flow_imp.id(4638715934685006706)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>19
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1172733912624268879)
,p_plug_name=>'Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(1172733845151268878)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'  increase_id,',
'  method_detail, ',
'  deduct_method,',
'    deduct_value,',
'    deduct_mode',
'from hr_apu_standarddeductmethdtl',
'where increase_id=:P1471_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734095001268881)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734189571268882)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734283073268883)
,p_name=>'METHOD_DETAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'METHOD_DETAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Method detail'
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
,p_max_length=>50
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF trim(upper(:DEDUCT_METHOD)) =''GROUP_MEDICAL'' then',
'  return',
'    ''select a.description, a.id',
'    from pa_pcf_deductioncode a',
'    where PERCENT_OPTION_DEDCODE  = ''''FIXED_RATE''''',
'    and group_med = 1',
'    and exists (select 1',
'                      from pa_pcf_admindeduction b join hr_rcm_employee c on b.emp_id=C.ID',
'                      where a.id=b.expense_id',
'                      and c.org_id=:APP_ORG_ID',
'                      and deduction_amount>0 )',
'    order by a.description'';',
'',
'elsif trim(upper(:DEDUCT_METHOD)) =''UNION_DUES'' then',
'return',
'    ''select a.description, a.id',
'    from pa_pcf_deductioncode a',
'    where PERCENT_OPTION_DEDCODE  = ''''FIXED_RATE''''',
'    and union_deduction = 1',
'    and exists (select 1',
'                      from pa_pcf_admindeduction b join hr_rcm_employee c on b.emp_id=C.ID',
'                      where a.id=b.expense_id',
'                      and c.org_id=:APP_ORG_ID',
'                      and deduction_amount>0 )',
'    order by a.description'';',
'',
'elsif trim(upper(:DEDUCT_METHOD)) =''INSURANCE'' then',
'return',
'    ''select a.description, a.id',
'    from pa_pcf_deductioncode a',
'    where PERCENT_OPTION_DEDCODE  = ''''FIXED_RATE''''',
'    and (UPPER(description) like ''''%LIFE%'''' or UPPER(description) like ''''%INSURANCE%'''')',
'    and exists (select 1',
'                      from pa_pcf_admindeduction b join hr_rcm_employee c on b.emp_id=C.ID',
'                      where a.id=b.expense_id',
'                      and c.org_id=:APP_ORG_ID',
'                      and deduction_amount>0 )',
'    order by a.description'';',
'',
'else',
'  return',
'    ''select a.description, a.id',
'    from pa_pcf_deductioncode a',
'    where PERCENT_OPTION_DEDCODE  = ''''FIXED_RATE'''''';',
'',
'end if;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'DEDUCT_METHOD'
,p_ajax_items_to_submit=>'DEDUCT_METHOD'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734472113268885)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>60
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734595402268886)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172734925803268889)
,p_name=>'DEDUCT_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduct Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(671657002337986491)
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1172735065188268890)
,p_name=>'DEDUCT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduct Value'
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
 p_id=>wwv_flow_imp.id(1172735116377268891)
,p_name=>'DEDUCT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduct Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Dollar;DOLLAR,Percentage;PERCENTAGE'
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
 p_id=>wwv_flow_imp.id(1172734048196268880)
,p_internal_uid=>529539498416660612
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
 p_id=>wwv_flow_imp.id(1193997615683414322)
,p_interactive_grid_id=>wwv_flow_imp.id(1172734048196268880)
,p_static_id=>'4957122'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1193997827821414322)
,p_report_id=>wwv_flow_imp.id(1193997615683414322)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1193998285039414327)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1172734095001268881)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1193999243653414333)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1172734189571268882)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1194000126664414337)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1172734283073268883)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1194001897039414342)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1172734472113268885)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1194006048287426974)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1172734925803268889)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1194006969393426976)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1172735065188268890)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1194007851610426979)
,p_view_id=>wwv_flow_imp.id(1193997827821414322)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1172735116377268891)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9338230778102135911)
,p_plug_name=>'Incomes'
,p_parent_plug_id=>wwv_flow_imp.id(1172733845151268878)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'  increase_id,',
'  method_detail, ',
'  INCREASE_MODE,',
'  increase_method,',
'  increase_value',
'from hr_apu_standardincmethdtl',
'where increase_id=:P1471_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1471_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4632063857009135952)
,p_name=>'INCREASE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Increase Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Dollar;DOLLAR,Percentage;PERCENTAGE'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4638716079940006707)
,p_name=>'INCREASE_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Increase Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853956208211092917)
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338230888707135913)
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
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338231007407135914)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338231101597135915)
,p_name=>'METHOD_DETAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'METHOD_DETAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Method detail'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_max_length=>50
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF trim(upper(:INCREASE_METHOD)) =''FIXED_RATE'' then',
'  return',
'    ''select a.description, a.id',
'    from pa_pcf_incomecode a',
'    where  inc_percent_option = ''''FIXED_RATE''''',
'    and retro_pay = 0',
'    and exists (select 1',
'                      from hr_rcm_empentitle b join hr_rcm_employee c on b.emp_id=C.ID',
'                      where a.id=b.income_code_id',
'                      and org_id=:APP_ORG_ID',
'                       and amount>0)',
'    order by a.description'';',
'',
'elsif trim(upper(:INCREASE_METHOD)) =''PERSONAL_RATE'' then',
'return',
'    ''select description, id ',
'    from pa_pcf_incomecode ic ',
'    where ic.org_id = :APP_ORG_ID',
'    and income_code in (''''SAL_PAY'''',''''SAL_PAY_NN'''',''''REG_HRLY_P'''',''''REG_HRLYP_NN'''')'';',
'  ',
'else',
'  return',
'    ''select a.description,a.id',
'    from pa_pcf_incomecode a',
'    union',
'    select description, id ',
'    from pa_pcf_incomecode ic ',
'    where ic.org_id = :APP_ORG_ID',
'    and (income_code=''''NR'''' or income_code=''''BASIC SALARY (GEN)'''')'';',
'',
'end if;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'INCREASE_METHOD'
,p_ajax_items_to_submit=>'INCREASE_METHOD'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338231338808135917)
,p_name=>'INCREASE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Value (% or $)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338231433210135918)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9338231519189135919)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9338230868563135912)
,p_internal_uid=>8695036318783527644
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
 p_id=>wwv_flow_imp.id(9338531660787122227)
,p_interactive_grid_id=>wwv_flow_imp.id(9338230868563135912)
,p_static_id=>'18313'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9338531696452122227)
,p_report_id=>wwv_flow_imp.id(9338531660787122227)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4638597159799874737)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4632063857009135952)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4638781191201454020)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4638716079940006707)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>262.3299999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9338532269708122241)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9338230888707135913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9338532745791122251)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9338231007407135914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9338533243243122257)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9338231101597135915)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>358
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9338534218428122265)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9338231338808135917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9338535415771130573)
,p_view_id=>wwv_flow_imp.id(9338531696452122227)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9338231433210135918)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6525789598126683338)
,p_plug_name=>'Parameters for Overlapping Retroactive Payments'
,p_parent_plug_id=>wwv_flow_imp.id(4638715934685006706)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       INCREASE_ID, order_opt,',
'       INCREASE_ID_PARENT,',
'       START_PERIOD,',
'       END_PERIOD,',
'       INCREASE_MODE,',
'       AMOUNT,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE',
'  from HR_APU_RETRO_OVERLAP',
'where INCREASE_ID =:P1471_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parameters for Overlapping Retroactive Payments'
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
 p_id=>wwv_flow_imp.id(6525789776384683340)
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
 p_id=>wwv_flow_imp.id(6525789923696683341)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
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
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525790039982683342)
,p_name=>'INCREASE_ID_PARENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID_PARENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Increase Parent'
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3361984114764544879)
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
 p_id=>wwv_flow_imp.id(6525790095337683343)
,p_name=>'START_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Period'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525790257502683344)
,p_name=>'END_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Period'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525790300975683345)
,p_name=>'INCREASE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Increase Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Percentage;Percentage,Dollar;Dollar'
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
 p_id=>wwv_flow_imp.id(6525790374579683346)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525790542573683347)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(6525790559547683348)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(6525790673305683349)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(6525790788020683350)
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
 p_id=>wwv_flow_imp.id(6525790943145683351)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525790999808683352)
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
 p_id=>wwv_flow_imp.id(6525791373203683356)
,p_name=>'ORDER_OPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_OPT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8'
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
 p_id=>wwv_flow_imp.id(6525789723198683339)
,p_internal_uid=>5882595173419075071
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
 p_id=>wwv_flow_imp.id(6542427180549803217)
,p_interactive_grid_id=>wwv_flow_imp.id(6525789723198683339)
,p_static_id=>'2993647'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6542427403413803218)
,p_report_id=>wwv_flow_imp.id(6542427180549803217)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542427940903803224)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6525789776384683340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542428786961803230)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6525789923696683341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542429746826803233)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6525790039982683342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542430559856803236)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6525790095337683343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542431525224803238)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6525790257502683344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542432430134803240)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6525790300975683345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542433328235803242)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6525790374579683346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542434199029803244)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6525790542573683347)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542435101517803247)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6525790559547683348)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542436043579803249)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6525790673305683349)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542436890949803252)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(6525790788020683350)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542444002169860754)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6525790943145683351)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6542519590973596582)
,p_view_id=>wwv_flow_imp.id(6542427403413803218)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6525791373203683356)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038716224949836916)
,p_plug_name=>'Employee Filter'
,p_parent_plug_id=>wwv_flow_imp.id(4638715934685006706)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P1471_INCREASE_TYPE'
,p_plug_display_when_cond2=>'CONDITIONAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6451140072918893238)
,p_plug_name=>'Compute Gross'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''COMPUTE_GROSS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140265855893240)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140383260893241)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140523248893242)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140601298893243)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140718305893244)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3850113372305083453)
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451140776553893245)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(6451140880806893246)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(6451140984324893247)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(6451141173419893249)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451141273249893250)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451141454032893251)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'COMPUTE_GROSS'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6451141532416893252)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6451140217153893239)
,p_internal_uid=>5807945667374284971
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
 p_id=>wwv_flow_imp.id(6525057582552993850)
,p_interactive_grid_id=>wwv_flow_imp.id(6451140217153893239)
,p_static_id=>'2819951'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6525057770013993850)
,p_report_id=>wwv_flow_imp.id(6525057582552993850)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525058224851993854)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6451140265855893240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525059109269993857)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6451140383260893241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525059999992993860)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6451140523248893242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525060925720993862)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6451140601298893243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525061772649993865)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6451140718305893244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525062740030993868)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6451140776553893245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525063599789993870)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6451140880806893246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525064524112993873)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6451140984324893247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525066323514993878)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6451141173419893249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525067644137993882)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6451141454032893251)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525068458150993884)
,p_view_id=>wwv_flow_imp.id(6525057770013993850)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6451141532416893252)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9028772624098917914)
,p_plug_name=>'Salary Grade'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''GRADE SCALE'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028772804188917916)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028772935278917917)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028773034325917918)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028773177737917919)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028773366106917921)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'select grade_description||''(''||grade_code||'')'' a, id b',
'from hr_hcf_positiongrade V',
'where trunc(EFFECTIVE_FROMDATE) <= trunc(current_date)',
'and (trunc(EFFECTIVE_TODATE) is null or EFFECTIVE_TODATE >= trunc(current_date))',
'and verified_by is not null',
'AND  v.org_id=:APP_ORG_ID',
'order by grade_description'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028773414656917922)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9028773537151917923)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9028773643343917924)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9028773748402917925)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9028773865008917926)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9028773960853917927)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774069207917928)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>130
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774124250917929)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038715913947836913)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'GRADE SCALE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9028772715784917915)
,p_internal_uid=>8385578166005309647
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
 p_id=>wwv_flow_imp.id(9038701542264829259)
,p_interactive_grid_id=>wwv_flow_imp.id(9028772715784917915)
,p_static_id=>'910256'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038701733603829260)
,p_report_id=>wwv_flow_imp.id(9038701542264829259)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038702250211829263)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9028772804188917916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038703103598829266)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9028772935278917917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038704009282829268)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9028773034325917918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038704905773829270)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9028773177737917919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038706741585829276)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9028773366106917921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>211
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038707654156829278)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9028773414656917922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038708589872829280)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9028773537151917923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038709418195829282)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9028773643343917924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038710358917829284)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9028773748402917925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038711210544829286)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9028773865008917926)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038712154756829288)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9028773960853917927)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038713052376829290)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9028774069207917928)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038752411857915476)
,p_view_id=>wwv_flow_imp.id(9038701733603829260)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038715913947836913)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9028774247456917930)
,p_plug_name=>'Work Unit/Department'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''ORG STRUCTURE'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774454222917932)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774575318917933)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774607506917934)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774749184917935)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028774977846917937)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description a, m.id b',
'from hr_hcf_orgstructuredtl m ',
'join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_orgstructurehd mhd on mhd.id=m.ORG_STRUCTURE_ID',
'where  mhd.org_id=:APP_ORG_ID',
'order by Unit_Name'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028775019105917938)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9028775152379917939)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9028775209585917940)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9028775375999917941)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9028775487532917942)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9028775567511917943)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028775630166917944)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>130
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028775760776917945)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038716042339836914)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'ORG STRUCTURE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9028774304404917931)
,p_internal_uid=>8385579754625309663
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
 p_id=>wwv_flow_imp.id(9038720444935837472)
,p_interactive_grid_id=>wwv_flow_imp.id(9028774304404917931)
,p_static_id=>'910445'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038720613601837472)
,p_report_id=>wwv_flow_imp.id(9038720444935837472)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038721816728837474)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9028774454222917932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038722739397837476)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9028774575318917933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038723627577837478)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9028774607506917934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038724528456837480)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9028774749184917935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038726335456837484)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9028774977846917937)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038727253621837485)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9028775019105917938)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038728189493837488)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9028775152379917939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038728996477837489)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9028775209585917940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038729895064837492)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9028775375999917941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038730837758837494)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9028775487532917942)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038731728303837496)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9028775567511917943)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038732643436837498)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9028775630166917944)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038753341447915478)
,p_view_id=>wwv_flow_imp.id(9038720613601837472)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038716042339836914)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9028775843105917946)
,p_plug_name=>'Specific Employee'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''SPECIFIC EMPLOYEES''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9028776049884917948)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038714525432836899)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038714631761836900)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038714789448836901)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038714895106836903)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No:''||EMP_COMPANY_NO||'')''||case when e.date_separated is null then '''' else ''(Separated)'' end a, e.ID b',
'from vw_availemployeefull e join hr_rcm_individual i on i.id = e.individual_id',
'where e.org_id = :APP_ORG_ID',
'--and (e.date_separated is null or e.date_separated >= :P1471_SEPARATE_EFFECTIVE)',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038715031412836904)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9038715131165836905)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038715286529836906)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038715298104836907)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038715468168836908)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9038715500806836909)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038715633621836910)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>130
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038715779467836911)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038716115887836915)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'SPECIFIC EMPLOYEES'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9028775911652917947)
,p_internal_uid=>8385581361873309679
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
 p_id=>wwv_flow_imp.id(9038721123317837473)
,p_interactive_grid_id=>wwv_flow_imp.id(9028775911652917947)
,p_static_id=>'910452'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038721344708837473)
,p_report_id=>wwv_flow_imp.id(9038721123317837473)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038733972856837502)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9028776049884917948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038734858193837504)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038714525432836899)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038735777889837506)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038714631761836900)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038736621377837508)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038714789448836901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038738430606837512)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038714895106836903)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>282
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038739342064837514)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038715031412836904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038740281877837516)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9038715131165836905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038741165679837518)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038715286529836906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038742062039837520)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038715298104836907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038742929117837522)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038715468168836908)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038743838580837524)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038715500806836909)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038744740201837526)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038715633621836910)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038754200378915480)
,p_view_id=>wwv_flow_imp.id(9038721344708837473)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038716115887836915)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038928913624173300)
,p_plug_name=>'Work Location'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''LOCATION'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929157722173302)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929228700173303)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929367356173304)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929484321173305)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929685940173307)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'select LOCATION_DESCRIPTION ||'' At ''||LOCATION_code a, a.id b',
'from HR_HCF_WORKLOCATION a ',
'WHERE ORG_ID=:APP_ORG_ID',
'order by LOCATION_DESCRIPTION'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038929708228173308)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9038929867265173309)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038929919786173310)
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
 p_id=>wwv_flow_imp.id(9038930028075173311)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038930110874173312)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9038930197798173313)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038930307168173314)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038930480302173315)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'LOCATION'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038930583937173316)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9038929008359173301)
,p_internal_uid=>8395734458579565033
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
 p_id=>wwv_flow_imp.id(9038936789552254877)
,p_interactive_grid_id=>wwv_flow_imp.id(9038929008359173301)
,p_static_id=>'912608'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038936974799254877)
,p_report_id=>wwv_flow_imp.id(9038936789552254877)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038937421087254878)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038929157722173302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038938329830254881)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038929228700173303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038939206025254883)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038929367356173304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038940126717254885)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038929484321173305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038941947359254890)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038929685940173307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>338.887
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038942850359254892)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038929708228173308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038943735030254894)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038929867265173309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038944657472254896)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038929919786173310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201.883
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038945506583254898)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038930028075173311)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038946437092254900)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038930110874173312)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038947307217254903)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038930197798173313)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038948692434254906)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038930480302173315)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038949552919254908)
,p_view_id=>wwv_flow_imp.id(9038936974799254877)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038930583937173316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038930601314173317)
,p_plug_name=>'Payment Frequency'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''PAYMENT FREQUENCY'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038930852361173319)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038930973400173320)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038931058486173321)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038931147317173322)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038931301087173324)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'select distinct payment_type a, payment_type b',
'from tbluserdetail',
'where user_id =(select user_id from tbluser where user_name=:APP_USER)'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038931492361173325)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9038931585746173326)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038931651277173327)
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
 p_id=>wwv_flow_imp.id(9038931721199173328)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038931799414173329)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9038931901076173330)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932059946173331)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932118385173332)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'PAYMENT FREQUENCY'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932226906173333)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9038930792251173318)
,p_internal_uid=>8395736242471565050
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
 p_id=>wwv_flow_imp.id(9038951470036269275)
,p_interactive_grid_id=>wwv_flow_imp.id(9038930792251173318)
,p_static_id=>'912755'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038951604244269275)
,p_report_id=>wwv_flow_imp.id(9038951470036269275)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038952188879269276)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038930852361173319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038952994785269278)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038930973400173320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038953974850269281)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038931058486173321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038954848599269282)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038931147317173322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038956644348269287)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038931301087173324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038957497270269289)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038931492361173325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038958393960269291)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038931585746173326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038959346589269293)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9038931651277173327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038960236970269295)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038931721199173328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038961126317269297)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038931799414173329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038962087494269299)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038931901076173330)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038963355751269303)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038932118385173332)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038964196099269305)
,p_view_id=>wwv_flow_imp.id(9038951604244269275)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038932226906173333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038932297756173334)
,p_plug_name=>'Job'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''JOB'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932533282173336)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932599562173337)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932693174173338)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038932858482173339)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038933021024173341)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.description a, j.id b',
'from HR_HCF_JOB j ',
'where  j.org_id=:APP_ORG_ID',
'and j.end_date is null',
'and j.verified_date is not null',
'order by j.description',
'',
'/*',
'select distinct p.position_name||''-''||o.unit_name a, p.id b',
'from HR_RCM_EMPLOYEE e',
'join HR_HCF_POSITION p on p.id=e.position_id',
'join HR_HCF_ORGSTRUCTUREDTL o on o.id=p.orgdtl_id',
'where  e.org_id=:APP_ORG_ID',
'and e.date_separated is null',
'order by p.position_name||''-''||o.unit_name',
'*/'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038933136414173342)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9038933241590173343)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038933347268173344)
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
 p_id=>wwv_flow_imp.id(9038933400516173345)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038933576292173346)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9038933666288173347)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038933698062173348)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965076012273199)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'JOB'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965105448273200)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9038932470529173335)
,p_internal_uid=>8395737920749565067
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
 p_id=>wwv_flow_imp.id(9038970967901276556)
,p_interactive_grid_id=>wwv_flow_imp.id(9038932470529173335)
,p_static_id=>'912950'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038971171942276556)
,p_report_id=>wwv_flow_imp.id(9038970967901276556)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038971659801276557)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038932533282173336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038972515456276559)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038932599562173337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038973474797276561)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038932693174173338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038974392612276563)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038932858482173339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038976123357276567)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038933021024173341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038977059640276569)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038933136414173342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038977921183276571)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038933241590173343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038978879767276573)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9038933347268173344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038979737922276575)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038933400516173345)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038980624876276577)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038933576292173346)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038981523471276579)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038933666288173347)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038982846376276583)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038965076012273199)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038983767630276584)
,p_view_id=>wwv_flow_imp.id(9038971171942276556)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038965105448273200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038965290695273201)
,p_plug_name=>'Trade Union'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''TRADE UNION'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965483756273203)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965564861273204)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965601204273205)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965778886273206)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038965915976273208)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'select organisation_name a,id b',
'from hr_hcf_organisation a',
'where organisation_type=''REMITTANCE''',
'and exists(select 1',
'           from pa_pcf_deductioncode b',
'           where a.id = b.ENTITY_ABBREVIATION',
'           and b.union_deduction = 1',
'           AND B.ORG_ID=:APP_ORG_ID)'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038966011082273209)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(9038966116509273210)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038966262040273211)
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
 p_id=>wwv_flow_imp.id(9038966311185273212)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038966467001273213)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9038966515753273214)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038966640710273215)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038966759121273216)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'TRADE UNION'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038966800866273217)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9038965360689273202)
,p_internal_uid=>8395770810909664934
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
 p_id=>wwv_flow_imp.id(9038985399036280430)
,p_interactive_grid_id=>wwv_flow_imp.id(9038965360689273202)
,p_static_id=>'913095'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9038985640791280430)
,p_report_id=>wwv_flow_imp.id(9038985399036280430)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038986094772280431)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038965483756273203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038987035241280433)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038965564861273204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038987971905280435)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038965601204273205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038988825785280437)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038965778886273206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038990552689280441)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038965915976273208)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>309.887
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038991432310280444)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038966011082273209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038992330111280446)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038966116509273210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038993281377280448)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9038966262040273211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038994117958280450)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038966311185273212)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038995033639280452)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038966467001273213)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038995910622280454)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038966515753273214)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038997251499280458)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038966759121273216)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9038998106052280459)
,p_view_id=>wwv_flow_imp.id(9038985640791280430)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038966800866273217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9038967181390273220)
,p_plug_name=>'Employment Type'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE =''EMPLOYMENT TYPE'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967316465273222)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Lower'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967487262273223)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assigned Range Upper'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967571197273224)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967612428273225)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967755611273226)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Condition Structure Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select value_description description, table_value',
'from hr_hcf_lookup',
'where table_name = ''TBLEMPLOYMENTTYPE''',
'and org_id = :APP_ORG_ID',
'',
'--Richard''s old code',
'/*',
'select distinct case when employment_type_id=''1'' then ''Temporary''',
'                    when employment_type_id=''2'' then ''Permanent''',
'                    when employment_type_id=''3'' then ''Pension''',
'                    when employment_type_id=''4'' then ''Contract''',
'                    else ',
'                    case when employment_type_id is null then null',
'                         else ''Training'' end',
'                    end description',
', employment_type_id',
'from hr_rcm_employee',
'where org_id = :APP_ORG_ID',
'*/'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P1471_STAGGER_STRUCTURE'
,p_display_condition2=>'ASSIGNED RANGES'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038967880179273227)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(9038967942311273228)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(9038968089313273229)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(9038968169924273230)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine insert'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038968238118273231)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(9038968382759273232)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>110
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038968483677273233)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038968575026273234)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'EMPLOYMENT TYPE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9038968621433273235)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9038967237539273221)
,p_internal_uid=>8395772687759664953
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
 p_id=>wwv_flow_imp.id(9039528728050638300)
,p_interactive_grid_id=>wwv_flow_imp.id(9038967237539273221)
,p_static_id=>'918528'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9039528915789638301)
,p_report_id=>wwv_flow_imp.id(9039528728050638300)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039529461317638305)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9038967316465273222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039530305374638310)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038967487262273223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039531204784638312)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9038967571197273224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039532155651638314)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038967612428273225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039533015851638317)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9038967755611273226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039533991210638320)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9038967880179273227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039534881257638322)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9038967942311273228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039535699716638324)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9038968089313273229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039536653313638326)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9038968169924273230)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039537537500638328)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9038968238118273231)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039538423867638330)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9038968382759273232)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039539708903638334)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9038968575026273234)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9039540686925638336)
,p_view_id=>wwv_flow_imp.id(9039528915789638301)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9038968621433273235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9047806471584916137)
,p_plug_name=>'Assigned Ranges'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from HR_APU_STANDARDINCREASEDETAIL B ',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE=''ASSIGNED RANGES''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Assigned Ranges'
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
 p_id=>wwv_flow_imp.id(9047806677330916139)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Range Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(9047806705964916140)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Range A'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(9047806846812916141)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Range B'
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
 p_id=>wwv_flow_imp.id(9047806907359916142)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(9047807076262916143)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(9047807117260916144)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(9047807253987916145)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(9047807339352916146)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'ASSIGNED RANGES'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9047807422563916147)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9047807563392916148)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058256049219880099)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058256130234880100)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058256453017880103)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(9058256505654880104)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9047806561326916138)
,p_internal_uid=>8404612011547307870
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
 p_id=>wwv_flow_imp.id(9058263948124881352)
,p_interactive_grid_id=>wwv_flow_imp.id(9047806561326916138)
,p_static_id=>'1105880'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9058264107297881352)
,p_report_id=>wwv_flow_imp.id(9058263948124881352)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058264601643881356)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9047806677330916139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058265582040881361)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9047806705964916140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058266436226881364)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9047806846812916141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058267364927881366)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9047806907359916142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058268204362881368)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9047807076262916143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058269118514881370)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9047807117260916144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058270067604881372)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9047807253987916145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058270902970881374)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9047807339352916146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058271819125881376)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9047807422563916147)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058273095070881380)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9058256049219880099)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058274075697881382)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9058256130234880100)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058288755539987141)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(9058256453017880103)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058289547216987143)
,p_view_id=>wwv_flow_imp.id(9058264107297881352)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9058256505654880104)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9057399097263516035)
,p_plug_name=>'Employment Class'
,p_parent_plug_id=>wwv_flow_imp.id(9038716224949836916)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'B."ID",',
'"INCREASE_ID",',
'"STAGGER_VALUE",',
'STAGGER_RANGE_A,',
'STAGGER_RANGE_B,',
'B."LAST_CHANGED_BY",',
'B."LAST_CHANGED_DATE",',
'B."ENTRY_DATE",',
'B."ENTERED_BY",',
'B."MACHINE_INSERT",',
'B."MACHINE_UPDATE",STAGGER_STRUCTURE',
'from  HR_APU_STANDARDINCREASEDETAIL B',
'where "INCREASE_ID" = :P1471_ID',
'and STAGGER_STRUCTURE=''EMPLOYMENT CLASS''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employment Class'
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
 p_id=>wwv_flow_imp.id(9057399324039516037)
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
 p_id=>wwv_flow_imp.id(9057399399917516038)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
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
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9057399588112516039)
,p_name=>'STAGGER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employment Class'
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
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853987396783144140)
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
 p_id=>wwv_flow_imp.id(9057399682565516040)
,p_name=>'STAGGER_RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(9057399735443516041)
,p_name=>'STAGGER_RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_RANGE_B'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9057399852490516042)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(9057399910005516043)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(9057400079056516044)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(9057400112532516045)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(9057400427564516048)
,p_name=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STAGGER_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'EMPLOYMENT CLASS'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058023702906907399)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058023814732907400)
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
 p_id=>wwv_flow_imp.id(9058256286512880101)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9058256346744880102)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9057399248538516036)
,p_internal_uid=>8414204698758907768
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
 p_id=>wwv_flow_imp.id(9058031769476907820)
,p_interactive_grid_id=>wwv_flow_imp.id(9057399248538516036)
,p_static_id=>'1103558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9058031937659907820)
,p_report_id=>wwv_flow_imp.id(9058031769476907820)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058032394930907822)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9057399324039516037)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058033299797907826)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9057399399917516038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058034229398907828)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9057399588112516039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058035137074907830)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9057399682565516040)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058036054551907832)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9057399735443516041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058036957960907835)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9057399852490516042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058037820992907837)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9057399910005516043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058038780828907839)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9057400079056516044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058039682461907841)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9057400112532516045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058042195570907847)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9057400427564516048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058043126998907848)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(9058023702906907399)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058286948089987137)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(9058256286512880101)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9058287802085987139)
,p_view_id=>wwv_flow_imp.id(9058031937659907820)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9058256346744880102)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9430631329742380362)
,p_plug_name=>'Change Configurations'
,p_parent_plug_id=>wwv_flow_imp.id(4638715934685006706)
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
 p_id=>wwv_flow_imp.id(9038716339133836917)
,p_plug_name=>'Generate or Browse Change Conditions'
,p_parent_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1471_INCREASE_TYPE'
,p_plug_display_when_cond2=>'CONDITIONAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9430655930502409399)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1471_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6751181911697547665)
,p_plug_name=>'Listing of Errors'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TBLERRORLOG.ERROR_ID as ERROR_ID,',
'    TBLERRORLOG.ORA_ERROR_CODE as ORA_ERROR_CODE,',
'    TBLERRORLOG.ORA_DESCRIPTION as ORA_DESCRIPTION,',
'    TBLERRORLOG.APP_DESCRIPTION as APP_DESCRIPTION,',
'    TBLERRORLOG.CREATED_BY as CREATED_BY,',
'    TBLERRORLOG.CREATION_DATE as CREATION_DATE,',
'    TBLERRORLOG.MODULE_NAME as MODULE_NAME',
' from TBLERRORLOG TBLERRORLOG',
' where  org_id=:APP_ORG_ID',
' and upper(module_name) like ''PKG_SALARY_INCREASE%''',
' --and TRANSACTION_SOURCE_ID=:P1471_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1471_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6751182007786547665)
,p_name=>'Report 1'
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>6107987458006939397
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671367212189986163)
,p_db_column_name=>'ERROR_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Error Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671367553332986166)
,p_db_column_name=>'ORA_ERROR_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ora Error Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORA_ERROR_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671368022471986167)
,p_db_column_name=>'ORA_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ora Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORA_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671368449309986167)
,p_db_column_name=>'APP_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'App Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671368804863986167)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671369186678986168)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671369624460986168)
,p_db_column_name=>'MODULE_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODULE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6751183314966551381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4799392'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ORA_DESCRIPTION:APP_DESCRIPTION:CREATED_BY:CREATION_DATE:MODULE_NAME'
,p_sort_column_1=>'CREATION_DATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7202792408289270712)
,p_plug_name=>'Retroactive Deductions Preview'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPENSE_ID,',
'       EMP_ID,Deduction_Amount, date_separated,',
'       DATESTART,DATE_CLOSE',
'       REMARKS,by_pass_compute,',
'       EARNINGS_PERIOD_ID,',
'       DEDUCTION_TYPE,',
'       DEDUCT_STATUS,TRANSFERRED,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ORG_ID,',
'       EMPLOYMENT_CLASS_ID,',
'       PAYMENT_TYPE,',
'       ADMIN_DEDUCTION_ID,',
'       ID,',
'       INCREASE_ID,',
'       records_processed,',
'       deduction_source_amount',
'  from HR_APU_RETROPREVIEWDEDUCTIONS',
'  WHERE INCREASE_ID=:P1471_ID',
'  and EXPENSE_ID =nvl(:P1471_DEDUCT_CODE, EXPENSE_ID)',
'-- and nvl(EARNINGS_PERIOD_ID,0) = nvl(:P1471_EARNINGS_PERIOD_ID,EARNINGS_PERIOD_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID,P1471_DEDUCT_CODE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Retroactive Deductions Preview'
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
 p_id=>wwv_flow_imp.id(6525864921306685942)
,p_name=>'RECORDS_PROCESSED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORDS_PROCESSED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Records'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525865049599685943)
,p_name=>'DEDUCTION_SOURCE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_SOURCE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Source Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202793091824270719)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202793276059270720)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202793310753270721)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
end;
/
begin
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202793611442270724)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854027746099208365)
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202793702591270725)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879024286472176)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879179194472178)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>15
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879346812472179)
,p_name=>'DEDUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduct Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Transferred;T,Not Tranferred;N'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879469143472180)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879484695472181)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879659759472182)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879680384472183)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879861252472184)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879948255472185)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202879999885472186)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202880131138472187)
,p_name=>'ADMIN_DEDUCTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_DEDUCTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202880242038472188)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Retro Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7202880627552472192)
,p_name=>'BY_PASS_COMPUTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'By Pass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203129641366317490)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203129756898317491)
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
 p_id=>wwv_flow_imp.id(7204924880347585217)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853992524515144148)
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7204925204230585220)
,p_name=>'DATE_SEPARATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_SEPARATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Separated'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7204925525052585223)
,p_name=>'TRANSFERRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSFERRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transferred'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844225131839162058)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7202793075072270718)
,p_internal_uid=>6559598525292662450
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7202888960847475635)
,p_interactive_grid_id=>wwv_flow_imp.id(7202793075072270718)
,p_static_id=>'3971304'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7202889122453475635)
,p_report_id=>wwv_flow_imp.id(7202888960847475635)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6243080651270249628)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(6525864921306685942)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174.39600000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6243082007979249631)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(6525865049599685943)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>203.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6805770848348689802)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7204925204230585220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202889621234475638)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7202793091824270719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202890551330475642)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7202793276059270720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202891382086475647)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7202793310753270721)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>272
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202893517307475660)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7202793611442270724)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>181
,p_break_order=>4.375
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202894395117475666)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7202793702591270725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202895348524475671)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(7202879024286472176)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202897163700475685)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7202879179194472178)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202898006320475691)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7202879346812472179)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202898936135475696)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7202879469143472180)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202899785706475702)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7202879484695472181)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202900731298475707)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7202879659759472182)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202901628070475711)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7202879680384472183)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202902564617475716)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7202879861252472184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202903387886475720)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7202879948255472185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202904325262475725)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7202879999885472186)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202905186084475729)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7202880131138472187)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202906099649475734)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7202880242038472188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202909738956475753)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7202880627552472192)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7203208849228335263)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7203129641366317490)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7207099016239852870)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(7204924880347585217)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>395.878
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7207858217247817082)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(7204925525052585223)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6805775106524707603)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_execution_seq=>5
,p_name=>'highlight Separated'
,p_text_color=>'#B50909'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(7204925204230585220)
,p_condition_operator=>'NN'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243063689147030771)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_function=>'COUNT'
,p_column_id=>wwv_flow_imp.id(7202793310753270721)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243064215768030772)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7202880242038472188)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243064654117030772)
,p_view_id=>wwv_flow_imp.id(7202889122453475635)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(6525865049599685943)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7909939053722940116)
,p_plug_name=>'Retroactive Payments Preview'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select X.INCREASE_DETAILS,INCOME_CODE_ID,x.date_separated,',
'       X.STD_DETAIL_KEY,',
'       X.EMP_ID,',
'       X.EARNINGS_PERIOD_ID,',
'       X.QUANTITY,',
'       X.RATE,',
'       X.AMOUNT_PAID,',
'       X.START_PERIOD_PAID,',
'       X.END_PERIOD_PAID,',
'       X.pay_status,',
'       X.INCREASE_ID,',
'       X.BACKUP_EARN_PRD,',
'       X.PAY_OPTION,',
'       X.ENTERED_BY,',
'       X.ENTRY_DATE,',
'       X.LAST_CHANGED_DATE,',
'       X.LAST_CHANGED_BY,increase_percentage,',
'       X.REMARKS,',
'       X.ID,',
'       X.RECORDS_PROCESSED Records,',
'       X.INCOME_SOURCE_AMOUNT INCOME_SOURCE,',
'       (select distinct 1 from hr_rcm_empentitle ee where x.emp_id = ee.emp_id and x.income_code_id = ee.income_code_id and ee.end_date is null) Entitlement,',
'       (select UNIT_NAME',
'    from hr_hcf_orgstructuredtl odtl',
'    where odtl.id=emp.orgdtl_id) orgdtl_id',
'  from HR_APU_RETROPREVIEW X left join hr_rcm_employee emp on emp.id = x.emp_id',
' where INCREASE_ID=:P1471_ID',
' and INCOME_CODE_ID=nvl(:P1471_INCOME_CODE, INCOME_CODE_ID)',
'-- and nvl(EARNINGS_PERIOD_ID,0) = nvl(:P1471_EARNINGS_PERIOD_ID,EARNINGS_PERIOD_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID,P1471_INCOME_CODE,P1471_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Retroactive Payments Preview'
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
 p_id=>wwv_flow_imp.id(2301564390650267741)
,p_name=>'INCREASE_PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inc%'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
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
 p_id=>wwv_flow_imp.id(5781264141585544429)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6317742766720942257)
,p_name=>'INCOME_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_SOURCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income Source Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6317742862127942258)
,p_name=>'ENTITLEMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTITLEMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6317742998206942259)
,p_name=>'RECORDS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORDS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Records'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203129326179317487)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203129439827317488)
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
 p_id=>wwv_flow_imp.id(7204925317345585221)
,p_name=>'DATE_SEPARATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_SEPARATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Separated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7207910865293970777)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>2
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939184807940118)
,p_name=>'INCREASE_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Increase Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939333628940119)
,p_name=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_DETAIL_KEY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939405306940120)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939559647940121)
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
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853992524515144148)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939572807940122)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909939710995940123)
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
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7909939779874940124)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Retro Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7909939908983940125)
,p_name=>'START_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7909940039542940126)
,p_name=>'END_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7915328709529209578)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Id'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7915328783607209579)
,p_name=>'BACKUP_EARN_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BACKUP_EARN_PRD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Backup Earn Prd'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7915328941243209580)
,p_name=>'PAY_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Option'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7915329013117209581)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(7915329101084209582)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(7915329240999209583)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7915329290802209584)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(7915329423895209585)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(7915329474092209586)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(7917384137189504425)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853958765200092919)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7909939073809940117)
,p_internal_uid=>7266744524030331849
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(7915334500684209707)
,p_interactive_grid_id=>wwv_flow_imp.id(7909939073809940117)
,p_static_id=>'3267913'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7915334698931209708)
,p_report_id=>wwv_flow_imp.id(7915334500684209707)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2314034688355813493)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(2301564390650267741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5781278195046594452)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(5781264141585544429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6545192136503137115)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(6317742766720942257)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6545197312765261919)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(6317742862127942258)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6545228274368445010)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(6317742998206942259)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>42
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7203197503525333326)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7203129326179317487)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7207845866489486243)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7204925317345585221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7207964617022293026)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(7207910865293970777)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915335181818209713)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7909939184807940118)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915336158981209721)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7909939333628940119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915337025113209726)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7909939405306940120)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>272
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915337957007209729)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7909939559647940121)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>377
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915338819552209733)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7909939572807940122)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915339752211209737)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7909939710995940123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915340659570209741)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7909939779874940124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915341564290209745)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7909939908983940125)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915342429049209749)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7909940039542940126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915344208810209755)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7915328709529209578)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915344976198209758)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7915328783607209579)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915345917661209761)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7915328941243209580)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915346810697209765)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7915329013117209581)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915347677645209768)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7915329101084209582)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915348644545209771)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7915329240999209583)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915349550792209774)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7915329290802209584)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915350430769209777)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(7915329423895209585)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>48
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7915351296262209780)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(7915329474092209586)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7924791730141621250)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7917384137189504425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>222
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6243072669563053026)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_execution_seq=>10
,p_name=>'highlight_noentitlement'
,p_background_color=>'#8FE84B'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6317742862127942258)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6805758989058512477)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_execution_seq=>5
,p_name=>'highlight_separated'
,p_background_color=>'#A12405'
,p_text_color=>'#FFFFFF'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(7204925317345585221)
,p_condition_operator=>'NN'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243062934350026122)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7909939572807940122)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243089309786058508)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(6317742766720942257)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(6243118816989109113)
,p_view_id=>wwv_flow_imp.id(7915334698931209708)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7909939779874940124)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9028772582947917913)
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
 p_id=>wwv_flow_imp.id(9038716932696836923)
,p_plug_name=>'Change Preview'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5766637241089501955)
,p_plug_name=>'Salary Change Preview with Headings'
,p_parent_plug_id=>wwv_flow_imp.id(9038716932696836923)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    id,',
'    increase_id,INCOME_CODE_ID, Old_Method_Rate_Date,new_method_rate_date,processed_status,',
'    increase_method,by_pass_compute bypass, remarks,emp_id pkey, hourly_rate, daily_rate, old_hourly_rate, old_daily_rate,',
'    emp_id, --pkg_salary_increase.get_allowance_totals(emp_id, increase_id, :P1471_TOTAL_ALLOWANCE) ',
'    org_structure,',
'    (select UNIT_NAME',
'    from hr_hcf_orgstructuredtl odtl',
'    where odtl.id=orgdtl_id) orgdtl_id,',
'    curr_method_rate,',
'    new_method_rate,',
'    curr_grade_id,',
'    curr_grade_point_id,',
'    new_grade_id,',
'    new_grade_point_id,',
'     (new_method_rate + (select nvl(SUM(NEW_METHOD_RATE),0) ',
'        from hr_apu_standardincreasevalues x',
'        where x.increase_id = :P1471_ID',
'        and x.emp_id = a.emp_id',
'        and x.income_code_id= 4433))',
'-(CURR_method_rate + ',
'        (  select nvl(SUM(CURR_METHOD_RATE),0) ',
'        from hr_apu_standardincreasevalues x',
'        where x.increase_id = :P1471_ID',
'        and x.emp_id = a.emp_id',
'        and x.income_code_id= 4433)) increase_amount,',
'    increase_percentage,',
'    position_id,',
'    union_code_id,',
'    employment_type_id,',
'    employment_class_id,',
'    compute_gross,',
'    wklocation_id,',
'    payment_type,',
'    entry_date,',
'    entered_by,',
'    last_changed_date,',
'    last_changed_by,',
'     date_separated,',
'    (case when new_salary_exists = 1 then ''YES'' else ''NO'' end)  Newer_Salary,',
'    (select sum(x.amount_paid) ',
'        from hr_apu_retropreview x ',
'        where x.emp_id = a.emp_id ',
'        and x.income_code_id in (select inc.id ',
'                                    from pa_pcf_incomecode inc ',
'                                    where inc.org_id = :APP_ORG_ID ',
'                                    and inc.income_code in (''RETCUM'', ''RETBAS''))',
'                                    and x.increase_id = :P1471_ID) retro_amount',
'FROm hr_apu_standardincreasevalues a  ',
'where increase_id = :P1471_ID',
'and exists (select 1',
'            from pa_pcf_incomecode ic ',
'            where ic.id = a.income_code_id',
'            and org_id =:APP_ORG_ID',
'            and trim(ic.income_code)  in (''NR'',''BASIC SALARY (GEN)'')',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Salary Change Preview with Headings'
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
 p_id=>wwv_flow_imp.id(5772488849760978257)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>5129294299981369989
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671587244696986398)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671587631281986411)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671587978737986411)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853958765200092919)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671588419905986412)
,p_db_column_name=>'OLD_METHOD_RATE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Old Method Rate Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671588750538986412)
,p_db_column_name=>'NEW_METHOD_RATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'New Method Rate Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671589248514986413)
,p_db_column_name=>'PROCESSED_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Processed Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671589572270986413)
,p_db_column_name=>'INCREASE_METHOD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Increase Method'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671590041325986413)
,p_db_column_name=>'BYPASS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bypass'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671590438135986414)
,p_db_column_name=>'REMARKS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671590843820986414)
,p_db_column_name=>'PKEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671591230784986415)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671591631331986415)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671591953239986416)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671592388895986416)
,p_db_column_name=>'OLD_DAILY_RATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Old Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671592845433986417)
,p_db_column_name=>'EMP_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671593185044986417)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671593575692986418)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671594021185986418)
,p_db_column_name=>'CURR_METHOD_RATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Old Basic Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671594429421986419)
,p_db_column_name=>'NEW_METHOD_RATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'New Basic Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671594824908986419)
,p_db_column_name=>'CURR_GRADE_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Curr Grade Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671595214684986420)
,p_db_column_name=>'CURR_GRADE_POINT_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Curr Grade Point Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671595637295986420)
,p_db_column_name=>'NEW_GRADE_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'New Grade Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671595983058986421)
,p_db_column_name=>'NEW_GRADE_POINT_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'New Grade Point Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671596408755986421)
,p_db_column_name=>'INCREASE_AMOUNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Increase Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671596790870986422)
,p_db_column_name=>'INCREASE_PERCENTAGE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Increase Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671597229042986422)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Position Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671597570453986423)
,p_db_column_name=>'UNION_CODE_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Union Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671597958367986423)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Employment Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671598417400986424)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671598806388986424)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671599211446986424)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671599591383986425)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671600014723986425)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671600439561986426)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671600782966986426)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671601174521986426)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671601597046986427)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671602019114986427)
,p_db_column_name=>'NEWER_SALARY'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Newer Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671602377048986428)
,p_db_column_name=>'RETRO_AMOUNT'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Retro Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5772588303831983553)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4799889'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORGDTL_ID:EMP_ID:INCOME_CODE_ID:CURR_METHOD_RATE:OLD_HOURLY_RATE:OLD_DAILY_RATE:NEW_METHOD_RATE:HOURLY_RATE:DAILY_RATE:INCREASE_AMOUNT:RETRO_AMOUNT'
,p_break_on=>'ORGDTL_ID:0:0:0:0:0'
,p_break_enabled_on=>'ORGDTL_ID:0:0:0:0:0'
,p_sum_columns_on_break=>'CURR_METHOD_RATE:OLD_ALLOWANCE_TOTALS:OLD_OVERALL_TOTALS:NEW_METHOD_RATE:NEW_ALLOWANCE_TOTALS:OVERALL_TOTALS:INCREASE_AMOUNT:RETRO_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6366109571266605700)
,p_plug_name=>'All CrossTab Preview'
,p_parent_plug_id=>wwv_flow_imp.id(9038716932696836923)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--basic pay for existing increase',
'SELECT ',
'    a.id,',
'    emp_id pkey,',
'    description,',
'    emp_id,    ',
'    orgdtl_id,  ',
'     new_method_rate,  ',
'    position_id   ',
'FROm hr_apu_standardincreasevalues a join pa_pcf_incomecode b on b.id = a.income_code_id',
'where increase_id = :P1471_ID',
'and income_code  in (''NR'',''BASIC SALARY (GEN)'')',
'--and USE_STANDARD_HOURS=''Y''',
'--and inc_percent_option=''BASIC_PAY''',
'--and EARNING_RATE=''BASE_RATE''',
'union',
'--spinoff allowances if existing as a result of increase',
'SELECT ',
'    a.id,',
'    emp_id pkey,',
'    description,',
'    emp_id,    ',
'    orgdtl_id,  ',
'     new_method_rate,  ',
'    position_id   ',
'FROm hr_apu_standardincreasevalues a join pa_pcf_incomecode b on b.id = a.income_code_id',
'where increase_id = :P1471_ID',
'and B.ID in (SELECT to_number(a_field)',
'            FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'            || REPLACE(:P1471_INCOME_CODES_CT,'':'',''</e><e>'')',
'            || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'            )',
'--existing system entitlement non increased                    ',
'union ',
'select empent.id, emp_id,description,emp_id, orgdtl_id, amount, emp.position_id',
'from hr_Rcm_employee emp join hr_rcm_empentitle empent on emp.id = empent.emp_id',
'join pa_pcf_incomecode inccode on inccode.id=empent.income_code_id',
'where empent.admin_status in (''SYS'',''BOTH'')',
'and (empent.end_date is null or empent.end_date > :P1471_NEW_SALARY_DATE)',
'and inccode.ID in (SELECT to_number(a_field)',
'                    FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                    || REPLACE(:P1471_INCOME_CODES_CT,'':'',''</e><e>'')',
'                    || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                    )',
'and exists(select 1',
'             from hr_apu_standardincreasevalues inc',
'             where inc.emp_id = empent.emp_id',
'             and increase_id = :P1471_ID',
'             )',
'order by description'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1471_ID,P1471_INCOME_CODES_CT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'All CrossTab Preview'
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
 p_id=>wwv_flow_imp.id(6366159883052722595)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>5722965333273114327
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671605010782986431)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671605449036986431)
,p_db_column_name=>'PKEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671605790139986431)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671606209715986432)
,p_db_column_name=>'EMP_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987993760144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671606597127986432)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Work Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853893589149985114)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671607002812986432)
,p_db_column_name=>'NEW_METHOD_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'New Method Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671607428822986433)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853860099252947388)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6366263160375786987)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'4799940'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPTION:EMP_ID:ORGDTL_ID:NEW_METHOD_RATE:POSITION_ID:'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(2313509285295901810)
,p_report_id=>wwv_flow_imp.id(6366263160375786987)
,p_pivot_columns=>'DESCRIPTION'
,p_row_columns=>'EMP_ID:ORGDTL_ID:POSITION_ID'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(671608410431986435)
,p_pivot_id=>wwv_flow_imp.id(2313509285295901810)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'NEW_METHOD_RATE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Amount'
,p_format_mask=>'FML999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7202880773108472193)
,p_plug_name=>'Other Income Change Preview'
,p_parent_plug_id=>wwv_flow_imp.id(9038716932696836923)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    id,',
'    increase_id,INCOME_CODE_ID, Old_Method_Rate_Date,new_method_rate_date,processed_status,',
'    increase_method,by_pass_compute bypass, remarks,emp_id pkey,',
'    emp_id, ',
'    org_structure,',
'        (select UNIT_NAME',
'    from hr_hcf_orgstructuredtl odtl',
'    where odtl.id=orgdtl_id) orgdtl_id,',
'    curr_method_rate,',
'    new_method_rate,',
'    curr_grade_id,',
'    curr_grade_point_id,',
'    new_grade_id,',
'    new_grade_point_id,',
'    increase_amount,',
'    increase_percentage,',
'    position_id,',
'    union_code_id,',
'    employment_type_id,',
'    employment_class_id,',
'    compute_gross,',
'    wklocation_id,',
'    payment_type,',
'    entry_date,',
'    entered_by,',
'    last_changed_date,',
'    last_changed_by,',
'audit_operation',
'FROm hr_apu_standardincreasevalues a',
'where increase_id = :P1471_ID',
'and exists (select 1',
'            from pa_pcf_incomecode ic ',
'            where ic.id = a.income_code_id',
'            AND ORG_ID=:APP_ORG_ID',
'            and trim(ic.income_code) not in (''NR'',''BASIC SALARY (GEN)'')',
'            )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Income Change Preview'
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
 p_id=>wwv_flow_imp.id(1087815691579489184)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
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
 p_id=>wwv_flow_imp.id(7202881470319472200)
,p_name=>'BYPASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BYPASS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bypass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(7202881482629472201)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853958765200092919)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202881630064472202)
,p_name=>'OLD_METHOD_RATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_METHOD_RATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Old Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202881738884472203)
,p_name=>'NEW_METHOD_RATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_METHOD_RATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Current Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202881830107472204)
,p_name=>'PROCESSED_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESSED_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Processed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844225131839162058)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202881919766472205)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(7202882021846472206)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882079079472207)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882242399472208)
,p_name=>'INCREASE_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Increase Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882328739472209)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882390609472210)
,p_name=>'ORG_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882517955472211)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Work Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882598537472212)
,p_name=>'CURR_METHOD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_METHOD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Method Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7202882717172472213)
,p_name=>'NEW_METHOD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_METHOD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Method Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7202882827079472214)
,p_name=>'CURR_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202882905742472215)
,p_name=>'CURR_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883053518472216)
,p_name=>'NEW_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883146189472217)
,p_name=>'NEW_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883246169472218)
,p_name=>'INCREASE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7202883284939472219)
,p_name=>'INCREASE_PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Change'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883419778472220)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883565291472221)
,p_name=>'UNION_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNION_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883634591472222)
,p_name=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883736255472223)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883820536472224)
,p_name=>'COMPUTE_GROSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_GROSS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202883932467472225)
,p_name=>'WKLOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WKLOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202918454343499976)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202918562147499977)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202918663952499978)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202918720746499979)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202918831824499980)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202919146967499983)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR:&PKEY.,1471'
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
 p_id=>wwv_flow_imp.id(7202923352433500025)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203128191605317476)
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
 p_id=>wwv_flow_imp.id(7202881371506472199)
,p_internal_uid=>6559686821726863931
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7202926893715501960)
,p_interactive_grid_id=>wwv_flow_imp.id(7202881371506472199)
,p_static_id=>'3971684'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7202927118957501960)
,p_report_id=>wwv_flow_imp.id(7202926893715501960)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1191146578376490952)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(1087815691579489184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202927610945501962)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7202881470319472200)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202928513099501967)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7202881482629472201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202929391343501970)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7202881630064472202)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202930313292501974)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7202881738884472203)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202931244305501978)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7202881830107472204)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202932104613501982)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7202881919766472205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202933076486501986)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7202882021846472206)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202933942807501990)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7202882079079472207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202934816696501994)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7202882242399472208)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202935696456501998)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7202882328739472209)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>299
,p_break_order=>5
,p_break_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202936665254502003)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7202882390609472210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202937522299502007)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7202882517955472211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202938413784502011)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7202882598537472212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202939296223502015)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7202882717172472213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202940230051502019)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7202882827079472214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202941114123502024)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(7202882905742472215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202942052708502028)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(7202883053518472216)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202942923528502032)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(7202883146189472217)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202943834322502036)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7202883246169472218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202944688435502040)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7202883284939472219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202945644761502044)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(7202883419778472220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202946517158502048)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(7202883565291472221)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202947396882502052)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(7202883634591472222)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202948352508502056)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(7202883736255472223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202949102670502060)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(7202883820536472224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202950049863502065)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(7202883932467472225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202950901281502068)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(7202918454343499976)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202951783601502073)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(7202918562147499977)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202952741194502076)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(7202918663952499978)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202953599796502080)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(7202918720746499979)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202954532269502084)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(7202918831824499980)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7202956764133502099)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7202919146967499983)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7203134199915317791)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7202923352433500025)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223195231229773829)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7202882598537472212)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223195716928773830)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7202882717172472213)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223196286761773830)
,p_view_id=>wwv_flow_imp.id(7202927118957501960)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(7202883246169472218)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7930219918427116510)
,p_plug_name=>'Deduction Change Preview'
,p_parent_plug_id=>wwv_flow_imp.id(9038716932696836923)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>29
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPENSE_ID,',
'       EMP_ID,Deduction_Amount,OLD_DEDUCTION_AMOUNT,DIFF_DEDUCTION_AMOUNT, old_startdate,',
'       DATESTART,',
'       REMARKS,by_pass_compute, PROCESSED_STATUS,',
'       DEDUCTION_TYPE,',
'       DEDUCT_STATUS,change_value,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ORG_ID,',
'       EMPLOYMENT_CLASS_ID,',
'       PAYMENT_TYPE,',
'       ADMIN_DEDUCTION_ID,',
'       ID,',
'       INCREASE_ID,',
'audit_operation',
'  from HR_APU_STDINCDEDUCTIONS',
'  WHERE INCREASE_ID=:P1471_ID',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction Change Preview'
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
 p_id=>wwv_flow_imp.id(1087815782785489185)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(2301564225329267739)
,p_name=>'CHANGE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHANGE_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Change'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(7203128457452317478)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7203128573094317479)
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
 p_id=>wwv_flow_imp.id(7203129982163317494)
,p_name=>'PROCESSED_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESSED_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Processed Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844225131839162058)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7930220619000116517)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7930220676090116518)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1471_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7930220815793116519)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940936821094915387)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854027746099208365)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940936880579915388)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940936997596915389)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(7940937264968915391)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(7940937300073915392)
,p_name=>'DEDUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduct Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940937389035915393)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940937554760915394)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940937588591915395)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940937687139915396)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940937785656915397)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(7940937945148915398)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(7940938066203915399)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(7940938095722915400)
,p_name=>'ADMIN_DEDUCTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_DEDUCTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(7940939122643915410)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7940939253708915411)
,p_name=>'OLD_DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7940939290987915412)
,p_name=>'DIFF_DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIFF_DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Diff Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(7940939677624915416)
,p_name=>'OLD_STARTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_STARTDATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Old Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7942562251305522811)
,p_name=>'BY_PASS_COMPUTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'By Pass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(7930220495522116516)
,p_internal_uid=>7287025945742508248
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7940945560163933468)
,p_interactive_grid_id=>wwv_flow_imp.id(7930220495522116516)
,p_static_id=>'3524023'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7940945767294933469)
,p_report_id=>wwv_flow_imp.id(7940945560163933468)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1191147984134490956)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1087815782785489185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2312679203906656945)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2301564225329267739)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6805801421998599900)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(7203129982163317494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7203150927473319471)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7203128457452317478)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7588549998241779326)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7940939122643915410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7588563426211815780)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7940939253708915411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7588564718878815787)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7940939290987915412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940946206422933475)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7930220619000116517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940947073336933483)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7930220676090116518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940947995983933488)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7930220815793116519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>268
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940950199178933499)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7940936821094915387)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940951114594933504)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7940936880579915388)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940952057309933508)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7940936997596915389)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940953773995933516)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7940937264968915391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940954719607933520)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7940937300073915392)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940955620443933525)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7940937389035915393)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940956542459933529)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(7940937554760915394)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940957403802933533)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(7940937588591915395)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940958352101933537)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(7940937687139915396)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940959247437933542)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7940937785656915397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940960163244933546)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7940937945148915398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940961067175933549)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7940938066203915399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7940961920233933552)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7940938095722915400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7942409295694370370)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7940939677624915416)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7945236109419677558)
,p_view_id=>wwv_flow_imp.id(7940945767294933469)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7942562251305522811)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9039574067265115525)
,p_plug_name=>'Salary Change Preview'
,p_parent_plug_id=>wwv_flow_imp.id(9038716932696836923)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    id,',
'    increase_id,INCOME_CODE_ID, Old_Method_Rate_Date,new_method_rate_date,processed_status,',
'    increase_method,by_pass_compute bypass, remarks,salary_id pkey, hourly_rate, daily_rate, old_hourly_rate, old_daily_rate,',
'    emp_id, --pkg_salary_increase.get_allowance_totals(emp_id, increase_id, :P1471_TOTAL_ALLOWANCE) ',
'     org_structure,',
'    (select UNIT_NAME',
'    from hr_hcf_orgstructuredtl odtl',
'    where odtl.id=orgdtl_id) orgdtl_id,',
'    curr_method_rate,',
'    new_method_rate,',
'    curr_grade_id,',
'    curr_grade_point_id,annual_salary,old_annual_salary,',
'    new_grade_id,',
'    new_grade_point_id,',
'    increase_amount,',
'    increase_percentage,',
'    position_id,',
'    union_code_id,',
'    employment_type_id,',
'    employment_class_id,',
'    compute_gross,',
'    wklocation_id,',
'    payment_type,',
'    entry_date,',
'    entered_by,',
'    last_changed_date,',
'    last_changed_by,',
'     date_separated,',
'audit_operation,',
'    (case when new_salary_exists = 1 then ''YES'' else ''NO'' end)  Newer_Salary',
'FROm hr_apu_standardincreasevalues a  ',
'where increase_id = :P1471_ID',
'and exists (select 1',
'            from pa_pcf_incomecode ic ',
'            where ic.id = a.income_code_id',
'            and org_id =:APP_ORG_ID',
'             and trim(ic.income_code) in (''NR'',''BASIC SALARY (GEN)'')            ',
'            )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1471_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Salary Change Preview'
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
 p_id=>wwv_flow_imp.id(666753555427456569)
,p_name=>'OLD_ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ANNUAL_SALARY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Ann Sal'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
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
 p_id=>wwv_flow_imp.id(677304257075501018)
,p_name=>'ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANNUAL_SALARY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ann Sal'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>430
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
 p_id=>wwv_flow_imp.id(1087815612053489183)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6525789241315683334)
,p_name=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURLY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Hourly Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(6525789278036683335)
,p_name=>'DAILY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAILY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Daily Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(6525789366168683336)
,p_name=>'OLD_HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_HOURLY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Hourly Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(6525789488077683337)
,p_name=>'OLD_DAILY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_DAILY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Daily Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(6571611831712782624)
,p_name=>'DATE_SEPARATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_SEPARATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Separated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
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
 p_id=>wwv_flow_imp.id(6571612145662782627)
,p_name=>'NEWER_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEWER_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Newer Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7190742361212251208)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:1282:P1282_ID:&PKEY.'
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
 p_id=>wwv_flow_imp.id(7202923025332500022)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7202923097791500023)
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
 p_id=>wwv_flow_imp.id(7884767968731486223)
,p_name=>'BYPASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BYPASS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bypass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(7917384228293504426)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853958765200092919)
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
 p_id=>wwv_flow_imp.id(7940939638397915415)
,p_name=>'OLD_METHOD_RATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_METHOD_RATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Old Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7940939859148915417)
,p_name=>'NEW_METHOD_RATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_METHOD_RATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Current Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7942561689800522806)
,p_name=>'PROCESSED_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESSED_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Processed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844225131839162058)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7942562375931522813)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(8854405767967989439)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8854405785518989440)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8854405980203989441)
,p_name=>'INCREASE_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Increase Method'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8854406066586989442)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807225162115293)
,p_name=>'ORG_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807329547115294)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807471739115295)
,p_name=>'CURR_METHOD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_METHOD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Old Basic Pay'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(8947807537187115296)
,p_name=>'NEW_METHOD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_METHOD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'New Basic Pay'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(8947807608322115297)
,p_name=>'CURR_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Old Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853961200291092922)
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
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807763681115298)
,p_name=>'CURR_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURR_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Old Grade Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id= :CURR_GRADE_ID'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CURR_GRADE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807810152115299)
,p_name=>'NEW_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'New Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853961200291092922)
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947807941568115300)
,p_name=>'NEW_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEW_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'New Grade Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
'select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id= :NEW_GRADE_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'NEW_GRADE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947808054808115301)
,p_name=>'INCREASE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947808096123115302)
,p_name=>'INCREASE_PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Change'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947808251528115303)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947808294728115304)
,p_name=>'UNION_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNION_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(8947808446702115305)
,p_name=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(8947808573201115306)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(8947808680070115307)
,p_name=>'COMPUTE_GROSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_GROSS'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(8947808698208115308)
,p_name=>'WKLOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WKLOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(8947808861153115309)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(8947808959997115310)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947808984409115311)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8947809135657115312)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(8947809238427115313)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(8854405678777989438)
,p_internal_uid=>8211211128998381170
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8947814277213116020)
,p_interactive_grid_id=>wwv_flow_imp.id(8854405678777989438)
,p_static_id=>'2070481'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8947814389713116021)
,p_report_id=>wwv_flow_imp.id(8947814277213116020)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(666759553054457137)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(677304257075501018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(666760407217457147)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(666753555427456569)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1191145708344490947)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(1087815612053489183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6243081825865051014)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6571612145662782627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>43
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6243082833855157978)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(6525789366168683336)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6243084650779157982)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(6525789488077683337)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525933235687215179)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(6525789241315683334)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6525934612424215182)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(6525789278036683335)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6573999489334009421)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6571611831712782624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6805819849409574660)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7202923025332500022)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7201987242762376482)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7190742361212251208)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7924792621667621255)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7917384228293504426)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7942407489339367357)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7940939638397915415)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7942415325206409005)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7940939859148915417)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7943514833376406716)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(7942561689800522806)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>44
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7945238378399682401)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(7942562375931522813)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7961079565732257499)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(7884767968731486223)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947814960705116027)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8854405767967989439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947815792093116050)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8854405785518989440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947816757866116052)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8854405980203989441)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947817652610116054)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8854406066586989442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947818494515116057)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8947807225162115293)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947819392216116059)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8947807329547115294)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947820349513116061)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8947807471739115295)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947821224651116064)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(8947807537187115296)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947822122044116066)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8947807608322115297)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947823028297116069)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(8947807763681115298)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947823888175116071)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(8947807810152115299)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947824854024116073)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(8947807941568115300)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>51
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947825699131116075)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(8947808054808115301)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>51
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947826585907116078)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(8947808096123115302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947827516249116080)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(8947808251528115303)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>213
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947828424393116082)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(8947808294728115304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947829370386116084)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(8947808446702115305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947830235357116086)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(8947808573201115306)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110.5729
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947831154974116089)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(8947808680070115307)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947832041988116091)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(8947808698208115308)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84.5694
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947832941410116093)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(8947808861153115309)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947833835302116095)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(8947808959997115310)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947834690605116098)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(8947808984409115311)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947835647878116100)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(8947809135657115312)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8947836543248116102)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(8947809238427115313)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6243063006996026123)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_execution_seq=>10
,p_name=>'Employee Separated'
,p_background_color=>'#FFDD44'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6571611831712782624)
,p_condition_operator=>'NN'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6243099526570125545)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_execution_seq=>15
,p_name=>'Newer Salary'
,p_background_color=>'#AB0707'
,p_text_color=>'#FFFFFF'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6571612145662782627)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'YES'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223195328880773830)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947808054808115301)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223197595503792341)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947807471739115295)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223198046272792341)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947807537187115296)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5223198740214801808)
,p_view_id=>wwv_flow_imp.id(8947814389713116021)
,p_function=>'COUNT'
,p_column_id=>wwv_flow_imp.id(8854406066586989442)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9432116394491351393)
,p_interactive_grid_id=>wwv_flow_imp.id(8854405678777989438)
,p_name=>'Salary Change showing Hourly/Daily Rates'
,p_static_id=>'4843631'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>wwv_flow_imp.id(913346981911579891)
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9432116506991351394)
,p_report_id=>wwv_flow_imp.id(9432116394491351393)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6727383943143286387)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6571612145662782627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6727384951133393351)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(6525789366168683336)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6727386768057393355)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(6525789488077683337)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7010235352965450552)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(6525789241315683334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7010236729702450555)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(6525789278036683335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7058301606612244794)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6571611831712782624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7290121966687810033)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7202923025332500022)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7686289360040611855)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7190742361212251208)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8409094738945856628)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7917384228293504426)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8426709606617602730)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7940939638397915415)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8426717442484644378)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7940939859148915417)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8427816950654642089)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(7942561689800522806)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>44
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8429540495677917774)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(7942562375931522813)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8445381683010492872)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(7884767968731486223)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432117077983351400)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8854405767967989439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432117909371351423)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8854405785518989440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432118875144351425)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8854405980203989441)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432119769888351427)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8854406066586989442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432120611793351430)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8947807225162115293)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432121509494351432)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8947807329547115294)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432122466791351434)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8947807471739115295)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432123341929351437)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8947807537187115296)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432124239322351439)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8947807608322115297)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432125145575351442)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(8947807763681115298)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432126005453351444)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(8947807810152115299)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432126971302351446)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(8947807941568115300)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432127816409351448)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(8947808054808115301)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432128703185351451)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(8947808096123115302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432129633527351453)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(8947808251528115303)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>213
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432130541671351455)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(8947808294728115304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432131487664351457)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(8947808446702115305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432132352635351459)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(8947808573201115306)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110.5729
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432133272252351462)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(8947808680070115307)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432134159266351464)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(8947808698208115308)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84.5694
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432135058688351466)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(8947808861153115309)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432135952580351468)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(8947808959997115310)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432136807883351471)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(8947808984409115311)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432137765156351473)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(8947809135657115312)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9432138660526351475)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(8947809238427115313)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6727365124274261496)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_execution_seq=>10
,p_name=>'Employee Separated'
,p_background_color=>'#FFDD44'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6571611831712782624)
,p_condition_operator=>'NN'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6727401643848360918)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_execution_seq=>15
,p_name=>'Newer Salary'
,p_background_color=>'#AB0707'
,p_text_color=>'#FFFFFF'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6571612145662782627)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'YES'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5707497446159009203)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947808054808115301)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5707499712782027714)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947807471739115295)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5707500163551027714)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(8947807537187115296)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(5707500857493037181)
,p_view_id=>wwv_flow_imp.id(9432116506991351394)
,p_function=>'COUNT'
,p_column_id=>wwv_flow_imp.id(8854406066586989442)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(698285850462507368)
,p_report_id=>wwv_flow_imp.id(9432116394491351393)
,p_type=>'ROW'
,p_is_case_sensitive=>false
,p_expression=>'blake'
,p_is_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671608786372986435)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6366109571266605700)
,p_button_name=>'RETURN_CT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671548879534986360)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_button_name=>'ASSIGN_EARNPRD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Earning Period'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671382374411986202)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_button_name=>'ASSIGN_EARNPRD_DED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Earning Period'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671382827703986202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_button_name=>'RETURN_DED_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671393454802986219)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7190742945245251214)
,p_button_name=>'RETURN_OTH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671400912853986226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7924871628440972878)
,p_button_name=>'RETURN_SAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671421118163986244)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8581092150167940926)
,p_button_name=>'RETURN_DEDUCT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671422884127986246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671438696127986259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9038716339133836917)
,p_button_name=>'Generate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671549282918986361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_button_name=>'RETURN_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:1470::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671565087627986374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7930219918427116510)
,p_button_name=>'RETURN_DED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671584057352986392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_button_name=>'RETURN_SAL_PRV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671370326983986173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6751181911697547665)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671383219309986203)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_button_name=>'APPLY_DEDUCTIONS_RETRO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Retro Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671421476311986245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8581092150167940926)
,p_button_name=>'APPLY_DEDUCTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Deduction'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM hr_apu_stdincdeductions',
'WHERE INCREASE_ID=:P1471_ID',
'AND PROCESSED_STATUS=''N'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671423262545986246)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671549725918986361)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_button_name=>'GENERATE_RETRO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Retro Payments'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671584465736986392)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_button_name=>'GET_EMPLOYEES_BASIC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Get Basic Pay and Spinoff Incomes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671624968819986450)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_button_name=>'RETURN_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671370678354986174)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6751181911697547665)
,p_button_name=>'TRUNC_ERROR_LOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Trunc Error Log'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671383607564986203)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_button_name=>'INSERT_RETRO_DEDUCTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert Retro Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_APU_RETROPREVIEWDEDUCTIONS',
'WHERE INCREASE_ID = :P1471_ID',
'AND PAY_STATUS = ''N'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671421876566986245)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8581092150167940926)
,p_button_name=>'ROLLBACK_DEDUCTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rollback Deduction'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM hr_apu_stdincdeductions',
'WHERE INCREASE_ID = :P1471_ID',
'AND PROCESSED_STATUS=''Y'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671423673371986247)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671550148078986361)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_button_name=>'GEN_MISS_ENTITLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Missing Entitlement'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_apu_retropreview retroPrv join pa_pcf_incomecode inCode on inCode.id = retroPrv.income_code_id',
'where increase_id = :P1471_ID',
'and not exists (select 1',
'                from hr_rcm_empentitle empent join hr_rcm_employee emp on emp.id = empent.emp_id',
'                where retroPrv.emp_id= emp.id',
'                and retroPrv.income_code_id = empent.income_code_id',
'                and emp.org_id=:APP_ORG_ID',
'                )'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671625444578986450)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_button_name=>'GET_EMPLOYEES_OTH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Get Spinoff Incomes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671384016613986204)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_button_name=>'ROLLBACK_RETRO_DEDUCTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rollback Retro Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_APU_RETROPREVIEWDEDUCTIONS',
'WHERE INCREASE_ID = :P1471_ID',
'AND PAY_STATUS = ''Y'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671424144422986247)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'INCREASE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Increase'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_APU_STANDARDINCREASE',
'where id =:P1471_ID',
'and VERIFIED_BY is not null',
'and APPROVED_BY  is not null',
'and STATUS=842'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671565527154986374)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7930219918427116510)
,p_button_name=>'GET_DEDUCTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Get Employee Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671625772792986450)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_button_name=>'GET_EMPLOYEES_OTH_FIXED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Get Fixed Incomes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671424504477986248)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>':P1471_ID IS NOT NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671424856223986248)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'ROLLBACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rollback'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_RCM_EMPENTITLE a',
'where exists (select 1',
'              from HR_APU_STANDARDINCREASEDETAIL b  ',
'              where a.STD_DETAIL_KEY = -b.ID ',
'              and INCREASE_ID=:P1471_ID)'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671425302510986248)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1471_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671425693934986249)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1471_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671426052912986249)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1471_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671426536892986249)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1471:&SESSION.::&DEBUG.:1471::'
,p_button_condition=>'P1471_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(671653262294986478)
,p_branch_action=>'f?p=&APP_ID.:1470:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(671654942632986481)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1471:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(671426052912986249)
,p_branch_sequence=>31
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(671654539510986481)
,p_branch_action=>'f?p=&APP_ID.:1471:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671384429039986204)
,p_name=>'P1471_DEDUCT_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_prompt=>'Deduction Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description a, id ',
'from pa_pcf_deductioncode inc',
'where exists(select 1',
'            from Hr_Apu_Retropreviewdeductions retro',
'            where inc.id=retro.expense_id',
'            and retro.increase_id=:P1471_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1471_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671384843087986206)
,p_name=>'P1471_PAY_PERIOD_DED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_item_default=>'          SELECT EXTRACT(year FROM current_date)||EXTRACT(month FROM current_date)  from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Payroll Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a, B',
'FROM',
'    (  ',
'      SELECT DISTINCT trim(TO_CHAR(START_DATE,''MONTH''))||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD a ',
'      where pay_status=''N''',
'    --  and extract(month from START_DATE) >= extract(month from current_date)',
'      and extract(year from START_DATE) >= extract(year from current_date)-1',
'    )',
'ORDER BY C DESC, D DESC     ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the pay period to be used to filter the earning periods.'
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
 p_id=>wwv_flow_imp.id(671385650760986207)
,p_name=>'P1471_EARNINGS_PERIOD_DED'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(7202792408289270712)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_test_values number:=0;',
'',
'begin',
'    select count(1) into v_test_values',
'    from vw_increaseempclass',
'    where increase_id = :P1471_ID;',
'',
'IF v_test_values > 0 then',
'return ',
'    ''select earn_description,a.id',
'    from VW_EARNNOTPAID a join vw_increaseempclass b on b.stagger_value= to_char(a.employment_class_id)',
'    where exists (select 1',
'                from vw_useraccess x',
'                where x.org_id=a.org_id',
'                and x.employment_class_id=a.employment_class_id',
'                and upper(x.payment_type)=upper(a.payment_type))',
'    and EXTRACT(year FROM start_date)||EXTRACT(month FROM start_date) =:P1471_PAY_PERIOD_DED ',
'    order by start_date desc, end_date desc'';',
'',
'else',
'   ',
'    return ',
'        ''select earn_description,a.id',
'        from VW_EARNNOTPAID a ',
'        where exists   (select 1',
'                        from hr_apu_standardincreasevalues x join hr_rcm_employee b on b.id = x.emp_id',
'                        where b.org_id=a.org_id',
'                        and b.employment_class_id=a.employment_class_id',
'                        and upper(b.payment_type)=upper(a.payment_type)',
'                        and x.increase_id = :P1471_ID',
'                        )                ',
'        and EXTRACT(year FROM start_date)||EXTRACT(month FROM start_date) =:P1471_PAY_PERIOD ',
'        order by start_date desc, end_date desc'';',
'',
'end if;    ',
'',
'end;',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a Earnings Period--'
,p_lov_cascade_parent_items=>'P1471_PAY_PERIOD_DED'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'System will show only unpaid or unexecuted earning period.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671427286366986250)
,p_name=>'P1471_INCREASE_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Change Name'
,p_source=>'INCREASE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671427734832986250)
,p_name=>'P1471_ADHOC_APP_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) a',
'from hr_apu_adhoc_increprocess',
'where increase_id=:P1471_ID',
'And process_status=''N'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671428069868986251)
,p_name=>'P1471_BRANCH_LOCATION_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE id= :APP_ORG_ID',
'ORDER BY 1       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
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
 p_id=>wwv_flow_imp.id(671428470974986251)
,p_name=>'P1471_EXTERNAL_EARN_PERIOD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color=red> REMUNERATION AS AT DATE</font color>'
,p_source=>'EXTERNAL_EARN_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Whatever your salary or other remuneration is at this date, thats what the increase will be done on.'
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
 p_id=>wwv_flow_imp.id(671429441014986252)
,p_name=>'P1471_INCREASE_TYPE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Change Type'
,p_source=>'INCREASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INCREASE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3853952685701092913)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Conditional - Use a filter to select employees or any other condition for an increase to their current salary',
'Across The Board - All employees will receive an increase to their current salary',
''))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671430257266986254)
,p_name=>'P1471_DATE_EFFECTIVE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Effective'
,p_source=>'DATE_EFFECTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Date the increase should or should have been effective from and will be Used for retroactive payment'
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
 p_id=>wwv_flow_imp.id(671431248540986254)
,p_name=>'P1471_NEW_SALARY_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Salary Date'
,p_source=>'NEW_SALARY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The new salary date. The Retro will be computed between the effective date and one date Prior to this date.'
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
 p_id=>wwv_flow_imp.id(671432147299986255)
,p_name=>'P1471_EMPLOYED_EFFECTIVE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employed On/Before'
,p_source=>'EMPLOYED_EFFECTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Excludes employees that are employed after the specified date.'
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
 p_id=>wwv_flow_imp.id(671433044861986255)
,p_name=>'P1471_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Change ID'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671433432384986255)
,p_name=>'P1471_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
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
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671433797904986256)
,p_name=>'P1471_STATUS'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
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
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1471_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1471_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'All standard increase records need to be approved and verified before the increase/decrease is applied to the employees files.',
'<p> Increase Pending - use to initiate the increase to employee record </p>',
'<p> Executed and Closed - Increase had been applied </p>',
'<p> Abort Increase - Use to discontiue or cancel the increase </p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671434653194986256)
,p_name=>'P1471_CONFIRMED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOTH'
,p_source=>'CONFIRMED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Has the employee been confirmed'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671435593312986256)
,p_name=>'P1471_DATE_CONFIRMED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_source=>'DATE_CONFIRMED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671436032035986257)
,p_name=>'P1471_DATE_IMPLEMENTED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'DATE_IMPLEMENTED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671436403570986257)
,p_name=>'P1471_SALARY_CURRENCY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select base_currency from hr_hcf_organisation',
'where id = :APP_ORG_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Salary Currency'
,p_source=>'SALARY_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CURRENCY'
,p_lov=>'.'||wwv_flow_imp.id(3854044159964208385)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671436809286986257)
,p_name=>'P1471_EXECUTE_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Execute Status'
,p_source=>'EXECUTE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'NONE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671437204621986257)
,p_name=>'P1471_ID_COUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671437623208986258)
,p_name=>'P1471_ID_NEXT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671438037450986258)
,p_name=>'P1471_ID_PREV'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9430631329742380362)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671439089373986259)
,p_name=>'P1471_STAGGER_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9038716339133836917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Condition Structure'
,p_source=>'STAGGER_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employment Class;EMPLOYMENT CLASS,Payment Frequency;PAYMENT FREQUENCY,Trade Union;TRADE UNION,Position;POSITION,Specific Employees;SPECIFIC EMPLOYEES,Org Structure;ORG STRUCTURE,Grade Scale;GRADE SCALE,Work Location;LOCATION'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671439496353986259)
,p_name=>'P1471_INCREASE_CONDITIONS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9038716339133836917)
,p_prompt=>'Increase Conditions'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if upper(:P1471_STAGGER_STRUCTURE)=''EMPLOYMENT CLASS'' then',
'',
'return ',
'  ''select VALUE_DESCRIPTION A, ID B',
'  from table(pkg_global_fnts.get_lookup_value(''''TBLEMPLOYMENTCLASS'''')) X',
'  WHERE exists (select 1',
'               FROM VW_USERACCESS A',
'               where x.ID=a.employment_class_id)',
'  ORDER BY 1'';',
'  ',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''PAYMENT FREQUENCY'' then',
'',
'return ',
'  ''select VALUE_DESCRIPTION A, VALUE_DESCRIPTION B',
'  from table(pkg_global_fnts.get_lookup_value(''''TBLPAYMENTTYPE'''')) X',
'  WHERE exists (select 1',
'               FROM VW_USERACCESS A',
'               where upper(x.VALUE_DESCRIPTION)=a.payment_type)',
'  ORDER BY 1'';',
'  ',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''TRADE UNION'' then',
'',
'return ',
'    ''select organisation_name,id',
'    from hr_hcf_organisation a',
'    where organisation_type=''''REMITTANCE''''',
'    and exists(select 1',
'           from pa_pcf_deductioncode b',
'           where a.id =b.ENTITY_ABBREVIATION',
'           and b.union_deduction=1)'';',
'    ',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''POSITION LOCATION'' then',
'',
'return',
'''select POSITION_NAME||'''' (''''||initcap(unit_name)||'''') At ''''||LOCATION_code a, a.id b',
'from HR_HCF_WORKLOCATIONPOSITION A JOIN HR_HCF_POSITION b on b.id=a.position_id',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=A.WKLOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE ORG_ID=:P1471_BRANCH_LOCATION_ID',
'order by 1'';',
'',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''SPECIFIC EMPLOYEES'' then',
'',
'RETURN ',
'''SELECT  initcap(Surname || '''', '''' || nvl(First_Name, '''''''')) ||'''' ''''||nvl(Middle_Name,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')'''' a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'order by 1'';',
'',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''ORG STRUCTURE'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description, m.id ',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'where exists (select 1',
'              from hr_rcm_employee g join hr_hcf_position c on c.id=g.POSITION_ID',
'              where M.id=C.ORGDTL_ID',
'              and org_id=:P1471_BRANCH_LOCATION_ID)'';',
'',
'elsif upper(:P1471_STAGGER_STRUCTURE)=''GRADE SCALE'' then',
'',
'return',
'''select grade_description||''''(''''||grade_code||'''')'''' a, id',
'from hr_hcf_positiongrade V',
'where trunc(EFFECTIVE_FROMDATE) <= trunc(current_date)',
'and (trunc(EFFECTIVE_TODATE) is null or EFFECTIVE_TODATE >= trunc(current_date))',
'and verified_by is not null',
'AND  v.org_id=:APP_ORG_ID',
'order by grade_code'';',
'              ',
'else',
'',
'return ''select null a, null b from dual'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1471_STAGGER_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671440151743986261)
,p_name=>'P1471_ENTERED_BY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(671440649028986261)
,p_name=>'P1471_ENTRY_DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671441043315986261)
,p_name=>'P1471_LAST_CHANGED_BY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671441405234986261)
,p_name=>'P1471_LAST_CHANGED_DATE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671441826110986262)
,p_name=>'P1471_APPROVED_BY'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(671442231715986262)
,p_name=>'P1471_VERIFIED_BY'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671442641984986262)
,p_name=>'P1471_VERIFIED_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(671443023418986262)
,p_name=>'P1471_MACHINE_INSERT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Machine Insert'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(671443395210986263)
,p_name=>'P1471_MACHINE_UPDATE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Machine Update'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(671443828793986263)
,p_name=>'P1471_APPROVED_DATE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(9430655930502409399)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(671550541384986361)
,p_name=>'P1471_INCOME_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_prompt=>'Income Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description a, id ',
'from pa_pcf_incomecode inc',
'where exists(select 1',
'            from hr_apu_RetroPreview retro',
'            where inc.id=retro.income_code_id',
'            and retro.increase_id=:P1471_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1471_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671550878375986362)
,p_name=>'P1471_PAY_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_item_default=>'          SELECT EXTRACT(year FROM current_date)||EXTRACT(month FROM current_date)  from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Payroll Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a, B',
'FROM',
'    (  ',
'      SELECT DISTINCT trim(TO_CHAR(START_DATE,''MONTH''))||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD a ',
'      where pay_status=''N''',
'    --  and extract(month from START_DATE) >= extract(month from current_date)',
'      and extract(year from START_DATE) >= extract(year from current_date)-1',
'    )',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the pay period to be used to filter the earning periods.'
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
 p_id=>wwv_flow_imp.id(671551840874986362)
,p_name=>'P1471_EARNINGS_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7909939053722940116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,a.id',
'from VW_EARNNOTPAID a ',
'where exists   (',
'                select 1',
'                from hr_apu_standardincreasevalues x join hr_rcm_employee b on b.id = x.emp_id',
'                where b.org_id=a.org_id',
'                and b.employment_class_id=a.employment_class_id',
'                and upper(b.payment_type)=upper(a.payment_type)',
'                and x.increase_id = :P1471_ID',
'               )                ',
'and EXTRACT(year FROM start_date)||EXTRACT(month FROM start_date) =:P1471_PAY_PERIOD ',
'order by start_date desc, end_date desc',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select a Earnings Period--'
,p_lov_cascade_parent_items=>'P1471_PAY_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'System will show only unpaid or unexecuted earning period.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671584879128986393)
,p_name=>'P1471_TOTAL_ALLOWANCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_item_default=>'4433'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671585252744986393)
,p_name=>'P1471_EXTERNAL_EARN_PERIOD_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671585704850986393)
,p_name=>'P1471_NEW_SALARY_DATE_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671586137131986394)
,p_name=>'P1471_INCREASE_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9039574067265115525)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671603127072986429)
,p_name=>'P1471_TOTAL_ALLOWANCE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5766637241089501955)
,p_item_default=>'4433'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671603490065986429)
,p_name=>'P1471_EXTERNAL_EARN_PERIOD_1_1_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5766637241089501955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671603883999986430)
,p_name=>'P1471_NEW_SALARY_DATE_1_1_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5766637241089501955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671604313087986430)
,p_name=>'P1471_INCREASE_ID_1_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5766637241089501955)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671609221162986435)
,p_name=>'P1471_INCOME_CODES_CT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6366109571266605700)
,p_prompt=>'Income'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_incomecode v',
'where  trunc(start_date) <= trunc(current_date  )',
'and (trunc(end_date) is null or end_date >= trunc(current_date  ))',
'and v.org_id = :APP_ORG_ID',
'and exists (select 1',
'                      from hr_rcm_empentitle b join hr_rcm_employee c on b.emp_id=C.ID',
'                      where v.id=b.income_code_id',
'                      and org_id=:APP_ORG_ID',
'                       and amount>0)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Incomes codes in here are all codes with a rate.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671626179773986450)
,p_name=>'P1471_EXTERNAL_EARN_PERIOD_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671626637684986451)
,p_name=>'P1471_NEW_SALARY_DATE_1_1_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671626969786986451)
,p_name=>'P1471_INCREASE_ID_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7202880773108472193)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671628336784986456)
,p_validation_name=>'chk_Staggered_not_null'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_test_condition number(10):=0;',
'',
'BEGIN',
'',
'    select count(1) into  v_test_condition',
'    from HR_APU_STANDARDINCREASEDETAIL',
'    where increase_id =:P1471_ID;',
'',
'    if :P1471_INCREASE_TYPE like ''%CONDITIONAL%'' and v_test_condition = 0 THEN',
'        RETURN FALSE;  ',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must enter a value for conditions and filters if Increase Type is conditional. '
,p_when_button_pressed=>wwv_flow_imp.id(671584465736986392)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671627545170986451)
,p_tabular_form_region_id=>wwv_flow_imp.id(7202880773108472193)
,p_validation_name=>'chk_bypass_for_changed_inc_Oth'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    v_new_method_rate number(12,2):=0;',
'    v_sqlcode varchar2(50);',
'    v_sqlerrm varchar2(500);  ',
'begin',
'',
'    select new_method_rate into v_new_method_rate',
'    from hr_apu_standardincreasevalues',
'    where id = :ID;',
'    ',
'    IF to_number(:BY_PASS_COMPUTE) =1 and :REMARKS is null and to_number(v_new_method_rate) != to_number(:NEW_METHOD_RATE )',
'    or to_number(v_new_method_rate) != to_number(:NEW_METHOD_RATE )  and :BY_PASS_COMPUTE =0 then',
'        return ''You need to select By Pass and add a remark to explain your reason for change'';',
'    else',
'        return '''';',
'    end if;',
'',
'    if :REMARKS IS NULL then',
'        :REMARKS := NULL;',
'    end if;',
'',
'exception',
'    when others then ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'        PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while executing chk_bypass_changes_inc'' ,''page 1471.chk_bypass_changes_inc'');           ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671566020510986375)
,p_tabular_form_region_id=>wwv_flow_imp.id(7930219918427116510)
,p_validation_name=>'chk_bypass_for_changed_ded'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    V_DEDUCTION_AMOUNT number(12,2):=0;',
'    v_sqlcode varchar2(50);',
'    v_sqlerrm varchar2(500);  ',
'begin',
'',
'    select DEDUCTION_AMOUNT into V_DEDUCTION_AMOUNT',
'    from HR_APU_STDINCDEDUCTIONS',
'    where id = :ID;',
'    ',
'    IF to_number(:BY_PASS_COMPUTE) =1 and :REMARKS is null and to_number(V_DEDUCTION_AMOUNT) != to_number(:DEDUCTION_AMOUNT )',
'    or to_number(V_DEDUCTION_AMOUNT) != to_number(:DEDUCTION_AMOUNT )  and :BY_PASS_COMPUTE =0 then',
'        return ''You need to select By Pass and add a remark to explain your reason for change'';',
'    else',
'        return '''';',
'    end if;',
'',
'    if :REMARKS IS NULL then',
'        :REMARKS := NULL;',
'    end if;',
'',
'exception',
'    when others then ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'        PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while executing chk_bypass_changes_ded'' ,''page 1471.chk_bypass_changes_ded'');           ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671628657055986457)
,p_validation_name=>'chk_missing_earnprd'
,p_validation_sequence=>140
,p_validation=>':P1471_EARNINGS_PERIOD_ID is null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Select an Earning Period before generating missing entitlement.'
,p_validation_condition=>'GEN_MISS_ENTITLE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(671629110503986457)
,p_validation_name=>'val_status'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_status varchar2(50);',
'',
'begin  ',
'    select EXECUTE_STATUS into v_status',
'    from HR_APU_STANDARDINCREASE',
'    where id = :P1471_ID;',
'',
'    IF upper(trim(v_status)) != upper(trim(:P1471_EXECUTE_STATUS)) then',
'        return ''Changes to the Execute status by end users is not allowed.'';',
'    else',
'        return'''';',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671637800510986463)
,p_name=>'enable_disable_stagger'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_INCREASE_TYPE'
,p_condition_element=>'P1471_INCREASE_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'CONDITIONAL_CURRENT,CONDITIONAL_PAST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671638339257986464)
,p_event_id=>wwv_flow_imp.id(671637800510986463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1471_STAGGER_STRUCTURE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671638795579986467)
,p_event_id=>wwv_flow_imp.id(671637800510986463)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1471_STAGGER_STRUCTURE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671639175433986467)
,p_name=>'Enable_Increase'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_STATUS'
,p_condition_element=>'P1471_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'862'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671639672595986468)
,p_event_id=>wwv_flow_imp.id(671639175433986467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671424856223986248)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671640188974986468)
,p_event_id=>wwv_flow_imp.id(671639175433986467)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671424856223986248)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671640562876986468)
,p_name=>'Enable_Increase_App_inc'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_ADHOC_APP_COUNT'
,p_condition_element=>'P1471_ADHOC_APP_COUNT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671640965317986469)
,p_name=>'Enable_Increase_app_bk'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_ADHOC_APP_COUNT'
,p_condition_element=>'P1471_ADHOC_APP_COUNT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671641413840986469)
,p_name=>'enable_increase_btn'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_EXECUTE_STATUS'
,p_condition_element=>'P1471_EXECUTE_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671641889751986469)
,p_event_id=>wwv_flow_imp.id(671641413840986469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671424144422986247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671642373700986469)
,p_event_id=>wwv_flow_imp.id(671641413840986469)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671424144422986247)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671642839388986470)
,p_name=>'show_btn'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_INCREASE_CONDITIONS'
,p_condition_element=>'P1471_INCREASE_CONDITIONS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671643328299986470)
,p_event_id=>wwv_flow_imp.id(671642839388986470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671438696127986259)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671643795511986470)
,p_event_id=>wwv_flow_imp.id(671642839388986470)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(671438696127986259)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671644243248986470)
,p_name=>'generate_conditions'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(671438696127986259)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671644722666986472)
,p_event_id=>wwv_flow_imp.id(671644243248986470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1471_INCREASE_CONDITIONS);',
'  ',
'      FOR i IN 1..l_selected.COUNT',
'      LOOP',
'    ',
'        begin',
'        ',
'         INSERT INTO hr_apu_standardincreasedetail (increase_id,   stagger_value,STAGGER_STRUCTURE)',
'          values (:P1471_ID, l_selected(i), :P1471_STAGGER_STRUCTURE);',
'          ',
'        exception',
'            when others then null;',
'        end;',
'        ',
'      end loop;',
'      ',
'    ',
'       :P1471_INCREASE_CONDITIONS:=null;',
'       :P1471_STAGGER_STRUCTURE:=null;',
'end;'))
,p_attribute_02=>'P1471_INCREASE_CONDITIONS,P1471_ID,P1471_STAGGER_STRUCTURE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671645200821986473)
,p_event_id=>wwv_flow_imp.id(671644243248986470)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671645588329986473)
,p_name=>'set_amount'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(7909939053722940116)
,p_triggering_element=>'RATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'RATE'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671646113976986473)
,p_event_id=>wwv_flow_imp.id(671645588329986473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :QUANTITY * replace(replace(:RATE,''$'',''''),'','','''')  a',
'from dual'))
,p_attribute_07=>'QUANTITY,RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671646470847986474)
,p_name=>'refresh_income'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_INCOME_CODE'
,p_condition_element=>'P1471_INCOME_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671647026125986475)
,p_event_id=>wwv_flow_imp.id(671646470847986474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7909939053722940116)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671647443601986475)
,p_name=>'Refresh_deduction'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_DEDUCT_CODE'
,p_condition_element=>'P1471_DEDUCT_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671647929355986475)
,p_event_id=>wwv_flow_imp.id(671647443601986475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7930219918427116510)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671648326286986475)
,p_name=>'search_adhoc'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_EARNINGS_REPROCESS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671648704000986475)
,p_name=>'refresh_ded_prev'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_EARNINGS_PERIOD_DED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671649158338986476)
,p_event_id=>wwv_flow_imp.id(671648704000986475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7930219918427116510)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671649626263986476)
,p_name=>'refresh_retro_preview'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671650143022986476)
,p_event_id=>wwv_flow_imp.id(671649626263986476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7909939053722940116)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671650529548986476)
,p_name=>'assign_values'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(6525789598126683338)
,p_triggering_element=>'INCREASE_ID_PARENT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'INCREASE_ID_PARENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671651032469986477)
,p_event_id=>wwv_flow_imp.id(671650529548986476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_PERIOD,END_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when DATE_EFFECTIVE between :P1471_DATE_EFFECTIVE and TO_DATE(:P1471_NEW_SALARY_DATE) - 1 THEN DATE_EFFECTIVE',
'            when DATE_EFFECTIVE <= to_date(:P1471_DATE_EFFECTIVE) then to_date(:P1471_DATE_EFFECTIVE)',
'            ELSE NULL END DATE_EFFECTIVE',
', case when NEW_SALARY_DATE-1 between :P1471_DATE_EFFECTIVE and TO_DATE(:P1471_NEW_SALARY_DATE) - 1 THEN NEW_SALARY_DATE-1',
'            when NEW_SALARY_DATE-1 >=  TO_DATE(:P1471_NEW_SALARY_DATE) - 1 then TO_DATE(:P1471_NEW_SALARY_DATE) - 1 ',
'            ELSE NULL END NEW_SALARY_DATE',
'from HR_APU_STANDARDINCREASE',
'where id =:INCREASE_ID_PARENT'))
,p_attribute_07=>'P1471_DATE_EFFECTIVE,P1471_NEW_SALARY_DATE,INCREASE_ID_PARENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671651366357986477)
,p_name=>'refresh_values'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_TOTAL_ALLOWANCE'
,p_condition_element=>'P1471_TOTAL_ALLOWANCE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671651867403986477)
,p_event_id=>wwv_flow_imp.id(671651366357986477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9039574067265115525)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(671652259695986477)
,p_name=>'refresh_crosstab'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1471_INCOME_CODES_CT'
,p_condition_element=>'P1471_INCOME_CODES_CT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(671652776895986478)
,p_event_id=>wwv_flow_imp.id(671652259695986477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6366109571266605700)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671633443631986460)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_APU_STANDARDINCREASE'
,p_attribute_02=>'HR_APU_STANDARDINCREASE'
,p_attribute_03=>'P1471_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>28438893852378192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671633755656986460)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_APU_STANDARDINCREASE'
,p_attribute_03=>'P1471_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'DATE_EFFECTIVE'
,p_attribute_09=>'P1471_ID_NEXT'
,p_attribute_10=>'P1471_ID_PREV'
,p_attribute_13=>'P1471_ID_COUNT'
,p_attribute_14=>'ORG_ID=:APP_ORG_ID'
,p_internal_uid=>28439205877378192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671631402872986459)
,p_process_sequence=>9
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of Increase'
,p_attribute_02=>'HR_APU_STANDARDINCREASE'
,p_attribute_03=>'P1471_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1471_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>28436853093378191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671632990160986460)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671424504477986248)
,p_internal_uid=>28438440381378192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671634151266986460)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IncMain'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'BEGIN',
'',
'        Pkg_salary_increase.sp_update_increase(:P1471_ID, :P1471_NEW_SALARY_DATE) ;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671424144422986247)
,p_process_success_message=>'The successful execution of the increase with stated attributes has occurred.'
,p_internal_uid=>28439601487378192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671634616950986460)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DscMain'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'BEGIN',
' ',
'  Pkg_salary_increase.sp_update_increaseRB(:P1471_ID) ;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671424856223986248)
,p_process_success_message=>'The successful execution of the rollback of an increase with stated attributes has occurred.'
,p_internal_uid=>28440067171378192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671635019573986461)
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
'where TRANSACTION_TYPE_ID=:P1471_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1471_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1471_INCREASE_TYPE ||'' of ''||:P1471_INCREASE_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1471_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Salary Increase'',',
'	:P1471_STATUS,:APP_PAGE_ID,:P1471_TRANSACTION_TYPE_ID,',
'        ''HR_APU_STANDARDINCREASE'');',
'',
' if pkg_global_fnts.status_descript(:P1471_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(NVL(V(''APP_USER''),user), ''HR_APU_STANDARDINCREASE'',''ID'', :P1471_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P1471_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P1471_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_APU_STANDARDINCREASE'', ''ID'', :P1471_ID);       ',
' end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671425693934986249)
,p_process_when=>'P1471_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>28440469794378193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671453257322986273)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9338230778102135911)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Incomes - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28258707543378005
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671448730286986268)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1172733912624268879)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deductions- Save Interactive Grid Data_1'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28254180507378000
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671529831229986340)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9038967181390273220)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EMPLOYMENT_TYPE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28335281450378072
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671473805269986292)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6451140072918893238)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'COMPUTE_GROSS'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28279255490378024
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671480801545986298)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9028772624098917914)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'GRADE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28286251766378030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671487775760986304)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9028774247456917930)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'WORK_UNIT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28293225981378036
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671501849531986316)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9038928913624173300)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'WORK_LOCATION'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28307299752378048
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671508776575986322)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9038930601314173317)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'PAYMENT_FREQUENCY'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28314226796378054
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671515769560986328)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9038932297756173334)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'POSITION'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28321219781378060
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671522826141986334)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9038965290695273201)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'TRADE_UNION'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28328276362378066
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671494845994986310)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9028775843105917946)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'SPECIFIC_EMPLOYEES'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28300296215378042
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671632633206986459)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'apply_deductions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  ',
'    ',
'begin   ',
'',
'     pkg_salary_increase.sp_incsal_deductions(:P1471_ID);',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671421476311986245)
,p_process_success_message=>'Process successfully computed.'
,p_internal_uid=>28438083427378191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671637029592986462)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_retro_deductions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  ',
'    l_increase_id number:=0;',
'',
'begin   ',
'',
'    l_increase_id := :P1471_ID;',
'    pkg_salary_increase.sp_Retro_deductions(l_increase_id);',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671383607564986203)
,p_process_success_message=>'Process successfully computed.'
,p_internal_uid=>28442479813378194
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671632235223986459)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rollback_deductions_inc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pkg_salary_increase.sp_incsal_deductions_reset(:P1471_ID);',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671421876566986245)
,p_internal_uid=>28437685444378191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671637387666986462)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rollback_retro_deductions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pkg_salary_increase.sp_retro_deductions_reset(:P1471_ID);',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671384016613986204)
,p_internal_uid=>28442837887378194
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671467581988986286)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9057399097263516035)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Employment Class - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28273032209378018
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671631848767986459)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_employee_preview'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'            PKG_SALARY_INCREASE.get_employee_preview(:P1471_ID);',
'PKG_SALARY_INCREASE.sp_spinoffInc(:P1471_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671584465736986392)
,p_process_success_message=>'Process successfully computed.'
,p_internal_uid=>28437298988378191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671635445697986461)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Retro_Income_computed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'          PKG_SALARY_INCREASE.new_compute_retro (:P1471_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671549725918986361)
,p_process_success_message=>'Process successfully computed.'
,p_internal_uid=>28440895918378193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671630999948986458)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Retro_Deductions_Compute'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    pkg_salary_increase.new_compute_retro_deduct(',
'                                                P_INCREASE_ID => :P1471_ID,                                                                                   ',
'                                                P_DATE_EFFECTIVE => :P1471_DATE_EFFECTIVE,',
'                                                P_NEW_SALARY_DATE => :P1471_NEW_SALARY_DATE',
'                                                );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671383219309986203)
,p_process_success_message=>'System computed retroactive deductions.'
,p_internal_uid=>28436450169378190
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671630184280986458)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign_ernprd_retro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'          PKG_SALARY_INCREASE.assign_retro_period(''INCOME'',:P1471_ID, :P1471_INCOME_CODE,:P1471_EARNINGS_PERIOD_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671548879534986360)
,p_process_success_message=>'Earning period successfully assigned.'
,p_internal_uid=>28435634501378190
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671635795516986461)
,p_process_sequence=>260
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'deductions_preview'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   PKG_SALARY_INCREASE.deductions_preview(:P1471_ID);      ',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671565527154986374)
,p_process_success_message=>'Process successfully computed.'
,p_internal_uid=>28441245737378193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671586475609986394)
,p_process_sequence=>270
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9039574067265115525)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Salaries Preview - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28391925830378126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671627790463986451)
,p_process_sequence=>280
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7202880773108472193)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Other Remuneration Preview - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28433240684378183
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671566273083986375)
,p_process_sequence=>290
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7930219918427116510)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deductions Preview - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28371723304378107
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671552743988986363)
,p_process_sequence=>300
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7909939053722940116)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Payments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28358194209378095
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671386623616986208)
,p_process_sequence=>310
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7202792408289270712)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deductions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28192073837377940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671630615980986458)
,p_process_sequence=>320
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign_deductRetro_Earn'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' PKG_SALARY_INCREASE.assign_retro_period(''DEDUCT'',:P1471_ID, :P1471_DEDUCT_CODE,:P1471_EARNINGS_PERIOD_DED);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671382374411986202)
,p_internal_uid=>28436066201378190
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671629808475986457)
,p_process_sequence=>330
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Other_Remunerations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'      pkg_salary_increase.sp_spinoffInc( :P1471_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671625444578986450)
,p_internal_uid=>28435258696378189
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671629389093986457)
,p_process_sequence=>340
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Other_Remunerations_FixedRate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'      pkg_salary_increase.sp_fixedInc( :P1471_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671625772792986450)
,p_internal_uid=>28434839314378189
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671460325353986280)
,p_process_sequence=>350
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6525789598126683338)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Overlap Retro Parameter - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28265775574378012
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671636154233986461)
,p_process_sequence=>360
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'missing_allowance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_sqlcode varchar2(25); V_SQLERRM varchar2(2000); ',
'',
'begin',
'',
'',
'    for I in (select emp_id,  income_type, income_code_id, taxable, nis_deduction,0,  ''MAN'' admin_staus, 0 percentage, 1 quick_entry, :P1471_DATE_EFFECTIVE start_date, 0 pensionable',
'             from hr_apu_retropreview retroPrv join pa_pcf_incomecode inCode on inCode.id = retroPrv.income_code_id',
'             where increase_id = :P1471_ID',
'             and not exists (select 1',
'                            from hr_rcm_empentitle empent join hr_rcm_employee emp on emp.id = empent.emp_id',
'                            where retroPrv.emp_id= emp.id',
'                            and retroPrv.income_code_id = empent.income_code_id',
'                            and emp.org_id=:APP_ORG_ID',
'                            )',
'                            )loop',
'        BEGIN',
'             INSERT INTO hr_rcm_empentitle ( emp_id, income_type, income_code_id, taxable, nis_deduction, amount, admin_status,   percentage,',
'                                 quick_entry, start_date) ',
'                      VALUES (i.emp_id,  i.income_type, i.income_code_id, i.taxable, i.nis_deduction,0, ''MAN'',  i.percentage,',
'                                 i.quick_entry, i.start_date);',
'        ',
'        Exception',
'            when others then ',
'                v_sqlcode := sqlcode;',
'                v_sqlerrm := sqlerrm;        ',
'                PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while executing missing_allowance '' ,''missing_allowance'', null);           ',
'',
'        end;',
'    end loop;   ',
'        commit;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671550148078986361)
,p_process_success_message=>'System successfully created missing Entitlements.'
,p_internal_uid=>28441604454378193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671636637646986462)
,p_process_sequence=>370
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_errors'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    delete',
'    from tblerrorlog',
'    WHERE created_by =:APP_USER;',
'',
'    COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671370678354986174)
,p_internal_uid=>28442087867378194
);
wwv_flow_imp.component_end;
end;
/
