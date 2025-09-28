prompt --application/pages/page_01436
begin
--   Manifest
--     PAGE: 01436
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
 p_id=>1436
,p_name=>'frmActivityHistory'
,p_step_title=>'Manage Employee Non-Work Activity'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893806588392776)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3267711520256990875)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3255484905408937066)
,p_plug_name=>'Listing of Activity Attendees'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ACTIVITY_ID,',
'       EMP_ID,',
'       EARNINGS,',
'       REMARKS,',
'       START_DATE,',
'       END_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       TIME_USED,',
'       WORK_TASK',
'  from HR_ATT_ACTIVITYATTENDANCE w',
'  where ACTIVITY_ID = :P1436_ID',
'  and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )             ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1436_ID'
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_plug_read_only_when2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Activity Attendees'
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
 p_id=>wwv_flow_imp.id(3255485138970937068)
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
 p_id=>wwv_flow_imp.id(3255485250833937069)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1436_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3255485306083937070)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632585978827532447)
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
 p_id=>wwv_flow_imp.id(3255485419567937071)
,p_name=>'EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Earnings'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(3255485744229937074)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3255485817099937075)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P1436_START_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3255485910406937076)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P1436_END_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3255486158587937078)
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
 p_id=>wwv_flow_imp.id(3255486206266937079)
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
 p_id=>wwv_flow_imp.id(3255486316542937080)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
 p_id=>wwv_flow_imp.id(3255486487633937081)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(3255486594478937082)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine Insert'
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
 p_id=>wwv_flow_imp.id(3255486695003937083)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine Update'
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
 p_id=>wwv_flow_imp.id(3255486699801937084)
,p_name=>'TIME_USED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_USED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Time Used'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3267709584793990855)
,p_name=>'WORK_TASK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_TASK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Work Task'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(3267710902494990869)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3267711095932990870)
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
 p_id=>wwv_flow_imp.id(3255485019312937067)
,p_internal_uid=>308846819552438115
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_update_authorization_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3585335384393360204)
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
 p_id=>wwv_flow_imp.id(3267715204975991408)
,p_interactive_grid_id=>wwv_flow_imp.id(3255485019312937067)
,p_static_id=>'3210771'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3267715495201991408)
,p_report_id=>wwv_flow_imp.id(3267715204975991408)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267715932039991411)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3255485138970937068)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267716875713991417)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3255485250833937069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267717702263991425)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3255485306083937070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267718656533991430)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3255485419567937071)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.613
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267721208200991445)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3255485744229937074)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267722188591991449)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3255485817099937075)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109.613
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267723078107991455)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3255485910406937076)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.613
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267724870820991462)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3255486158587937078)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267725704933991466)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3255486206266937079)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267726617430991469)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3255486316542937080)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267727531811991474)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3255486487633937081)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267728492110991478)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3255486594478937082)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267729315285991482)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3255486695003937083)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267730235962991485)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3255486699801937084)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267749082114991572)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3267709584793990855)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3267814178367006742)
,p_view_id=>wwv_flow_imp.id(3267715495201991408)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3267710902494990869)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3414674975070217827)
,p_plug_name=>'Quick Entry Reference (Activity Type and Venue)'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3502470503085368823)
,p_plug_name=>'Quick Entry Organisation (Sponsored By)'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3539445253719792519)
,p_plug_name=>'Listing of Activity Attendees'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_ATT_ACTIVITYATTENDANCE.ID as ID,',
'    HR_ATT_ACTIVITYATTENDANCE.ACTIVITY_ID as ACTIVITY_ID,',
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
'    HR_ATT_ACTIVITYATTENDANCE.MACHINE_UPDATE as MACHINE_UPDATE',
' from HR_ATT_ACTIVITYATTENDANCE HR_ATT_ACTIVITYATTENDANCE join hr_rcm_employee q on q.id=HR_ATT_ACTIVITYATTENDANCE.emp_id',
'WHERE ACTIVITY_ID=:P1436_ID',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where  q.org_id=a.org_id',
'              and q.employment_class_id=a.employment_class_id',
'              and upper(q.payment_type)=a.payment_type',
'               union',
'			  select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where q.org_id = a.org_id',
'              and q.employment_class_id = a.employment_class_id',
'              and upper(q.payment_type) =  upper(a.payment_type)',
'              and q.report_to = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, q.id)			 ',
'         ) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3539445144509792519)
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
,p_detail_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:1437:P1437_ID,P1437_ACTIVITY_DATE,P1437_RETURN_VALUE:#ID#,#START_DATE#,1436'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>113394021637195050
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631502353082510478)
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
 p_id=>wwv_flow_imp.id(3631501932318510478)
,p_db_column_name=>'ACTIVITY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVITY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631501529625510478)
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
 p_id=>wwv_flow_imp.id(3631501097057510478)
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
 p_id=>wwv_flow_imp.id(3631500723408510476)
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
 p_id=>wwv_flow_imp.id(3631500317720510476)
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
 p_id=>wwv_flow_imp.id(3631499877650510472)
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
 p_id=>wwv_flow_imp.id(3631499498078510471)
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
 p_id=>wwv_flow_imp.id(3631499106867510470)
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
 p_id=>wwv_flow_imp.id(3631498695537510470)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631498307511510469)
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
 p_id=>wwv_flow_imp.id(3631497907101510469)
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
 p_id=>wwv_flow_imp.id(3631497563206510469)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3631497097023510468)
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
 p_id=>wwv_flow_imp.id(3631496711251510467)
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
 p_id=>wwv_flow_imp.id(3631496273963510466)
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
 p_id=>wwv_flow_imp.id(3631502738876510479)
,p_db_column_name=>'TIME_USED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Time Used(hh:mi)'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIME_USED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3539443352334792160)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'213432'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:EMPENT_ID:EARNINGS:START_DATE:END_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:TIME_USED'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3546965249453025406)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_ATT_ACTIVITY''',
'and table_name_key=:P1436_ID'))
,p_display_when_condition=>'P1436_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(3631510315312510505)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3631509953636510490)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3631509568200510490)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3631509187147510489)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3631508800150510489)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE_OF_ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3631508410963510489)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3565889186202088874)
,p_plug_name=>'Training Details'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_read_only_when_type=>'EXPRESSION'
,p_plug_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_plug_read_only_when2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609002394198227169)
,p_plug_name=>'Quick Entry Facilitator Bio Data'
,p_parent_plug_id=>wwv_flow_imp.id(3267711520256990875)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3269574314104476608)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3539435436312380703)
,p_plug_name=>'Section B'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_imp.id(3539435644623383019)
,p_plug_name=>'Section A'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3539446539006826127)
,p_name=>'Audit Record Verified by: &P1436_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' machine_insert,',
' machine_update,',
' apex_util.get_since(last_changed_date) updated',
'from HR_ATT_ACTIVITY',
'where id = :P1436_ID',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1436_ID'
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
 p_id=>wwv_flow_imp.id(465086261060856124)
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
 p_id=>wwv_flow_imp.id(475433087243140575)
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
 p_id=>wwv_flow_imp.id(475433153362140576)
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
 p_id=>wwv_flow_imp.id(475433289908140577)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475433327046140578)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475433400283140579)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3539458634860849980)
,p_plug_name=>'Manage Employee Non-Work Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>22
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_COUNT NUMBER;',
'BEGIN',
'select COUNT(1) INTO L_COUNT',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) a',
'where a.org_id=:APP_ORG_ID',
'AND UPPER(value_description) LIKE ''%DAILY%ATT%'';',
'',
'IF L_COUNT > 0 ',
'THEN RETURN FALSE;',
'ELSE RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3542177342148212246)
,p_plug_name=>'Reminder'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>21
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="green" size="4"><b>',
' You are reminded to create the Employee attendance, before leaving this screen!.</b></font>'))
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_ATT_ACTIVITYATTENDANCE',
'where ACTIVITY_ID=:P1436_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633898341063135250)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3574991116301114303)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631495503385510465)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3539445253719792519)
,p_button_name=>'CREATE_EMPLOYEE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Employee'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:RP,:P1437_ACTIVITY_ID,P1437_START_DATE,P1437_EARNINGS_PERIOD_ID:&P1436_ID.,&P1436_START_DATE.,&P1436_EARNINGS_PERIOD_ID.'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631507747678510487)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3539458634860849980)
,p_button_name=>'CREATE_EMP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Employee Attendance'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:1437:P1437_ACTIVITY_ID,P1437_START_DATE,P1437_EARNINGS_PERIOD_ID,P1437_RETURN_VALUE:&P1436_ID.,&P1436_START_DATE.,&P1436_EARNINGS_PERIOD_ID.,1436'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631512664751510509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1436_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3635886763075958915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3414674975070217827)
,p_button_name=>'ADD_REF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Ref'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3635888947603960634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3502470503085368823)
,p_button_name=>'ADD_ORG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Org'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3635897415344094537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3609002394198227169)
,p_button_name=>'CREATE_BIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Bio'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631514265102510511)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1435:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631513841716510511)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
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
':P1436_ID IS NOT NULL AND (pkg_global_fnts.status_descript(:P1436_STATUS) NOT LIKE ''VERIF%'' ',
'                            OR pkg_global_fnts.status_descript(:P1436_STATUS) NOT LIKE ''COMPLE%'')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631513421271510510)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631513048291510509)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631511775259510508)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631511369417510506)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:1436::'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631510994997510505)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1436_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3631512258926510508)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1436_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3496455113105315528)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3269574314104476608)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P1436_ID.,ID,&P1436_STATUS.,HR_ATT_ACTIVITY,&P1436_TRANSACTION_TYPE_ID.,Activity Management,1436,&P1436_WORK_FLOW_COMMENT.'
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
'where :P1436_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631470597942510410)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1435:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631513841716510511)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631470248150510409)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:1436::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631511775259510508)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631472603034510419)
,p_branch_name=>'add_doc'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_RETURN_VALUE:1,FRMACTIVITYHISTORY,&P1436_ID.,1436'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631510994997510505)
,p_branch_sequence=>3
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1436_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631472246729510412)
,p_branch_name=>'View_doc'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1436_DOC_EXIST.,1436'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631510994997510505)
,p_branch_sequence=>4
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1436_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631471843835510412)
,p_branch_action=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>5
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631471040293510410)
,p_branch_action=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.::P1436_ID:&P1436_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631512664751510509)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3631471425569510410)
,p_branch_action=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.::P1436_ID:&P1436_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3631512258926510508)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253034261377960296)
,p_name=>'P1436_DURATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Duration (Hrs.)'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'DURATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3255484725571937064)
,p_name=>'P1436_TRAINING_CLASSIFICATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ONE_OFF'
,p_prompt=>'Training Class'
,p_source=>'TRAINING_CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Recurring;RECURRING,One Off;ONE_OFF'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3267711418526990874)
,p_name=>'P1436_TRAINING_EXPIRY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Training Expiry'
,p_source=>'TRAINING_EXPIRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3624576633587075870)
,p_name=>'P1436_COMENT_SWITCH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(3624576852946077522)
,p_name=>'P1436_WORK_FLOW_COMMENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_prompt=>'<font color="purple" size="2"><b> Work Flow Notes</b></font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(3631484882025510447)
,p_name=>'P1436_APPROVED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(3631485273361510449)
,p_name=>'P1436_APPROVED_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approval Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3631485705188510449)
,p_name=>'P1436_ID_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3631486163473510449)
,p_name=>'P1436_INCOME_CODE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_source=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631487022535510451)
,p_name=>'P1436_FACILITATOR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facilitator'
,p_source=>'FACILITATOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INDIVIDUAL a, id b',
'from VW_INDIVIDUAL_ONLY',
'where IND_ORG_ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'These are individuals. Scroll to quick entry regions below to add missing values.'
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
 p_id=>wwv_flow_imp.id(3631487380137510451)
,p_name=>'P1436_ACTIVITY_EXPENDITURE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'ACTIVITY_EXPENDITURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631488323843510452)
,p_name=>'P1436_SPONSORED_BY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sponsored By'
,p_source=>'SPONSORED_BY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORGANISATION_NAME a, id b',
'from HR_HCF_ORGANISATION a',
'where user_org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This field references data from organization screen, and represents the training agency for training activity. Scroll to quick entry regions below to add missing values.'
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
 p_id=>wwv_flow_imp.id(3631488726435510452)
,p_name=>'P1436_PAY_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pay Status'
,p_source=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631489605036510453)
,p_name=>'P1436_ATTRACT_PAYMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ATTRACT_PAYMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'D for deduction, N for no applicable and P for payment.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631490294996510455)
,p_name=>'P1436_ID_PREV'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631490716942510455)
,p_name=>'P1436_ID_NEXT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631491066984510456)
,p_name=>'P1436_REMARKS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>45
,p_cMaxlength=>255
,p_cHeight=>1
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(3631491494891510456)
,p_name=>'P1436_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
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
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and upper(Wfl_Status_Description) not like DECODE(:P1436_ID, NULL,''%VERI%'',''test'')  ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1436_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1436_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use the completed status to update employee personal file and for inclusion or HR Payroll processes.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631491885124510457)
,p_name=>'P1436_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
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
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631492364334510457)
,p_name=>'P1436_EXPENSE_CODE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_source=>'EXPENSE_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631492727664510458)
,p_name=>'P1436_EARNINGS_PERIOD_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631493575229510462)
,p_name=>'P1436_VENUE_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Venue'
,p_source=>'VENUE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLLOCATION''))',
'where org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_cSize=>30
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'References data from system reference locations. Scroll to quick entry regions below to add missing values.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631494038068510462)
,p_name=>'P1436_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_imp.id(3631494448439510463)
,p_name=>'P1436_START_DATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3539435436312380703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>255
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3631494820096510463)
,p_name=>'P1436_ACTIVITY_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3539435644623383019)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Activity Type'
,p_source=>'ACTIVITY_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) a',
'where a.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_read_only_when=>'pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''VERIF%'' OR pkg_global_fnts.status_descript(:P1436_STATUS) LIKE ''COMPLE%'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'Scroll last region to add a new Activity type if not found on the list. Scroll to quick entry regions below to add missing values.'
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
 p_id=>wwv_flow_imp.id(3631503412963510482)
,p_name=>'P1436_DOC_EXIST'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3539446539006826127)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1436_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631503814502510483)
,p_name=>'P1436_MACHINE_UPDATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3539446539006826127)
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
 p_id=>wwv_flow_imp.id(3631504219768510483)
,p_name=>'P1436_MACHINE_INSERT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3539446539006826127)
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
 p_id=>wwv_flow_imp.id(3631505016907510484)
,p_name=>'P1436_VERIFIED_BY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3539446539006826127)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631507349029510487)
,p_name=>'P1436_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3539458634860849980)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631514940386510515)
,p_name=>'P1436_COUNTRY_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country Code'
,p_source=>'COUNTRY_CODE'
,p_source_type=>'DB_COLUMN'
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
,p_lov_null_text=>'--None--'
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
 p_id=>wwv_flow_imp.id(3631515307879510515)
,p_name=>'P1436_Q_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Q level'
,p_source=>'Q_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUALIFICATION_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLQUALIFICATIONLEVEL'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
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
 p_id=>wwv_flow_imp.id(3631515737129510516)
,p_name=>'P1436_REQUIRED_TRAINING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Required Training'
,p_source=>'REQUIRED_TRAINING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3631516068581510518)
,p_name=>'P1436_IN_HOUSE_TRAINING'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'In House Training'
,p_source=>'IN_HOUSE_TRAINING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3631516532820510518)
,p_name=>'P1436_SUBJECT_COURSE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Name'
,p_source=>'SUBJECT_COURSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ACTIVITY PROGRAM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(table_value) RETURN, value_description DISPLAY',
'from hr_hcf_lookup',
'where upper(table_name) = ''TBLACTIVITYPROGRAM''',
'and org_id =:APP_ORG_SHR_DED',
'-- and (end_period is null or end_period >= current_date)',
'-- and upper(pkg_global_fnts.status_descript(status)) like ''VERI%'''))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3631516928295510519)
,p_name=>'P1436_TUTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3565889186202088874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tutor'
,p_source=>'TUTOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3635887213120958921)
,p_name=>'P1436_TABLE_DESCRIPTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3414674975070217827)
,p_prompt=>'Table Description'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DIStinct INITCAP(table_description) A, table_description B',
'from hr_hcf_lookup',
'where org_id=:APP_ORG_SHR_DED',
'and upper(table_name) in (''TBLACTIVITYTYPE'',''TBLLOCATION'')',
'order by 2'))
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
 p_id=>wwv_flow_imp.id(3635887531535958928)
,p_name=>'P1436_START_PERIOD_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3414674975070217827)
,p_prompt=>'Start Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635887845801958928)
,p_name=>'P1436_TABLE_VALUE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3414674975070217827)
,p_prompt=>'Table Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635888268278958928)
,p_name=>'P1436_VALUE_DESCRIPTION'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3414674975070217827)
,p_prompt=>'Value Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>120
,p_cMaxlength=>250
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635889346451960644)
,p_name=>'P1436_SHORT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3502470503085368823)
,p_prompt=>'Short Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635889740850960646)
,p_name=>'P1436_START_DATE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3502470503085368823)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3635890174814960646)
,p_name=>'P1436_ORGANISATION_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3502470503085368823)
,p_prompt=>'Organisation Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635897754621094540)
,p_name=>'P1436_FIRST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3609002394198227169)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635898169685094540)
,p_name=>'P1436_SURNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3609002394198227169)
,p_prompt=>'Surname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635898578314094540)
,p_name=>'P1436_DOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3609002394198227169)
,p_prompt=>'DOB'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3635898944529094541)
,p_name=>'P1436_SEX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3609002394198227169)
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3632393837414252895)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3631480264840510439)
,p_validation_name=>'chk_start_end_same_date'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if to_date(:P1436_START_DATE) != to_date(:P1436_END_DATE) then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Activity dates must match in order to facilitate accurate computation of employee attendance, please change now.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3631479860869510438)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1436_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1436_ID, :P1436_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3631481019566510440)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1436_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3631480607423510439)
,p_validation_name=>'reject_approval_disapproval'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and pkg_global_fnts.status_descript(:P1436_STATUS) like ''%APPRO%'' then',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'User action disallowed. You are not an approver!'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3631481414936510443)
,p_validation_name=>'prv_facilitator_sponsor'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  UPPER(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P1436_ACTIVITY_TYPE_ID, ''VALUE_DESCRIPTION'')) like ''TRAIN%'' and',
' (:P1436_SPONSORED_BY_ID is null or :P1436_FACILITATOR_ID is null) then ',
' ',
' return FALSE;',
'',
'else',
' return TRUE;',
' ',
' end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must enter a sponsor and facilitator for the training activity.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3629529835047213391)
,p_validation_name=>'chk_sponsor_for_training'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  v_value_description varchar2(500);',
'  ',
'begin',
'',
'  select upper(value_description) into v_value_description',
'  from table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) a',
'  where id =:P1436_ACTIVITY_TYPE_ID;',
'',
'',
'if :P1436_SPONSORED_BY_ID is null and v_value_description like ''%TRAIN%'' then',
'   return FALSE;',
'else',
'   return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must have a Sponsor for activity type training. Its a requirement since it represents the training agency.'
,p_validation_condition=>'CREATE, CREATE_AGAIN, SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3473629609011962598)
,p_validation_name=>'enf_activity_attendance'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_ATT_ACTIVITYATTENDANCE',
'where ACTIVITY_ID=:P1436_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You have not entered any records for employee attendance. Please complete that before leaving this create.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3631514265102510511)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3583032694284502737)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_ATT_ACTIVITY''',
'        and table_name_key=:P1436_ID;',
'        ',
'    if v_test_approval=0 and pkg_global_fnts.status_descript(:P1436_STATUS) in (''VERIFY'', ''COMPLETED'') then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified/completed.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3631476313846510424)
,p_name=>'set_value_end'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1436_START_DATE'
,p_condition_element=>'P1436_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3631475839974510424)
,p_event_id=>wwv_flow_imp.id(3631476313846510424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1436_START_DATE'
,p_attribute_07=>'P1436_START_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3631475443732510424)
,p_name=>'Refresh - Create Emp'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3631507747678510487)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3631474915068510422)
,p_event_id=>wwv_flow_imp.id(3631475443732510424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3539445253719792519)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3631473625798510421)
,p_name=>'Refresh - Create Employee'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3631495503385510465)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3631473095992510420)
,p_event_id=>wwv_flow_imp.id(3631473625798510421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3539445253719792519)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3631474488384510422)
,p_name=>'Refresh - Edit'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3539445253719792519)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3631474060100510421)
,p_event_id=>wwv_flow_imp.id(3631474488384510422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3539445253719792519)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624578762673156822)
,p_name=>'show_comments'
,p_event_sequence=>50
,p_condition_element=>'P1436_COMENT_SWITCH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624579225985156822)
,p_event_id=>wwv_flow_imp.id(3624578762673156822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624579723408156822)
,p_event_id=>wwv_flow_imp.id(3624578762673156822)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3624580122558162159)
,p_name=>'show_comment'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1436_COMENT_SWITCH'
,p_condition_element=>'P1436_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624580481307162159)
,p_event_id=>wwv_flow_imp.id(3624580122558162159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3624580979438162159)
,p_event_id=>wwv_flow_imp.id(3624580122558162159)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3253034380701960297)
,p_name=>'setDuration'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1436_START_DATE,P1436_END_DATE'
,p_condition_element=>'P1436_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3253034469231960298)
,p_event_id=>wwv_flow_imp.id(3253034380701960297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1436_DURATION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round((to_date(:P1436_END_DATE,''DD-MON-YYYY HH:MIPM'') - to_date(:P1436_START_DATE,''DD-MON-YYYY HH:MIPM''))*24,2)',
'from dual'))
,p_attribute_07=>'P1436_END_DATE,P1436_START_DATE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631478285099510429)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_ATT_ACTIVITY'
,p_attribute_02=>'HR_ATT_ACTIVITY'
,p_attribute_03=>'P1436_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_internal_uid=>3209686291901513855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631477103796510427)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_ATT_ACTIVITY'
,p_attribute_03=>'P1436_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ACTIVITY_TYPE_ID'
,p_attribute_09=>'P1436_ID_NEXT'
,p_attribute_10=>'P1436_ID_PREV'
,p_attribute_13=>'P1436_ID_COUNT'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
' exists ( ',
'              select 1',
'              FROM VW_USERACCESS A JOIN pa_pcf_earningperiod B on (b.org_id=a.org_id and b.employment_class_id=a.employment_class_id and upper(b.PAYMENT_TYPE)=a.payment_type)',
'              where HR_ATT_ACTIVITY.earnings_period_id=b.id',
'              and HR_ATT_ACTIVITY.org_id=:APP_ORG_ID',
'             )         ',
''))
,p_internal_uid=>3209685110598513853
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631479153378510429)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1436_MACHINE_INSERT is null  and V(''LOGIN_VAR'') is not null then',
' :P1436_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P1436_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P1436_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3209687160180513855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631478736649510429)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1201_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P1201_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P1201_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631513421271510510)
,p_internal_uid=>3209686743451513855
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631477944788510428)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_ATT_ACTIVITY'
,p_attribute_02=>'HR_ATT_ACTIVITY'
,p_attribute_03=>'P1436_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1436_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3209685951590513854
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631477555311510428)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631513841716510511)
,p_internal_uid=>3209685562113513854
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631476698816510425)
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
'where TRANSACTION_TYPE_ID=:P1436_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1436_STATUS;',
'',
' if pkg_global_fnts.status_descript(:P1436_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(NVL(V(''APP_USER''),user), ''HR_ATT_ACTIVITY'',''ID'', :P1436_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P1436_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P1436_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_ATT_ACTIVITY'', ''ID'', :P1436_ID);       ',
' end if;',
' ',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Employee Activity Attendance'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1436_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Activity Attendance'',',
'	:P1436_STATUS,:APP_PAGE_ID,:P1436_TRANSACTION_TYPE_ID,',
'        ''HR_ATT_ACTIVITY'', :P1436_WORK_FLOW_COMMENT, :P1436_ID);',
'',
'exception',
'    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631513421271510510)
,p_process_when=>'P1436_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3209684705618513851
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631479534379510438)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_training'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if upper(PKG_GLOBAL_FNTS.Get_Lookup_Col(:P1436_ACTIVITY_TYPE_ID, ''TABLE_VALUE'')) like  ''%TRAINING%'' and  pkg_global_fnts.status_descript(:P1436_STATUS) like ''COMPLETED'' then',
'',
' merge into hr_rcm_training ',
'			using (',
'            select tutor,  a.end_date, a.start_date,emp_id, subject_course, sponsored_by_id facilitator_id, sponsored_by_id, in_house_training,  required_training,',
'            country_code,  q_level ,b.activity_id',
'            from hr_att_activity a join hr_att_activityattendance b on a.id=b.activity_id',
'            where a.id = :P1436_ID',
'					) source',
'			on',
'			( hr_rcm_training.ACTIVITY_ID = source.ACTIVITY_ID ',
'                          and hr_rcm_training.emp_id = source.emp_id       		',
'			)',
'			when matched then ',
'			update set  tutor         =source.tutor,',
'                  train_end_date  = source.end_date,',
'                  train_start_date= source.start_date,',
'                  subject_course= source.subject_course,',
'                  training_agency= source.sponsored_by_id,',
'                  sponsoring_agency= source.sponsored_by_id,',
'                  in_house_training= source.in_house_training,',
'                  required_training= source.required_training,',
'                  country_code=source.country_code,',
'                  q_level =  source.q_level',
'			when not matched then      ',
'			insert (tutor, train_end_date, train_start_date, emp_id, subject_course, training_agency, sponsoring_agency,',
'                       in_house_training, required_training, country_code, q_level, activity_id)    	           		',
'        values (source.tutor,  source.end_date, source.start_date, source.emp_id, source.subject_course, source.facilitator_id, source.sponsored_by_id,',
'                      source.in_house_training,  source.required_training, source.country_code,  source.q_level, source.activity_id);		',
'',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3631513421271510510)
,p_internal_uid=>3209687541181513864
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3635890599681968348)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_references'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_table_name varchar2(100);',
'   ',
'begin',
'    SELECT distinct TABLE_NAME into v_table_name ',
'    from hr_hcf_lookup',
'    where org_id=:APP_ORG_ID',
'    and upper(table_description) = upper(:P1436_TABLE_DESCRIPTION);',
'',
'    INSERT INTO hr_hcf_lookup (COUNTRY, ORG_ID,MODULE_MAIN, MODULE_MAIN_ID, TABLE_NAME,TABLE_DESCRIPTION,TABLE_VALUE,VALUE_DESCRIPTION,START_PERIOD,transaction_type_id, STATUS,verified_date, verified_by)',
'values (:APP_COUNTRY, :APP_ORG_ID, ''HUMAN RESOURCES AND PAYROLL'', 21, v_table_name, :P1436_TABLE_DESCRIPTION, :P1436_TABLE_VALUE, :P1436_VALUE_DESCRIPTION,:P1436_START_PERIOD_1, 110,272, current_date, :APP_USER);',
'    ',
'    :P1436_TABLE_DESCRIPTION:=null;',
'    :P1436_TABLE_VALUE:=null;',
'    :P1436_VALUE_DESCRIPTION:=null;',
'    :P1436_START_PERIOD:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3635886763075958915)
,p_process_success_message=>'Reference successfully added.'
,p_internal_uid=>3214098606483971774
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3635890933709969740)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_references_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO hr_hcf_organisation (ORGANISATION_TYPE,  organisation_name, start_date, short_name, transaction_type_id, status,verified_date, verified_by)',
'VALUES (''OTHER'', :P1436_ORGANISATION_NAME, :P1436_START_DATE_1,:P1436_SHORT_NAME,110,280, current_date, :APP_USER);',
':P1436_ORGANISATION_NAME:=NULL;',
':P1436_START_DATE:=NULL;',
':P1436_SHORT_NAME:=NULL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3635888947603960634)
,p_process_success_message=>'Reference successfully added.'
,p_internal_uid=>3214098940511973166
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3635899404336097278)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_BIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO hr_rcm_individual (surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date,IND_ORG_ID)',
'values(:P1436_SURNAME, :P1436_FIRST_NAME, :P1436_DOB, :P1436_SEX, 110,324, :APP_USER, current_date,:APP_ORG_ID);     '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3635897415344094537)
,p_internal_uid=>3214107411138100704
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3267711187175990871)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3255484905408937066)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Activity Attendees Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2845919193977994297
);
wwv_flow_imp.component_end;
end;
/
