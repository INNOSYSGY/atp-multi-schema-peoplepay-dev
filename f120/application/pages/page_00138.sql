prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>138
,p_name=>'frmtimeclockmastersheet'
,p_alias=>'FRMTIMECLOCKMASTERSHEET'
,p_step_title=>'TimeSheet Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825718496777578342)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setItems(pid, pworkdate,pempid)',
'{ ',
'    apex.item( "P138_ID" ).setValue (pid);',
'    apex.item( "P138_MASTER_WORK_DATE" ).setValue (pworkdate);',
'    apex.item("P138_MASTER_EMP_ID").setValue(pempid);',
'};',
'',
'',
'function f_check_date(){',
'  var lFrom = $("#P138_WORK_START").datepicker("getDate"),',
'      lTo = $("#P138_WORK_END").datepicker("getDate");',
'  var diff = 0;',
'  var days = 0;',
'',
'    $("#P138_WORK_START").datepicker("option","maxDate",lTo);',
'    $("#P138_WORK_END").datepicker("option","minDate",lFrom);',
'',
'    diff = Math.abs(lTo - lFrom);',
'    days = diff/(1000 * 3600 * 24)',
'',
'    if(days > 31 && lFrom !== null && lTo !== null){',
'        alert(''Sorry, the date range should not be more than 31!'');',
'    } ',
'};',
'',
'',
'function irRowhighLight( pThis ){',
'  $(''td'').removeClass(''currentrow'');',
'  $(pThis).parent().parent().children().addClass(''currentrow'') ;  ',
'  var v_row = $(pThis).parent().next().html();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*#C3621448487492024{',
'    display: none;',
'}',
'',
'#C3621657449492026{',
'    display: none;',
'}',
'',
'.t-Body-contentInner{',
'    padding: 3px;',
'}',
'',
'#a_Collapsible1_R309234842063056286_content {',
'    padding-top: 0px;',
'    padding-bottom: 0px;',
'    padding-left: 3px;',
'    padding-right: 3px;',
'}*/',
'',
'.t-Region-header{',
'height: 40px;',
'border-radius: .4em;',
'}',
'',
'.t-Button--hideShow.t-Button{',
'border-radius: 50%;',
'}',
'',
'/*',
'#a_Collapsible1_R303058331018447482_content{',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'',
'.a-IRR-paginationWrap--top{',
'    display: none;',
'}',
'*/',
'.a-IRR-tableContainer table td {padding-top:2px; padding-bottom: 2px;}',
'',
'.currentrow',
'{ ',
' background-color: #8fc3c9 !important;',
'color:black;',
'',
'}',
'',
'#57514115623454911{',
'',
'position: relative;',
'}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670462688733027269)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1020
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1035215042940834707)
,p_plug_name=>'manual_forward'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>1010
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1164615553133844031)
,p_plug_name=>'Timesheet Master Filter'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1202552048623057557)
,p_plug_name=>'Master Summary'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_source_type=>'PLUGIN_COM.FOS.SPLITTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'horizontal',
  'attribute_02', 'end',
  'attribute_03', '1/3',
  'attribute_05', '60',
  'attribute_06', 'apex.item("P138_DYVP").getValue()',
  'attribute_10', 'can-collapse:continuous-resize',
  'attribute_15', 'Y',
  'attribute_18', '10',
  'attribute_19', 'Timesheet Detail',
  'attribute_20', 'Timesheet Detail',
  'attribute_21', 'Timesheet Detail',
  'attribute_23', '0',
  'attribute_24', '0')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1202551849032057555)
,p_plug_name=>'Timesheet Detail'
,p_region_name=>'GRID'
,p_parent_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID, id pkey, time_source,CALENDAR_ID,',
'        work_date wkdate,',
'       EMP_ID,',
'       WORK_DATE,',
'       TIME_IN,',
'       TIME_OUT,',
'       WKLOCATION_ID WORK_LOCATION_ID,',
'       EMP_COMPANY_NO,',
'       round(HOURS_WORKED,2) HOURS_WORKED,  ',
'       HOURS_WORKED_DEC      ',
'  from HR_ATT_TIMECLOCK_DTL',
'  where work_date = :P138_MASTER_WORK_DATE',
'  and org_id = :APP_ORG_ID',
'  and emp_id = :P138_MASTER_EMP_ID',
'     '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_MASTER_WORK_DATE,P138_MASTER_EMP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Timesheet Detail'
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
 p_id=>wwv_flow_imp.id(1147378635893998544)
,p_name=>'HOURS_WORKED_DEC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURS_WORKED_DEC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'HW.TN'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(1171827630742101471)
,p_name=>'WKDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WKDATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(1171950709401477261)
,p_name=>'HOURS_WORKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURS_WORKED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'HW.DN'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
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
 p_id=>wwv_flow_imp.id(1174085418784609981)
,p_name=>'CALENDAR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALENDAR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(1201739584084337066)
,p_name=>'EMP_COMPANY_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_COMPANY_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emp Company No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(1201739673343337067)
,p_name=>'WORK_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_LOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Work Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
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
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WKLOCATION_ID',
'from hr_rcm_employee',
'where id =:P138_MASTER_EMP_ID'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1201740452745337074)
,p_name=>'TIME_OUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_OUT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Time Out'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
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
,p_format_mask=>'HH:MIPM'
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
 p_id=>wwv_flow_imp.id(1201740522237337075)
,p_name=>'TIME_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_IN'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Time In'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
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
,p_format_mask=>'HH:MIPM'
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
 p_id=>wwv_flow_imp.id(1201740594214337076)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
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
 p_id=>wwv_flow_imp.id(1201740661537337077)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1201740882060337079)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221313453048895278)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1225907772629869346)
,p_name=>'TIME_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_SOURCE'
,p_data_type=>'VARCHAR2'
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
,p_default_type=>'STATIC'
,p_default_expression=>'MANUAL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1201740958669337080)
,p_internal_uid=>558124275282154940
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1201691320223315863)
,p_interactive_grid_id=>wwv_flow_imp.id(1201740958669337080)
,p_static_id=>'318730'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1201691152918315863)
,p_report_id=>wwv_flow_imp.id(1201691320223315863)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1147500560585176171)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1147378635893998544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1166243254715614168)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1171950709401477261)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168279869682443215)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1174085418784609981)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1170698565199869119)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1171827630742101471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201678869218315830)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1201739584084337066)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201679798856315833)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1201739673343337067)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201686149500315849)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1201740452745337074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201686973576315852)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1201740522237337075)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201687897133315854)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1201740594214337076)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201688783197315856)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1201740661537337077)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1201690653591315861)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1201740882060337079)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1218864322042709050)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1221313453048895278)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221410223346334979)
,p_view_id=>wwv_flow_imp.id(1201691152918315863)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1225907772629869346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1202551913094057556)
,p_plug_name=>'Master Records'
,p_region_name=>'fx'
,p_parent_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       cal_hd.id,',
'       upper(to_char(cal_hd.work_date,''dy'')) day_week, pkg_global_fnts.status_descript(cal_hd.status) status,',
'       cal_hd.EMP_ID,assign_shift_hours,',
'        cal_hd.emp_id empid,',
'       cal_hd.WORK_DATE,',
'       cal_hd.min_time_in time_IN,',
'       cal_hd.max_time_out time_OUT,',
'       cal_hd.REMARKS,  ',
'       CAL_HD.HOURS_WORKED HOURS_WORKED,',
'       cal_hd.time_in_lost lateness,',
'       cal_hd.PAY_STATUS,',
'       cal_hd.ASSIGNED_SHIFT,',
'       nvl(round(cal_hd.OVER_TIME,2),0) OVER_TIME,',
'       nvl(cal_hd.TOTAL_TIME_LOST,0) TOTAL_TIME_LOST,',
'       nvl(cal_hd.APPROVED_OVERTIME,0) APPROVED_OVERTIME,',
'       NVL(CAL_HD.APPROVED_ABS,0) AS APPROVED_ABS, ',
'        nvl(APPROVED_LATENESS,0) ALT, ',
'        holiday_code,',
'        cal_hd.override_llh OLH,',
'        cal_hd.lunch_hour LH,',
'        cal_hd.less_lunch_hour LLH,',
'        cal_hd.normal_time',
'from HR_ATT_EMPCALENDAR_HD cal_hd JOIN HR_RCM_EMPLOYEE EMP ON CAL_HD.EMP_ID=EMP.ID',
'where trunc(TO_DATE(cal_hd.WORK_DATE)) BETWEEN trunc(TO_DATE(:P138_WORK_START)) AND trunc(TO_DATE(:P138_WORK_END))',
'and cal_hd.emp_id = nvl(:P138_EMPLOYEE, cal_hd.emp_id)',
'and EMP.orgdtl_id = nvl(:P138_DEPARTMENT,EMP.orgdtl_id)',
'-- AND (EMP.DATE_SEPARATED IS NULL OR EMP.DATE_SEPARATED <= current_date)',
'and exists(select 1',
'            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID)',
'            where  t.id= EMP.ORGDTL_ID',
'            and EMP.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER,:APP_PAGE_ID), 0, EMP.ORGDTL_ID, w.org_structure_id))',
'',
'and cal_hd.org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P138_WORK_START,P138_WORK_END,P138_EMPLOYEE,P138_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Master Records'
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
 p_id=>wwv_flow_imp.id(1172427597499576850)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No records selected!'
,p_max_rows_per_page=>'50'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'JAY.KHAN'
,p_internal_uid=>528810914112394710
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199372373633017803)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199371900253017803)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718286290666085840)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199371573157017802)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'SH'
,p_column_html_expression=>'<b>#ASSIGN_SHIFT_HOURS#</b>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199371127983017802)
,p_db_column_name=>'EMPID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199370761336017801)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Work Date'
,p_column_link=>'javascript:setItems(#ID#,"#WORK_DATE#",#EMPID#);'
,p_column_linktext=>'#WORK_DATE#'
,p_column_link_attr=>'onclick=irRowhighLight(this);'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199370355096017800)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Max TimeOut'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199369899877017800)
,p_db_column_name=>'TIME_IN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Min TimeIn'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199369580931017799)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199369159122017799)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199368790372017798)
,p_db_column_name=>'ASSIGNED_SHIFT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3728180054990563488)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199368344445017798)
,p_db_column_name=>'OVER_TIME'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'COT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199367992852017797)
,p_db_column_name=>'TOTAL_TIME_LOST'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'CABS'
,p_column_html_expression=>'<b style = "color:red;">#TOTAL_TIME_LOST#</b>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199367509005017797)
,p_db_column_name=>'APPROVED_OVERTIME'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'AOT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199372724367017804)
,p_db_column_name=>'APPROVED_ABS'
,p_display_order=>250
,p_column_identifier=>'AA'
,p_column_label=>'AABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199367150688017796)
,p_db_column_name=>'HOURS_WORKED'
,p_display_order=>260
,p_column_identifier=>'AC'
,p_column_label=>'CHW'
,p_column_html_expression=>'<b>#HOURS_WORKED#</b>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199366702088017796)
,p_db_column_name=>'LATENESS'
,p_display_order=>270
,p_column_identifier=>'AD'
,p_column_label=>'CLT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199373094297017804)
,p_db_column_name=>'LH'
,p_display_order=>280
,p_column_identifier=>'AE'
,p_column_label=>'LH'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199364706695017794)
,p_db_column_name=>'ALT'
,p_display_order=>310
,p_column_identifier=>'AI'
,p_column_label=>'Alt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199365156058017794)
,p_db_column_name=>'HOLIDAY_CODE'
,p_display_order=>320
,p_column_identifier=>'AJ'
,p_column_label=>'HD'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199365560012017794)
,p_db_column_name=>'DAY_WEEK'
,p_display_order=>330
,p_column_identifier=>'AK'
,p_column_label=>'Day '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199365909085017795)
,p_db_column_name=>'LLH'
,p_display_order=>340
,p_column_identifier=>'AL'
,p_column_label=>'LLH'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3578547790603500285)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199366295087017796)
,p_db_column_name=>'OLH'
,p_display_order=>350
,p_column_identifier=>'AM'
,p_column_label=>'OLH'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3578547790603500285)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199364348028017793)
,p_db_column_name=>'NORMAL_TIME'
,p_display_order=>360
,p_column_identifier=>'AN'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199363969265017793)
,p_db_column_name=>'STATUS'
,p_display_order=>370
,p_column_identifier=>'AO'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1171786297107099446)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1958589'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:DAY_WEEK:EMP_ID:ASSIGNED_SHIFT:ASSIGN_SHIFT_HOURS:TIME_IN:TIME_OUT:HOURS_WORKED:NORMAL_TIME:TOTAL_TIME_LOST:APPROVED_ABS:OVER_TIME:APPROVED_OVERTIME:HOLIDAY_CODE:LH:LLH:OLH::STATUS'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1221407624618307581)
,p_plug_name=>'Details for Master '
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Form--slimPadding'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1135277328579007468)
,p_plug_name=>'Authorize Lunch Hour'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, work_date, emp_id, last_changed_by, last_changed_date, entered_by, entry_date,',
'assigned_shift, override_llh',
'from hr_att_empcalendar_hd',
'  where emp_id = :P138_MASTER_EMP_ID',
'and work_date = :P138_MASTER_WORK_DATE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID,P138_MASTER_WORK_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Authorize Lunch Hour'
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
 p_id=>wwv_flow_imp.id(1135277510445007470)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1135277612437007471)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1135277756499007472)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  trim( initcap(a.Surname || '', '' || nvl(a.First_Name, '''')) ||'' ''||nvl(a.Middle_Name,'''') ',
'                ||''(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(b.employment_class_id, ''TABLE_VALUE'' )||'')'' ||'' Emp No.:''|| EMP_COMPANY_NO)  ename , b.id  ',
'               from HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id = b.ind_id',
'where b.id=:P138_MASTER_EMP_ID',
'',
'',
'-- select distinct trim(EMPLOYEE ||'' Emp No.:''|| EMP_COMPANY_NO)  ename ,  id  ',
'-- from table(pkg_global_fnts.Get_availemployee(to_date(:WORK_DATE)))',
'-- where id=:P138_MASTER_EMP_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P138_MASTER_EMP_ID'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1135277889835007474)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
 p_id=>wwv_flow_imp.id(1135278048759007475)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(1135278119146007476)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(1135278281736007477)
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
 p_id=>wwv_flow_imp.id(1135278370168007478)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1135278469132007479)
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
 p_id=>wwv_flow_imp.id(1146100015080050343)
,p_name=>'ASSIGNED_SHIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_SHIFT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Shift'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3728180054990563488)
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
 p_id=>wwv_flow_imp.id(1146102430792050367)
,p_name=>'OVERRIDE_LLH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OVERRIDE_LLH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Override LLH'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854181035973426433)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1135277438207007469)
,p_internal_uid=>491660754819825329
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(1145903017988886747)
,p_interactive_grid_id=>wwv_flow_imp.id(1135277438207007469)
,p_static_id=>'309896'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1145903273717886748)
,p_report_id=>wwv_flow_imp.id(1145903017988886747)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145903693695886752)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1135277510445007470)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145904653075886754)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1135277612437007471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145905533289886757)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1135277756499007472)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145907264687886761)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1135277889835007474)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145908100110886763)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1135278048759007475)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145909041843886765)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1135278119146007476)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145909980154886767)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1135278281736007477)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1145912051182892139)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1135278370168007478)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1146117331737172220)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1146100015080050343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1146570154204380438)
,p_view_id=>wwv_flow_imp.id(1145903273717886748)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1146102430792050367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1144528960237332562)
,p_plug_name=>'Time History'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select A.WORK_DATE, A.TIME_IN, A.TIME_OUT, A.TIME_SOURCE, A.HOURS_WORKED,',
'            A.LAST_CHANGED_BY, A.LAST_CHANGED_DATE, A.CREATED_BY,A.DATE_CREATED ',
',A.entered_by_aud, A.entry_date_aud, A.audit_operation ',
'from HR_ATT_TIMECLOCK_DTL_AUD A ',
'    where A.emp_id = :P138_MASTER_EMP_ID',
'    and A.work_date = :P138_MASTER_WORK_DATE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID,P138_MASTER_WORK_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Time History'
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
 p_id=>wwv_flow_imp.id(1144529120035332564)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(1144529275399332565)
,p_name=>'TIME_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_IN'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Time In'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(1144529345171332566)
,p_name=>'TIME_OUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_OUT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Time Out'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(1144529384470332567)
,p_name=>'TIME_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Time Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(1144529482832332568)
,p_name=>'HOURS_WORKED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURS_WORKED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Hours Worked'
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
 p_id=>wwv_flow_imp.id(1144529586154332569)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(1144529685230332570)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(1144529870333332571)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>75
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
 p_id=>wwv_flow_imp.id(1144529917033332572)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Created'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1147827638191953760)
,p_name=>'ENTERED_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>75
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
 p_id=>wwv_flow_imp.id(1147827737975953761)
,p_name=>'ENTRY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date Aud'
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
 p_id=>wwv_flow_imp.id(1147827794722953762)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1144529077977332563)
,p_internal_uid=>500912394590150423
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
 p_id=>wwv_flow_imp.id(1148472812872861485)
,p_interactive_grid_id=>wwv_flow_imp.id(1144529077977332563)
,p_static_id=>'335594'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1148473000370861486)
,p_report_id=>wwv_flow_imp.id(1148472812872861485)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148473504684861487)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1144529120035332564)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.5156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148474461040861490)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1144529275399332565)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161.266
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148475322009861492)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1144529345171332566)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>148.5156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148476208924861494)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1144529384470332567)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148477150857861496)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1144529482832332568)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148478037280861498)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1144529586154332569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148478942004861500)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1144529685230332570)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154.14100000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148479846557861502)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1144529870333332571)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1148480704748861504)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1144529917033332572)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145.141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1151794450922386297)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1147827638191953760)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>220.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1151795310901386300)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1147827737975953761)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.137
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1151796221631386302)
,p_view_id=>wwv_flow_imp.id(1148473000370861486)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1147827794722953762)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1164245745922846360)
,p_plug_name=>'Absence Summary By Type'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name department,',
'    p.position_name as designation,',
'    e.payment_type,',
'    ',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc,  ',
'    ',
'    TA.ABS_CODE,',
'    ta.absence_hours,',
'    ta.abs_code ||''-''||to_char(absence_hours) code_qty',
'    ',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (select a.*,pkg_global_fnts.get_lookup_col(a.leave_type, ''TABLE_VALUE'') abs_code from hr_att_timesheetabsence a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where ch.work_date between :P138_WORK_START and :P138_WORK_END  ',
'    and ch.emp_id = :P138_MASTER_EMP_ID',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P138_WORK_START,P138_WORK_END,P138_MASTER_EMP_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Attendance Summary'
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
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1164245612503846359)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RSPRINGER'
,p_internal_uid=>520628929116664219
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199428699781017877)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199428367691017877)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199427948934017876)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199427537745017876)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199427133914017875)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199426766793017875)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199426359845017875)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199425900601017874)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199425497061017874)
,p_db_column_name=>'ABS_CODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Abs Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199429565637017878)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>110
,p_column_identifier=>'AP'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199429098401017877)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>120
,p_column_identifier=>'AQ'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199425154387017873)
,p_db_column_name=>'CODE_QTY'
,p_display_order=>130
,p_column_identifier=>'AR'
,p_column_label=>'Code Qty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1164126768617808560)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1959153'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:EMP_NAME:WKLOCATION_ID:DEPARTMENT:DESIGNATION:PAYMENT_TYPE:ABS_CODE::DAY_NUMBERC:ABSENCE_HOURS:CODE_QTY'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1151233856062341899)
,p_report_id=>wwv_flow_imp.id(1164126768617808560)
,p_pivot_columns=>'ABS_CODE'
,p_row_columns=>'EMP_NAME'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(674246382267758921)
,p_pivot_id=>wwv_flow_imp.id(1151233856062341899)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'ABSENCE_HOURS'
,p_db_column_name=>'PFC1'
,p_column_label=>'Hrs'
,p_format_mask=>'9990.00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1164760110841448893)
,p_plug_name=>' Employee Income Summary'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name department,',
'    p.position_name as designation,',
'    e.payment_type,',
'',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc,  ',
'  ',
'    ',
'    TA.income_CODE,',
'    ta.quantity,',
'    ta.income_code ||''-''||to_char(quantity) code_qty',
'    ',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (   select a.* from hr_att_timesheetincome a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where ch.work_date between :P138_WORK_START and :P138_WORK_END  ',
'    and ch.emp_id = :P138_MASTER_EMP_ID',
'    ',
'    --AND e.orgdtl_id = 2373',
'    /*    and ch.emp_id = (case when  $P{EMP_ID}  = 9999 then ch.emp_id else  $P{EMP_ID}    end)',
'        and e.orgdtl_id = (case when  $P{DEPARTMENT_ID}  = 9999 then e.orgdtl_id else  $P{DEPARTMENT_ID}  end)',
'        and e.wklocation_id = (case when  $P{WKLOCATION_ID}  = 9999 then ch.work_location_id else  $P{WKLOCATION_ID}  end)',
'        and e.payment_type =  $P{PAYMENT_TYPE}',
'        and ch.org_id =  $P{IN_ORG_ID}',
'        */',
'',
' ',
'/*',
')',
'PIVOT',
'(',
'sum(absence_hours) ',
'for day_numberc in (''D1'' D1,',
'                    ''D2'' D2,''D3'' D3,''D4'' D4,''D5'' D5,''D6'' D6,''D7'' D7,''D8'' D8,''D9'' D9,''D10'' D10,',
'                    ''D11'' D11,''D12'' D12, ''D13'' D13,''D14'' D14,''D15'' D15,''D16'' D16,''D17'' D17,''D18'' D18,''D19'' D19,''D20'' D20,',
'                    ''D21'' D21 ,''D22'' D22,''D23'',''D24'' D24,''D25'' D25,''D26'' D26,''D27'' D27,''D28'' D28,''D29'' D29,''D30'' D30,''D31'' D31',
'                   )',
'',
' ',
'',
')',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' Employee Income Summary'
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
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1164194036490815368)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RSPRINGER'
,p_internal_uid=>520577353103633228
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199434919054017884)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199434513855017883)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199434109539017883)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199433740372017883)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199433340092017882)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199432902029017882)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199432500879017882)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199432172983017881)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199435724897017885)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>90
,p_column_identifier=>'AO'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199435319817017884)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>100
,p_column_identifier=>'AP'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199431357208017880)
,p_db_column_name=>'QUANTITY'
,p_display_order=>110
,p_column_identifier=>'AR'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199431701866017881)
,p_db_column_name=>'CODE_QTY'
,p_display_order=>120
,p_column_identifier=>'AS'
,p_column_label=>'Code Qty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1164126151377808553)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1959215'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:EMP_NAME:WKLOCATION_ID:DEPARTMENT:DESIGNATION:PAYMENT_TYPE::DAY_NUMBERC:INCOME_CODE:QUANTITY:CODE_QTY'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1151232790831339834)
,p_report_id=>wwv_flow_imp.id(1164126151377808553)
,p_pivot_columns=>'DAY_NUMBERC:INCOME_CODE'
,p_row_columns=>'EMP_NAME'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(674241376210758915)
,p_pivot_id=>wwv_flow_imp.id(1151232790831339834)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'QUANTITY'
,p_db_column_name=>'PFC1'
,p_column_label=>'Hrs'
,p_format_mask=>'9990.00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1165651028388814655)
,p_plug_name=>'Absence Summary By Day'
,p_region_name=>'abs_sum_day'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name department,',
'    p.position_name as designation,',
'    e.payment_type,',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc, ',
'    TA.ABS_CODE,',
'    ta.absence_hours,',
'    ta.abs_code ||''-''||to_char(absence_hours) code_qty',
'',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (select a.*,pkg_global_fnts.get_lookup_col(a.leave_type, ''TABLE_VALUE'') abs_code from hr_att_timesheetabsence a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where ch.work_date between :P138_WORK_START and :P138_WORK_END  ',
'    and ch.emp_id = :P138_MASTER_EMP_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P138_WORK_START,P138_WORK_END,P138_MASTER_EMP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Absence Summary By Day'
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
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1164641979533842951)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RSPRINGER'
,p_internal_uid=>521025296146660811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199378144858017810)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199377749330017809)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718286290666085840)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199377300805017809)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199376937082017809)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199376549182017808)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199376154249017808)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199375739612017807)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199375313009017807)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199374973279017807)
,p_db_column_name=>'ABS_CODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Abs Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199378898738017811)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>100
,p_column_identifier=>'BW'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199378523032017810)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>110
,p_column_identifier=>'BX'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199374563625017806)
,p_db_column_name=>'CODE_QTY'
,p_display_order=>120
,p_column_identifier=>'BY'
,p_column_label=>'Code Qty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1164198065630844577)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1958647'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:EMP_NAME:WKLOCATION_ID:DEPARTMENT:DESIGNATION:PAYMENT_TYPE:ABS_CODE::DAY_NUMBERC:ABSENCE_HOURS:CODE_QTY'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'ABSENCE_HOURS'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1151234866866344634)
,p_report_id=>wwv_flow_imp.id(1164198065630844577)
,p_pivot_columns=>'DAY_NUMBERC'
,p_row_columns=>'EMP_NAME'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(674236012647758909)
,p_pivot_id=>wwv_flow_imp.id(1151234866866344634)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'ABSENCE_HOURS'
,p_db_column_name=>'PFC1'
,p_column_label=>'Hrs'
,p_format_mask=>'9990.00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1165905772265661236)
,p_plug_name=>'Absence Details'
,p_region_name=>'absensedetails'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,ABSENCE_HOURS,TRANSACTION_TYPE_ID,STATUS,',
'       EMP_ID,',
'       LEAVE_MODE,',
'       LEAVE_DOLLAR_VALUE,',
'       ORG_ID,',
'       LEAVE_TYPE,',
'       PAY_STATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       LEAVE_HIST_ID,',
'       affect_salary',
'  from HR_ATT_TIMESHEETABSENCE ',
'  where emp_id = :P138_MASTER_EMP_ID',
'and work_date = :P138_MASTER_WORK_DATE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID,P138_MASTER_WORK_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Absence Details'
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
 p_id=>wwv_flow_imp.id(1164284246799149212)
,p_name=>'ABSENCE_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABSENCE_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Absence Hours'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_stretch=>'A'
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
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1165905984092661238)
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
 p_id=>wwv_flow_imp.id(1165906121519661239)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1165906187741661240)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  trim( initcap(a.Surname ',
'        || '', '' || nvl(a.First_Name, '''')) ',
'        ||'' ''||nvl(a.Middle_Name,'''') || '' (''|| EMP_COMPANY_NO||'')'')  ename ,',
'        -- ||''(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(b.employment_class_id, ''TABLE_VALUE'' )',
'        -- ||'')'' ',
'        -- ||'' Emp No.:''',
'         ',
'        ',
'        b.id  ',
'               from HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id = b.ind_id',
'where b.id=:P138_MASTER_EMP_ID',
'',
'',
'-- select distinct trim(EMPLOYEE ||'' Emp No.:''|| EMP_COMPANY_NO)  ename ,  id  ',
'-- from table(pkg_global_fnts.Get_availemployee(to_date(:WORK_DATE)))',
'-- where id=:P138_MASTER_EMP_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P138_MASTER_EMP_ID'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1165906856245661247)
,p_name=>'LEAVE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(1165906972085661248)
,p_name=>'LEAVE_DOLLAR_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_DOLLAR_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'$ Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1165907212461661250)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(1168274144044406444)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'-- and upper(Wfl_Status_Description) not like ''VER%''   ',
'and  upper(Wfl_Status_Description) not like ''%SEND%''  ',
'and  upper(Wfl_Status_Description) not like ''%FORW%''    ',
'and  upper(Wfl_Status_Description) not like ''%REQ%'' ',
'and  upper(Wfl_Status_Description) not like ''%TAK%''   ',
'and  upper(Wfl_Status_Description) not like ''%UNVER%''  ',
'and  upper(Wfl_Status_Description) not like ''%GRAN%''  ',
'and  upper(Wfl_Status_Description) not like ''%APPLI%''  ',
'And Webpage_Id=94',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'--AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'--AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE_ID'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1168274171242406445)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3807173731454742025)
,p_lov_display_extra=>true
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
,p_default_type=>'STATIC'
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1168494344949568401)
,p_name=>'LEAVE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854356329399666755)
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
 p_id=>wwv_flow_imp.id(1168494449984568402)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:NO;N,YES;Y'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1168494597287568404)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
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
 p_id=>wwv_flow_imp.id(1168494946387568407)
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
 p_id=>wwv_flow_imp.id(1168495022675568408)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(1168495097378568409)
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
 p_id=>wwv_flow_imp.id(1168495175346568410)
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
 p_id=>wwv_flow_imp.id(1168496073510568419)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1168496251862568420)
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
 p_id=>wwv_flow_imp.id(1168496374265568422)
,p_name=>'LEAVE_HIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_HIST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(1229714108702348615)
,p_name=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECT_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Affect Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:NONE;NONE,PAYMENT;PAYMENT,DEDUCTION;DEDUCTION'
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
,p_default_type=>'STATIC'
,p_default_expression=>'NONE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1165905890112661237)
,p_internal_uid=>522289206725479097
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3807158523119545769)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(o) {',
'    // var toolbar = apex.jQuery.apex.interactiveGrid.copyDefaultToolbar();',
'    // toolbar.toolbarRemove("edit");    // remove edit button',
'    // o.toolbarData = toolbar;',
'',
'    // pick your poison:',
'    // 1) this gets rid of single row view but prior to 18.2 causes error when changing reports',
'    // now in 18.2 this works so it is a reasonable way to keep the user from leaving edit mode',
'    if (!o.views) { o.views = {}; }',
'    if (!o.views.grid) { o.views.grid = {features:{}}; }',
'    o.views.grid.features.singleRowView = true; //if anything change to false',
'',
'    // 2) this puts single row view in always edit mode but causes errors when changing reports',
'    //o.defaultSingleRowOptions = {',
'    //    alwaysEdit: true',
'    //};',
'    return o;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1168499948364570261)
,p_interactive_grid_id=>wwv_flow_imp.id(1165905890112661237)
,p_static_id=>'698710'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1168500103413570261)
,p_report_id=>wwv_flow_imp.id(1168499948364570261)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1167948945014242578)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1168274144044406444)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1167950270525242580)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1168274171242406445)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168295194586866907)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1168496374265568422)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168500651121570264)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1165905984092661238)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168501527793570266)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1165906121519661239)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168502416220570267)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1165906187741661240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>222
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168508677760570278)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1165906856245661247)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168509571089570280)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1165906972085661248)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168511383523570285)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1165907212461661250)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168512297248570286)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1168494344949568401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168513186754570288)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1168494449984568402)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168514970239570292)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1168494597287568404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168517744594570296)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1168494946387568407)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168518643154570298)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1168495022675568408)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168519533188570299)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1168495097378568409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168520380262570301)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1168495175346568410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1168549422432599916)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1168496073510568419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1170026421802362194)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1164284246799149212)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1223263207237702120)
,p_view_id=>wwv_flow_imp.id(1168500103413570261)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1229714108702348615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1207166549215648302)
,p_plug_name=>'<strong>Time Records</strong> '
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple:t-TabsRegion-mod--large'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1209181148117941457)
,p_plug_name=>'Income Details'
,p_region_name=>'emp_time_incomes'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       EMPENT_ID,',
'       INCOME_CODE,',
'       RATE,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       PAYSTATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       REASON_INCOME,',
'       END_TIME,',
'       START_TIME,',
'       WEEK_DAY',
'  from HR_ATT_TIMESHEETINCOME',
' where org_id = :APP_ORG_ID',
'and emp_id = :P138_MASTER_EMP_ID',
'and work_date = :P138_MASTER_WORK_DATE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID,P138_MASTER_WORK_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Income Details'
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
 p_id=>wwv_flow_imp.id(990260447667199870)
,p_name=>'WEEK_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Week Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>490
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209062623981450580)
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
 p_id=>wwv_flow_imp.id(1209062706230450581)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209062877593450583)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'and upper(Wfl_Status_Description) not like DECODE(:PID, NULL,''%VERI%'',''test'')   ',
'And Webpage_Id=162    ',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE_ID'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209063032972450584)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3807173731454742025)
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
,p_default_type=>'STATIC'
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209063077001450585)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
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
 p_id=>wwv_flow_imp.id(1209063249759450586)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(1209063279168450587)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(1209063447588450588)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(1209063602398450590)
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
 p_id=>wwv_flow_imp.id(1209063719562450591)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209063862528450592)
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
 p_id=>wwv_flow_imp.id(1209063926037450593)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209179792751941444)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
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
 p_id=>wwv_flow_imp.id(1209179889430941445)
,p_name=>'PAYSTATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYSTATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844647265446735930)
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180111252941447)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180257506941448)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'QTY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180367184941449)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180525078941451)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ADD_INCOME_ID',
'from VW_EMPENTITLE a join pa_pcf_incomecode b on a.income_code=b.id',
'where a.emp_id=:EMP_ID and upper(a.admin_status) = ''MAN''',
'and upper(b.dept_to_manage) = ''EXT_DEPT''',
'and (date_effective_end is null or date_effective_end >= current_date)',
'and b.org_id = :APP_ORG_ID',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Entitlement--'
,p_lov_cascade_parent_items=>'EMP_ID'
,p_ajax_items_to_submit=>'EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180640789941452)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
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
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.unit_name, b.orgdtl_id',
'from hr_hcf_orgstructuredtl a join hr_rcm_employee b on a.id=b.orgdtl_id',
'Where Trunc(a.Start_Date) <= Trunc(current_date)',
'and (trunc(a.end_date) is null or a.end_date >= trunc(current_date))',
'and org_id = :APP_ORG_ID',
'and b.id = :EMP_ID',
'order by 1'))
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180673781941453)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  trim( initcap(a.Surname ',
'        || '', '' || nvl(a.First_Name, '''')) ',
'        ||'' ''||nvl(a.Middle_Name,'''') ||'' ('' ||EMP_COMPANY_NO||'')'')  ename , ',
'        -- ||''(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(b.employment_class_id, ''TABLE_VALUE'' )',
'        -- ||'')'' ',
'        -- ||'' Emp No.:''',
'        ',
'        b.id  ',
'               from HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id = b.ind_id',
'where b.id=:P138_MASTER_EMP_ID',
'',
'-- SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'--         FROM VW_AVAILEMPLOYEE x',
'--         where  exists(select 1        ',
'--              from vw_useraccess_finegrain k',
'--              where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'--              and user_name=:APP_USER) ',
'--              and id = :P138_MASTER_EMP_ID',
'--         order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P138_MASTER_EMP_ID'
,p_ajax_items_to_submit=>'P138_MASTER_EMP_ID'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180822075941454)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1209180934139941455)
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
 p_id=>wwv_flow_imp.id(1229714945918348623)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>480
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
 p_id=>wwv_flow_imp.id(1229715007658348624)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>470
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
 p_id=>wwv_flow_imp.id(1235709329099665648)
,p_name=>'REASON_INCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_INCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reason Income'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>460
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from hr_hcf_lookup',
'where upper(table_name)=''TBLREASON''',
'and org_id = :APP_ORG_ID',
'AND pkg_global_fnts.get_lookup_col(LOOKUP_ID, ''TABLE_VALUE'') = ''RTIN''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Reason--'
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
 p_id=>wwv_flow_imp.id(1240458750152487818)
,p_name=>'INCOME_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>120
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
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1209181026406941456)
,p_internal_uid=>565564343019759316
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
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
 p_id=>wwv_flow_imp.id(1209058283078443587)
,p_interactive_grid_id=>wwv_flow_imp.id(1209181026406941456)
,p_static_id=>'306825'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1209058099376443587)
,p_report_id=>wwv_flow_imp.id(1209058283078443587)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(991116768448734666)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(990260447667199870)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209031456176433159)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1209062706230450581)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209037879370443554)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1209062877593450583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209038855869443555)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1209063032972450584)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209039765434443556)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1209063077001450585)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209040591211443558)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1209063249759450586)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209041531025443559)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1209063279168450587)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209042460189443561)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1209063447588450588)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209044184364443563)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1209063602398450590)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209045030304443565)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1209063719562450591)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209045941698443566)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1209063862528450592)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209046861364443568)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1209063926037450593)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>225
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209047675672443569)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1209179792751941444)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209048598653443570)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1209179889430941445)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209050426517443573)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1209180111252941447)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209051293706443575)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1209180257506941448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209052176925443576)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1209180367184941449)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209054023743443579)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1209180525078941451)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209054883471443581)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1209180640789941452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>275
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209055827293443582)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1209180673781941453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209056683125443585)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1209180822075941454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1209057604583443586)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1209180934139941455)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1224906805208328311)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1229714945918348623)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>183
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1224907710930328314)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1229715007658348624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1235686730829663355)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1235709329099665648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1235704724896663396)
,p_view_id=>wwv_flow_imp.id(1209058099376443587)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1240458750152487818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1221407325898307578)
,p_plug_name=>'<strong>Task Work</strong>'
,p_parent_plug_id=>wwv_flow_imp.id(1221407624618307581)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    quantity,',
'    uom,',
'    workactivity_id,',
'    income_code_id,',
'    start_task_time,',
'    end_task_time,',
'    location_id,',
'    tentative_rate,',
'    taxable,',
'    task_amount,',
'    total_task_amount,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'    migrate_pk,',
'    task_parent_id,',
'    emp_id',
'FROM hr_att_taskwork;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<strong>Task Work</strong>'
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
 p_id=>wwv_flow_imp.id(1221314479050895289)
,p_name=>'TASK_PARENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_PARENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(1221314616297895290)
,p_name=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_PK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Migrate Pk'
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
 p_id=>wwv_flow_imp.id(1221314709421895291)
,p_name=>'TOTAL_TASK_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_TASK_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Task Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221314821029895292)
,p_name=>'TASK_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Task Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(1221314899180895293)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Taxable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(1221403925063307544)
,p_name=>'TENTATIVE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENTATIVE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Tentative Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(1221404045052307545)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(1221404127100307546)
,p_name=>'END_TASK_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TASK_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Task Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(1221404215082307547)
,p_name=>'START_TASK_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TASK_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Task Time'
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
 p_id=>wwv_flow_imp.id(1221404366172307548)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income Code Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(1221404382862307549)
,p_name=>'WORKACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :ID IS NUll then',
'return ',
'        ''SELECT  DESCRIPTION,ID',
'        FROM PA_PCF_WORKACTIVITY',
'        where  org_id =:APP_ORG_ID',
'        and DATE_EFFECTIVE <= trunc(current_date)',
'        and (END_DATE >=  trunc(current_date) or END_DATE is null)',
'        order by 1'';',
'',
'else',
' return ',
'        ''SELECT  DESCRIPTION,ID',
'        FROM PA_PCF_WORKACTIVITY',
'        where  org_id =:APP_ORG_ID',
'        order by 1'';',
'end if;   '))
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
 p_id=>wwv_flow_imp.id(1221404481608307550)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Uom'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854350171247666740)
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
 p_id=>wwv_flow_imp.id(1221404719131307552)
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
 p_id=>wwv_flow_imp.id(1221404825587307553)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221405573421307561)
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
 p_id=>wwv_flow_imp.id(1221405692942307562)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221405803310307563)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(1221405939194307564)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221406469361307569)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221406957131307574)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P138_MASTER_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1221407166669307576)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1221407223710307577)
,p_internal_uid=>577790540323125437
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
 p_id=>wwv_flow_imp.id(1221309361291893787)
,p_interactive_grid_id=>wwv_flow_imp.id(1221407223710307577)
,p_static_id=>'184315'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1221309131563893787)
,p_report_id=>wwv_flow_imp.id(1221309361291893787)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221291181452893757)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1221314479050895289)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221292147856893758)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1221314616297895290)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221293063399893760)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1221314709421895291)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221293929169893761)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1221314821029895292)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221294859959893763)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1221314899180895293)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221295664718893764)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1221403925063307544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221296497738893766)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1221404045052307545)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>261
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221297448393893767)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1221404127100307546)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221298351444893768)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1221404215082307547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221299204706893770)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1221404366172307548)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221300129898893771)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1221404382862307549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>237
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221300995171893773)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1221404481608307550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221302309316893776)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1221404825587307553)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221303220330893777)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1221405573421307561)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221304097822893779)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1221405692942307562)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221305048437893780)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1221405803310307563)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221305931426893782)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1221405939194307564)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221306821762893783)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1221406469361307569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221307707456893785)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1221406957131307574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1221308633870893786)
,p_view_id=>wwv_flow_imp.id(1221309131563893787)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1221407166669307576)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1275159578194414016)
,p_plug_name=>'Filter'
,p_region_name=>'FILTER'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>1000
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674276178384758950)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'EXECUTE_PROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute Process'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674276535932758950)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'BACK_TO_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Time Detail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.::P1371_PERIOD,P1371_WORK_END,P1371_WORK_START:&P138_EARNINGS_PERIOD.,&P138_WORK_END.,&P138_WORK_START.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674284518158758956)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1035215042940834707)
,p_button_name=>'FORWARD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674259596264758933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_button_name=>'REPROCESS_MASTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reprocess Master'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674276974569758951)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'POPULATE_TIME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate Time Income'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_comment=>'DO NOT DELETE THIS BUTTON!!!'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674260002452758933)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_button_name=>'IMPORT_ABSENCE_FROM_MASTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Timesheet Absences'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-arrow-circle-o-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674277360993758951)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'PURGE_TIMEINCOME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Time Income'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_comment=>'DO NOT DELETE THIS BUTTON!!!'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(680729359623481153)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_button_name=>'IMPORT_OVERTIME_FROM_MASTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Timesheet Overtime'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-arrow-circle-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674260429304758933)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Clock In/Out'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-clock-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674260880716758934)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_button_name=>'REFRESH_MASTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Refresh Master'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674277755131758951)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'PRINTABLE_MASTER_DETAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Printable Master Detail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3807158850583545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674278158916758951)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'PRINTABLE_MASTER_SUMMARY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Printable Master Summary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674278483845758952)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'PRINTABLE_MASTER_DETAILS_BY_DAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Printable Master Details By Day'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674278945095758952)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(677336426338818341)
,p_name=>'P138_REPORT_URL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(974234844822787219)
,p_name=>'P138_OVERLAP_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1035215042940834707)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(986782261414337883)
,p_name=>'P138_FORWARD_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1035215042940834707)
,p_prompt=>'Forward Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Send for Checking;KEYED'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1035298803495834794)
,p_name=>'P138_L_URL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1035299685694834803)
,p_name=>'P138_MISMATCH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1035303985915834795)
,p_name=>'P138_FORWARD_LIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1035215042940834707)
,p_prompt=>'Forward List'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P138_FORWARD_LIST = ''VERIFIED'' THEN',
'RETURN ''select USER_NAME A, USER_NAME B',
'from tbluser',
'where can_forward = ''''Y''''',
'and can_VERIFY = ''''Y''''',
'and UPPER(user_name) <> upper(:APP_USER)',
'and upper(user_name)  like ''''%@%''''',
'--AND user_name not like ''''%@INNOSYSGY.COM''''',
''';',
'ELSE ',
'RETURN ',
'''select USER_NAME A, USER_NAME B',
'from tbluser',
'where can_forward = ''''Y''''',
'and UPPER(user_name) <> upper(:APP_USER)',
'and upper(user_name)  like ''''%@%''''',
'--AND user_name not like ''''%@INNOSYSGY.COM''''',
''';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P138_FORWARD_STATUS'
,p_ajax_items_to_submit=>'P138_FORWARD_STATUS'
,p_ajax_optimize_refresh=>'N'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199344632050017766)
,p_name=>'P138_ORG_STRUCTURE_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Org Structure 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where ohd.org_id = :APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Org Structure--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(1199344993213017767)
,p_name=>'P138_DEPARTMENT_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Department 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(level)||'': ''||UNIT_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title,',
'       wu.ID',
'from',
'(',
'select',
'od.id',
',od.unit_name',
',od.unit_parent',
',od.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(nvl(p.no_filled,0)) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl',
'      where trunc(start_date) <= trunc(current_date)',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) od',
'left join hr_hcf_position p on od.id = p.orgdtl_id',
'group by od.id, od.unit_name,od.unit_parent,od.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd oh on oh.id = wu.org_structure_id',
'where oh.org_id = :APP_ORG_ID',
'and wu.org_structure_id = :P138_ORG_STRUCTURE',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Department--'
,p_lov_cascade_parent_items=>'P138_ORG_STRUCTURE_2'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(1199345435624017768)
,p_name=>'P138_EMPLOYEE_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Employee 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and org_id=:APP_ORG_ID        ',
'and x.orgdtl_id = nvl(:P138_DEPARTMENT, x.orgdtl_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Show All Employees--'
,p_lov_cascade_parent_items=>'P138_DEPARTMENT_2'
,p_ajax_items_to_submit=>'P138_DEPARTMENT_2'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199345881565017769)
,p_name=>'P138_EARNINGS_PERIOD_2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Earnings Period 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(a.EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(a.compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join hr_rcm_employee c on (a.payment_type = c.payment_type and a.employment_class_id = c.employment_class_id and c.org_id = a.org_id and c.compute_gross = a.compute_gross)',
'where a.org_id = :APP_ORG_ID',
'and c.id = :P138_EMPLOYEE',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Show All Earnings Period--'
,p_lov_cascade_parent_items=>'P138_EMPLOYEE_2'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(1199346247679017769)
,p_name=>'P138_WORK_START_2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Work Start 2'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(1199346650595017770)
,p_name=>'P138_WORK_END_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1275159578194414016)
,p_prompt=>'Work End 2'
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
 p_id=>wwv_flow_imp.id(1199422453010017848)
,p_name=>'P138_VWFLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1202552048623057557)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199433075923017856)
,p_name=>'P138_ORG_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_prompt=>'Org Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where ohd.org_id = :APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199433516390017857)
,p_name=>'P138_EARNINGS_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_date(''01''||TO_CHAR(current_date,''MON'')||''-''||extract(year from current_date)) b',
'FROM DUAL'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , to_date(''01-''||TO_CHAR(END_DATE,''MON'')||''-''||company_year) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'      )',
'ORDER BY C DESC, D DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Period--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(1199433956710017858)
,p_name=>'P138_DEPARTMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(level)||'': ''||UNIT_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title,',
'       wu.ID',
'from',
'(',
'select',
'od.id',
',od.unit_name',
',od.unit_parent',
',od.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(nvl(p.no_filled,0)) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl',
'      where trunc(start_date) <= trunc(current_date)',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) od',
'left join hr_hcf_position p on od.id = p.orgdtl_id',
'group by od.id, od.unit_name,od.unit_parent,od.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd oh on oh.id = wu.org_structure_id',
'where oh.org_id = :APP_ORG_ID',
'and wu.org_structure_id = nvl(:P138_ORG_STRUCTURE,wu.org_structure_id)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER)  and w.WEBpage_id =:APP_PAGE_ID )',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER,:APP_PAGE_ID), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P138_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199434312344017859)
,p_name=>'P138_WORK_START'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select current_date-1',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work Start'
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
 p_id=>wwv_flow_imp.id(1199434691662017859)
,p_name=>'P138_WORK_END'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select current_date-1',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work End'
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
 p_id=>wwv_flow_imp.id(1199435151128017860)
,p_name=>'P138_EMPLOYEE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'join hr_hcf_orgstructuredtl od on od.id = x.orgdtl_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID)',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER, :APP_PAGE_ID), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and org_id=:APP_ORG_ID',
'-- and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')',
'and (x.date_employed <= to_date(:P138_WORK_END, ''DD-MON-YYYY'')',
'and (nvl(x.date_separated,to_date(:P138_WORK_START, ''DD-MON-YYYY'')) >= to_date(:P138_WORK_START, ''DD-MON-YYYY'')))        and x.orgdtl_id = nvl(:P138_DEPARTMENT, x.orgdtl_id)',
'and od.org_structure_id = nvl(:P138_ORG_STRUCTURE,od.org_structure_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P138_DEPARTMENT,P138_ORG_STRUCTURE,P138_WORK_START,P138_WORK_END'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(1199435528000017861)
,p_name=>'P138_DEFAULT_WORK_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>'select to_date(current_date,''DD-MON-YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Def Work Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
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
 p_id=>wwv_flow_imp.id(1199435861820017861)
,p_name=>'P138_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199436346757017861)
,p_name=>'P138_MASTER_WORK_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199436666203017862)
,p_name=>'P138_MASTER_EMP_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199437102096017862)
,p_name=>'P138_DYVP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>'300'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199437559268017863)
,p_name=>'P138_PROCESS_APP_VER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Verify Timesheet;VERIFIED,Unverify Timesheet;UNVERIFIED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_display_when=>'pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199437910738017863)
,p_name=>'P138_URL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199438275128017863)
,p_name=>'P138_REPORT_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1164615553133844031)
,p_item_default=>'6192'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199480589266017929)
,p_name=>'P138_OVERRIDE_LLH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1135277328579007468)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(674208327650758880)
,p_tabular_form_region_id=>wwv_flow_imp.id(1221407325898307578)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_work_date date; V_START_DATE DATE;',
'',
'begin',
'        select WORK_DATE into v_work_date',
'        from HR_ATT_TIMECLOCK_DTL',
'        where id = :TASK_PARENT_ID;',
'',
'   --TRUNC(TO_DATE(to_CHAR(:START_TASK_TIME,''DD-MON-YYYY HH:MIAM''))) ',
'',
'        if trunc(v_work_date) != TRUNC(TO_DATE(:START_TASK_TIME,''DD-MON-YYYY HH:MIAM''))  or',
'        trunc(v_work_date) != TRUNC(TO_DATE(:END_TASK_TIME,''DD-MON-YYYY HH:MIAM''))   then',
'            return ''The dates selected for the task doesn''''t match parent record. Which is ''||v_work_date;',
'        ELSE',
'            RETURN '''';',
'        END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'START_TASK_TIME'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(674220970171758894)
,p_tabular_form_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_validation_name=>'check_incomes_ot'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_counter number;',
'begin',
'if :APEX$ROW_STATUS <> ''D'' then ',
'Select count(1) into  l_counter from hr_att_timesheetincome ',
'where emp_id = :P138_MASTER_EMP_ID',
'and to_date(work_date) = to_date(:P138_MASTER_WORK_DATE)',
'and upper(income_code) = ''OT'';',
'end if;',
'if l_counter > 1',
'then return false;',
'else return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Cannot Enter two of that income for the same day!'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(674286129365758961)
,p_validation_name=>'Check for Keyed Records before Verification'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_cnt number :=0;',
'begin',
'if :P138_PROCESS_APP_VER = ''VERIFIED'' THEN ',
'select count(1) into l_cnt',
'from hr_att_empcalendar_hd a join hr_rcm_employee b on a.emp_id=b.id',
'where pkg_global_fnts.status_descript(a.status) like ''%KEYE%''',
'and to_date(work_date) between to_date(:P138_WORK_START) and to_date(:P138_WORK_END)',
'and a.emp_id = nvl(:P138_EMPLOYEE,a.emp_id)',
'and b.orgdtl_id = nvl(:P138_DEPARTMENT,b.orgdtl_id);',
'ELSE SELECT 0 INTO L_CNT FROM DUAL;',
'END IF;',
'',
'if l_cnt>0',
'then return ''Cannot execute verification because records are still in Keyed status for selected period. Please check Absences or Incomes within Period ''||:P138_WORK_START||'' and ''||:P138_WORK_END||''.'';',
'else return null;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(674276178384758950)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674293228297758969)
,p_name=>'dy_refresh_mastersheet'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_EMPLOYEE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674293706073758969)
,p_event_id=>wwv_flow_imp.id(674293228297758969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674294277235758969)
,p_event_id=>wwv_flow_imp.id(674293228297758969)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_MISMATCH'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count number(5);',
'begin',
'',
'select',
'pkg_timeclock.prcd_get_mismatch_times( ',
' in_orgdtl_id => :P138_DEPARTMENT',
',in_emp_id => :P138_EMPLOYEE',
',in_work_start => :P138_WORK_START',
',in_work_end => :P138_WORK_END',
',in_org_id => :APP_ORG_ID',
') into l_count',
' from dual;',
'',
'if l_count > 0 then ',
'   return l_count;',
'   else return 0;',
'end if;',
'end;'))
,p_attribute_07=>'P138_DEPARTMENT,P138_EMPLOYEE,P138_WORK_START,P138_WORK_END'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674294705394758970)
,p_event_id=>wwv_flow_imp.id(674293228297758969)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_L_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  APEX_PAGE.GET_URL (',
'            p_application => :APP_ID,',
'            p_session => :APP_SESSION,',
'            p_page   => :APP_PAGE_ID,',
'            p_items  => ''P138_ORG_STRUCTURE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END,P138_EMPLOYEE'',',
'            p_values => :P138_ORG_STRUCTURE || '','' ||  ',
'                        :P138_DEPARTMENT || '','' || ',
'                        :P138_WORK_START || '','' || ',
'                        :P138_WORK_END || '','' || ',
'                        :P138_EMPLOYEE   ) A',
'                        from dual'))
,p_attribute_07=>'P138_ORG_STRUCTURE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END,P138_EMPLOYEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674295206123758970)
,p_event_id=>wwv_flow_imp.id(674293228297758969)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_OVERLAP_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_count number(5) := 0;',
'BEGIN',
'',
'select count(1) into l_count',
'from VW_ATT_BADTIMERECS br',
'JOIN HR_RCM_EMPLOYEE E ON E.ID=br.EMP_ID',
'left outer join hr_hcf_orgstructuredtl od on br.orgdtl_id = od.id',
'left outer join hr_hcf_position p on e.position_id = p.id',
'where br.WORK_DATE BETWEEN :P138_WORK_START AND :P138_WORK_END',
'AND br.EMP_ID = NVL(:P138_EMPLOYEE,br.EMP_ID)',
'AND br.ORGDTL_ID = NVL(:P138_DEPARTMENT,br.ORGDTL_ID)',
'AND br.ORG_ID = :APP_ORG_ID',
'and exists',
'(',
'    select 1',
'    from HR_HCF_ORGSTRUCTUREDTL T ',
'    left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'    where  t.id= br.ORGDTL_ID',
'    and br.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, br.ORGDTL_ID, w.org_structure_id)         ',
')',
'AND upper(br.REMARKS) = ''TIME RECORD OVERLAPS WITH ANOTHER TIME RECORD'';',
'',
'',
'return l_count;',
'',
'end;'))
,p_attribute_07=>'P138_WORK_START,P138_WORK_END,P138_EMPLOYEE,P138_DEPARTMENT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674295662388758970)
,p_name=>'dy_get_mastergrid_data'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674296181830758970)
,p_event_id=>wwv_flow_imp.id(674295662388758970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_MASTER_WORK_DATE,P138_MASTER_EMP_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,  linkID ="",WorkDate = "",  EmpId = "", ',
'    model = this.data.model;  ',
'  ',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {  ',
'   ',
'    WorkDate = model.getValue( this.data.selectedRecords[i], "WORK_DATE"); ',
' EmpId = model.getValue( this.data.selectedRecords[i], "EMPID");  ',
'',
'}  ',
'  ',
'',
'$s("P138_MASTER_WORK_DATE", WorkDate); ',
'$s("P138_MASTER_EMP_ID", EmpId); ',
''))
,p_da_action_comment=>'loops through interactive grid row to get current information that is highlighted for columns specified. '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674296648708758971)
,p_event_id=>wwv_flow_imp.id(674295662388758970)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551849032057555)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674297012262758971)
,p_name=>'dy_set_period_filter'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_EARNINGS_PERIOD'
,p_condition_element=>'P138_EARNINGS_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674297525983758971)
,p_event_id=>wwv_flow_imp.id(674297012262758971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_WORK_START,P138_WORK_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_DAY(ADD_MONTHS(:P138_EARNINGS_PERIOD,-1))+1, LAST_DAY(:P138_EARNINGS_PERIOD)',
'FROM DUAL;'))
,p_attribute_07=>'P138_EARNINGS_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674297920524758971)
,p_name=>'dy_calculate_hoursworked'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1202551849032057555)
,p_triggering_element=>'TIME_OUT,TIME_IN'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'TIME_IN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674298386899758972)
,p_event_id=>wwv_flow_imp.id(674297920524758971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'HOURS_WORKED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   (TO_DATE(:TIME_OUT,''HH:MIPM'') -  TO_DATE(:TIME_IN,''HH:MIPM'') )* 24',
'FROM DUAL'))
,p_attribute_07=>'TIME_IN,TIME_OUT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674299720864758972)
,p_name=>'dy_compute_workactivity_quantity'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1221407325898307578)
,p_triggering_element=>'QUANTITY'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'QUANTITY'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674300267032758973)
,p_event_id=>wwv_flow_imp.id(674299720864758972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_TASK_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :QUANTITY * CASE WHEN :TENTATIVE_RATE= 0 THEN :TASK_AMOUNT ELSE :TENTATIVE_RATE END',
'FROM DUAL'))
,p_attribute_07=>'QUANTITY,TENTATIVE_RATE,TASK_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674300672700758973)
,p_name=>'dy_refresh_grids'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_MASTER_WORK_DATE'
,p_condition_element=>'P138_MASTER_WORK_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674301151130758973)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#GRID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674301645229758973)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674302169022758974)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1165905772265661236)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674302616674758974)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1165651028388814655)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674303089340758974)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#abs_sum_day'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674303651424758975)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674304155789758975)
,p_event_id=>wwv_flow_imp.id(674300672700758973)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1144528960237332562)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674304565659758976)
,p_name=>'dy_refresh_incomes'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674305057478758976)
,p_event_id=>wwv_flow_imp.id(674304565659758976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674305468568758976)
,p_name=>'New'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-Button--noUI'
,p_condition_element=>'P138_VWFLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674305974818758976)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_VWFLAG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674306446850758977)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_VWFLAG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674306920218758977)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_DYVP'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(window).height()*0.43;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674307469081758977)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_DYVP'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(window).height();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674307932793758978)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674308415449758978)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202552048623057557)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674308890167758978)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551849032057555)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674309463326758979)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551849032057555)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674309893633758979)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202552048623057557)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674310456209758979)
,p_event_id=>wwv_flow_imp.id(674305468568758976)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674310796077758979)
,p_name=>'poptimeincome'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674276974569758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674311311756758980)
,p_event_id=>wwv_flow_imp.id(674310796077758979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_hr.sp_poptimeEmpNormalhrs(:P138_WORK_START, :P138_WORK_END, :P138_DEPARTMENT);',
'end;',
''))
,p_attribute_02=>'P138_WORK_START,P138_WORK_END,P138_DEPARTMENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674311800995758980)
,p_event_id=>wwv_flow_imp.id(674310796077758979)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674312299877758980)
,p_event_id=>wwv_flow_imp.id(674310796077758979)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess( ''System successfully imported Normal time for hourly and daily rated employees.'' );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674312729409758980)
,p_name=>'poptimepurge'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674277360993758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674313230053758981)
,p_event_id=>wwv_flow_imp.id(674312729409758980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_hr.sp_purgetimeEmpNormalhrs(:P138_WORK_START, :P138_WORK_END, :P138_DEPARTMENT);',
'end;'))
,p_attribute_02=>'P138_WORK_START,P138_WORK_END,P138_DEPARTMENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674313739466758981)
,p_event_id=>wwv_flow_imp.id(674312729409758980)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674314258280758981)
,p_event_id=>wwv_flow_imp.id(674312729409758980)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully purged Normal time for hourly and daily rated employees.'' );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674314681516758981)
,p_name=>'dy_checkDateRange'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_WORK_START,P138_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674315098420758982)
,p_event_id=>wwv_flow_imp.id(674314681516758981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//on load, set the datepicker range in case a date is already present',
'//when the date changes, call the datecheck function',
'//and set item to readonly',
'$("#P138_WORK_START")',
'.datepicker("option","maxDate",$("#P138_WORK_END").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);',
'$("#P138_WORK_END")',
'.datepicker("option","minDate",$("#P138_WORK_START").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674315569922758982)
,p_name=>'dy_refresh_grids2'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_MASTER_EMP_ID'
,p_condition_element=>'P138_MASTER_EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674316009098758982)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1165651028388814655)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674316537620758982)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1164245745922846360)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674317004307758983)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1164760110841448893)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674317540954758983)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674318068843758983)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1165905772265661236)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674318532272758983)
,p_event_id=>wwv_flow_imp.id(674315569922758982)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674318973790758984)
,p_name=>'dy_set_defaultvalue'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_MASTER_WORK_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674319420307758984)
,p_event_id=>wwv_flow_imp.id(674318973790758984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''absensedetails'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P138_MASTER_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674319964435758984)
,p_event_id=>wwv_flow_imp.id(674318973790758984)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''emp_time_incomes'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P138_MASTER_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674320326698758984)
,p_name=>'dy_set_caldendar_id'
,p_event_sequence=>290
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674320868820758984)
,p_event_id=>wwv_flow_imp.id(674320326698758984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CALENDAR_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id ',
'from hr_att_empcalendar_hd',
'where emp_id = :EMP_ID ',
'and to_date(work_date) = to_date(:WORK_DATE)'))
,p_attribute_07=>'EMP_ID,WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674321260464758985)
,p_name=>'set_focus'
,p_event_sequence=>320
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'TRANSACTION_TYPE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'START_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674321747742758985)
,p_event_id=>wwv_flow_imp.id(674321260464758985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674322162252758985)
,p_name=>'refresh_emp_id'
,p_event_sequence=>340
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'START_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674322591033758985)
,p_event_id=>wwv_flow_imp.id(674322162252758985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674322989749758986)
,p_name=>'refresh_emp_id_1'
,p_event_sequence=>350
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1165905772265661236)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ENTERED_BY'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674323491921758986)
,p_event_id=>wwv_flow_imp.id(674322989749758986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID,STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674323952651758986)
,p_name=>'dy_set_value'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_EMPLOYEE'
,p_condition_element=>'P138_EMPLOYEE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674324439810758986)
,p_event_id=>wwv_flow_imp.id(674323952651758986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_MASTER_WORK_DATE,P138_MASTER_EMP_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674324841414758987)
,p_name=>'TIMESHEET_TIMES_OnPreme'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674277755131758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674325365618758987)
,p_event_id=>wwv_flow_imp.id(674324841414758987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674325714612758987)
,p_name=>'TIMESHEET_SUMMARY_OnPreme'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674278158916758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674326230819758987)
,p_event_id=>wwv_flow_imp.id(674325714612758987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674326669155758988)
,p_name=>'TIMESHEET_TIMES_Cloud'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674277755131758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674327125998758988)
,p_event_id=>wwv_flow_imp.id(674326669155758988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Dev_Cloud/01_HR/Job_Description-JOB_ID=&P1307_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,loca'
||'tion=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674327574495758988)
,p_name=>'TIMESHEET_SUMMARY_Cloud'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674278158916758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674328040183758988)
,p_event_id=>wwv_flow_imp.id(674327574495758988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Dev_Cloud/01_HR/Job_Description-JOB_ID=&P1307_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,loca'
||'tion=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674328433061758989)
,p_name=>'ref_empid'
,p_event_sequence=>410
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ENTERED_BY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674328814276758989)
,p_event_id=>wwv_flow_imp.id(674328433061758989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID,OVERRIDE_LLH'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674329207261758989)
,p_name=>'dy_change_lunch_hour'
,p_event_sequence=>420
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'OVERRIDE_LLH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674329720088758989)
,p_event_id=>wwv_flow_imp.id(674329207261758989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'l_lunch_hour float;',
'l_emp_id number;',
'l_work_date date;',
'l_override_llh number;',
'l_new_hw float;',
'-- l_new_hw_check float;',
'l_hours_worked float;',
'l_less_lunch_hour varchar2(3);',
'begin',
'l_override_llh := :P138_OVERRIDE_LLH;',
'l_emp_id :=:P138_MASTER_EMP_ID;',
'l_work_date :=:P138_MASTER_WORK_DATE;',
'select ',
'    hours_worked,',
'    nvl(PKG_TIMECLOCK.fn_get_lunchhour_calhd(emp_id,work_date),0) lunch_hour,',
'    less_lunch_hour',
'into l_hours_worked, l_lunch_hour,l_less_lunch_hour',
'from hr_att_empcalendar_hd',
'where emp_id = l_emp_id and work_date = l_work_date;',
'',
'if l_less_lunch_hour = 1 then',
'	if l_override_llh = 1 then',
'		l_new_hw := l_hours_worked + l_lunch_hour;',
'	elsif l_override_llh = 0 then',
'        l_new_hw := l_hours_worked - l_lunch_hour;',
'	end if;',
'end if;',
'',
'if SQL%FOUND then',
'update hr_att_empcalendar_hd',
'    set hours_worked = round(abs(nvl(l_new_hw,0)),2)',
'where emp_id = :P138_MASTER_EMP_ID and work_date = :P138_MASTER_WORK_DATE;',
'',
'commit;',
'end if;',
'end;',
''))
,p_attribute_02=>'P138_OVERRIDE_LLH,P138_MASTER_EMP_ID,P138_MASTER_WORK_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674330219460758990)
,p_event_id=>wwv_flow_imp.id(674329207261758989)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674330670433758990)
,p_name=>'set_llh_val'
,p_event_sequence=>430
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_triggering_element=>'OVERRIDE_LLH'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'OVERRIDE_LLH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674331087714758990)
,p_event_id=>wwv_flow_imp.id(674330670433758990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_OVERRIDE_LLH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :OVERRIDE_LLH from dual'
,p_attribute_07=>'OVERRIDE_LLH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674331484079758990)
,p_name=>'calculate_quantity'
,p_event_sequence=>440
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'START_TIME,END_TIME'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'START_TIME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674332081430758991)
,p_event_id=>wwv_flow_imp.id(674331484079758990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QUANTITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT round(abs((TO_DATE(:END_TIME, ''DD-MM-YYYY HH:MIPM'') - to_date(:START_TIME, ''DD-MM-YYYY HH:MIPM''))*24),2)',
'FROM DUAL'))
,p_attribute_07=>'END_TIME,START_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674333330258758991)
,p_name=>'dy_showhide'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_PROCESS_APP_VER'
,p_condition_element=>'P138_PROCESS_APP_VER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674333864940758992)
,p_event_id=>wwv_flow_imp.id(674333330258758991)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(674276178384758950)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674334367366758992)
,p_event_id=>wwv_flow_imp.id(674333330258758991)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(674276178384758950)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674334738685758992)
,p_name=>'dy_set_start_time'
,p_event_sequence=>480
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'START_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674335201728758992)
,p_event_id=>wwv_flow_imp.id(674334738685758992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P138_MASTER_WORK_DATE|| '' '' || ''12:00 AM'' from dual'
,p_attribute_07=>'P138_MASTER_WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674335627602758992)
,p_name=>'dy_set_end_time'
,p_event_sequence=>490
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'END_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674336161271758993)
,p_event_id=>wwv_flow_imp.id(674335627602758992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P138_MASTER_WORK_DATE|| '' '' || ''12:00 AM'' from dual'
,p_attribute_07=>'P138_MASTER_WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674336541026758993)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674277755131758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674337079722758993)
,p_event_id=>wwv_flow_imp.id(674336541026758993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674337579922758994)
,p_event_id=>wwv_flow_imp.id(674336541026758993)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'--select replace(report_location,''/reports/'') into v_report_path from report where id= :P138_REPORT_ID;',
'v_report_path:=''PeoplePay_Multi_Cloud/01_HR/Timesheet_Master_Details'';',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p138_earnings_period||''|IN_ORG_ID=''||:p138_organisation||''|SEARCH_OPTION=''||:p138_search_option||''|SUPPRESS_DETAILS=''||:p138_suppress_det'
||'ails||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p138_parameters:=''&EARNINGS_PERIOD_ID=''||:p138_earnings_period||''&IN_ORG_ID=''||:p138_organisation||''&SEARCH_OPTION=''||:p138_search_option||''&SUPPRESS_DETAILS=''||:p138_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=:P138_REPORT_URL||''&p2=''||v_report_path||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P138_EMPLOYEE||''-DEPARTMENT_ID=''||:P138_DEPARTMENT||''-START_DATE=''||replace(:P138_WORK_START,''-'',''**'')||''-END_DATE=''||replace(:P138_WORK_END,''-'',''**'')||''-SESSI'
||'ON_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P138_REPORT_ID,P138_EARNINGS_PERIOD,P138_EMPLOYEE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END,P138_REPORT_URL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674338078598758994)
,p_event_id=>wwv_flow_imp.id(674336541026758993)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P138_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674338414908758994)
,p_name=>'Preview_Report_Cloud_1'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674278158916758951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674338938405758994)
,p_event_id=>wwv_flow_imp.id(674338414908758994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674339471735758995)
,p_event_id=>wwv_flow_imp.id(674338414908758994)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'--select replace(report_location,''/reports/'') into v_report_path from report where id= 6213;',
'v_report_path:=''PeoplePay_Multi_Cloud/01_HR/Timesheet_Master_Summary'';',
'',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p138_earnings_period||''|IN_ORG_ID=''||:p138_organisation||''|SEARCH_OPTION=''||:p138_search_option||''|SUPPRESS_DETAILS=''||:p138_suppress_det'
||'ails||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p138_parameters:=''&EARNINGS_PERIOD_ID=''||:p138_earnings_period||''&IN_ORG_ID=''||:p138_organisation||''&SEARCH_OPTION=''||:p138_search_option||''&SUPPRESS_DETAILS=''||:p138_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=:P138_REPORT_URL||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P138_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P138_EMPLOYEE||''-DEPARTMENT_ID=''||:P138_DEPARTMENT||''-START_DATE=''||replace(:P138_WORK_START,''-'',''**'')||''-END_DA'
||'TE=''||replace(:P138_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P138_REPORT_ID,P138_EARNINGS_PERIOD,P138_EMPLOYEE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END,P138_REPORT_URL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674339939808758995)
,p_event_id=>wwv_flow_imp.id(674338414908758994)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P138_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674340292064758995)
,p_name=>'Preview_Report_Cloud_1_1'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674278483845758952)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674340830118758995)
,p_event_id=>wwv_flow_imp.id(674340292064758995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674341307319758996)
,p_event_id=>wwv_flow_imp.id(674340292064758995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'--select replace(report_location,''/reports/'') into v_report_path from report where id= 6212;',
'',
'v_report_path:=''PeoplePay_Multi_Cloud/01_HR/Timesheet_Master_Details_By_Day'';',
'',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p138_earnings_period||''|IN_ORG_ID=''||:p138_organisation||''|SEARCH_OPTION=''||:p138_search_option||''|SUPPRESS_DETAILS=''||:p138_suppress_det'
||'ails||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p138_parameters:=''&EARNINGS_PERIOD_ID=''||:p138_earnings_period||''&IN_ORG_ID=''||:p138_organisation||''&SEARCH_OPTION=''||:p138_search_option||''&SUPPRESS_DETAILS=''||:p138_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=:P138_REPORT_URL||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P138_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P138_EMPLOYEE||''-DEPARTMENT_ID=''||:P138_DEPARTMENT||''-START_DATE=''||replace(:P138_WORK_START,''-'',''**'')||''-END_DA'
||'TE=''||replace(:P138_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P138_REPORT_ID,P138_EARNINGS_PERIOD,P138_EMPLOYEE,P138_DEPARTMENT,P138_WORK_START,P138_WORK_END,P138_REPORT_URL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674341844572758996)
,p_event_id=>wwv_flow_imp.id(674340292064758995)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P138_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674342255016758996)
,p_name=>'dy_refresh_absence_detial_status'
,p_event_sequence=>530
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1165905772265661236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674342759291758997)
,p_event_id=>wwv_flow_imp.id(674342255016758996)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674343149422758997)
,p_name=>'REFRESH_MASTER'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674260880716758934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674343661989758997)
,p_event_id=>wwv_flow_imp.id(674343149422758997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1202551913094057556)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674343993837758997)
,p_name=>'hide_hsow_mismatch'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_MISMATCH'
,p_condition_element=>'P138_MISMATCH'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674345452662758998)
,p_name=>'dy_open_dialog'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674278945095758952)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674345968587758998)
,p_event_id=>wwv_flow_imp.id(674345452662758998)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_OVERLAP_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_count number(5) := 0;',
'BEGIN',
'',
'select count(1) into l_count',
'from VW_ATT_BADTIMERECS br',
'JOIN HR_RCM_EMPLOYEE E ON E.ID=br.EMP_ID',
'left outer join hr_hcf_orgstructuredtl od on br.orgdtl_id = od.id',
'left outer join hr_hcf_position p on e.position_id = p.id',
'where br.WORK_DATE BETWEEN :P138_WORK_START AND :P138_WORK_END',
'AND br.EMP_ID = NVL(:P138_EMPLOYEE,br.EMP_ID)',
'AND br.ORGDTL_ID = NVL(:P138_DEPARTMENT,br.ORGDTL_ID)',
'AND br.ORG_ID = :APP_ORG_ID',
'and exists',
'(',
'    select 1',
'    from HR_HCF_ORGSTRUCTUREDTL T ',
'    left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'    where  t.id= br.ORGDTL_ID',
'    and br.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, br.ORGDTL_ID, w.org_structure_id)         ',
')',
'AND upper(br.REMARKS) = ''TIME RECORD OVERLAPS WITH ANOTHER TIME RECORD'';',
'',
'',
'return l_count;',
'',
'end;'))
,p_attribute_07=>'P138_WORK_START,P138_WORK_END,P138_EMPLOYEE,P138_DEPARTMENT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674346465784758999)
,p_event_id=>wwv_flow_imp.id(674345452662758998)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1035215042940834707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674292403593758968)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'   v_LEAVE_TYPE varchar2(100);',
'   ',
'begin',
'',
'    select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'    from TBLTRANSACTIONTYPE ',
'    where TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID;',
'',
'    select WFL_STATUS_DESCRIPTION into v_description',
'    from tblworkflowstatus',
'    where WFL_STATUS_ID=:STATUS;',
'',
'    SELECT UPPER(B.TABLE_VALUE) into  v_LEAVE_TYPE',
'    From Hr_Rcm_Employee C Join Hr_Rcm_Empleaveentitle A On C.Id=A.Emp_Id',
'    join hr_hcf_lookup b on a.leave_type_id=b.id',
'    Where a.id = :EMPLVENT_ID;',
'',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||nvl(:LEAVE_TYPE,v_LEAVE_TYPE),',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Timesheet Incomes'',',
'	:STATUS,:APP_PAGE_ID,:TRANSACTION_TYPE_ID,',
'        ''HR_ATT_TIMESHEETINCOME'',:WORK_FLOW_COMMENT, :ID);',
'',
'--NVL(V(''APP_USER''),user)',
'',
' if pkg_global_fnts.status_descript(:STATUS) like ''APPROV%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_ATT_TIMESHEETINCOME'',''ID'', :ID);',
'',
'  elsif pkg_global_fnts.status_descript(:STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(:APP_USER, ''HR_ATT_TIMESHEETINCOME'', ''ID'', :ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30675720206576828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674292049265758968)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'   v_LEAVE_TYPE varchar2(100);',
'   ',
'begin',
'',
'    select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'    from TBLTRANSACTIONTYPE ',
'    where TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID;',
'',
'    select WFL_STATUS_DESCRIPTION into v_description',
'    from tblworkflowstatus',
'    where WFL_STATUS_ID=:STATUS;',
'',
'    SELECT UPPER(B.TABLE_VALUE) into  v_LEAVE_TYPE',
'    From Hr_Rcm_Employee C Join Hr_Rcm_Empleaveentitle A On C.Id=A.Emp_Id',
'    join hr_hcf_lookup b on a.leave_type_id=b.id',
'    Where a.id = :EMPLVENT_ID;',
'',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||nvl(:LEAVE_TYPE,v_LEAVE_TYPE),',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Leave History'',',
'	:STATUS,:APP_PAGE_ID,:TRANSACTION_TYPE_ID,',
'        ''HR_LV_LEAVEHISTORY'',:WORK_FLOW_COMMENT, :ID);',
'',
'--NVL(V(''APP_USER''),user)',
'',
' if pkg_global_fnts.status_descript(:STATUS) like ''APPROV%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_LV_LEAVEHISTORY'',''ID'', :ID);',
'',
'  elsif pkg_global_fnts.status_descript(:STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(:APP_USER, ''HR_LV_LEAVEHISTORY'', ''ID'', :ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30675365878576828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674208665676758881)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1221407325898307578)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Task- Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30591982289576741
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674221226408758894)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1209181148117941457)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Employee Incomes - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30604543021576754
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674231140474758903)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1165905772265661236)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'process employee absense'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30614457087576763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674288873107758963)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'execute_mismatch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count number(5);',
'begin',
'',
'select',
'pkg_timeclock.prcd_get_mismatch_times( ',
' in_orgdtl_id => :P138_DEPARTMENT',
',in_emp_id => :P138_EMPLOYEE',
',in_work_start => :P138_WORK_START',
',in_work_end => :P138_WORK_END',
',in_org_id => :APP_ORG_ID',
') into l_count',
' from dual;',
'',
'if l_count > 0 then ',
'    raise_application_error(-20000, ''You have '' ||  l_count  || '' ',
'                            mismatched time records that needs to be corrected before verification'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674259596264758933)
,p_process_when_type=>'NEVER'
,p_internal_uid=>30672189720576823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674289201824758965)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reprocess Holiday'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'PKG_TIMECLOCK.process_holiday_values(:APP_ORG_ID, ',
'                        :P138_WORK_START, ',
'                        :P138_WORK_END,:P138_EMPLOYEE,',
'                                        :P138_DEPARTMENT);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674259596264758933)
,p_internal_uid=>30672518437576825
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674291628452758967)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reprocess Times 1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     pkg_timeclock.prcd_update_deleted_dtlrec(',
'                                            in_work_start => :P138_WORK_START,',
'                                            in_work_end => :P138_WORK_END,',
'                                            in_org_id => :APP_ORG_ID,',
'                                            in_emp_id => :P138_EMPLOYEE',
'    );',
'',
'pkg_timeclock.prcd_process_details (in_work_start => :P138_WORK_START,',
'                                        in_work_end =>:P138_WORK_END,',
'                                        in_org_id => :APP_ORG_ID,',
'                                        in_emp_id => :P138_EMPLOYEE,',
'                                        in_orgdtl_id => :P138_DEPARTMENT); ',
'',
'',
'				BEGIN',
'	FOR j IN (',
'		SELECT',
'								emp_id, work_date,',
'								CASE WHEN a.assign_shift_hours > 0  AND ',
'								(SELECT nvl (SUM (c.shift_hours_worked),0) FROM hr_att_timeclock_dtl c WHERE a.emp_id = c.emp_id AND a.work_date = c.work_date ) = 0 THEN',
'								a.assign_shift_hours END cabs',
'		FROM hr_att_empcalendar_hd a',
'		WHERE NOT EXISTS ( SELECT 1 FROM hr_att_timeclock_dtl b WHERE a.emp_id = b.emp_id AND a.work_date = b.work_date)',
'		AND to_date (a.work_date) between :P138_WORK_START and :P138_WORK_END',
'		AND a.emp_id = nvl(:P138_EMPLOYEE,a.emp_id)',
'	) LOOP',
'		UPDATE hr_att_empcalendar_hd d',
'		SET',
'			d.total_time_lost = j.cabs',
'		WHERE',
'			 d.emp_id = j.emp_id',
'			AND d.work_date = j.work_date;',
'',
'	END LOOP;',
'',
'	end;',
'',
'',
'',
'--     PKG_TIMECLOCK.prcd_process_summary (',
'--         in_work_start =>  :P138_WORK_START,',
'--         in_work_end   =>  :P138_WORK_END,',
'--         in_org_id     =>  :APP_ORG_ID,',
'--         in_emp_id     =>  :P138_EMPLOYEE',
'-- );',
' ',
'--  PKG_TIMECLOCK.prcd_compute_empcalhdsmry (',
'--         in_work_start =>  :P138_WORK_START,',
'--         in_work_end   =>  :P138_WORK_END,',
'--         in_org_id     =>  :APP_ORG_ID,',
'--         in_emp_id     =>  :P138_EMPLOYEE',
'-- );',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674259596264758933)
,p_process_success_message=>'Timesheet Master Summary recalculated based on changes made in related Timesheet Details'
,p_internal_uid=>30674945065576827
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674290820580758967)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reprocess Time 2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'pkg_timeclock.prcd_resetsumryincome(',
'                                 in_department_id =>:P138_DEPARTMENT ,',
'                                 in_emp_id => :P138_EMPLOYEE,',
'                                 in_work_start => :P138_WORK_START,',
'                                 in_work_end => :P138_WORK_END',
');',
'',
'pkg_timeclock.prcd_resetsumryabs(',
'                                 in_department_id =>:P138_DEPARTMENT ,',
'                                 in_emp_id => :P138_EMPLOYEE,',
'                                 in_work_start => :P138_WORK_START,',
'                                 in_work_end => :P138_WORK_END',
');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674259596264758933)
,p_process_success_message=>'Timesheet Master Summary recalculated based on changes made in related Timesheet Details'
,p_internal_uid=>30674137193576827
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674291220653758967)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reprocess Time 3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pkg_timeclock.prcd_popsumryincome(',
'                                 in_department_id =>:P138_DEPARTMENT ,',
'                                 in_emp_id => :P138_EMPLOYEE,',
'                                 in_work_start => :P138_WORK_START,',
'                                 in_work_end => :P138_WORK_END',
');',
'',
'pkg_timeclock.prcd_popsumryabs(',
'                                 in_department_id =>:P138_DEPARTMENT ,',
'                                 in_emp_id => :P138_EMPLOYEE,',
'                                 in_work_start => :P138_WORK_START,',
'                                 in_work_end => :P138_WORK_END',
');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674259596264758933)
,p_process_success_message=>'Timesheet Master Summary recalculated based on changes made in related Timesheet Details'
,p_internal_uid=>30674537266576827
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674258491797758932)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1135277328579007468)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Control Lunch Hour - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30641808410576792
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674290417191758966)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verify/Unverify Timesheets'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_PROCESS_TYPE VARCHAR2(200);',
'  IN_ORGSTRUCT NUMBER;',
'  IN_ORGDTL_ID NUMBER;',
'  IN_EMP_ID NUMBER;',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'    ',
'BEGIN',
'  IN_PROCESS_TYPE := :P138_PROCESS_APP_VER;',
'  IN_ORGSTRUCT := :P138_ORG_STRUCTURE;',
'  IN_ORGDTL_ID := :P138_DEPARTMENT;',
'  IN_EMP_ID := :P138_EMPLOYEE;',
'  IN_WORK_START := :P138_WORK_START;',
'  IN_WORK_END := :P138_WORK_END;',
'',
'  PKG_TIMECLOCK.prcd_authorise_timesheet (  IN_PROCESS_TYPE => IN_PROCESS_TYPE,',
'IN_ORGSTRUCT => IN_ORGSTRUCT,',
'IN_ORGDTL_ID => IN_ORGDTL_ID,',
'IN_EMP_ID => IN_EMP_ID,',
'IN_WORK_START => IN_WORK_START,',
'IN_WORK_END => IN_WORK_END) ;  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674276178384758950)
,p_process_success_message=>'Timesheet was verified within the period &P94_WORK_START. to &P94_WORK_END.'
,p_internal_uid=>30673733804576826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674290024575758966)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import Absence From Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_EMP_ID NUMBER;',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'  IN_ORGDTL_ID NUMBER;',
'  IN_ORG_ID NUMBER;',
'    ',
'BEGIN',
'  IN_EMP_ID := :P138_EMPLOYEE;',
'  IN_WORK_START := :P138_WORK_START;',
'  IN_WORK_END := :P138_WORK_END;',
'  IN_ORGDTL_ID := :P138_DEPARTMENT;',
'  IN_ORG_ID := :APP_ORG_ID;',
'',
'  PKG_TIMECLOCK.prcd_gen_absences (  IN_EMP_ID => IN_EMP_ID,',
'																																					IN_WORK_START => IN_WORK_START,',
'																																					IN_WORK_END => IN_WORK_END,',
'																																					IN_ORGDTL_ID => IN_ORGDTL_ID,',
'																																					IN_ORG_ID => IN_ORG_ID) ;  ',
'END;',
'',
'',
'-- BEGIN',
'--     PKG_TIMECLOCK.prcd_process_summary (',
'--         in_work_start =>  :P138_WORK_START,',
'--         in_work_end   =>  :P138_WORK_END,',
'--         in_org_id     =>  :APP_ORG_ID,',
'--         in_emp_id     =>  :P138_EMPLOYEE',
'-- );',
'',
'-- INSERT INTO hr_att_timesheetabsence (',
'--     work_date,',
'--     emp_id,',
'--     leave_type,',
'--     pay_status,',
'--     remarks,',
'--     absence_hours,',
'--     transaction_type_id,',
'--     status,',
'--     leave_status,',
'--     affect_salary',
'-- ) ',
'-- select work_date, emp_id,pkg_global_fnts.get_lookup_id(''XX'', ''TBLLEAVETYPE'') leave_type,''N'' pay_status,''Generated from calendar head'' remarks, nvl(total_time_lost,0) absence_hours,',
'-- 110 transaction_type_id,2004 status,''NONE'' leave_status, ''NONE'' affect_salary',
'-- from hr_att_empcalendar_hd ch',
'-- join hr_rcm_employee emp on ch.emp_id=emp.id',
'-- where total_time_lost > 0',
'-- and not exists (select 1',
'--                 from hr_att_timesheetabsence tc',
'--                 where tc.work_date = ch.work_date',
'--                 and tc.earnings_period_id = ch.earning_period_id',
'--                 and tc.emp_id = ch.emp_id',
'--                 and tc.org_id = :APP_ORG_ID',
'--                 and tc.leave_type = pkg_global_fnts.get_lookup_id(''XX'', ''TBLLEAVETYPE'') --UNCLASSIFIED ABSENCE',
'--                 )',
'-- and trunc(TO_DATE(ch.WORK_DATE)) BETWEEN trunc(TO_DATE(:P138_WORK_START)) AND trunc(TO_DATE(:P138_WORK_END))',
'-- and ch.emp_id = nvl(:P138_EMPLOYEE, ch.emp_id)',
'-- and EMP.orgdtl_id = nvl(:P138_DEPARTMENT,EMP.orgdtl_id)',
'-- and exists(select 1',
'--             from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'--             where  t.id= EMP.ORGDTL_ID',
'--             and EMP.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, EMP.ORGDTL_ID, w.org_structure_id)         ',
'-- )',
'-- ;',
'',
'-- END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Absence Generation Failed!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674260002452758933)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Times were Reprocessed and Absences were Generated!'
,p_internal_uid=>30673341188576826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674289661225758966)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Timesheet Absences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_EMP_ID NUMBER;',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'  IN_ORGDTL_ID NUMBER;',
'  IN_ORG_ID NUMBER;',
'    ',
'BEGIN',
'  IN_EMP_ID := :P138_EMPLOYEE;',
'  IN_WORK_START := :P138_WORK_START;',
'  IN_WORK_END := :P138_WORK_END;',
'  IN_ORGDTL_ID := :P138_DEPARTMENT;',
'  IN_ORG_ID := :APP_ORG_ID;',
'		',
'    pkg_timeclock.prcd_gen_timesheetlateness(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'    pkg_timeclock.prcd_gen_earlyexit(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'    pkg_timeclock.prcd_gen_miscabsence(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674260002452758933)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Timesheet Absences were generated!'
,p_internal_uid=>30672977838576826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674292833991758968)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Timesheet Absences_old'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :APP_ORG_ID = 28007 THEN',
'merge into hr_att_timesheetabsence timeabs',
'using (',
'							select work_date, ',
'														emp_id,',
'														pkg_global_fnts.get_lookup_id(''UNCAB'', ''TBLLEAVETYPE'') leave_type,',
'														''N'' pay_status,',
'														''Generated from calendar head'' remarks, ',
'														nvl(total_time_lost,0) absence_hours,',
'														110 transaction_type_id,',
'														2004 status,',
'														''NONE'' leave_status, ',
'														''NONE'' affect_salary',
'							from hr_att_empcalendar_hd ch',
'							join hr_rcm_employee emp on ch.emp_id=emp.id',
'							where total_time_lost > 0',
'							and TO_DATE(ch.WORK_DATE) BETWEEN TO_DATE(:P138_WORK_START) AND TO_DATE(:P138_WORK_END)',
'							and ch.emp_id = nvl(:P138_EMPLOYEE, ch.emp_id)',
'							and EMP.orgdtl_id = nvl(:P138_DEPARTMENT,EMP.orgdtl_id)',
'							and emp.org_id= :APP_ORG_ID',
'                            and emp.date_separated is null',
'                            and exists(select 1',
'                            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                            where  t.id = ch.ORGDTL_ID',
'                            and ch.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, ch.ORGDTL_ID, w.org_structure_id)        ',
'                            )',
'							) calabs',
'							on (timeabs.emp_id=calabs.emp_id and timeabs.work_date=calabs.work_date and to_number(timeabs.leave_type)=to_number(calabs.leave_type))',
'							WHEN MATCHED THEN',
'							update set timeabs.absence_hours = calabs.absence_hours,',
'																		timeabs.remarks = ''Absence Generation was recalculated''',
'							WHEN NOT MATCHED THEN',
'							INSERT (work_date, emp_id, leave_type, pay_status, remarks, absence_hours, transaction_type_id, status, leave_status, affect_salary) ',
'							VALUES (calabs.work_date, calabs.emp_id, calabs.leave_type, calabs.pay_status, calabs.remarks, calabs.absence_hours, calabs.transaction_type_id, calabs.status, calabs.leave_status, calabs.affect_salary);',
'																',
'			commit;',
'elsif :APP_ORG_ID = 34446 THEN',
'merge into hr_att_timesheetabsence timeabs',
'using (',
'							select work_date, ',
'														emp_id,',
'														pkg_global_fnts.get_lookup_id(''UNCABS'', ''TBLLEAVETYPE'') leave_type,',
'														''N'' pay_status,',
'														''Generated from calendar head'' remarks, ',
'														nvl(total_time_lost,0) absence_hours,',
'														110 transaction_type_id,',
'														2004 status,',
'														''NONE'' leave_status, ',
'														''NONE'' affect_salary',
'							from hr_att_empcalendar_hd ch',
'							join hr_rcm_employee emp on ch.emp_id=emp.id',
'							where total_time_lost > 0',
'							and TO_DATE(ch.WORK_DATE) BETWEEN TO_DATE(:P138_WORK_START) AND TO_DATE(:P138_WORK_END)',
'							and ch.emp_id = nvl(:P138_EMPLOYEE, ch.emp_id)',
'							and EMP.orgdtl_id = nvl(:P138_DEPARTMENT,EMP.orgdtl_id)',
'							and emp.org_id= :APP_ORG_ID',
'                            and emp.date_separated is null',
'                            and exists(select 1',
'                            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                            where  t.id = ch.ORGDTL_ID',
'                            and ch.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, ch.ORGDTL_ID, w.org_structure_id)        ',
'                            )',
'							) calabs',
'							on (timeabs.emp_id=calabs.emp_id and timeabs.work_date=calabs.work_date and to_number(timeabs.leave_type)=to_number(calabs.leave_type))',
'							WHEN MATCHED THEN',
'							update set timeabs.absence_hours = calabs.absence_hours,',
'																		timeabs.remarks = ''Absence Generation was recalculated''',
'							WHEN NOT MATCHED THEN',
'							INSERT (work_date, emp_id, leave_type, pay_status, remarks, absence_hours, transaction_type_id, status, leave_status, affect_salary) ',
'							VALUES (calabs.work_date, calabs.emp_id, calabs.leave_type, calabs.pay_status, calabs.remarks, calabs.absence_hours, calabs.transaction_type_id, calabs.status, calabs.leave_status, calabs.affect_salary);',
'																',
'			commit;',
'END IF;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674260002452758933)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Timesheet Absences were generated!'
,p_internal_uid=>30676150604576828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674288061500758962)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Timesheet Absences Improved'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_EMP_ID NUMBER;',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'  IN_ORGDTL_ID NUMBER;',
'  IN_ORG_ID NUMBER;',
'  IN_ORG_STRUCTURE NUMBER;',
'    ',
'BEGIN',
'  IN_EMP_ID := :P138_EMPLOYEE;',
'  IN_WORK_START := :P138_WORK_START;',
'  IN_WORK_END := :P138_WORK_END;',
'  IN_ORGDTL_ID := :P138_DEPARTMENT;',
'  IN_ORG_ID := :APP_ORG_ID;',
'  IN_ORG_STRUCTURE := :P138_ORG_STRUCTURE;',
'',
'     pkg_timeclock.prcd_gen_timesheetlateness(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'   pkg_timeclock.prcd_gen_earlyexit(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'   pkg_timeclock.prcd_gen_miscabsence(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'   commit;	',
'   ',
'  /* begin',
'   pkg_leave.fn_process_leave_into_attendanceabs(in_leave_request_id => null, ',
'                                              in_from_date => in_work_start,',
'                                              in_to_date => in_work_end, ',
'                                              in_emp_id => in_emp_id,',
'                                              in_department => in_orgdtl_id,',
'                                              in_org_id => in_org_id,',
'                                              in_org_structure => in_org_structure);  ',
'        exception when others then ',
'                raise_application_error(-20000, ''Error occured when generating Leave Request Deduction'');',
'        end;*/',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674260002452758933)
,p_process_success_message=>'Timesheet Absences were generated!'
,p_internal_uid=>30671378113576822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674287631250758962)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_check_recs_not_VERIFIED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count_abs number(5):= 0;',
'begin',
'',
'',
'select count(1) a into l_count_abs',
'from HR_ATT_EMPCALENDAR_HD tsa ',
'left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'where tsa.org_id = :APP_ORG_ID',
'and tsa.orgdtl_id =nvl(:P138_DEPARTMENT, tsa.orgdtl_id)',
'and tsa.emp_id = nvl(:P138_EMPLOYEE, tsa.emp_id)',
'and trunc(to_date(tsa.work_date)) between trunc(to_date(:P138_WORK_START)) and trunc(to_date(:P138_WORK_END))',
'and upper(pkg_global_fnts.status_descript(tsa.status)) not like ''VERIF%'';',
'',
'',
'',
'',
'',
'',
'if l_count_abs > 0 and :P138_FORWARD_LIST = ''VERIFIED''   then ',
'  raise_application_error (-20002, ''You have '' || l_count_abs || ''unverified records in the records you have selected'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674284518158758956)
,p_internal_uid=>30670947863576822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674286437165758961)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_check_recs_not_keyed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count_key number(5):= 0;',
'begin',
'',
'',
'select count(1) a into l_count_key',
'from HR_ATT_EMPCALENDAR_HD tsa ',
'left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'where tsa.org_id = :APP_ORG_ID',
'and tsa.orgdtl_id =nvl(:P138_DEPARTMENT, tsa.orgdtl_id)',
'and tsa.emp_id = nvl(:P138_EMPLOYEE, tsa.emp_id)',
'and trunc(to_date(tsa.work_date)) between trunc(to_date(:P138_WORK_START)) and trunc(to_date(:P138_WORK_END))',
'and upper(pkg_global_fnts.status_descript(tsa.status)) LIKE ''KEYE%'';',
'',
'',
'',
'',
'',
'',
'',
'if l_count_key = 0 and :PP138_FORWARD_LIST <> ''VERIFIED''   then ',
'  raise_application_error (-20003, ''You have '' || l_count_key || '' keyed records to send'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>30669753778576821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674287201378758962)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_error_message_overlap'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P138_OVERLAP_COUNT > 0 then ',
'  raise_application_error(-20000,''You have '' || :P138_OVERLAP_COUNT || '' overlapping times. Please check for the overlapping records under the ''''Time Records to Fix'''' tab'');',
'end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674284518158758956)
,p_internal_uid=>30670517991576822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674286864395758961)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_error_message_income_and_absence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count_abs number(5) := 0;',
'l_count_inc number(5) := 0;',
'begin',
'',
'select  ',
' absence, income  ',
' into l_count_abs,l_count_inc',
'from (',
'select ',
'(select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P138_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P138_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P138_WORK_START)) and trunc(to_date(:P138_WORK_END))) absence,',
'(select nvl(count(1),0) ',
'',
' from (select a.att_validate_hrs, A.emp_id,work_date,listagg(b.description, '','') entitlement,',
'    max(cot_cal)  COT,',
'    max(chw_cal) CHW,',
'    max(cshw_cal) CSHW,',
'    sum(tsi_total) Inc_Hours',
'',
'from fn_get_att_validate_hrs_compare(in_emp_id       => :P138_EMPLOYEE',
'                                    ,in_org_id       => :APP_ORG_ID',
'                                    ,in_dept         => :P138_DEPARTMENT',
'                                    ,in_work_start   => :P138_WORK_START',
'                                    ,in_work_end     => :P138_WORK_END) a ',
'join pa_pcf_incomecode b on a.income_code = b.income_code',
'join hr_rcm_empentitle c on b.id  = c.income_code_id and c.id = a.empent_id',
'and b.org_id = :APP_ORG_ID',
'group by a.emp_id, work_date,a.att_validate_hrs)',
'where (chw + cshw + cot) < inc_hours) as  income',
'',
'from dual) x;',
'',
'if l_count_abs > 0  or l_count_inc > 0   then ',
'  raise_application_error(-20002,''You have '' || l_count_abs || '' unbalanced absence(s) ''|| '' and '' || l_count_inc || '' unbalanced income(s) '');',
'end if;',
'',
'',
'end;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674284518158758956)
,p_internal_uid=>30670181008576821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674288443481758963)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'manual_forward'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'     l_workflow_desc varchar2(3000);',
'     l_status varchar2(250);',
'     l_department varchar2(2000);',
'     l_name varchar2(5000);',
'',
'	 ',
'begin',
'    ',
'begin',
'select unit_name into l_department',
'from hr_hcf_orgstructuredtl',
'where id = :P138_DEPARTMENT;',
'',
'exception',
'when others then null;',
'end;',
'',
'',
'begin',
'select initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a into l_name',
'from vw_employee x ',
'join hr_rcm_individual z on z.id=x.ind_id',
'whEre x.org_id=:APP_ORG_ID',
'and x.id = :P138_EMPLOYEE',
'order by 1;',
'',
'exception',
'when others then null;',
'end;',
'',
'     select   case when :P138_FORWARD_STATUS  = ''KEYED'' then',
'                       ''Keyed Records sent for Checking for period '' || :P138_WORK_START || '' - '' || :P138_WORK_END || '' for department: '' || nvl(l_department, ''ALL'') || '' for employee: '' || nvl(l_name,''ALL'')',
'                       || :P138_WORK_START || '' - '' || :P138_WORK_END',
'                   when :P138_FORWARD_STATUS = ''CHECK'' then ',
'                       ''Checked Records sent for Approval ''  || :P138_WORK_START || '' - '' || :P138_WORK_END || '' for department: '' || nvl(l_department, ''ALL'') || '' for employee: '' || nvl(l_name,''ALL'')',
'                    when :P138_FORWARD_STATUS  = ''VERIFIED'' then',
'                       ''Records Verified for period '' || :P138_WORK_START || '' - '' || :P138_WORK_END || '' for department: '' ||   nvl(l_department,''ALL'')  || '' for employee: '' || nvl(l_name,''ALL'')',
'               end x,',
'            case when :P138_FORWARD_STATUS  = ''KEYED'' then',
'                       ''Keyed''',
'                   when :P138_FORWARD_STATUS = ''CHECK'' then ',
'                      ''Checked''',
'                   when :P138_FORWARD_STATUS  = ''VERIFIED'' then',
'                       ''Verified''',
'               end into l_workflow_desc,l_status',
'        from dual ;',
'',
'',
'-- Convert the colon separated string of values into',
'-- a PL/SQL array',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P138_FORWARD_LIST || '':'' || upper(:APP_USER));',
'--',
'-- Loop over array to insert department numbers and current_date',
'--',
'FOR i IN 1..l_selected.count LOOP',
'begin',
'	pop_manual_notification',
'                        (',
'                            l_workflow_desc ,',
'                            l_selected(i),',
'                            l_status,',
'                            current_date,',
'                            :P138_L_URL,',
'                            l_status,',
'                           1,',
'                           ''1'',',
'                            ''HR_ATT_EMPCALENDAR_HD'',',
'                            ''1''',
'                        );	',
'exception ',
'when others then null;',
'end;',
'END LOOP;',
'  :P138_FORWARD_LIST:=null;',
'  ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674284518158758956)
,p_process_success_message=>'Sent Successfully'
,p_internal_uid=>30671760094576823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(680729468699481154)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Timesheet Overtime'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'  IN_EMP_ID NUMBER;',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'  IN_ORGDTL_ID NUMBER;',
'  IN_ORG_ID NUMBER;',
'  IN_ORG_STRUCTURE NUMBER;',
'    ',
'BEGIN',
'  IN_EMP_ID := :P138_EMPLOYEE;',
'  IN_WORK_START := :P138_WORK_START;',
'  IN_WORK_END := :P138_WORK_END;',
'  IN_ORGDTL_ID := :P138_DEPARTMENT;',
'  IN_ORG_ID := :APP_ORG_ID;',
'  IN_ORG_STRUCTURE := :P138_ORG_STRUCTURE;',
' ',
' begin',
'	prcd_generate_overtimebefore(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
'	prcd_generate_overtimeafter(IN_EMP_ID => IN_EMP_ID,IN_WORK_START => IN_WORK_START,IN_WORK_END => IN_WORK_END,IN_ORGDTL_ID => IN_ORGDTL_ID,IN_ORG_ID => IN_ORG_ID);',
' end;',
'',
' ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(680729359623481153)
,p_process_success_message=>'Successfully Generated Timesheet Incomes'
,p_internal_uid=>37112785312299014
);
wwv_flow_imp.component_end;
end;
/
