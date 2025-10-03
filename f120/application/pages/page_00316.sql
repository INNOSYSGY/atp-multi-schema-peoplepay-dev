prompt --application/pages/page_00316
begin
--   Manifest
--     PAGE: 00316
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>316
,p_name=>'rptTrainingClass'
,p_alias=>'RPTTRAININGCLASS'
,p_step_title=>'Listing of Training Classes'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3333610600362108708)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(448639504629841718)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6083077480299898352)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6083077595246898353)
,p_plug_name=>'Training Class Setup'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6083156456586981513)
,p_plug_name=>'Training Class Filter'
,p_parent_plug_id=>wwv_flow_imp.id(6083077595246898353)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6083157441654981523)
,p_plug_name=>'Training Class Listing'
,p_parent_plug_id=>wwv_flow_imp.id(6083077595246898353)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_TRN_COURSE_CLASS'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COURSE_SCHEDULE_ID = NVL(:P316_COURSE_SCHEDULE, COURSE_SCHEDULE_ID) ',
'AND TO_DATE(CLASS_START_TIME, ''DD-MON-YYYY HH:MIPM'') BETWEEN trunc(TO_DATE(:P316_START_TIME, ''DD-MON-YYYY HH:MIPM'')) AND trunc(TO_DATE(:P316_END_TIME, ''DD-MON-YYYY HH:MIPM''))',
'AND (COURSE_STRUCTURE_ID IS NULL OR COURSE_STRUCTURE_ID = NVL(:P316_COURSE_STRUCTURE, COURSE_STRUCTURE_ID))',
'AND EXISTS(',
'    SELECT 1',
'    FROM HR_TRN_COURSE A',
'    JOIN HR_TRN_COURSE_SCHEDULE B ON A.ID = B.COURSE_ID',
'    WHERE A.ID = NVL(:P316_COURSE, A.ID)',
'    AND B.ID = COURSE_SCHEDULE_ID',
')',
'and pkg_global_fnts.fn_sharereforg(org_id)=:APP_ORG_SHR_DED',
''))
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'CLASS_START_TIME'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P316_COURSE,P316_COURSE_SCHEDULE,P316_START_TIME,P316_END_TIME,P316_COURSE_STRUCTURE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Training Class Listing'
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
 p_id=>wwv_flow_imp.id(6083157685705981525)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6083157725352981526)
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
 p_id=>wwv_flow_imp.id(6083157985718981528)
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
 p_id=>wwv_flow_imp.id(6083158006867981529)
,p_name=>'COURSE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course Schedule'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME',
'        ||'' by ''',
'        ||c.salutation',
'        ||c.first_name ',
'        ||'' ''||surname',
'        ||'' at ''',
'        || case when venue is null then (select to_char(location_description) from hr_hcf_worklocation c where c.id = a.wklocation_id) else  venue end',
'        ||'' from ''',
'        ||to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'where exists(select 1 from hr_hcf_organisation x where a.org_id = x.id and (x.id = :APP_ORG_SHR_DED OR x.parent_org_id = :APP_ORG_SHR_DED))',
'order by a.START_DATE desc '))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Schedule--'
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
 p_id=>wwv_flow_imp.id(6083158142674981530)
,p_name=>'CLASS_START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Class Start Time'
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(6083158290799981531)
,p_name=>'CLASS_END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Class End Time'
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
 p_id=>wwv_flow_imp.id(6083158383497981532)
,p_name=>'CLASS_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Class Hours'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(6083158438282981533)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(6083158514323981534)
,p_name=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_PK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(6083158630735981535)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445027701823880646)
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
,p_default_type=>'ITEM'
,p_default_expression=>'APP_ORG_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6083158773325981536)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(6083158817400981537)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(6083158908477981538)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(6083159060328981539)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6083159152234981540)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(6083159214266981541)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
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
 p_id=>wwv_flow_imp.id(6083159370736981542)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
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
 p_id=>wwv_flow_imp.id(6083159440957981543)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(6083159566625981544)
,p_name=>'COURSE_STRUCTURE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_STRUCTURE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course Structure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     ',
'    structure_name ',
'    ||'' :- ''',
'    ||a.structure_type',
'    ||'' No. ''',
'    || structure_no display, ',
'    A.ID return',
'FROM  ',
'    hr_trn_course_structure A ',
'    join hr_trn_course b on b.id = a.course_id',
'where ',
'    exists(select 1 from hr_hcf_organisation x where b.org_id = x.id and (x.id = :APP_ORG_SHR_DED OR x.parent_org_id = :APP_ORG_SHR_DED))    and exists (',
'        select 1',
'        from HR_TRN_COURSE_SCHEDULE sch',
'        where b.id = sch.COURSE_ID',
'        and sch.id=:COURSE_SCHEDULE_ID        ',
')',
'order by to_number(structure_no) asc'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COURSE_SCHEDULE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6083159642883981545)
,p_name=>'CLASS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Class Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6083157556199981524)
,p_internal_uid=>5661365563001984950
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(6083188269311258144)
,p_interactive_grid_id=>wwv_flow_imp.id(6083157556199981524)
,p_static_id=>'7976768'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6083188476223258144)
,p_report_id=>wwv_flow_imp.id(6083188269311258144)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083188945798258146)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6083157685705981525)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083190273538258154)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6083157985718981528)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083191137892258158)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6083158006867981529)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>816.016
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083192034628258162)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6083158142674981530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083192979019258167)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6083158290799981531)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083193825000258171)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6083158383497981532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083194762277258175)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6083158438282981533)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083195622296258180)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6083158514323981534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083196590709258184)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6083158630735981535)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083197379606258188)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6083158773325981536)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>194
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083198203317258192)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(6083158817400981537)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083199106320258196)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(6083158908477981538)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083200041030258201)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(6083159060328981539)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083200995587258205)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(6083159152234981540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083201818843258209)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(6083159214266981541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083202770513258215)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(6083159370736981542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083203646278258219)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(6083159440957981543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083204532244258224)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6083159566625981544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>319
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6083205407841258228)
,p_view_id=>wwv_flow_imp.id(6083188476223258144)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6083159642883981545)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8853858492303506189)
,p_plug_name=>'Training Class Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent13:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT a.ID,',
'  course_name ||'' at ''|| to_char(class_START_time,''HH:MIAM'')  COURSE_NAME ,  ',
'   a.class_START_time start_date,',
'   a.class_end_time, c.colour_code css_class,',
'   structure_name || '' :- '' || d.structure_type ||'' No. '' || structure_no course_structure',
'from hr_trn_course_class a  ',
'join HR_TRN_COURSE_SCHEDULE b on b.id = a.course_schedule_id',
'join hr_trn_course c on c.id = b.COURSE_ID',
'left join hr_trn_course_structure d on (c.id = d.course_id and a.course_structure_id = d.id)',
'where pkg_global_fnts.fn_sharereforg(a.org_id) = :APP_ORG_SHR_DED --exists(select 1 from hr_hcf_organisation x where a.org_id = x.id and (x.id = :APP_ORG_SHR_DED OR x.parent_org_id = :APP_ORG_SHR_DED))'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_export', 'CSV',
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'create_link', 'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310:P310_CLASS_START_TIME,P310_CLASS_END_TIME:&APEX$NEW_START_DATE.,&APEX$NEW_START_DATE.',
  'css_class', 'CSS_CLASS',
  'display_column', 'COURSE_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'CLASS_END_TIME',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', 'Course Structure included &COURSE_STRUCTURE.',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:310:P310_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(445257140781007364)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_button_name=>'GENERATE_TRAINING_DAYS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Training Classes'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458704755229243781)
,p_name=>'P316_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME,id',
'from ',
'    HR_TRN_COURSE a',
'where ',
'    pkg_global_fnts.fn_sharereforg(A.org_id)=:APP_ORG_SHR_DED',
'    and exists(',
'        select 1',
'        from hr_trn_course_structure b ',
'        where a.id = b.course_id ',
'    )',
'    and exists(',
'        select 1',
'        from hr_trn_course_facilitator c',
'        where a.id = c.course_id',
'    )',
'ORDER BY 1'))
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_colspan=>12
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the Training Course'
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
 p_id=>wwv_flow_imp.id(1458705624345243782)
,p_name=>'P316_COURSE_SCHEDULE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_prompt=>'Course Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME',
'        ||'' by ''',
'        ||c.salutation',
'        ||c.first_name ',
'        ||'' ''||surname',
'        ||'' at ''',
'        || case when venue is null then (select to_char(location_description) from hr_hcf_worklocation c where c.id = a.wklocation_id) else  venue end',
'        ||'' from ''',
'        ||to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'where pkg_global_fnts.fn_sharereforg(a.org_ID)=:APP_ORG_SHR_DED',
'and b.id = NVL(:P316_COURSE, B.ID)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P316_COURSE'
,p_ajax_items_to_submit=>'P316_COURSE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_colspan=>12
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1458706098149243783)
,p_name=>'P316_START_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_prompt=>'Start Time'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458706459878243783)
,p_name=>'P316_END_TIME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_prompt=>'End Time'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458706809449243783)
,p_name=>'P316_COURSE_STRUCTURE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6083156456586981513)
,p_prompt=>'Course Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     ',
'    a.structure_name ',
'    ||'' :- ''',
'    ||a.structure_type',
'    ||'' No. ''',
'    || structure_no display, ',
'    A.ID return',
'FROM  ',
'    hr_trn_course_structure A ',
'    join hr_trn_course b on b.id = a.course_id',
'where ',
'    pkg_global_fnts.fn_sharereforg(b.org_id)=:APP_ORG_SHR_DED',
'    and exists (',
'        select 1',
'        from HR_TRN_COURSE_SCHEDULE sch',
'        where b.id = sch.COURSE_ID',
'        and b.id = nvl(:P316_COURSE, b.id)',
'        and sch.id= nvl(:P316_COURSE_SCHEDULE, sch.id)',
'        )',
'order by to_number(a.structure_no) asc, b.course_name asc,a.structure_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Structure--'
,p_lov_cascade_parent_items=>'P316_COURSE,P316_COURSE_SCHEDULE'
,p_ajax_items_to_submit=>'P316_COURSE,P316_COURSE_SCHEDULE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_colspan=>12
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445270061782007375)
,p_name=>'set_time'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE_SCHEDULE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445270544757007376)
,p_event_id=>wwv_flow_imp.id(445270061782007375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_START_TIME,P316_END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(start_date, ''DD-MON-YYYY'') || to_char(default_class_start_time, '' HH:MIPM'') start_time, to_char(end_date, ''DD-MON-YYYY'') || to_char(default_class_end_time, '' HH:MIPM'') end_time',
'from',
'    hr_trn_course_schedule',
'where ',
'    id = :P316_COURSE_SCHEDULE'))
,p_attribute_07=>'P316_COURSE_SCHEDULE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445271068467007376)
,p_event_id=>wwv_flow_imp.id(445270061782007375)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_START_TIME'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445271428304007376)
,p_name=>'refresh_schedule'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445271917759007377)
,p_event_id=>wwv_flow_imp.id(445271428304007376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_COURSE_SCHEDULE,P316_COURSE_STRUCTURE'
,p_attribute_01=>'N'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445272316048007377)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE_SCHEDULE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445272834639007377)
,p_event_id=>wwv_flow_imp.id(445272316048007377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_COURSE_STRUCTURE'
,p_attribute_01=>'N'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445273200422007377)
,p_name=>'set_course_schedule_and_structure'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6083157441654981523)
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CLASS_END_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445273792739007378)
,p_event_id=>wwv_flow_imp.id(445273200422007377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'COURSE_SCHEDULE_ID,COURSE_STRUCTURE_ID,CLASS_START_TIME,CLASS_END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P316_COURSE_SCHEDULE, :P316_COURSE_STRUCTURE, :P316_START_TIME, :P316_END_TIME',
'FROM DUAL'))
,p_attribute_07=>'P316_COURSE_SCHEDULE,P316_COURSE_STRUCTURE,P316_START_TIME,P316_END_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445274232902007378)
,p_event_id=>wwv_flow_imp.id(445273200422007377)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CLASS_NAME'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_class_name varchar2(100);',
'begin',
'    if :P316_COURSE_STRUCTURE is not null then',
'        select ',
'            structure_name || '' :- '' || structure_type || '' No. '' || structure_no',
'        into',
'            l_class_name',
'        from',
'            hr_trn_course_structure',
'        where',
'            id = :P316_COURSE_STRUCTURE;',
'    elsif :P316_COURSE is not null then',
'        select',
'            course_name',
'        into',
'            l_class_name',
'        from',
'            hr_trn_course',
'        where',
'            id = :P316_COURSE;',
'    end if;',
'',
'    return l_class_name;',
'',
'end;'))
,p_attribute_07=>'P316_COURSE,P316_COURSE_STRUCTURE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445274689188007378)
,p_name=>'set_hours'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(6083157441654981523)
,p_triggering_element=>'CLASS_START_TIME,CLASS_END_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445275131490007378)
,p_event_id=>wwv_flow_imp.id(445274689188007378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CLASS_HOURS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (TO_DATE(:CLASS_END_TIME, ''DD-MON-YYYY HH:MIPM'') - TO_DATE(:CLASS_START_TIME, ''DD-MON-YYYY HH:MIPM'')) * 24',
'from dual'))
,p_attribute_07=>'CLASS_START_TIME,CLASS_END_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445275613335007379)
,p_event_id=>wwv_flow_imp.id(445274689188007378)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CLASS_HOURS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445276065644007379)
,p_name=>'refresh_classes'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE,P316_COURSE_SCHEDULE,P316_START_TIME,P316_COURSE_STRUCTURE,P316_END_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445276503582007379)
,p_event_id=>wwv_flow_imp.id(445276065644007379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6083157441654981523)
,p_attribute_01=>'N'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445276942766007379)
,p_name=>'refresh_class'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445277448995007380)
,p_event_id=>wwv_flow_imp.id(445276942766007379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_COURSE,P316_COURSE_SCHEDULE'
,p_attribute_01=>'N'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445277812585007380)
,p_name=>'show_button'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_COURSE,P316_COURSE_SCHEDULE,P316_COURSE_STRUCTURE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P316_COURSE").getValue() != ''''',
'&& apex.item("P316_COURSE_SCHEDULE").getValue() != ''''',
'&& apex.item("P316_COURSE_STRUCTURE").getValue() != '''''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445278386738007380)
,p_event_id=>wwv_flow_imp.id(445277812585007380)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(445257140781007364)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445278872397007380)
,p_event_id=>wwv_flow_imp.id(445277812585007380)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(445257140781007364)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445279232624007381)
,p_name=>'set_start_time'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_START_TIME'
,p_condition_element=>'P316_START_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445279741331007381)
,p_event_id=>wwv_flow_imp.id(445279232624007381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_START_TIME'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(ADD_MONTHS(TO_DATE(current_date, ''DD-MON-YYYY HH:MIPM''), -1), ''DD-MON-YYYY HH:MIPM'')'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445280181357007381)
,p_name=>'set_end_time'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P316_END_TIME'
,p_condition_element=>'P316_END_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445280676285007381)
,p_event_id=>wwv_flow_imp.id(445280181357007381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P316_END_TIME'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(ADD_MONTHS(TO_DATE(current_date, ''DD-MON-YYYY HH:MIPM''), 1), ''DD-MON-YYYY HH:MIPM'')'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(445268710741007374)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6083157441654981523)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Training Classes Listing - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23476717543010800
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(445269634605007375)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generated_class_times'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pkg_training.prcd_insert_course_class( in_start_time => to_date(:P316_START_TIME,''DD-MON-YYYY HH:MIAM''),',
'                                       in_end_time => to_date(:P316_END_TIME,''DD-MON-YYYY HH:MIAM''), ',
'                                       in_cs_id => :P316_COURSE_SCHEDULE,',
'                                       in_tcst_id => :P316_COURSE_STRUCTURE,',
'                                       in_dow => null );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(445257140781007364)
,p_process_success_message=>'Class Schedule Generated'
,p_internal_uid=>23477641407010801
);
wwv_flow_imp.component_end;
end;
/
