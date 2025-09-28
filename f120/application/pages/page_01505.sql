prompt --application/pages/page_01505
begin
--   Manifest
--     PAGE: 01505
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
 p_id=>1505
,p_name=>'frmGenPayrollPosting'
,p_step_title=>'Generate Adhoc Posting'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(338278931045711430)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_landmark_type=>'exclude_landmark'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3553039495578554575)
,p_plug_name=>'Generate Adhoc Posting'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3700317687709349315)
,p_plug_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",POST_SEQUENCE,UNIT_OF_MEASURE,WORKACTIVITY_ID,',
' "EMP_ID",',
' EMPENT_ID,',
'"QUANTITY",',
'"RATE",',
'"AMOUNT_PAID",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"LAST_CHANGED_DATE",',
'"LAST_CHANGED_BY",',
'BY_PASS_COMPUTATION, orgdtl_id,',
'REMARKS, EMPENT_ID Link',
'from "PA_PCF_ADHOCPAYMENT" x',
'where EARNINGS_PERIOD_ID=:P1505_CURRENT_EARN',
'and x.orgdtl_id =nvl(:P1505_WORK_UNIT, x.orgdtl_id)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1505_EARNINGS_PERIOD_ID,P1505_WORK_UNIT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3298514789918361153)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632525481058481174)
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
 p_id=>wwv_flow_imp.id(3298514979956361154)
,p_name=>'WORKACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job Work Task'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3220988464983229387)
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
 p_id=>wwv_flow_imp.id(3489868633726973622)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632491032568373420)
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
 p_id=>wwv_flow_imp.id(3570774040401785670)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Link'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID:&LINK.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1285',
'AND CAN_VIEW=''Y'''))
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700316116776349299)
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
 p_id=>wwv_flow_imp.id(3700316162443349300)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700316409628349302)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3700316472075349303)
,p_name=>'BY_PASS_COMPUTATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'By Pass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3700316569649349304)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(3700316700007349305)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700316823775349306)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700316926424349307)
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
 p_id=>wwv_flow_imp.id(3700316958834349308)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700317076493349309)
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
 p_id=>wwv_flow_imp.id(3700317161321349310)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700317275261349311)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632583213821532444)
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
 p_id=>wwv_flow_imp.id(3700317361973349312)
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632585704140532447)
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
,p_readonly_condition_type=>'ITEM_IS_NOT_NULL'
,p_readonly_condition=>'P1505_EMP_ID'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3700317478004349313)
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
 p_id=>wwv_flow_imp.id(3712723863402481109)
,p_name=>'POST_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST_SEQUENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Post Sequence'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3700317548934349314)
,p_internal_uid=>3439234130743646401
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(3699434663375675903)
,p_interactive_grid_id=>wwv_flow_imp.id(3700317548934349314)
,p_static_id=>'18204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3699434555723675892)
,p_report_id=>wwv_flow_imp.id(3699434663375675903)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3300842539373667960)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3298514789918361153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3300843414255667967)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3298514979956361154)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79.7917
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3492230138115274098)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3489868633726973622)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3546190315082855925)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3570774040401785670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3648884012712985641)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3712723863402481109)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699426908073674031)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3700316162443349300)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699428786676675723)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3700316409628349302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699429336041675724)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3700316472075349303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699429767603675725)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3700316569649349304)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699430257184675726)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3700316700007349305)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>172
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699430795877675734)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3700316823775349306)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699431332997675734)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3700316926424349307)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699431810467675736)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3700316958834349308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699432319441675740)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3700317076493349309)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699432833196675741)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3700317161321349310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699433287324675761)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3700317275261349311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699433844417675815)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3700317361973349312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>294
,p_break_order=>5
,p_break_is_enabled=>false
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3699434204905675825)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3700317478004349313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3702389522705367333)
,p_view_id=>wwv_flow_imp.id(3699434555723675892)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3700316958834349308)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630542130012536708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3630542509851536708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_button_name=>'EXECUTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(340949051731159121)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3700317687709349315)
,p_button_name=>'ADD_ENTITLEMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Entitlement'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_SOURCE_LOAD:1400'
,p_button_condition=>'PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPENTITLEMENT'')>0'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(340955797595190028)
,p_name=>'P1505_WORK_UNIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(338278931045711430)
,p_prompt=>'Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_STRUCTURE_WITHSEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description||',
'(select '' (Emp Cnt: ''||count(1)||'')'' from hr_rcm_employee x where x.orgdtl_id = m.id and (x.date_Separated is null or x.date_separated > current_date) ) A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id ',
'join hr_hcf_orgstructurehd oh on oh.id = m.org_structure_id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and pkg_global_fnts.fn_sharereforg(n.org_id) = :APP_ORG_SHR_DED',
'and exists(select 1',
'            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'            where  t.id = m.id',
'            and m.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, m.id, k.org_structure_id)       ',
'        ) ',
'and exists(select 1',
'           from hr_rcm_employee emp join pa_pcf_earningperiod earn on (emp.payment_type = earn.payment_type and emp.employment_class_id = earn.employment_class_id  and emp.org_id = earn.org_id  and emp.compute_gross = earn.compute_gross)',
'           where emp.orgdtl_id = m.id',
'           and earn.org_id= :APP_ORG_ID',
'           AND (date_separated is null or date_separated > trunc(current_date)-30)      ',
'        )        ',
'ORDER BY unit_name        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>120
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3485945273803047803)
,p_name=>'P1505_PASS_ERN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630538963295536694)
,p_name=>'P1505_ENTITLEMENT'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_prompt=>'Entitlement Paid'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, ID',
'from pa_pcf_incomecode b ',
'where exists (select 1',
'              from PA_PMG_PAYROLLDTL c join PA_PMG_PAYROLLINCOME d on c.id=d.PAY_SLIPNO',
'              where b.INCOME_CODE=d.INCOME_CODE',
'              and c.earnings_period_id=:P1505_EARNINGS_PERIOD',
'              and income_amount>0',
'              and c.orgdtl_id = NVL(:P1505_WORK_UNIT, c.orgdtl_id)',
'              )',
'and org_id= :APP_ORG_SHR_DED   ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1505_EARNINGS_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This list includes all entitlements paid and not those necessarily specific to conditions above.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630539267719536694)
,p_name=>'P1505_CURRENT_EARN'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(338278931045711430)
,p_prompt=>'Current Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(EARN_DESCRIPTION) EXPR1,id',
'from VW_EARNNOTPAID a',
'WHERE a.org_id=:APP_ORG_ID     ',
'and exists (select 1',
'            from hr_rcm_employee w',
'            where w.org_id=a.org_id',
'            and w.employment_class_id=a.employment_class_id',
'            and upper(w.payment_type)=upper(a.payment_type)     ',
'            and upper(w.compute_gross) = upper(a.compute_gross)',
'            and (w.date_Separated is null or w.date_separated > current_date)',
'            and w.orgdtl_id = nvl(:P1505_WORK_UNIT,w.orgdtl_id )',
'            )     ',
'order by END_DATE desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1505_WORK_UNIT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>120
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3630539729334536700)
,p_name=>'P1505_SEARCH_RESULTS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_prompt=>'Search Results'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1505_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no)) a, b.id emp_id',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where exists (select 1',
'              from pa_pcf_earningperiod c ',
'              where UPPER(TRIM(b.payment_type)) = UPPER(TRIM(c.payment_type))',
'              and b.employment_class_id=c.employment_class_id',
'              and b.org_id=c.org_id',
'              AND UPPER(TRIM(b.compute_gross))= UPPER(TRIM(c.compute_gross))',
'              and C.id = :P1505_EARNINGS_PERIOD)',
'and b.date_separated is null or b.date_separated > trunc(current_date)     ',
'and include_payroll=''''Y''''',
'and b.orgdtl_id = nvl(:P1505_WORK_UNIT, b.orgdtl_id)',
'order by 1'';',
'',
'ELSif :P1505_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE a, id',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        order by grade_code'';',
'',
'elsif  :P1505_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select distinct POSITION_NAME||'''':-''''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'''''''' a, b.id b',
'from HR_HCF_POSITION b ',
'WHERE  exists (select 1',
'              from hr_rcm_employee e join pa_pcf_earningperiod g on (e.compute_gross=g.compute_gross and e.employment_class_id=g.employment_class_id and upper(e.payment_type)=upper(g.payment_type) and e.org_id=g.org_id)',
'              where g.id = :P1505_EARNINGS_PERIOD',
'              and b.id=e.Position_ID',
'              and e.orgdtl_id = nvl(:P1505_WORK_UNIT, e.orgdtl_id)',
'              )',
'order by 1'';',
'',
'elsif  :P1505_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' a, id b',
'from HR_HCF_WORKLOCATION C ',
'WHERE  exists (select 1',
'              from hr_rcm_employee e join pa_pcf_earningperiod g on (e.compute_gross=g.compute_gross and e.employment_class_id=g.employment_class_id and upper(e.payment_type)=upper(g.payment_type) and e.org_id=g.org_id)',
'              where c.id=e.wklocation_id',
'              and g.id = :P1505_EARNINGS_PERIOD      ',
'              and e.orgdtl_id = nvl(:P1505_WORK_UNIT, e.orgdtl_id)                     ',
'              )'';',
'      ',
'elsif  :P1505_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name,x.id',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    AND W.ORG_ID = :APP_ORG_SHR_DED',
'    order by  1'';    ',
'',
'elsif  :P1505_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''SELECT ''''Temporary'''', 1',
'        from dual',
'        union',
'        SELECT ''''Permanent'''', 2',
'        from dual',
'        union',
'        SELECT ''''Other'''', 3',
'        from dual'';',
' ',
'else',
'',
'return',
'    ''select ''''Null'''', Null',
'    from dual'';',
'',
'end if;',
''))
,p_lov_cascade_parent_items=>'P1505_SEARCH_OPTION,P1505_EARNINGS_PERIOD'
,p_ajax_items_to_submit=>'P1505_WORK_UNIT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630540119398536701)
,p_name=>'P1505_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Position;POSITION,Work Location;WORK_LOCATION,Union;UNION,Employment Type;EMPLOYMENT_TYPE'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630540487757536702)
,p_name=>'P1505_EARNINGS_PERIOD'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_prompt=>'Source Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select     TO_CHAR(A.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')|| '': '' ||UPPER( SHORT_NAME)||'' ''||',
'   case when upper(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE||'' for ''||A.EARNINGS_TYPE||'' ''||initcap(replace(compute_gross,''_'','' '')) a, a.id',
'from pa_pcf_earningperiod a join pa_pmg_payrollhd w on a.id = w.earnings_period_id ',
'join hr_hcf_organisation f on f.id=a.org_id',
'where exists (select 1   ',
'              from VW_USERACCESS v   ',
'              where  (v.org_id=a.org_id   ',
'              and v.employment_class_id=a.employment_class_id ',
'              and v.payment_type=a.payment_type)',
'             )  ',
'and a.pay_status=''Y''',
'and EXTRACT(year FROM a.START_DATE)||EXTRACT(month FROM a.START_DATE)=:P1505_MONTH_YEAR',
'and a.org_id=:P1505_ORGANISATION',
'and exists (select 1',
'            from pa_pcf_earningperiod x',
'            where id=:P1505_CURRENT_EARN',
'            and upper(a.compute_gross) =upper(x.compute_gross)',
'            and a.employment_class_id =x.employment_class_id',
'            and a.org_id = x.org_id',
'            and upper(a.payment_type) = upper(x.payment_type)',
'            and a.start_paid_for < x.start_paid_for   ',
'            )    ',
'and exists (select 1',
'            from pa_pcf_adhocpayment adhoc',
'            where adhoc.earnings_period_id=a.id',
'            and pay_status=''Y'')            '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1505_MONTH_YEAR,P1505_ORGANISATION,P1505_CURRENT_EARN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3630540909356536702)
,p_name=>'P1505_MONTH_YEAR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_prompt=>'Source Month Year'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP(TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE)) A',
', EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'FROM PA_PCF_EARNINGPERIOD B  ',
'WHERE ORG_ID =:P1505_ORGANISATION',
'and pay_status=''Y''',
'AND EXISTS (SELECT 1',
'              FROM  PA_PMG_PAYROLLdtl C ',
'              WHERE  B.ID=C.EARNINGS_PERIOD_ID',
'              and c.org_id =:APP_ORG_ID',
'              and allowance_taxable + allowance_nontaxable + incentives_taxable + incentives_nontaxable + benefit_taxable + benefit_nontaxable > 0',
'              )      ',
'order by EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1505_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Note on period that have posted entries will be displayed.'
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
 p_id=>wwv_flow_imp.id(3630541334670536703)
,p_name=>'P1505_EARNINGS_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Earnings Type'
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
'SELECT cast(''Overtime Payroll'' as VARCHAR2(200)), cast(''OTPAY'' as VARCHAR2(50)) from dual',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630541739647536707)
,p_name=>'P1505_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3553039495578554575)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(c.organisation_name),c.id',
'from   hr_hcf_organisation c',
' where exists (select 1',
'              from pa_pcf_earningperiod a join VW_USERACCESS g ',
'              on (a.org_id=g.org_id ',
'              and a.employment_class_id=g.employment_class_id and a.payment_type=g.payment_type) ',
'              where c.id = g.org_id )',
'order by c.organisation_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(338279074292711431)
,p_name=>'refresh_posting'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1505_WORK_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(338279171533711432)
,p_event_id=>wwv_flow_imp.id(338279074292711431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3700317687709349315)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(338279276228711433)
,p_name=>'refresh_posting_earn'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1505_CURRENT_EARN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(338279408312711434)
,p_event_id=>wwv_flow_imp.id(338279276228711433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3700317687709349315)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3630538032534536685)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_income_code APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  V_start_date date; v_end_date date;',
'',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1505_SEARCH_RESULTS);',
'',
'   select start_date , end_date into V_start_date , v_end_date ',
'   from pa_pcf_earningperiod',
'   where id = :P1505_CURRENT_EARN;',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P1505_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'',
'  l_income_code  := APEX_UTIL.STRING_TO_TABLE(:P1505_ENTITLEMENT);',
'',
'  FOR i IN 1..l_income_code.COUNT',
'  LOOP',
'	insert into tmp_option_values(option_code, option_values) ',
'        select l_income_code(i), description',
'        from pa_pcf_incomecode',
'        where id =l_income_code(i);',
'',
'  END LOOP;  ',
'',
'  ',
'    for I in',
'             (       select PAY_OPTION, HR_IMPORT_DATA_CODE, ADHOC_INC_CODE_ID, ADM_DEDUCTION_ID, b.ORGDTL_ID, HR_IMPORT_DATA_RESOURCE, WORKACTIVITY_ID, UNIT_OF_MEASURE, x.EMP_ID, EMPENT_ID, ',
'                    QUANTITY,  RATE,  AMOUNT_PAID, V_start_date , v_end_date ,  AMOUNT_PAID_INC',
'                    from pa_pcf_adhocpayment x join VW_AVAILEMPLOYEE b on x.emp_id =b .id',
'                    join hr_rcm_empentitle c on  c.id= x.empent_id ',
'                    join hr_hcf_organisation M on M.id=b.ORG_ID',
'                    join hr_hcf_position w on w.id=b.position_id    ',
'                    where earnings_period_id=:P1505_EARNINGS_PERIOD',
'                    AND exists(select 1',
'                              from tmp_option_values y',
'                              where x.adhoc_inc_code_id = y.option_code',
'                              )',
'                    and exists (select 1',
'                                from tmp_Rpt_Parameter w',
'                                where TO_NUMBER(option_value)=case when option_name =''EMPLOYEE'' then to_char(b.id) ',
'                                                        when option_name =''GRADE_SCALE'' then to_char(w.grade_id)                                       ',
'                                                        when option_name =''POSITION'' then to_char(b.position_id)',
'                                                        when option_name =''WORK_LOCATION'' then to_char(b.wklocation_id)',
'                                                        when option_name =''UNION'' then to_char(b.union_code_id)',
'                                                        when option_name =''EMPLOYMENT_TYPE'' then to_char(b.employment_type_id)',
'                                                        end',
'                                        )',
'             ) loop',
'   ',
'    begin',
'',
'             INSERT INTO PA_PCF_ADHOCPAYMENT (PAY_OPTION, HR_IMPORT_DATA_CODE, ADHOC_INC_CODE_ID, ADM_DEDUCTION_ID, ORGDTL_ID, HR_IMPORT_DATA_RESOURCE, WORKACTIVITY_ID, UNIT_OF_MEASURE, EMP_ID, EMPENT_ID, EARNINGS_PERIOD_ID,',
'                  QUANTITY,  RATE,  AMOUNT_PAID,  START_PERIOD_PAID,  END_PERIOD_PAID,  AMOUNT_PAID_INC)',
'',
'             values(i.PAY_OPTION, i.HR_IMPORT_DATA_CODE, i.ADHOC_INC_CODE_ID, i.ADM_DEDUCTION_ID, i.ORGDTL_ID, i.HR_IMPORT_DATA_RESOURCE, i.WORKACTIVITY_ID, i.UNIT_OF_MEASURE, i.EMP_ID, i.EMPENT_ID, :P1505_CURRENT_EARN,',
'                    i.QUANTITY,  i.RATE,  i.AMOUNT_PAID, i.V_start_date , i.v_end_date ,  i.AMOUNT_PAID_INC);',
'',
'    exception',
'        when dup_val_on_index then null;',
'    end;',
'  ',
'  end loop;',
'',
'     :P1505_SEARCH_RESULTS:=null;',
'     :P1505_ENTITLEMENT :=null;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1505_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3630542509851536708)
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>3208746039336540111
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(340953975612181544)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3700317687709349315)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>79870557421478631
);
wwv_flow_imp.component_end;
end;
/
