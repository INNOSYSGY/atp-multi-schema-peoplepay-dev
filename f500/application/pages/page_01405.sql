prompt --application/pages/page_01405
begin
--   Manifest
--     PAGE: 01405
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
 p_id=>1405
,p_name=>'frmUserDetail'
,p_alias=>'FRMUSERDETAIL'
,p_step_title=>'Create/Edit User Account Detail'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806298936519242590)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3360171962121938982)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796349869833804324)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4329968928986628468)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4329969011647628469)
,p_plug_name=>'Details of Responsibility Assigned'
,p_parent_plug_id=>wwv_flow_imp.id(4329968928986628468)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct A.USER_DETAIL_ID as USER_DETAIL_ID,',
'    A.RESPONSIBILITY_ID as RESPONSIBILITY_ID,',
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
'    c.can_view,c.can_add, c.can_edit, c.can_delete,c.can_verify,can_approved,',
'(SELECT X.page_title',
'FROM TBLPAGELIST w join APEX_APPLICATION_PAGES x on w.webpage_id=x.page_id',
'WHERE w.PAGE_ID= C.PAGE_ID and application_id = :APP_ID) as PAGE_ID',
' FROM TBLUSERDETAIL  A JOIN TBLRESPONSIBILITY B ON A.RESPONSIBILITY_ID=B.RESPONSIBILITY_ID',
' JOIN TBLRESPONSIBILITYORGPAGE C ON  C.RESPONSIBILITY_ID=b.RESPONSIBILITY_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Details of Responsibility Assigned'
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
 p_id=>wwv_flow_imp.id(4329969265631628471)
,p_name=>'USER_DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_DETAIL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(4794819111755498870)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4329969291485628472)
,p_name=>'RESPONSIBILITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBILITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Responsibility'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806747838526168152)
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
 p_id=>wwv_flow_imp.id(4329969379454628473)
,p_name=>'EFFECTIVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_FROM'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective From'
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
 p_id=>wwv_flow_imp.id(4329969527378628474)
,p_name=>'EFFECTIVE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_TO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(4329969642296628475)
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
 p_id=>wwv_flow_imp.id(4329969697379628476)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Creation Date'
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
 p_id=>wwv_flow_imp.id(4329969868735628477)
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
 p_id=>wwv_flow_imp.id(4329969887286628478)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Update Date'
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
 p_id=>wwv_flow_imp.id(4329969974180628479)
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
 p_id=>wwv_flow_imp.id(4329970128566628480)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
 p_id=>wwv_flow_imp.id(4329970268895628481)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
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
 p_id=>wwv_flow_imp.id(4329970338418628482)
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
 p_id=>wwv_flow_imp.id(4329970411088628483)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employment Class Id'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4329970571188628484)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Page Label'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(4329970733559628486)
,p_name=>'CAN_VIEW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VIEW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can View'
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
 p_id=>wwv_flow_imp.id(4329970811137628487)
,p_name=>'CAN_ADD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_ADD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Add'
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
 p_id=>wwv_flow_imp.id(4329970968062628488)
,p_name=>'CAN_EDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_EDIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Edit'
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
 p_id=>wwv_flow_imp.id(4329971067362628489)
,p_name=>'CAN_DELETE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_DELETE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Delete'
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
 p_id=>wwv_flow_imp.id(4329971087021628490)
,p_name=>'CAN_VERIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VERIFY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Verify'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(4329971225537628491)
,p_name=>'CAN_APPROVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_APPROVED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can Approved'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4329969134124628470)
,p_internal_uid=>1552184673693357299
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(4332704439111020558)
,p_interactive_grid_id=>wwv_flow_imp.id(4329969134124628470)
,p_static_id=>'4237338'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4332704599671020558)
,p_report_id=>wwv_flow_imp.id(4332704439111020558)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332705071897020562)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4329969265631628471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332706009869020568)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4329969291485628472)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332706935665020572)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4329969379454628473)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332707861706020575)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4329969527378628474)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332708675827020579)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4329969642296628475)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332709599207020582)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4329969697379628476)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332710513376020586)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(4329969868735628477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332711420458020590)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(4329969887286628478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332712364083020593)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4329969974180628479)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332713240949020596)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4329970128566628480)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332714111192020600)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4329970268895628481)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332715041462020603)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4329970338418628482)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332715897833020607)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4329970411088628483)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332716802998020610)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4329970571188628484)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>318
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332745156901511309)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4329970733559628486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332746012889511314)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4329970811137628487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332746940120511317)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4329970968062628488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332747838026511321)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4329971067362628489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332748738554511325)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4329971087021628490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4332749593357511328)
,p_view_id=>wwv_flow_imp.id(4332704599671020558)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4329971225537628491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4794821353733498876)
,p_plug_name=>'Create/Edit User Detail for &P1405_USER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(4329968928986628468)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_DETAIL_ID,',
'       RESPONSIBILITY_ID,',
'       EFFECTIVE_FROM,',
'       EFFECTIVE_TO,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       LAST_UPDATED_BY,',
'       LAST_UPDATE_DATE,',
'       USER_ID,',
'       REMARKS,',
'       ORG_ID,',
'       PAYMENT_TYPE,',
'       EMPLOYMENT_CLASS_ID,',
'       self_serve_org,',
'       VIEW_REPORT_TO_ONLY,EXPIRE_ACCESS, APPLICATION_SCHEMA_NAME',
'  from TBLUSERDETAIL X',
'  where USER_ID=:P1405_USER_ID',
'  AND ORG_ID = nvl(:P1405_ORGANISATION, ORG_ID)',
'  AND RESPONSIBILITY_ID=nvl(:P1405_RESPONSIBILITY, RESPONSIBILITY_ID)',
'   and APPLICATION_SCHEMA_NAME =:G_PARSING_SCHEMA',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1405_USER_ID,P1405_ORGANISATION,P1405_RESPONSIBILITY'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(666753928779456572)
,p_name=>'APPLICATION_SCHEMA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_SCHEMA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_PARSING_SCHEMA'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4666403731247121678)
,p_name=>'EXPIRE_ACCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRE_ACCESS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expire Access'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853758902365852561)
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
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_help_text=>'Permanently removes user access.'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4761415830829849097)
,p_name=>'VIEW_REPORT_TO_ONLY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VIEW_REPORT_TO_ONLY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'View Report To Only'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853758902365852561)
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
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4769567885086310094)
,p_name=>'SELF_SERVE_ORG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELF_SERVE_ORG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Self Serve'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853758902365852561)
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
 p_id=>wwv_flow_imp.id(4794811884668498861)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
'',
'select a.value_description a, a.id b',
'    from  hr_hcf_lookup a ',
'    where table_name=''TBLEMPLOYMENTCLASS''',
'    and a.org_id = pkg_global_fnts.fn_shareRefOrg(:ORG_ID) ',
'    and a.start_period <= trunc(current_date)',
'    and (a.end_period is null or end_period >= trunc(current_date) )',
'    order by 1',
'    ',
'',
'/*select a.value_description a, a.id b',
'    from  hr_hcf_lookup a ',
'    where table_name=''TBLEMPLOYMENTCLASS''',
'    and a.org_id = :ORG_ID',
'    and a.start_period <= trunc(current_date)',
'    and (a.end_period is null or end_period >= trunc(current_date) )',
'    order by 1',
'    ',
'/*',
'IF :SELF_SERVE_ORG =1 and :USER_DETAIL_ID is null THEN',
'return',
'  ''select  value_description, b.employment_class_id',
'  from TBLUSER a join hr_rcm_employee b on A.employee_no=b.id',
'  join hr_hcf_lookup c join c.id=b.employment_class_id',
'  where user_id=:USER_ID'';',
'',
'elsif  :SELF_SERVE_ORG =0 and :USER_DETAIL_ID is null THEN',
'return',
'   ''select a.value_description a, a.id b',
'    from  hr_hcf_lookup a ',
'    where table_name=''''TBLEMPLOYMENTCLASS''''',
'    and a.org_id = :ORG_ID',
'    and a.start_period <= trunc(current_date)',
'    and (a.end_period is null or end_period >= trunc(current_date) )',
'    order by 1'';',
'',
'    ',
'else',
'RETURN ',
'    ''select a.value_description a, a.id b',
'    from  hr_hcf_lookup a ',
'    where table_name=''TBLEMPLOYMENTCLASS''',
'    and a.org_id = :ORG_ID',
'    and a.start_period <= trunc(current_date)',
'    and (a.end_period is null or end_period >= trunc(current_date) )',
'    order by 1''',
'    */'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ORG_ID'
,p_ajax_items_to_submit=>'USER_ID,USER_DETAIL_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794812459084498861)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct VALUE_DESCRIPTION A, UPPER(VALUE_DESCRIPTION) B',
'from  HR_HCF_LOOKUP a',
'where upper(table_name)=''TBLPAYMENTTYPE''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where A.org_id=b.id',
'           AND USE_FOR_SEEDED_DATA=1',
'           and organisation_type=''SOFTWARE USER''',
'           )',
'ORDER BY 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--None--'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794813094134498861)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
'if nvl(V(''APP_USER''),USER) like ''%INNOSYSGY.COM'' then',
'return',
'    ''select organisation_name||'''' ''''|| CASE WHEN end_date is null or end_date >= trunc(current_date) THEN ''''(Active)'''' else ''''(Close)'''' end a, id b',
'    from hr_hcf_organisation',
'    where organisation_type=''''SOFTWARE USER''''',
'order by 1'';',
'',
'else',
'',
'return',
'    ''select organisation_name,id',
'from hr_hcf_organisation a',
'where organisation_type=''''SOFTWARE USER''''',
'and id= :APP_ORG_ID',
'and start_date <= trunc(current_date)',
'order by 1'';',
'',
'end if;',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--None--'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794813685955498862)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>75
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794814238665498862)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1405_USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794814853783498862)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Update Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794815476937498862)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Updated By'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794816134795498864)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Creation Date'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794816672606498864)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794817241352498864)
,p_name=>'EFFECTIVE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_TO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective To'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794817926101498864)
,p_name=>'EFFECTIVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_FROM'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Effective From'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794818534639498864)
,p_name=>'RESPONSIBILITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBILITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Responsibility'
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806747838526168152)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794819111755498870)
,p_name=>'USER_DETAIL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_DETAIL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794819703115498870)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4794820224035498871)
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
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4794820853632498872)
,p_internal_uid=>2017036393201227701
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_update_authorization_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3806737940974971898)
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
 p_id=>wwv_flow_imp.id(4794820478790498871)
,p_interactive_grid_id=>wwv_flow_imp.id(4794820853632498872)
,p_static_id=>'18222'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4794820366929498871)
,p_report_id=>wwv_flow_imp.id(4794820478790498871)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(668918719155418031)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(666753928779456572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4683601173823463526)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4666403731247121678)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760882052935051092)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4761415830829849097)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4766249801556736981)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4769567885086310094)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794811475118498861)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4794811884668498861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794812060908498861)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4794812459084498861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794812703113498861)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4794813094134498861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>237
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794813312168498861)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4794813685955498862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>371
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794813874752498862)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4794814238665498862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794814454756498862)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4794814853783498862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794815051471498862)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4794815476937498862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794815725432498862)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4794816134795498864)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794816311198498864)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4794816672606498864)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794816913212498864)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4794817241352498864)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794817453869498864)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4794817926101498864)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794818092821498864)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4794818534639498864)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>181
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794818716800498868)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4794819111755498870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4794819242413498870)
,p_view_id=>wwv_flow_imp.id(4794820366929498871)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4794819703115498870)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4911873502954215318)
,p_plug_name=>'Screen Data Exceptions (Select Row above then Exclude screen here)'
,p_parent_plug_id=>wwv_flow_imp.id(4794821353733498876)
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    userdtl_id,',
'    form_name,end_date, start_date,',
'    user_id_denom,',
'    org_id,',
'    employment_class_ID,',
'    payment_type,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by',
'FROM tbluserdtlexception;'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Screen Data Exceptions (Select Row above then Exclude screen here)'
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
 p_id=>wwv_flow_imp.id(4911873653566215320)
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
 p_id=>wwv_flow_imp.id(4911873810278215321)
,p_name=>'USERDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERDTL_ID'
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
,p_parent_column_id=>wwv_flow_imp.id(4794819111755498870)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4911873857088215322)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Form Name'
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
,p_max_length=>255
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICATION_TAB||'': ''||page_title||'': ''||WEBPAGE_ID DISNAME, WEBPAGE_NAME    ',
'FROM TBLPAGELIST a join apex_application_pages b on a.webpage_id=b.page_id',
'where upper(WEBPAGE_NAME) like ''FRM%''',
'and workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'AND application_id=:APP_ID',
'and exists(select 1',
'           from APP_MODULE x',
'           where upper(trim(b.page_group)) = trim(x.module_name)',
'           and module_name = ''EMPLOYEE MANAGEMENT''',
'           )',
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4911873923159215323)
,p_name=>'USER_ID_DENOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID_DENOM'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P1405_USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4911874271361215326)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(4911874322861215327)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
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
 p_id=>wwv_flow_imp.id(4911874463001215328)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
 p_id=>wwv_flow_imp.id(4911874617736215329)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
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
 p_id=>wwv_flow_imp.id(4911874700821215330)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
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
 p_id=>wwv_flow_imp.id(4911875343939215337)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4911875458855215338)
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
 p_id=>wwv_flow_imp.id(4911875714947215340)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853794651931864588)
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
 p_id=>wwv_flow_imp.id(4911875790272215341)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853987022755144140)
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
 p_id=>wwv_flow_imp.id(4911875851897215342)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(4911875949578215343)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4911873613541215319)
,p_internal_uid=>2134089153109944148
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
 p_id=>wwv_flow_imp.id(4912674788258613261)
,p_interactive_grid_id=>wwv_flow_imp.id(4911873613541215319)
,p_static_id=>'378091'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4912674957286613261)
,p_report_id=>wwv_flow_imp.id(4912674788258613261)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4874870913321719061)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4911875714947215340)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4874872262760719065)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4911875790272215341)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912675459051613267)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4911873653566215320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912676332248613274)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4911873810278215321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912677244689613279)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4911873857088215322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>358
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912678127430613282)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4911873923159215323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912680882867613292)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4911874271361215326)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912681748037613297)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4911874322861215327)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912682642299613301)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4911874463001215328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912683545863613304)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4911874617736215329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912684336112613308)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4911874700821215330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912733956776649438)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4911875343939215337)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912759204141790703)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4911875851897215342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4912760069544790706)
,p_view_id=>wwv_flow_imp.id(4912674957286613261)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4911875949578215343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4329970614447628485)
,p_plug_name=>'Fine Grain Security'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4821705516507122679)
,p_plug_name=>'Fine Grain User Restrictions By Grades for &P1405_USER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(4329970614447628485)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    user_id,',
'    remarks,',
'    grade_id,',
'    last_changed_by,',
'    last_changed_date,',
'    entry_date,',
'    entered_by,',
'    id,start_date, END_DATE,',
'    USRGRD_ORG_ID',
'FROM  tbluserdetailgrade',
'where user_id =:P1405_USER_ID',
'AND USRGRD_ORG_ID =:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1405_USER_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4605622338076057972)
,p_name=>'USRGRD_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRGRD_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_ORG_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4821703563459122660)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(4821703641414122661)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(4821704350356122668)
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
 p_id=>wwv_flow_imp.id(4821704527300122669)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4821704616334122670)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4821704674669122671)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4821704801472122672)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(4821704919782122673)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(4821704955856122674)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
 p_id=>wwv_flow_imp.id(4821705085022122675)
,p_name=>'GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMdate A ,JOB_GRADE_ID',
'from HR_HCF_JOB a join HR_HCF_POSITIONGRADE c on c.id=a.JOB_GRADE_ID',
'where exists (select 1',
'              from TBLUSERDETAIL b',
'              where b.EMPLOYMENT_CLASS_ID = a.EMPLOYMENT_CLASS_JOB',
'              and user_id=:P1405_USER_ID)',
'and exists (select 1',
'           from  hr_rcm_employee w ',
'             where w.emp_grade_id=c.id)                                   '))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--None--'
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
 p_id=>wwv_flow_imp.id(4821705177372122676)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
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
 p_id=>wwv_flow_imp.id(4821705326710122677)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
,p_default_expression=>'P1405_USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4821705391446122678)
,p_internal_uid=>2043920931014851507
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(4821062794797139689)
,p_interactive_grid_id=>wwv_flow_imp.id(4821705391446122678)
,p_static_id=>'18221'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4821062680981139689)
,p_report_id=>wwv_flow_imp.id(4821062794797139689)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4627386316014365013)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4605622338076057972)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4820111202449044093)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4821703563459122660)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4820111708154044097)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4821703641414122661)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821051842702134992)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4821704527300122669)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821058693600139671)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4821704616334122670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821059199911139673)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4821704674669122671)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821059722407139675)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4821704801472122672)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821060141526139676)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4821704919782122673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821060643731139678)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4821704955856122674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821061183619139680)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4821705085022122675)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>243
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821061656935139682)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4821705177372122676)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4821062152910139685)
,p_view_id=>wwv_flow_imp.id(4821062680981139689)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4821705326710122677)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4821703901718122663)
,p_plug_name=>'Generate Grades for &P1405_USER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(4821705516507122679)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4949961510797701576)
,p_plug_name=>'Fine Grain User Restrictions By Departments for &P1405_USER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(4329970614447628485)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       USER_ID,ACCESS_CHILDREN,',
'       ORG_STRUCTURE_ID,',
'       START_DATE,',
'       END_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ORG_ID,webpage_id, responsibility_id, remarks',
'  from TBLUSERDETAILORGSTRUCT',
'where USER_ID =:P1405_USER_ID',
'and org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1405_USER_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3915191648292470574)
,p_name=>'WEBPAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEBPAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Webpage '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
'select  apage.page_title||'' No.''||Webpage_Id, WEBPAGE_ID ',
'from tblpagelist pg join APEX_APPLICATION_PAGES apage on  apage.page_id= pg.Webpage_Id',
'where application_id=:APP_ID',
'and exists (select 1',
'              from  tblresponsibilityorgpage udtl ',
'              where pg.page_id = udtl.page_id',
'              and responsibility_id =:RESPONSIBILITY_ID',
'              )',
' '))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'RESPONSIBILITY_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3915191829083470575)
,p_name=>'RESPONSIBILITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBILITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Responsibility'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT responsibility_NAME, responsibility_id',
'from tblresponsibility resp',
'where exists (select 1',
'            from tbluserdetail udtl',
'            where resp.responsibility_id = udtl.responsibility_id',
'            and  user_id=:P1405_USER_ID',
'            and expire_access=0)'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P1405_USER_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3915191888178470576)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(4949960173970701563)
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
 p_id=>wwv_flow_imp.id(4949960292973701564)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4949960397921701565)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(4949960493575701566)
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
 p_id=>wwv_flow_imp.id(4949960623723701567)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4949960730916701568)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4949960850127701569)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(4949960876379701570)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
 p_id=>wwv_flow_imp.id(4949961015972701571)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4949961147379701572)
,p_name=>'ORG_STRUCTURE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_STRUCTURE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description||'' (Count:''||(select count(1) ',
'from hr_rcm_employee',
'where orgdtl_id=m.Id)||'')''  A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and org_id= :APP_ORG_ID)',
'order by 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(4949961188625701573)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
,p_default_expression=>'P1405_USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4949961292142701574)
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
 p_id=>wwv_flow_imp.id(4983394191618978539)
,p_name=>'ACCESS_CHILDREN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESS_CHILDREN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4949961402433701575)
,p_internal_uid=>2172176942002430404
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(4948749164517285443)
,p_interactive_grid_id=>wwv_flow_imp.id(4949961402433701575)
,p_static_id=>'18220'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4948749128986285442)
,p_report_id=>wwv_flow_imp.id(4948749164517285443)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3915383166371877235)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3915191648292470574)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>274.547
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3915384063006877238)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3915191829083470575)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>168.734
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3915384983724877241)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3915191888178470576)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131.3125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948742995477279711)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4949960292973701564)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948744090017285422)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4949960397921701565)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948744602917285423)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4949960493575701566)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948745085670285425)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4949960623723701567)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948745637262285427)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4949960730916701568)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948746154980285429)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4949960850127701569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948746569738285430)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4949960876379701570)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948747138057285432)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4949961015972701571)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948747613895285434)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4949961147379701572)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>334.641
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948748080864285436)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4949961188625701573)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4948748604244285441)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4949961292142701574)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4982845854776883657)
,p_view_id=>wwv_flow_imp.id(4948749128986285442)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4983394191618978539)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>114.25
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4794810009089492901)
,p_plug_name=>'Search and Switch (Clear search before add/editing records)'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3365860080560261996)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4821703901718122663)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3365868306559262009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4949961510797701576)
,p_button_name=>'GENERATE_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Data Partition'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.:242:P242_USER_ID:&P1405_USER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3365886931213262037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3360171962121938982)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:RP,1327:P1327_USER_ID:&P1405_USER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3365851223219261966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4794810009089492901)
,p_button_name=>'SWITCH_ORGANISATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Switch Organisation'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675492005227057693)
,p_name=>'P1405_USER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4794810009089492901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3365851584147261971)
,p_name=>'P1405_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4794810009089492901)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3365851994247261973)
,p_name=>'P1405_RESPONSIBILITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4794810009089492901)
,p_prompt=>'Responsibility'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(responsibility_name) disname,responsibility_id    ',
'from tblresponsibility a',
'where exists(select 1',
'             from tbluserdetail b',
'             where a.RESPONSIBILITY_ID=b.RESPONSIBILITY_ID',
'             and user_id=to_number(:P1405_USER_ID))',
'             '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
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
 p_id=>wwv_flow_imp.id(3365852412600261974)
,p_name=>'P1405_ORGANISATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4794810009089492901)
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and exists(select 1',
'           from tbluserdetail y',
'           where x.id=y.org_id',
'           and user_id = :P1405_USER_ID)',
'order by organisation_name             '))
,p_lov_cascade_parent_items=>'P1405_RESPONSIBILITY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3365860506221261996)
,p_name=>'P1405_GENERATE_RATES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4821703901718122663)
,p_prompt=>'Generate Rates'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMdate A ,JOB_GRADE_ID',
'from HR_HCF_JOB a join HR_HCF_POSITIONGRADE c on c.id=a.JOB_GRADE_ID',
'where exists (select 1',
'              from TBLUSERDETAIL b',
'              where b.EMPLOYMENT_CLASS_ID = a.EMPLOYMENT_CLASS_JOB',
'              and user_id=:P1405_USER_ID)',
'and not exists (select 1',
'                from TBLUSERDETAILGRADE x',
'                where x.GRADE_ID=c.id)  ',
'and exists (select 1',
'           from  hr_rcm_employee w ',
'             where w.emp_grade_id=c.id)                    '))
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3365887777013262039)
,p_tabular_form_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_validation_name=>'CHK_SELFSERVICE_EMPLOYEE'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :SELF_SERVE_ORG = 1 and :P1405_EMPLOYEE_NO is null and upper(pkg_global_fnts.Get_Lookup_Col(:EMPLOYMENT_CLASS_ID, ''VALUE_DESCRIPTION'')) !=''APPLICANT'' then',
'     return ''Self serve users must be linked to an employee. Set an Employee No. for this user account before configuring self serve account details.'';',
'elsif :SELF_SERVE_ORG = 1 and :P1405_EMAIL is null then',
'      return ''Self serve users must have an email account before configuring self serve account details.'';',
'else',
'     return '''';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3365887376375262038)
,p_tabular_form_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_validation_name=>'test_selfserver_payment_type'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_payment_type varchar2(100);',
'    ',
'begin',
'  if :SELF_SERVE_ORG = 1 then',
'        select b.payment_type into v_payment_type',
'        from TBLUSER a join hr_rcm_employee b on A.employee_no = b.id',
'        where user_id=:USER_ID;',
'            ',
'        if  upper(v_payment_type) !=  upper(:PAYMENT_TYPE) then ',
'            return FALSE;',
'        else',
'            return TRUE;',
'        end if;',
'end if;',
'',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The payment type select does not reflect the employee payment type.'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3365897729243262056)
,p_name=>'set_paytype_empclass'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_triggering_element=>'SELF_SERVE_ORG'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'SELF_SERVE_ORG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'select'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3365898224578262056)
,p_event_id=>wwv_flow_imp.id(3365897729243262056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PAYMENT_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.payment_type',
'from TBLUSER a join hr_rcm_employee b on A.employee_no = b.id',
'where user_id=:USER_ID'))
,p_attribute_07=>'USER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3365898729990262057)
,p_event_id=>wwv_flow_imp.id(3365897729243262056)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMPLOYMENT_CLASS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.employment_class_id',
'from TBLUSER a join hr_rcm_employee b on A.employee_no = b.id',
'where user_id=:USER_ID'))
,p_attribute_07=>'USER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3365899153639262057)
,p_name=>'search_detail'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1405_ORGANISATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3365899601924262058)
,p_event_id=>wwv_flow_imp.id(3365899153639262057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3365900043310262058)
,p_name=>'set_self_serve_attrib'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_triggering_element=>'RESPONSIBILITY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3365900527920262059)
,p_event_id=>wwv_flow_imp.id(3365900043310262058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PAYMENT_TYPE,EMPLOYMENT_CLASS_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select payment_type, employment_class_id',
'from hr_rcm_employee',
'where id=(select employee_no from tbluser where user_name = :APP_USER)',
'and (select responsibility_name from tblresponsibility where responsibility_id =:RESPONSIBILITY_ID)',
'like ''%SELF%READ%''',
''))
,p_attribute_07=>'RESPONSIBILITY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1387450069985575086)
,p_name=>'set_effective_to'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_triggering_element=>'EXPIRE_ACCESS'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EXPIRE_ACCESS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1387450124547575087)
,p_event_id=>wwv_flow_imp.id(1387450069985575086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EFFECTIVE_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :EXPIRE_ACCESS= 1 then trunc(current_date) - 1 else null end ',
'from dual'))
,p_attribute_07=>'EXPIRE_ACCESS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365888086454262039)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_close_prv_organisations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_chk_company number:=0;',
'',
'begin',
'        select count(1) into v_chk_company',
'        from tbluserdetail',
'        where org_id = :ORG_ID',
'        and user_id = :P1405_USER_ID;   ',
'',
'    if v_chk_company =0 then',
'    ',
'        UPDATE tbluserdetail',
'        SET EFFECTIVE_TO = NULL',
'           ,EFFECTIVE_FROM = CASE WHEN EFFECTIVE_FROM > trunc(current_date) THEN trunc(current_date)',
'                            ELSE EFFECTIVE_FROM END',
'        WHERE EXISTS (SELECT 1',
'                      FROM tbluser A',
'                      WHERE A.user_id=tbluserdetail.user_id',
'                      and  trunc(effective_from) <= trunc(current_date)',
'                      and (effective_to is null or trunc(effective_to) >= trunc(current_date))',
'                      )',
'        AND tbluserdetail.user_id = :USER_ID                 ',
'        AND tbluserdetail.ORG_ID = :ORG_ID',
'        and Application_Schema_Name = :G_PARSING_SCHEMA',
'        and expire_access=0;',
'        ',
'        UPDATE tbluserdetail',
'        SET EFFECTIVE_TO = trunc(current_date)-1',
'        WHERE EXISTS (SELECT 1',
'                       FROM tbluser A',
'                      WHERE A.user_id=tbluserdetail.user_id',
'                      and  trunc(effective_from) <= trunc(current_date)',
'                      and (effective_to is null or trunc(effective_to) >= trunc(current_date))',
'                     )',
'        and tbluserdetail.user_id = :USER_ID    ',
'        AND tbluserdetail.ORG_ID !=:ORG_ID',
'        and Application_Schema_Name = :G_PARSING_SCHEMA',
'        and expire_access=0;',
'',
'    begin ',
'        SELECT DISTINCT short_name, id, b.country into :APP_ORG_NAME , :APP_ORG_ID, :APP_COUNTRY',
'        FROM hr_hcf_organisation B',
'        where exists (select 1',
'                      FROM tbluserdetail A join tbluser c on c.USER_ID=a.USER_ID',
'                      where  trunc(A.effective_from) <= trunc(current_date)',
'                      AND (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'                      AND UPPER(user_name) = UPPER(:APP_USER)',
'                      and A.org_id=B.ID);',
'    exception',
'        when others then null;',
'    end;                 ',
'    end if;',
'    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2722693536674653771
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365888475634262039)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4794821353733498876)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2722693925854653771
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365896861360262054)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTIVATE_ORG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'UPDATE tbluserdetail',
'SET EFFECTIVE_TO = NULL',
'   ,EFFECTIVE_FROM = CASE WHEN EFFECTIVE_FROM > trunc(current_date) THEN trunc(current_date)',
'                    ELSE EFFECTIVE_FROM END',
'WHERE EXISTS (SELECT 1',
'              FROM tbluser A',
'              WHERE A.user_id=tbluserdetail.user_id',
'              and  trunc(effective_from) <= trunc(current_date)',
'              and (effective_to is null or trunc(effective_to) >= trunc(current_date))',
'              )',
'AND tbluserdetail.user_id = :P1405_USER_ID                 ',
'AND tbluserdetail.ORG_ID =:P1405_ORGANISATION',
'and Application_Schema_Name = :G_PARSING_SCHEMA',
'and expire_access=0;',
'',
'UPDATE tbluserdetail',
'SET EFFECTIVE_TO = trunc(current_date)-1',
'WHERE EXISTS (SELECT 1',
'               FROM tbluser A',
'              WHERE A.user_id=tbluserdetail.user_id',
'              and  trunc(effective_from) <= trunc(current_date)',
'              and (effective_to is null or trunc(effective_to) >= trunc(current_date))',
'             )',
'and tbluserdetail.user_id = :P1405_USER_ID    ',
'AND tbluserdetail.ORG_ID !=:P1405_ORGANISATION',
'and Application_Schema_Name = :G_PARSING_SCHEMA',
'and expire_access=0;',
'',
'begin',
'    SELECT  short_name, id into :APP_ORG_NAME , :APP_ORG_ID',
'    FROM hr_hcf_organisation B',
'    where exists (select 1',
'                FROM tbluserdetail A join tbluser c on c.USER_ID=a.USER_ID',
'                where  trunc(A.effective_from) <= trunc(current_date)',
'                AND (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'                AND UPPER(user_name) = UPPER(:APP_USER)              ',
'                and A.org_id=B.ID)',
'     AND ID =:P1405_ORGANISATION;',
'',
'exception',
'    when others then null;',
'end;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3365851223219261966)
,p_process_success_message=>'Organisation successfully switched.'
,p_internal_uid=>2722702311580653786
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365896528985262054)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NOTIFICATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_org_name varchar2(500); v_user_name varchar2(100);',
'  ',
'begin',
'',
'    select ORGANISATION_NAME  into v_org_name',
'    from HR_HCF_ORGANISATION',
'    where id=:P1405_ORGANISATION;    ',
'   ',
'',
'     pkg_biz_rules.pop_notification',
'            (',
'                ''Active organisation have switched to.: ''||v_org_name||'' for user ''||:P1405_USER_NAME||'' on: ''||to_char(trunc(current_date),''DD-MON-YYYY HH:MM''),',
'                ''PEOPLEPAY'',',
'                ''ACTIVE'',',
'                current_date,	''f?p=&APP_ID.:1405:44426677::NO::P1405_USER_ID:''||:P1405_USER_ID,',
'                ''Active organisation have switched.: ''||v_org_name||'' for user ''||:P1405_USER_NAME ||'' on: ''||to_char(trunc(current_date),''DD-MON-YYYY HH:MM''),',
'                945,1405,152,',
'                ''TBLUSER''',
'            ); ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3365851223219261966)
,p_internal_uid=>2722701979205653786
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365859447390261994)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4821705516507122679)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Fine Grade User Restrictions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2722664897610653726
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365897302623262055)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_grades'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'begin',
'',
'     l_selected := APEX_UTIL.STRING_TO_TABLE(:P1405_GENERATE_RATES);',
'    FOR i IN 1..l_selected.COUNT',
'    LOOP',
'',
'        INSERT INTO tbluserdetailgrade (  user_id, grade_id, start_date)',
'        values(:P1405_USER_ID, l_selected(i), trunc(current_date));',
'    end loop;',
'        :P1405_GENERATE_RATES:=NULL;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3365860080560261996)
,p_internal_uid=>2722702752843653787
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365868718166262010)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4949961510797701576)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Create/Edit Posting User Restrictions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2722674168386653742
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3365895936444262049)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4911873502954215318)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Screen Exceptions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2722701386664653781
);
wwv_flow_imp.component_end;
end;
/
