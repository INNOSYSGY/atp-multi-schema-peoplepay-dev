prompt --application/pages/page_01324
begin
--   Manifest
--     PAGE: 01324
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
 p_id=>1324
,p_name=>'frmResponsibility'
,p_step_title=>'Create/Edit Responsibility'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3584896379937630896)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1884112355309640995)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>1
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3529450191733763264)
,p_plug_name=>'Create/Edit Responsibility Detail for &P1324_RESPONSIBILITY_NAME. (select Sub Module search)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent2::t-Region--scrollBody:::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>28
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RESP_PAGE_ORG_ID,CAN_APPROVED,',
'       ORGANIZATION_ID,',
'       RESPONSIBILITY_ID,',
'       PAGE_ID,',
'       REMARKS,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       LAST_UPDATED_BY,',
'       LAST_UPDATE_DATE,',
'       CAN_VIEW,',
'       CAN_ADD,',
'       CAN_EDIT,',
'       CAN_DELETE,',
'       CAN_COPY,',
'       CAN_EXECUTE,',
'       CAN_VERIFY,',
'       CAN_SELFSERVE,',
'       can_unverify,',
'       can_unapprove,',
'       START_DATE,',
'       END_DATE',
' from TBLRESPONSIBILITYORGPAGE a',
' where RESPONSIBILITY_ID = :P1324_RESPONSIBILITY_ID ',
' AND ORGANIZATION_ID=decode(:P1324_SYS_ORG_SEARCH,0,ORGANIZATION_ID,:P1324_SYS_ORG_SEARCH) ',
' and exists (select 1',
'            from VW_PAGELIST b',
'            where a.page_id=b.page_id',
'            AND APP_MODULE_ID IS NOT NULL',
'            AND APP_MODULE_ID=decode(:P1324_MODULE_SEARCH,0,APP_MODULE_ID,:P1324_MODULE_SEARCH)',
'            )      ',
' --AND PAGE_ID =decode(:P1324_PAGE_SEARCH,0,PAGE_ID,:P1324_PAGE_SEARCH)   ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1324_SYS_ORG_SEARCH,P1324_RESPONSIBILITY_ID,P1324_MODULE_SEARCH'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1324_RESPONSIBILITY_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3175986632358511280)
,p_name=>'CAN_UNVERIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_UNVERIFY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Unverify'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3175986715396511281)
,p_name=>'CAN_UNAPPROVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_UNAPPROVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Unapprove'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3508275467445279649)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3508275551123279650)
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
 p_id=>wwv_flow_imp.id(3529450397762763266)
,p_name=>'RESP_PAGE_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESP_PAGE_ORG_ID'
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
 p_id=>wwv_flow_imp.id(3529450466263763267)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
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
,p_default_expression=>'P1324_SYS_ORG_SEARCH'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3529450567927763268)
,p_name=>'RESPONSIBILITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSIBILITY_ID'
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
,p_default_expression=>'P1324_RESPONSIBILITY_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3529450680220763269)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Page'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3585361305883556464)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
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
 p_id=>wwv_flow_imp.id(3529450782443763270)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>18
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
 p_id=>wwv_flow_imp.id(3529450827688763271)
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
 p_id=>wwv_flow_imp.id(3529450969827763272)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Creation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(3529451038054763273)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3529451202238763274)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Update Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(3529451239805763275)
,p_name=>'CAN_VIEW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VIEW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can View'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451404930763276)
,p_name=>'CAN_ADD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_ADD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Add'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451509182763277)
,p_name=>'CAN_EDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_EDIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Edit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451579711763278)
,p_name=>'CAN_DELETE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_DELETE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Delete'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451624837763279)
,p_name=>'CAN_COPY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_COPY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Copy'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451758633763280)
,p_name=>'CAN_EXECUTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_EXECUTE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Execute'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451856754763281)
,p_name=>'CAN_VERIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_VERIFY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Verify'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3529451937235763282)
,p_name=>'CAN_SELFSERVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_SELFSERVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Selfserve'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
 p_id=>wwv_flow_imp.id(3530268293722179733)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3530268405491179734)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(3538795005429769894)
,p_name=>'CAN_APPROVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_APPROVED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Can Approved'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3622822575257550364)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3529450274611763265)
,p_internal_uid=>27302364463763033
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
 p_id=>wwv_flow_imp.id(3530274119158187937)
,p_interactive_grid_id=>wwv_flow_imp.id(3529450274611763265)
,p_static_id=>'18115'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3530274212242187938)
,p_report_id=>wwv_flow_imp.id(3530274119158187937)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3176002483290546104)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3175986632358511280)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>94.0469
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3176003392395546108)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3175986715396511281)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>101.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530274723081187940)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3529450397762763266)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530275244461187944)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3529450466263763267)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530275798206187948)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3529450567927763268)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530276289204187953)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3529450680220763269)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>315
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530276798892187956)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3529450782443763270)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530277279000187960)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3529450827688763271)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530277744767187963)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3529450969827763272)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530278304319187966)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3529451038054763273)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530278785738187970)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3529451202238763274)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530279216096187973)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3529451239805763275)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530279777331187976)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3529451404930763276)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530280269056187980)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3529451509182763277)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530280734436187982)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3529451579711763278)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530281170605187986)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3529451624837763279)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530281705398187989)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3529451758633763280)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530282127860187992)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3529451856754763281)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>98
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530282628107187995)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3529451937235763282)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530283126061187998)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3530268293722179733)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3530283709679188001)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3530268405491179734)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3537909947743597607)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3508275467445279649)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3565447904578210531)
,p_view_id=>wwv_flow_imp.id(3530274212242187938)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3538795005429769894)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>96
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3599065664234120697)
,p_plug_name=>'Create/Edit Responsibility for &P1324_RESPONSIBILITY_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3599118495021449545)
,p_plug_name=>'Quick Entry (select Sub Module search for responsibility Details)'
,p_parent_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1324_RESPONSIBILITY_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3599119799473449558)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609683041405304578)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>39
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3574947313252192630)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611647242735626822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_button_name=>'Generate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611662432805626850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3529450191733763264)
,p_button_name=>'SUBMIT_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611647676038626823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_button_name=>'CLONE_SELECTED_ORGANIZATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone Selected Organization'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611662806945626850)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3529450191733763264)
,p_button_name=>'COPY_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy All'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611666155607626853)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1323:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611667719913626854)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'GET_PREVIOUS_RESPONSIBILITY_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1324_RESPONSIBILITY_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611666536650626853)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1324_RESPONSIBILITY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611666909491626854)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1324_RESPONSIBILITY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611667355997626854)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'Create_Like'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create like'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611668586989626855)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add new'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:RP,1324::'
,p_button_condition=>'P1324_RESPONSIBILITY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611668971207626855)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1324_RESPONSIBILITY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611668188058626854)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_button_name=>'GET_NEXT_RESPONSIBILITY_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1324_RESPONSIBILITY_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3611683242580626871)
,p_branch_name=>'Go To Page 1324'
,p_branch_action=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175986465160511278)
,p_name=>'P1324_APPROVE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Approve'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175986507353511279)
,p_name=>'P1324_UNAPPROVE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'UnApprove'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611648015060626823)
,p_name=>'P1324_MODULE_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Sub Module search'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(module_name) b, id',
'from app_module b',
'WHERE EXISTS (SELECT 1',
'              from tblpagelist a join apex_application_pages c on a.webpage_id=c.page_id            ',
'              WHERE B.ID=A.APP_MODULE_ID',
'              And workspace =apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'              AND UPPER(page_name)!=''LISTS'')',
'UNION',
'SELECT ''Reports'', -1 a',
'from dual'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All-'
,p_lov_null_value=>'0'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Important :- Do not create responsibilities with multiple modules. If this is done, you will not be able to switch to a Module and simplify the menu. Modules are Purchasing, Inventory & Assets; Accounts Payables; Point of Sale; Accounts Receivables; '
||'General Ledger; Project Management'
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
 p_id=>wwv_flow_imp.id(3611648992384626826)
,p_name=>'P1324_SYS_ORG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_item_default=>'226'
,p_prompt=>'Sys Org Search'
,p_post_element_text=>'Destination'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, organization_id',
'from tblorganization A',
'where org_id=:APP_ORG_ID',
'union ',
'select ''Human Resources'',226',
'from dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P1324_RESPONSIBILITY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Remember to switch to the company whose responsibility you are creating/Modifying. This is compulsory when working with SCMS security.',
'This button will code all the responsibility from the selected organisation to all other organisatin for this company.'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611649834625626827)
,p_name=>'P1324_PAGES_RESP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Pages'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1324_MODULE_SEARCH = -1 then',
'return ',
'''select cast(REPORT_NAME as varchar2(100))||'''':- ''''||(select initcap(MODULE_NAME)',
'from app_module',
'WHERE id=A.report_type)   page_name, id page_id',
'From Report A',
'WHERE not exists (select 1',
'                from tblresponsibilityorgpage B',
'                where b.PAGE_ID = A.ID',
'                and RESPONSIBILITY_ID =:P1324_RESPONSIBILITY_ID',
'                and ORGANIZATION_ID=:P1324_SYS_ORG                ',
'                )           ',
'order by report_type'';',
'',
'else',
'return ',
'''Select DISTINCT Initcap(page_label||''''(''''||Page_Name||''''):-''''||trim(A.Page_Group)||''''( ''''||C.Webpage_Id)||'''')-''''||workspace Page_Name, C.Page_Id',
'From Apex_Application_Pages A Join Tblpagelist C On A.Page_Id=C.Webpage_Id',
'where  workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'AND UPPER(page_name)!=''''LISTS''''',
'AND APP_MODULE_ID = :P1324_MODULE_SEARCH',
'and not exists (select 1',
'                from tblresponsibilityorgpage B',
'                where b.PAGE_ID = c.PAGE_ID',
'                and RESPONSIBILITY_ID =:P1324_RESPONSIBILITY_ID',
'                and ORGANIZATION_ID=:P1324_SYS_ORG',
'                )',
'and application_id=:APP_ID                   ',
'order by Page_Name'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1324_MODULE_SEARCH,P1324_SYS_ORG'
,p_ajax_items_to_submit=>'P1324_RESPONSIBILITY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select as many pages as required to remove a page click ''X'' next to the name.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611650734445626828)
,p_name=>'P1324_VIEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'View'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611651171904626828)
,p_name=>'P1324_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Add'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611651576088626828)
,p_name=>'P1324_EDIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Edit'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611651927608626828)
,p_name=>'P1324_DELETE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Delete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611652370108626829)
,p_name=>'P1324_VERIFY_APPROVE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Verify/Approve'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611652798769626829)
,p_name=>'P1324_EXE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3599118495021449545)
,p_prompt=>'Execute'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(3622822575257550364)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611663275147626850)
,p_name=>'P1324_SYS_ORG_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3529450191733763264)
,p_item_default=>'226'
,p_prompt=>'Sys Org Search'
,p_post_element_text=>'Source'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Human Resources'',226',
'from dual',
'union',
'select description, organization_id',
'from tblorganization A',
'where org_id=:APP_ORG_ID',
'and exists(select 1',
'           from TBLRESPONSIBILITYORGPAGE b',
'           where a.ORGANIZATION_ID = b.ORGANIZATION_ID',
'           )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P1324_RESPONSIBILITY_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Remember to switch to the company whose responsibility you are creating/Modifying. This is compulsory when working with SCMS security. Its also the default organisation when adding access to responsibility.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611664122642626851)
,p_name=>'P1324_APP_MODULE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3529450191733763264)
,p_prompt=>'App Module'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(module_main) a, upper(module_main) b',
'from APP_MODULE',
'where module_main is not null',
'and id= :P1324_MODULE_SEARCH'))
,p_lov_cascade_parent_items=>'P1324_MODULE_SEARCH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Important :- Do not create responsibilities with multiple modules. If this is done, you will not be able to switch to a Module and simplify the menu. Modules are Purchasing, Inventory & Assets; Accounts Payables; Point of Sale; Accounts Receivables; '
||'General Ledger; Project Management'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611669362766626855)
,p_name=>'P1324_RESPONSIBILITY_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsibility Name'
,p_source=>'RESPONSIBILITY_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(3611669732949626855)
,p_name=>'P1324_START_DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3611670130440626856)
,p_name=>'P1324_CREATE_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_prompt=>'Create from'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(responsibility_name) a,responsibility_id',
'from tblresponsibility',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(3611670514205626856)
,p_name=>'P1324_LOAD_HOME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Load home'
,p_source=>'LOAD_HOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC:Purchasing Inventory & Assets;1002,',
'Accounts Payables;3600,',
'Point of Sale;3800,',
'Accounts Receivables;3700,',
'General Ledger;3500,',
'Project Management;3100,',
'HRMIS;1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611670959256626856)
,p_name=>'P1324_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3611671397053626856)
,p_name=>'P1324_CREATE_TO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_prompt=>'Create To'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(responsibility_name) a,responsibility_id',
'from tblresponsibility',
'where responsibility_id != :P1324_CREATE_FROM',
'order by 1'))
,p_lov_cascade_parent_items=>'P1324_CREATE_FROM'
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
 p_id=>wwv_flow_imp.id(3611671708670626857)
,p_name=>'P1324_RESPONSIBILITY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_source=>'RESPONSIBILITY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611672131016626857)
,p_name=>'P1324_REMARKS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>300
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611672541238626857)
,p_name=>'P1324_RESPONSIBILITY_ID_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611672971324626858)
,p_name=>'P1324_MASTER_RESP_GEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_use_cache_before_default=>'NO'
,p_source=>'MASTER_RESP_GEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611673329588626858)
,p_name=>'P1324_RESPONSIBILITY_ID_NEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611673708287626858)
,p_name=>'P1324_RESPONSIBILITY_ID_PREV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3599065664234120697)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611674434242626859)
,p_name=>'P1324_CREATED_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3599119799473449558)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(3611674821125626859)
,p_name=>'P1324_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3599119799473449558)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATION_DATE'
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
 p_id=>wwv_flow_imp.id(3611675260359626860)
,p_name=>'P1324_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3599119799473449558)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611675695250626860)
,p_name=>'P1324_LAST_UPDATE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3599119799473449558)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(382708378247319581)
,p_validation_name=>'prv_self_serve_name_change'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_old_resp_name varchar2(50);',
'',
'begin',
'',
'    select responsibility_name into v_old_resp_name',
'    from tblresponsibility',
'    where RESPONSIBILITY_ID = :P1324_RESPONSIBILITY_ID;',
'',
'    if v_old_resp_name like ''SELF SERVE%'' then',
'        return ''Changes to responsibility with Self Serve in it name is not allowed!'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3611666909491626854)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3611679560341626867)
,p_name=>'POP_PAGES'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1324_PAGES_RESP'
,p_condition_element=>'P1324_PAGES_RESP'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3611680047629626869)
,p_event_id=>wwv_flow_imp.id(3611679560341626867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3611680601019626869)
,p_event_id=>wwv_flow_imp.id(3611679560341626867)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3611680988831626870)
,p_name=>'create_like'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1324_CREATE_TO'
,p_condition_element=>'P1324_CREATE_TO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3611681446076626870)
,p_event_id=>wwv_flow_imp.id(3611680988831626870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3611667355997626854)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3611681973176626870)
,p_event_id=>wwv_flow_imp.id(3611680988831626870)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3611667355997626854)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3472685430383119406)
,p_name=>'search_pages'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1324_SYS_ORG_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3472685352607119405)
,p_event_id=>wwv_flow_imp.id(3472685430383119406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3529450191733763264)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3472685287643119404)
,p_name=>'search_grid'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1324_MODULE_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3472685121122119403)
,p_event_id=>wwv_flow_imp.id(3472685287643119404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3529450191733763264)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3469108907527465141)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3529450191733763264)
,p_triggering_element=>'CAN_VIEW'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'RESPONSIBILITY_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'141'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3469108839126465140)
,p_event_id=>wwv_flow_imp.id(3469108907527465141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CAN_EDIT,CAN_DELETE,CAN_COPY,CAN_EXECUTE,CAN_VERIFY,CAN_SELFSERVE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611679195475626867)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TBLRESPONSIBILITY'
,p_attribute_02=>'TBLRESPONSIBILITY'
,p_attribute_03=>'P1324_RESPONSIBILITY_ID'
,p_attribute_04=>'RESPONSIBILITY_ID'
,p_internal_uid=>3189887202277630293
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611677955761626866)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'TBLRESPONSIBILITY'
,p_attribute_03=>'P1324_RESPONSIBILITY_ID'
,p_attribute_04=>'RESPONSIBILITY_ID'
,p_attribute_07=>'RESPONSIBILITY_NAME'
,p_attribute_09=>'P1324_RESPONSIBILITY_ID_NEXT'
,p_attribute_10=>'P1324_RESPONSIBILITY_ID_PREV'
,p_attribute_13=>'P1324_RESPONSIBILITY_ID_COUNT'
,p_internal_uid=>3189885962563630292
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611678776175626867)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TBLRESPONSIBILITY'
,p_attribute_02=>'TBLRESPONSIBILITY'
,p_attribute_03=>'P1324_RESPONSIBILITY_ID'
,p_attribute_04=>'RESPONSIBILITY_ID'
,p_attribute_09=>'P1324_RESPONSIBILITY_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3189886782977630293
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611678356547626866)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3611668971207626855)
,p_internal_uid=>3189886363349630292
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611677597279626866)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_can_copy_all'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pkg_security.set_all_can_copy(:P1324_RESPONSIBILITY_ID, :P1324_SYS_ORG_SEARCH, :P1324_MODULE_SEARCH );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3611662806945626850)
,p_process_success_message=>'Successful update of select modules and pages for copy.'
,p_internal_uid=>3189885604081630292
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611676730876626865)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_LIKE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_security.create_like_resp(:P1324_CREATE_FROM,:P1324_CREATE_TO,:P1324_SYS_ORG_SEARCH);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3611667355997626854)
,p_process_success_message=>'Successful execution of create like.'
,p_internal_uid=>3189884737678630291
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611677108973626866)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_PAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  v_sqlcode varchar2(25);',
'  v_sqlerrm varchar2(2000);',
'  ',
'begin',
'',
' l_selected := APEX_UTIL.STRING_TO_TABLE(:P1324_PAGES_RESP);',
' ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'  begin',
'       insert into tblresponsibilityorgpage(organization_id, responsibility_id, page_id, can_add, can_edit, can_delete, can_view, CAN_VERIFY, CAN_EXECUTE)',
'       values(:P1324_SYS_ORG, :P1324_RESPONSIBILITY_ID, l_selected(i), :P1324_ADD, :P1324_EDIT,:P1324_DELETE, :P1324_VIEW,:P1324_VERIFY_APPROVE,:P1324_EXE);',
'       ',
'--EXCEPTION',
'--  WHEN OTHERS THEN null;',
'    v_sqlcode := sqlcode;',
'    V_SQLERRM := SQLERRM;',
' 	  PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM ,''error occurred while generating responsibility pages'' ,''page 1324 generate'',null);',
' ',
'',
'  end;',
'  end loop;',
'  ',
'  :P1324_PAGES_RESP:=null;',
'',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3611647242735626822)
,p_process_success_message=>'Pages successfully generated.'
,p_internal_uid=>3189885115775630292
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611676309162626865)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLONE_ORGANIZATIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'      for J in ( select :P1324_SYS_ORG ORGANIZATION_ID, :P1324_RESPONSIBILITY_ID responsibility_id, page_id, remarks, can_add, can_edit, can_delete, can_view',
'                from tblresponsibilityorgpage',
'                where responsibility_id = :P1324_RESPONSIBILITY_ID',
'                and organization_id =:P1324_SYS_ORG_SEARCH',
'               and can_copy=''Y'') loop',
'      begin',
'    ',
'        insert into tblresponsibilityorgpage(organization_id, responsibility_id, page_id, remarks, can_add, can_edit, can_delete, can_view)',
'        values(j.ORGANIZATION_ID, j.responsibility_id, j.page_id, j.remarks, j.can_add, j.can_edit, j.can_delete, j.can_view);   ',
'    ',
'     exception',
'        when others then null;',
'     end;',
'     end loop;',
'',
'',
'    commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3611647676038626823)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Successfully cloned selected organisation to all other organisations.'
,p_internal_uid=>3189884315964630291
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3508275684867279651)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3529450191733763264)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Create/Edit Responsibility Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3086483691669283077
);
wwv_flow_imp.component_end;
end;
/
