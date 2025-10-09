prompt --application/pages/page_01801
begin
--   Manifest
--     PAGE: 01801
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
 p_id=>1801
,p_name=>'FrmLicensePayment'
,p_alias=>'FRMLICENSEPAYMENT'
,p_step_title=>'Manage License Payment'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806298936519242590)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686144129417000427)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3140510012663694452)
,p_plug_name=>'Modules'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAYMENT_STATUS,',
'    id,MANAGED_BY,',
'    app_module_id,',
'    start_licence_date,',
'    expiry_licence_date,',
'    no_of_employees,',
'    licence_fee,',
'    created_by,',
'    date_created,',
'    authentication_schema,',
'    last_modified_by,',
'    date_last_modified,',
'    machine_created,',
'    machine_last_modified,',
'    can_copy,',
'    date_paid,',
'    migrate_pk, org_id,LICENSE_SCHEMA_NAME',
'FROM app_module_licence',
'WHERE  ORG_ID =:P1801_ORGANISATION'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1801_ORGANISATION'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(686144640902000432)
,p_name=>'LICENSE_SCHEMA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LICENSE_SCHEMA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'License Schema Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct LICENSE_SCHEMA_NAME',
'from app_module_licence'))
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
 p_id=>wwv_flow_imp.id(3140507979071694432)
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
 p_id=>wwv_flow_imp.id(3140508090465694433)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3140508281011694435)
,p_name=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_PK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Migrate pk'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(3140508422947694436)
,p_name=>'DATE_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3140508490373694437)
,p_name=>'CAN_COPY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_COPY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Can copy'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(3140508641496694438)
,p_name=>'MACHINE_LAST_MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_LAST_MODIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine last modified'
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
 p_id=>wwv_flow_imp.id(3140508710542694439)
,p_name=>'MACHINE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_CREATED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine created'
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
 p_id=>wwv_flow_imp.id(3140508766565694440)
,p_name=>'DATE_LAST_MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_LAST_MODIFIED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Date last modified'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3140508952089694441)
,p_name=>'LAST_MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last modified by'
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
 p_id=>wwv_flow_imp.id(3140508979804694442)
,p_name=>'AUTHENTICATION_SCHEMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHENTICATION_SCHEMA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Auth Schema'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:APEX;APEX,DATABASE;DATABASE,LDAP;LDAP,BCRYPT;BCRYPT,SHA256;SHA256,OKTA;OKTA'
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
 p_id=>wwv_flow_imp.id(3140509152915694443)
,p_name=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Date created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3140509242629694444)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created by'
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
 p_id=>wwv_flow_imp.id(3140509326123694445)
,p_name=>'LICENCE_FEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LICENCE_FEE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Licence fee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3140509395865694446)
,p_name=>'NO_OF_EMPLOYEES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_EMPLOYEES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No of employees'
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3140509467350694447)
,p_name=>'EXPIRY_LICENCE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPIRY_LICENCE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Expiry licence date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3140509603237694448)
,p_name=>'START_LICENCE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_LICENCE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start licence date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3140509671788694449)
,p_name=>'APP_MODULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_MODULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'App Module'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806757489383168156)
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
 p_id=>wwv_flow_imp.id(3140509793293694450)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3170882023395546147)
,p_name=>'PAYMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Payment Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Active;ACTIVE,Evaluate;EVALUATE'
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
 p_id=>wwv_flow_imp.id(3190006840886329528)
,p_name=>'MANAGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Managed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3190007086044329530)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3833093961853778209)
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
 p_id=>wwv_flow_imp.id(3140509886787694451)
,p_internal_uid=>2613099470864399888
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
 p_id=>wwv_flow_imp.id(3132094496213467398)
,p_interactive_grid_id=>wwv_flow_imp.id(3140509886787694451)
,p_static_id=>'18340'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3132094406329467398)
,p_report_id=>wwv_flow_imp.id(3132094496213467398)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(750936892541256482)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(686144640902000432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132074946860465536)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3140508090465694433)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132086555700467372)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3140508281011694435)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132086968317467373)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3140508422947694436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132087496826467375)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3140508490373694437)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132087976747467376)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3140508641496694438)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132088550682467378)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3140508710542694439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132089036763467379)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3140508766565694440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132089464251467381)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3140508952089694441)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132090051569467382)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3140508979804694442)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132090540294467383)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3140509152915694443)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132090993343467384)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3140509242629694444)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132091556388467386)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3140509326123694445)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132092050380467387)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3140509395865694446)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132092474695467388)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3140509467350694447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132093038534467390)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3140509603237694448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132093503681467391)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3140509671788694449)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3132093890368467394)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3140509793293694450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3164044117982226769)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3170882023395546147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3190660205393173098)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3190007086044329530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>182
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3190664661742229620)
,p_view_id=>wwv_flow_imp.id(3132094406329467398)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3190006840886329528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3142895673388787727)
,p_plug_name=>'Create New License Payment'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'APP_MODULE_LICENCE'
,p_include_rowid_column=>true
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3143627189555677122)
,p_plug_name=>'Renew License'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3191486643388620746)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>39
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3796349869833804324)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(643426695306129580)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_button_name=>'ENTER_MODULES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Enter Modules'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(643434080749129545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3191486643388620746)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1800:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(643427090378129580)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1801:&SESSION.::&DEBUG.:RP,1801::'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(643431423003129547)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_button_name=>'GENERATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Renewal'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(643442053025129539)
,p_branch_name=>'Go To Page 1801'
,p_branch_action=>'f?p=&APP_ID.:1801:&SESSION.::&DEBUG.::P1801_ID:&P1801_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(609380090862508693)
,p_name=>'P1801_ORGANISATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3140510012663694452)
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.organisation_name,x.id',
'from hr_hcf_organisation X ',
'where exists (select 1',
'              from  APP_MODULE_LICENCE Y ',
'              where  x.id =y.org_id',
'            )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(686156352776000408)
,p_name=>'P1801_LICENSE_SCHEMA_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_prompt=>'License Schema Name'
,p_source=>'LICENSE_SCHEMA_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME, SCHEMA_NAME',
'FROM SYS_MULTI_SCHEMA',
'where SCHEMA_NAME = :G_PARSING_SCHEMA',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>75
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(686160964659000378)
,p_name=>'P1801_MODULE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_prompt=>'Sub Module'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(TRIM(module_name)) A, id',
'from app_module a',
'where end_date is null',
'and exists (select 1',
'             from APP_MODULE_LICENCE b',
'             where a.id = b.APP_MODULE_ID',
'             and org_id= :P1801_GEN_ORGANISATION',
'             )',
'ORDER BY 1             '))
,p_lov_cascade_parent_items=>'P1801_GEN_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119290427702368886)
,p_name=>'P1801_CURR_DATE_PAID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_prompt=>'Last Date Paid'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3170894162407546127)
,p_name=>'P1801_PAYMENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Status'
,p_source=>'PAYMENT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;ACTIVE,Evaluate;EVALUATE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181047991786917790)
,p_name=>'P1801_LICENSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_item_default=>'0'
,p_prompt=>'License'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3190019307866329511)
,p_name=>'P1801_MANAGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Managed By'
,p_source=>'MANAGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct managed_by a, managed_by b',
'from APP_MODULE_LICENCE'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3191472149428957900)
,p_name=>'P1801_MODULES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_prompt=>'Sub Modules'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(MODULE_NAME) MODULE_NAME,A.id',
'from APP_MODULE A ',
'order by 1'))
,p_lov_cascade_parent_items=>'P1801_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
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
 p_id=>wwv_flow_imp.id(3191472538260957901)
,p_name=>'P1801_DATE_PAID'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Date Paid'
,p_source=>'DATE_PAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3191472967595957901)
,p_name=>'P1801_AUTHENTICATION_SCHEMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BCRYPT'
,p_prompt=>'Authentication Schema'
,p_source=>'AUTHENTICATION_SCHEMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SHA256;SHA256'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3191473320720957902)
,p_name=>'P1801_NO_OF_EMPLOYEES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No Of Employees'
,p_source=>'NO_OF_EMPLOYEES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3191473725796957902)
,p_name=>'P1801_EXPIRY_LICENCE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry Licence Date'
,p_source=>'EXPIRY_LICENCE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3191474162172957903)
,p_name=>'P1801_START_LICENCE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Licence Date'
,p_source=>'START_LICENCE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3191474533933957904)
,p_name=>'P1801_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
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
 p_id=>wwv_flow_imp.id(3191474929519957905)
,p_name=>'P1801_LICENCE_FEE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Licence Fee'
,p_source=>'LICENCE_FEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3191475301830957905)
,p_name=>'P1801_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_item_source_plug_id=>wwv_flow_imp.id(3142895673388787727)
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct INITCAP(organisation_name) A, org_id',
'from tblUSERDETAIL a',
'where trim(upper(APPLICATION_SCHEMA_NAME))  = trim(upper(:P1801_LICENSE_SCHEMA_NAME))'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1801_LICENSE_SCHEMA_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3191480846670957875)
,p_name=>'P1801_GEN_EXPIRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_prompt=>'New License End Date'
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
 p_id=>wwv_flow_imp.id(3191481229028957877)
,p_name=>'P1801_GEN_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_prompt=>'License Start'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(START_LICENCE_DATE)',
'from APP_MODULE_LICENCE',
'where org_id=:P1801_GEN_ORGANISATION;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>13
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(3191481674704957880)
,p_name=>'P1801_GEN_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3143627189555677122)
,p_prompt=>'Generate Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME, ID',
'FROM HR_HCF_ORGANISATION A',
'WHERE organisation_type=''SOFTWARE USER''',
'AND EXISTS(',
'            SELECT 1 ',
'            FROM TBLUSERDETAIL B',
'            WHERE B.ORG_ID=A.ID',
'            AND APPLICATION_SCHEMA_NAME =:G_PARSING_SCHEMA',
'            )',
'ORDER BY 1'))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(643436513689129542)
,p_name=>'SHOW_GENERATE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_MODULES'
,p_condition_element=>'P1801_MODULES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(638914562270731546)
,p_event_id=>wwv_flow_imp.id(643436513689129542)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643427090378129580)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643437432251129542)
,p_event_id=>wwv_flow_imp.id(643436513689129542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643426695306129580)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(638914469902731545)
,p_event_id=>wwv_flow_imp.id(643436513689129542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643427090378129580)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643436920422129542)
,p_event_id=>wwv_flow_imp.id(643436513689129542)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643426695306129580)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(643437915867129541)
,p_name=>'SHOW_RENEWAL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_GEN_EXPIRE'
,p_condition_element=>'P1801_GEN_EXPIRE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643438344348129541)
,p_event_id=>wwv_flow_imp.id(643437915867129541)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643431423003129547)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643438817895129541)
,p_event_id=>wwv_flow_imp.id(643437915867129541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(643431423003129547)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(643439228399129541)
,p_name=>'set_current_empno'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_GEN_EXPIRE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643439806736129541)
,p_event_id=>wwv_flow_imp.id(643439228399129541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1801_LICENSE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(NO_OF_EMPLOYEES)',
'from APP_MODULE_LICENCE',
'where org_id=:APP_ORG_ID',
'and APP_MODULE_ID=23'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(643440161498129540)
,p_name=>'refresh_license'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_ORG_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643440638155129540)
,p_event_id=>wwv_flow_imp.id(643440161498129540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3140510012663694452)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(643441042768129540)
,p_name=>'refresh_modules'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_BROWSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(643441560473129540)
,p_event_id=>wwv_flow_imp.id(643441042768129540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3140510012663694452)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(609380136183508694)
,p_name=>'refresh_org'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1801_ORGANISATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609380275251508695)
,p_event_id=>wwv_flow_imp.id(609380136183508694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3140510012663694452)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(531587685781221229)
,p_name=>'renew_license_dyn'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(643431423003129547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(531587821419221230)
,p_event_id=>wwv_flow_imp.id(531587685781221229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_sqlcode varchar2(200);',
'    v_sqlerrm  varchar2(2000);',
'',
' BEGIN',
'  ',
'    FOR j IN ( select  id',
'                from app_module a',
'                where end_date is null',
'                and exists (select 1',
'                            from APP_MODULE_LICENCE b',
'                            where a.id = b.APP_MODULE_ID',
'                            and org_id= :P1801_GEN_ORGANISATION',
'                            and APP_MODULE_ID in (SELECT to_number(a_field)',
'                                       FROM ',
'                                         xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                         || REPLACE(:P1801_MODULE,'':'',''</e><e>'')',
'                                         || ''</e></root>'') columns a_field number path ''/'')',
'                    )',
'                                                )',
'             ) loop',
'  ',
'    begin',
'',
'         for I in ( ',
'                    select  id, ORG_ID, NO_OF_EMPLOYEES, LICENCE_FEE, DATE_PAID',
'                    from APP_MODULE_LICENCE y',
'                    where org_id=:P1801_GEN_ORGANISATION',
'                    AND licenSe_schema_name = :G_PARSING_SCHEMA',
'                    AND y.app_module_id = j.id',
'                  ) loop',
'                                            ',
'                update APP_MODULE_LICENCE',
'                set   EXPIRY_LICENCE_DATE = :P1801_GEN_EXPIRE',
'                    , NO_OF_EMPLOYEES = case when to_number(:P1801_LICENSE) =0 then i.NO_OF_EMPLOYEES  else  to_number(:P1801_LICENSE) end',
'                    , LICENCE_FEE = i.LICENCE_FEE',
'                    , DATE_PAID = :P1801_CURR_DATE_PAID',
'                where  ID = I.ID;',
'',
'          end loop;          ',
'    end;                          ',
'  end loop;          ',
'        :P1801_MODULE:=null;',
'    COMMIT;',
'  exception',
'      when others then ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'        pkg_errorLogger.insert_err(V_SQLCODE ,V_SQLERRM  ,''error occured while executing renew_license process'' ,''SECURITY LICENCE'',nULL);           ',
'             ',
'end;  '))
,p_attribute_02=>'P1801_GEN_ORGANISATION,P1801_MODULE,P1801_GEN_EXPIRE,P1801_LICENSE,P1801_CURR_DATE_PAID'
,p_attribute_03=>'P1801_MODULE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(643435650549129543)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3142895673388787727)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from APP_MODULE_LICENCE'
,p_internal_uid=>116025234625834980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(643426003325129580)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3140510012663694452)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>116015587401835017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(643435241106129543)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'enter_modules'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
' BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1801_MODULES);',
'  ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'    begin',
'        INSERT INTO APP_MODULE_LICENCE (LICENSE_SCHEMA_NAME,  APP_MODULE_ID, START_LICENCE_DATE,  EXPIRY_LICENCE_DATE, ORG_ID, NO_OF_EMPLOYEES,',
'            LICENCE_FEE,  AUTHENTICATION_SCHEMA,DATE_PAID,PAYMENT_STATUS)',
'            ',
'        values (:P1801_LICENSE_SCHEMA_NAME, l_selected(i), :P1801_START_LICENCE_DATE,  :P1801_EXPIRY_LICENCE_DATE, :P1801_ORG_ID, :P1801_NO_OF_EMPLOYEES,',
'            :P1801_LICENCE_FEE,  :P1801_AUTHENTICATION_SCHEMA, :P1801_DATE_PAID, :P1801_PAYMENT_STATUS);',
'            ',
'     exception ',
'        when others then null;',
'    end;',
' end loop;',
'    commit;',
'    :P1801_MODULES:=null;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(643426695306129580)
,p_process_success_message=>'Success entered select modules'
,p_internal_uid=>116024825182834980
);
wwv_flow_imp.component_end;
end;
/
