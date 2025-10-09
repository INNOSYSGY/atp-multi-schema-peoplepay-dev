prompt --application/pages/page_01326
begin
--   Manifest
--     PAGE: 01326
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
 p_id=>1326
,p_name=>'rptUserAccount'
,p_step_title=>'Listing of User Account'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806721070126816462)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(683007327748962980)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(683007676333962983)
,p_plug_name=>'User Responsibility'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct A.USER_DETAIL_ID as pkey,',
'    b.RESPONSIBILITY_name ,',
'    A.EFFECTIVE_FROM as EFFECTIVE_FROM,',
'    A.EFFECTIVE_TO as EFFECTIVE_TO,',
'    A.CREATED_BY as CREATED_BY,',
'    A.CREATION_DATE as CREATION_DATE,',
'    A.LAST_UPDATED_BY as LAST_UPDATED_BY,',
'    A.LAST_UPDATE_DATE as LAST_UPDATE_DATE,',
'    A.USER_ID as USER_ID,',
'    A.REMARKS as REMARKS,',
'    A.ORG_ID as ORG_ID,',
'    A.PAYMENT_TYPE AS PAYMENT_TYPE,',
'    A.EMPLOYMENT_CLASS_ID AS EMPLOYMENT_CLASS_ID,  ',
'    c.can_view,c.can_add, c.can_edit, c.can_delete,c.can_verify,can_approved,organisation_name,',
'(SELECT X.page_title',
'FROM TBLPAGELIST w join APEX_APPLICATION_PAGES x on w.webpage_id=x.page_id',
'WHERE w.PAGE_ID= C.PAGE_ID and application_id = :APP_ID) as PAGE_ID',
' FROM TBLUSERDETAIL  A JOIN TBLRESPONSIBILITY B ON A.RESPONSIBILITY_ID=B.RESPONSIBILITY_ID',
' JOIN TBLRESPONSIBILITYORGPAGE C ON  C.RESPONSIBILITY_ID=b.RESPONSIBILITY_ID',
'where a.user_id=:P1326_USERS',
'AND A.ORG_ID =:P1326_COMPANY_NAME'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1326_USERS,P1326_COMPANY_NAME'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'User Responsibility'
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
 p_id=>wwv_flow_imp.id(645546177802933168)
,p_name=>'ORGANISATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANISATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organisation Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(683007806167962985)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkey'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(683007981007962986)
,p_name=>'RESPONSIBILITY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBILITY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Responsibility Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(683008043881962987)
,p_name=>'EFFECTIVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_FROM'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(683008128402962988)
,p_name=>'EFFECTIVE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_TO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(683008220926962989)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(683008304494962990)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Creation Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(697609280338439641)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(697609338454439642)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Update Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(697609446736439643)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'User Id'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(697609547025439644)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(697609661501439645)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Organisation'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(697609775224439646)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(697609816020439647)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854409530390718012)
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
 p_id=>wwv_flow_imp.id(697609958612439648)
,p_name=>'CAN_VIEW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VIEW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can View'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697609998381439649)
,p_name=>'CAN_ADD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_ADD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Add'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697610085888439650)
,p_name=>'CAN_EDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_EDIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Edit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697610240985439651)
,p_name=>'CAN_DELETE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_DELETE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Delete'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697610330567439652)
,p_name=>'CAN_VERIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VERIFY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Verify'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697610422719439653)
,p_name=>'CAN_APPROVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_APPROVED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Approved'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(697610493437439654)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Page Label'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(683007760305962984)
,p_internal_uid=>39391076918780844
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
 p_id=>wwv_flow_imp.id(697614811782440123)
,p_interactive_grid_id=>wwv_flow_imp.id(683007760305962984)
,p_static_id=>'539982'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(697614990572440124)
,p_report_id=>wwv_flow_imp.id(697614811782440123)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(527833875680859086)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(645546177802933168)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697615570668440133)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(683007806167962985)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697616392675440143)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(683007981007962986)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697617349287440148)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(683008043881962987)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697618274198440152)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(683008128402962988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697619173013440156)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(683008220926962989)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697620074508440160)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(683008304494962990)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697620948928440164)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(697609280338439641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697621839340440168)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(697609338454439642)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697622725086440172)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(697609446736439643)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697623670624440175)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(697609547025439644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697624561451440179)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(697609661501439645)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>46
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697625429899440183)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(697609775224439646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697626333763440187)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(697609816020439647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697627225134440191)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(697609958612439648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697628158342440195)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(697609998381439649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697629040710440199)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(697610085888439650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697629941547440203)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(697610240985439651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697630831311440207)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(697610330567439652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697631703552440211)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(697610422719439653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(697632610235440215)
,p_view_id=>wwv_flow_imp.id(697614990572440124)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(697610493437439654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>226
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3766311353358792974)
,p_plug_name=>'Listing of User Accounts'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :APP_USER LIKE ''%INNOSYSGY.COM'' then',
'return q''~',
'select distinct	 "TBLUSER"."USER_ID" as "USER_ID",initcap(k.payment_type) payment_type,initcap(pkg_global_fnts.Get_Lookup_Col(k.employment_class_id, ''VALUE_DESCRIPTION'')) employment_class,',
'          "TBLUSER"."USER_ID" as "Edit",',
'	 (SELECT  INITCAP(A.SURNAME || '', '' || nvl(A.FIRST_NAME, ''''))||'' ''||nvl(A.MIDDLE_NAME,'''')||'' DOB:''||to_char(dob,''DD-MON-YY'')',
'||'' (''||A.SEX_CODE||'')'' ',
'          FROM HR_RCM_INDIVIDUAL a join hr_rcm_EMPLOYEE b on a.id=b.ind_id where b.id="TBLUSER"."EMPLOYEE_NO") as "EMPLOYEE",',
'	 "TBLUSER"."USER_NAME" as "USER_NAME",',
'	 "TBLUSER"."EMAIL" as "EMAIL",',
'	 "TBLUSER"."CAN_APPROVE" as "CAN_APPROVE",first_name, last_name,',
'	 "TBLUSER"."CAN_FORWARD" as "CAN_FORWARD",',
'	 "TBLUSER"."CAN_ISSUE" as "CAN_ISSUE",',
'	 "TBLUSER"."EFFECTIVE_FROM" as "EFFECTIVE_FROM",',
'	 "TBLUSER"."EFFECTIVE_TO" as "EFFECTIVE_TO",	',
'	 "TBLUSER"."LAST_UPDATED_BY" AS "LAST_UPDATED_BY", password_last_change, TBLUSER.created_by, TBLUSER.creation_date,',
'	 "TBLUSER"."LAST_UPDATE_DATE" as "LAST_UPDATE_DATE",',
'case when reset_archive_payroll=0 then ''N'' else ''Y'' end reset_archive_payroll,can_verify,is_buyer',
',LOAD_HOME',
'FROM	 "TBLUSER" "TBLUSER" left outer JOIN HR_RCM_EMPLOYEE K ON TBLUSER.EMPLOYEE_NO= K.ID',
'where  tbluser.user_id = nvl(:P1326_USERS, tbluser.user_id)',
'~'';',
'',
'else ',
'return q''~',
'select distinct	 "TBLUSER"."USER_ID" as "USER_ID",initcap(k.payment_type) payment_type,initcap(pkg_global_fnts.Get_Lookup_Col(k.employment_class_id, ''VALUE_DESCRIPTION'')) employment_class,',
'          "TBLUSER"."USER_ID" as "Edit",',
'	 (SELECT  INITCAP(A.SURNAME || '', '' || nvl(A.FIRST_NAME, ''''))||'' ''||nvl(A.MIDDLE_NAME,'''')||'' DOB:''||to_char(dob,''DD-MON-YY'')',
'||'' (''||A.SEX_CODE||'')'' ',
'          FROM HR_RCM_INDIVIDUAL a join VW_EMPLOYEE b on a.id=b.ind_id where b.id="TBLUSER"."EMPLOYEE_NO") as "EMPLOYEE",',
'	 "TBLUSER"."USER_NAME" as "USER_NAME",',
'	 "TBLUSER"."EMAIL" as "EMAIL",',
'	 "TBLUSER"."CAN_APPROVE" as "CAN_APPROVE",first_name, last_name,',
'	 "TBLUSER"."CAN_FORWARD" as "CAN_FORWARD",',
'	 "TBLUSER"."CAN_ISSUE" as "CAN_ISSUE",',
'	 "TBLUSER"."EFFECTIVE_FROM" as "EFFECTIVE_FROM",',
'	 "TBLUSER"."EFFECTIVE_TO" as "EFFECTIVE_TO",	',
'	 "TBLUSER"."LAST_UPDATED_BY" AS "LAST_UPDATED_BY", password_last_change, TBLUSER.created_by, TBLUSER.creation_date,',
'	 "TBLUSER"."LAST_UPDATE_DATE" as "LAST_UPDATE_DATE",',
'case when reset_archive_payroll=0 then ''N'' else ''Y'' end reset_archive_payroll,can_verify,is_buyer',
',LOAD_HOME',
'FROM	 "TBLUSER" "TBLUSER" left outer JOIN HR_RCM_EMPLOYEE K ON TBLUSER.EMPLOYEE_NO= K.ID',
'where  tbluser.user_id = nvl(:P1326_USERS, tbluser.user_id)',
'and exists(select 1',
'           from tbluserdetail x',
'           where x.user_id =TBLUSER.user_id',
'           and org_id =:APP_ORG_ID',
'           )',
'~'';',
'',
'END IF;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1326_COMPANY_NAME,P1326_USERS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3766311163997792974)
,p_name=>'Listing of User Accounts'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV'
,p_enable_mail_download=>'N'
,p_owner=>'RICHARD'
,p_internal_uid=>108352692338380161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854834610741854698)
,p_db_column_name=>'USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Id'
,p_column_type=>'NUMBER'
,p_static_id=>'USER_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854834236761854696)
,p_db_column_name=>'Edit'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.::P1327_USER_ID:#USER_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'Edit'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854833832258854696)
,p_db_column_name=>'USER_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854833390924854695)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854833021423854695)
,p_db_column_name=>'CAN_APPROVE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Approve'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CAN_APPROVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854832611885854694)
,p_db_column_name=>'CAN_FORWARD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'FWD'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CAN_FORWARD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854832184152854694)
,p_db_column_name=>'CAN_ISSUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Issue'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CAN_ISSUE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854831805959854693)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Effect From'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854831405799854693)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Effect To'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854831034531854692)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854830607253854692)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854830236198854691)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854836165554854700)
,p_db_column_name=>'CAN_VERIFY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Can Verify'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CAN_VERIFY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854835833567854699)
,p_db_column_name=>'IS_BUYER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Is Buyer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IS_BUYER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854835450288854699)
,p_db_column_name=>'RESET_ARCHIVE_PAYROLL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Arch Pay'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RESET_ARCHIVE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854839285545854708)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>46
,p_column_identifier=>'AB'
,p_column_label=>'Payment type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854839002232854704)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>56
,p_column_identifier=>'AC'
,p_column_label=>'Employment class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3727144375618070403)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>96
,p_column_identifier=>'AG'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3727144428668070404)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>106
,p_column_identifier=>'AH'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3700595817516147501)
,p_db_column_name=>'LOAD_HOME'
,p_display_order=>116
,p_column_identifier=>'AI'
,p_column_label=>'Load Home'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611403430622296961)
,p_db_column_name=>'PASSWORD_LAST_CHANGE'
,p_display_order=>136
,p_column_identifier=>'AK'
,p_column_label=>'Password Last Change'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611403469374296962)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>146
,p_column_identifier=>'AL'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611403559868296963)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>156
,p_column_identifier=>'AM'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3766309851506792962)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'198340'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'Edit:USER_NAME:EMPLOYEE:EMAIL:FIRST_NAME:LAST_NAME:EFFECTIVE_FROM:EFFECTIVE_TO:EMPLOYMENT_CLASS:PAYMENT_TYPE:CAN_APPROVE:CAN_VERIFY:RESET_ARCHIVE_PAYROLL:LOAD_HOME:PASSWORD_LAST_CHANGE:'
,p_break_on=>'0'
,p_break_enabled_on=>'0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3854648166551299010)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796772003441378196)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854828981485854672)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3854648166551299010)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854829411651854677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3854648166551299010)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3854828165927854668)
,p_branch_action=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:1327::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3854829411651854677)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(609802483640082568)
,p_name=>'P1326_COMPANY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(683007676333962983)
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, ID',
'from HR_HCF_ORGANISATION X',
'where exists(select 1',
'           from tbluserdetail y',
'           where x.ID=Y.ORG_ID',
'           and APPLICATION_schema_NAME= :G_PARSING_SCHEMA         ',
'           AND USER_ID =:P1326_USERS  ',
'            )      ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1326_USERS'
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
 p_id=>wwv_flow_imp.id(683007502548962982)
,p_name=>'P1326_USERS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(683007327748962980)
,p_prompt=>'Users'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(a.USER_NAME||'':-''||first_name||'' ''||last_name) a, a.user_id b',
'FROM tbluser a ',
'where exists (  select 1',
'                from tbluserdetail b ',
'                where a.user_id = b.USER_ID',
'                and b.EFFECTIVE_TO IS NULL                 ',
'                AND ORG_ID= TO_NUMBER(:P1326_ORGANISATION) ',
'            )',
'order by last_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All for the Organisation--'
,p_lov_cascade_parent_items=>'P1326_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3701218589049348768)
,p_name=>'P1326_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(683007327748962980)
,p_prompt=>'Environment'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT initcap(organisation_name) a, ORG_ID',
'from tbluserdetail',
'where APPLICATION_SCHEMA_NAME=:G_PARSING_SCHEMA  ',
'AND  user_id =:APP_USER_ID',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(697610677206439655)
,p_name=>'refresh_user'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1326_USERS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(697610740920439656)
,p_event_id=>wwv_flow_imp.id(697610677206439655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ref_responsibility'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(683007676333962983)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(697610867817439657)
,p_event_id=>wwv_flow_imp.id(697610677206439655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'ref_userlist'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3766311353358792974)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(609802805540082571)
,p_name=>'REF_USER_DETAILS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1326_COMPANY_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609802940281082572)
,p_event_id=>wwv_flow_imp.id(609802805540082571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(683007676333962983)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
