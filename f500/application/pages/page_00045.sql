prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'frmAdhocDeductionsPosting'
,p_alias=>'FRMADHOCDEDUCTIONSPOSTING'
,p_step_title=>'Departmental Deduction Posting'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295437519995187)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/*to solve interactive grid freeze*/',
'.a-GV-row.is-aggregate td {',
'    pointer-events: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806737626354971898)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1278242952768356934)
,p_plug_name=>'Quick Entry Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>0
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4405575486838444791)
,p_plug_name=>'Update  Deduction Entries with Amount and Period'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", x.Id Edit,',
'"EXPENSE_ID",hourly_rate,',
'x."EMP_ID",',
'"DATESTART",',
'deduct_status,',
'x."SEQUENCE_NO",',
'"AMOUNT_OWING",',
'"PERIOD",',
'"DEDUCTION_AMOUNT",',
'x."REMARKS",',
'"PREVIOUS_START_DATE",',
'"DEDUCTION_TYPE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS",',
'DEDUCTION_NO,',
'PERCENT_BASIC,PERCENT_OPTION, X.ID Link',
'from "PA_PCF_ADMINDEDUCTION" x JOIN PA_PCF_EARNINGPERIOD ep on (x.payment_type_hist = ep.payment_type ',
'                                                          and x.employment_class_id = ep.employment_class_id',
'                                                          and x.compute_gross = ep.compute_gross ',
'                                                          and x.org_id = ep.org_id)',
'where  trunc(DATESTART) between (select start_date from pa_pcf_earningperiod where id=(:P45_EARNINGS_PERIOD_ID_1))',
'and (select end_date from pa_pcf_earningperiod where id=(:P45_EARNINGS_PERIOD_ID_1))',
'AND upper(trim(x.REMARKS))= ''QUICK ENTRY DEDUCTION''',
'and x.org_id = :APP_ORG_ID',
'and ep.id = :P45_EARNINGS_PERIOD_ID_1',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where X.org_id=a.org_id',
'              and X.employment_class_id=a.employment_class_id',
'              and upper(X.payment_type)=a.payment_type            ',
'              )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P45_EARNINGS_PERIOD_ID_1'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4245518166399650386)
,p_name=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURLY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Hourly Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
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
 p_id=>wwv_flow_imp.id(4245518301525650387)
,p_name=>'EDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Edit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:1297:P1297_ID,P1297_LOAD:&ID.,45'
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
 p_id=>wwv_flow_imp.id(4318503114392301325)
,p_name=>'SEQUENCE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQUENCE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sequence No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
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
 p_id=>wwv_flow_imp.id(4321824555599394505)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Link'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:1297:P1297_ID,P1297_LOAD:&LINK.,45'
,p_link_text=>'&LINK.'
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
'WHERE WEBPAGE_ID=1297',
'AND CAN_VIEW=''Y'''))
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4373272610988564065)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4373272720961564066)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(4373272811076564067)
,p_name=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_OWING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Owing'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(4373272897930564068)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(4373273005225564069)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(4373273068385564070)
,p_name=>'PREVIOUS_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Previous Start Date'
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
 p_id=>wwv_flow_imp.id(4373273164934564071)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854025553698208363)
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
 p_id=>wwv_flow_imp.id(4373273353715564073)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(4373273434451564074)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(4373273567241564075)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806751597847168153)
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
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4373273640591564076)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Status'
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
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'264'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4373273765036564077)
,p_name=>'PERCENT_BASIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_BASIC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percent Basic'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(4373273833071564078)
,p_name=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Percent Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3618946402930855682)
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
 p_id=>wwv_flow_imp.id(4373273942587564079)
,p_name=>'DEDUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Deduct Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
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
 p_id=>wwv_flow_imp.id(4373275025275564089)
,p_name=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(4405575696543444793)
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
 p_id=>wwv_flow_imp.id(4405575812574444794)
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
,p_lov_id=>wwv_flow_imp.id(3853988535409144141)
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
,p_readonly_condition=>'P45_EMP_ID'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4405576764919444804)
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4405577012104444806)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4405577057771444807)
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
 p_id=>wwv_flow_imp.id(4405575625613444792)
,p_internal_uid=>4184173069031833098
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4406458511172118203)
,p_interactive_grid_id=>wwv_flow_imp.id(4405575625613444792)
,p_static_id=>'17491'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4406458618824118214)
,p_report_id=>wwv_flow_imp.id(4406458511172118203)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4260930111964040685)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4245518166399650386)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4260944096948122385)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4245518301525650387)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4311526285232322609)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4318503114392301325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4322161909956839795)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(4321824555599394505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373309171245790104)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4373272610988564065)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>148
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373309712393790105)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4373272720961564066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373310221072790107)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4373272811076564067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373310692892790109)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4373272897930564068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373311153494790110)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4373273005225564069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373311683175790111)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4373273068385564070)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373312130365790112)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4373273164934564071)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>119
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373313212241790115)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(4373273353715564073)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373313646748790116)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(4373273434451564074)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373314128199790118)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(4373273567241564075)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373314704565790119)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(4373273640591564076)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373325166779858626)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4373273765036564077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373325697783858627)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4373273833071564078)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>184
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373330268003938356)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4373273942587564079)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4373342961611455556)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(4373275025275564089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4406458969642118281)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4405575696543444793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4406459330130118291)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4405575812574444794)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>123
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4406464387871118383)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4405576764919444804)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>313
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4406466266474120075)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4405577012104444806)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4297241501100556935)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(4373273005225564069)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4297241649620556936)
,p_view_id=>wwv_flow_imp.id(4406458618824118214)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(4373272811076564067)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4443970957806746583)
,p_plug_name=>'Detail Search for Current Payroll Deduction entries'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", ',
'"EXPENSE_ID",',
'x."EMP_ID",',
'"DATESTART",',
'"DISCIPLINE_ID",',
'"DEDUCT_STATUS",',
'"AMOUNT_BORROWED",',
'"AMOUNT_OWING",',
'"INTEREST_TYPE",',
'"INTEREST_RATE",',
'"PERIOD",',
'"DATE_CLOSE",',
'"CLOSED_BY",',
'"DEDUCTION_AMOUNT",',
'"APPROVED_BY",',
'"APPROVED_DATE",',
'"DEDUCTION_NO",',
'x."REMARKS",',
'"PREVIOUS_START_DATE",',
'"CLOSING_EARNING_PERIOD",',
'"CURRENT_BALANCE",',
'"DEDUCTION_TYPE",',
'x."HOURLY_RATE",',
'"FOR_PRV_YTD_ENTRY",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS"',
'from "PA_PCF_ADMINDEDUCTION" x ',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where X.org_id=a.org_id',
'              and X.employment_class_id=a.employment_class_id',
'              and upper(X.payment_type)=a.payment_type            ',
'              )',
'and UPPER(deduct_status)=''IP''',
'and deduction_no!=''0''',
'and datestart <=(select start_date from pa_pcf_earningperiod where id=nvl(:P45_EARNINGS_PERIOD_ID_1, :P1251_EARNINGS_PERIOD_ID))',
'and for_prv_ytd_entry = 0',
'and deduction_amount >0',
'and x.VERIFIED_BY is not null',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_EARNINGS_PERIOD_ID_1'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4443971301505746620)
,p_name=>'Listing of Payroll entries'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>4222568744924134926
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326847429140309335)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326847770381309335)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987993760144140)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326848186311309336)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326848571980309336)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326848959157309336)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326849409896309336)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326849840942309337)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326850160491309337)
,p_db_column_name=>'REMARKS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326837787229309328)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>32
,p_column_identifier=>'W'
,p_column_label=>'Expense Name'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326838154468309328)
,p_db_column_name=>'DATESTART'
,p_display_order=>42
,p_column_identifier=>'X'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326838567756309328)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>52
,p_column_identifier=>'Y'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326838958314309329)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>62
,p_column_identifier=>'Z'
,p_column_label=>'Deduct Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326839434363309329)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>72
,p_column_identifier=>'AA'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326839764918309329)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>82
,p_column_identifier=>'AB'
,p_column_label=>'Amount Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326840182285309330)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>92
,p_column_identifier=>'AC'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326840619368309330)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>102
,p_column_identifier=>'AD'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326841007311309331)
,p_db_column_name=>'PERIOD'
,p_display_order=>112
,p_column_identifier=>'AE'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326841364041309331)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>122
,p_column_identifier=>'AF'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326841786369309331)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>132
,p_column_identifier=>'AG'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326842195623309331)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>142
,p_column_identifier=>'AH'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326842587741309332)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>152
,p_column_identifier=>'AI'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326842994846309332)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>162
,p_column_identifier=>'AJ'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326843380348309332)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>172
,p_column_identifier=>'AK'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326843818403309333)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>182
,p_column_identifier=>'AL'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326844173470309333)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>192
,p_column_identifier=>'AM'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326844620937309333)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>202
,p_column_identifier=>'AN'
,p_column_label=>'Current Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326844956217309334)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>212
,p_column_identifier=>'AO'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326845356413309334)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>222
,p_column_identifier=>'AP'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326845803566309334)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>232
,p_column_identifier=>'AQ'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326846184149309334)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>242
,p_column_identifier=>'AR'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326846559137309335)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>252
,p_column_identifier=>'AS'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326846995156309335)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>262
,p_column_identifier=>'AT'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326850606242309337)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>272
,p_column_identifier=>'AU'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4326850985905309338)
,p_db_column_name=>'STATUS'
,p_display_order=>282
,p_column_identifier=>'AV'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4443980062959746737)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'151419'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:EXPENSE_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:PERIOD:DEDUCTION_NO:DATE_CLOSE:DEDUCTION_TYPE:DEDUCT_STATUS:REMARKS:'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4444019103893125058)
,p_plug_name=>'Post Option'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4443993935239937427)
,p_plug_name=>'Create Quick By Deduction Name'
,p_region_name=>'Create/Edit Payroll Entries'
,p_parent_plug_id=>wwv_flow_imp.id(4444019103893125058)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4450104898925825504)
,p_plug_name=>'Create Quick By Employees'
,p_parent_plug_id=>wwv_flow_imp.id(4444019103893125058)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(428311352056556590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1250:&SESSION.::&DEBUG.:1250::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(428324571332556650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4405575486838444791)
,p_button_name=>'VERIFY_DEDUCTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Verify Deductions'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(428338206488556700)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_button_name=>'CREATE_ENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(428341597018556711)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(428358997829556763)
,p_branch_name=>'Go To Page 1400'
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>4
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREATE,CREATE_ENT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(428359360332556764)
,p_branch_name=>'Go To Page 1400'
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>14
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1190585771366046161)
,p_name=>'P45_EPFLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1190586385858046167)
,p_name=>'P45_PASS_EARN_PRD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1190599803379046319)
,p_name=>'P45_PAY_BATCH'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4444019103893125058)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1247660687279884721)
,p_name=>'P45_WORK_UNIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_prompt=>'Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
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
'           AND (date_separated is null or date_separated > trunc(current_date)-30)     ',
'           and earn.id = nvl(:P45_PASS_EARN_PRD,earn.id)',
'        )        ',
'ORDER BY unit_name        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P45_PASS_EARN_PRD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>120
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please not if this field is blank, it is to be interpreted as all departments.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4197518916737286381)
,p_name=>'P45_EARNINGS_PERIOD_ID_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_item_default=>'P45_PASS_EARN_PRD'
,p_item_default_type=>'ITEM'
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'        from VW_EARNNOTPAID a',
'        where exists (select 1',
'                      from vw_useraccess x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and upper(x.payment_type)=upper(a.payment_type))',
'        and exists (select 1',
'                    from hr_rcm_employee w',
'                    where w.org_id=a.org_id',
'                    and w.employment_class_id=a.employment_class_id',
'                    and upper(w.payment_type)=upper(a.payment_type)     ',
'                    and upper(w.compute_gross) = upper(a.compute_gross)',
'                    and (w.date_Separated is null or w.date_separated > current_date)',
'                    and w.orgdtl_id = nvl(:P1400_WORK_UNIT, w.orgdtl_id )',
'                    )                   ',
'        order by start_date desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Earnings Period--'
,p_lov_cascade_parent_items=>'P45_WORK_UNIT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4197520511824286383)
,p_name=>'P45_PAY_STATUS_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_prompt=>'Pay Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_column_css_classes=>'display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245569607456650377)
,p_name=>'P45_COMPUTATION_FACTOR_D'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_prompt=>'Compute Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'page_action_on_selection', 'NONE',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245569794511650379)
,p_name=>'P45_PERCENT_OF_D'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_item_default=>'0'
,p_prompt=>'Percent Of'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245576610870650371)
,p_name=>'P45_COMPUTATION_FACTOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_prompt=>'Compute Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'page_action_on_selection', 'NONE',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245576757692650373)
,p_name=>'P45_PERCENT_OF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_item_default=>'0'
,p_prompt=>'Percent Of'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326891230437309193)
,p_name=>'P45_EARNINGS_PERIOD_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1278242952768356934)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326904561966309352)
,p_name=>'P45_POST_OPTION'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4444019103893125058)
,p_item_default=>'BY_DEDUCTION'
,p_prompt=>'Post Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:By Employees;BY_EMPLOYEE,By Deduction;BY_DEDUCTION'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326905014655309352)
,p_name=>'P45_START_PERIOD_PAID'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4444019103893125058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earning Period Start Date'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select start_date',
'from VW_EARNALL',
'where id=:P45_EARNINGS_PERIOD_ID_1'))
,p_source_type=>'QUERY'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326905744792309348)
,p_name=>'P45_START_PERIOD_PAID_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_format_mask=>'DD-MON-RR'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select start_date',
'from VW_EARNALL',
'where id=:P1251_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326906159424309349)
,p_name=>'P45_EARNINGS_PERIOD_ENT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P45_EARNINGS_PERIOD_ID_1'))
,p_source_type=>'QUERY'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326906530829309349)
,p_name=>'P45_ENTITLEMENTS_ENT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deductions'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ID',
'from Pa_Pcf_Deductioncode a',
'where a.WHO_PAYS in (''EMPLOYEE'',''BOTH'')',
'and start_date <= trunc(current_date)',
'and (end_date is null or end_date >= trunc(current_date))',
'and ORG_ID=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326906918537309349)
,p_name=>'P45_AMOUNT_D'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_item_default=>'0'
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326907331626309349)
,p_name=>'P45_EMPLOYEE_ENT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(4443993935239937427)
,p_prompt=>'Employees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P45_EMP_ID is null then',
'return',
'       ''SELECT EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' || ''''--'''' || compute_gross_emp a,X.ID b',
'        FROM VW_AVAILEMPLOYEE X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID and z.compute_gross = x.compute_gross_emp)',
'where z.id=nvl(:P45_EARNINGS_PERIOD_ID_1 ,:P1251_EARNINGS_PERIOD_ID)',
'and not exists (select 1',
'                from pa_pcf_adhocpayment y',
'                where EMPENT_ID = ALL (select ID',
'                        from HR_RCM_EMPENTITLE',
'                        where emp_id=x.id) ',
'                and EARNINGS_PERIOD_ID =nvl(:P45_EARNINGS_PERIOD_ID_1 ,:P1251_EARNINGS_PERIOD_ID))',
'and x.ORGDTL_ID = nvl(:P45_WORK_UNIT, x.ORGDTL_ID)',
'order by EMPLOYEE'';',
'else',
'return',
'       ''SELECT EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' || ''''--'''' || compute_gross_emp a,X.ID b',
'        FROM VW_AVAILEMPLOYEE X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID and z.compute_gross = x.compute_gross_emp)',
'where z.id=nvl(:P45_EARNINGS_PERIOD_ID_1 ,:P1251_EARNINGS_PERIOD_ID)',
'and x.ORGDTL_ID = nvl(:P45_WORK_UNIT, x.ORGDTL_ID)',
'   order by EMPLOYEE'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All Employees--'
,p_lov_cascade_parent_items=>'P45_ENTITLEMENTS_ENT,P45_EARNINGS_PERIOD_ID_1,P1251_EARNINGS_PERIOD_ID,P45_WORK_UNIT'
,p_ajax_items_to_submit=>'P45_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please not if this field is blank, it is to be interpreted as all Employees.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326917211185309345)
,p_name=>'P45_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326917574203309345)
,p_name=>'P45_EARNINGS_PERIOD_DIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P45_EARNINGS_PERIOD_ID'))
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326917981462309345)
,p_name=>'P45_EMP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P45_EMP_ID is null then',
'return',
'       ''SELECT EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' || ''''--'''' || compute_gross_emp a,X.ID b',
'        FROM VW_AVAILEMPLOYEE X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID',
'and z.compute_gross = x.compute_gross_emp)',
'where z.id=:P45_EARNINGS_PERIOD_ID_1',
'and x.ORGDTL_ID = nvl(:P45_WORK_UNIT, x.ORGDTL_ID)',
'order by EMPLOYEE'';',
'else',
'return',
'       ''SELECT EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' a,X.ID b',
'        FROM VW_AVAILEMPLOYEE X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID',
'and z.compute_gross = x.compute_gross_emp)',
'where z.id=nvl(:P45_EARNINGS_PERIOD_ID_1 ,:P1251_EARNINGS_PERIOD_ID)',
'and x.ORGDTL_ID = nvl(:P45_WORK_UNIT, x.ORGDTL_ID)',
'   order by EMPLOYEE'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P45_EARNINGS_PERIOD_ID_1,P45_WORK_UNIT'
,p_ajax_items_to_submit=>'P45_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326918341887309345)
,p_name=>'P45_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326918751314309346)
,p_name=>'P45_EMP_ENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_prompt=>'Deduction'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ID',
'from Pa_Pcf_Deductioncode a',
'where a.WHO_PAYS in (''EMPLOYEE'',''BOTH'')',
'and start_date <= trunc(current_date)',
'and (end_date is null or end_date >= trunc(current_date))',
'and ORG_ID=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P45_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'Please note this screen is a copy of the entitlement and the field names have not been changed.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326919214662309346)
,p_name=>'P45_END_PERIOD_PAID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select end_date',
'from VW_EARNALL',
'where id=:P1251_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326919632190309346)
,p_name=>'P45_PAY_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326919979002309346)
,p_name=>'P45_AMOUNT_PAID_INC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326920371687309347)
,p_name=>'P45_INCREASE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326920790138309347)
,p_name=>'P45_BACKUP_EARN_PRD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326921186111309347)
,p_name=>'P45_PAY_OPTION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326921580129309347)
,p_name=>'P45_IS_SUPPLEMENTAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326922013997309347)
,p_name=>'P45_ID_NEXT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326922384958309348)
,p_name=>'P45_ID_PREV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4326922822997309348)
,p_name=>'P45_ID_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4450104898925825504)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(428347444533556736)
,p_validation_name=>'chk_ded_datestart'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_start_date date; v_end_date  date; ',
'    ',
'begin',
'    select start_date, end_date into v_start_date, v_end_date',
'    from pa_pcf_earningperiod',
'    where id= :P45_EARNINGS_PERIOD_ID_1;',
'    ',
'    if :P45_START_PERIOD_PAID between v_start_date and v_end_date then',
'        RETURN TRUE;',
'    else',
'        RETURN FALSE;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You have not entered a date that fits within the earnings period.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(428341597018556711)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428348091393556738)
,p_name=>'set_computation_amount'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4405575486838444791)
,p_triggering_element=>'PERIOD'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERIOD'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428348590626556740)
,p_event_id=>wwv_flow_imp.id(428348091393556738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT,HOURLY_RATE,AMOUNT_OWING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when QUERY_EMPLOYEE_DATA =1 and :PERCENT_OPTION is not null and earning_rate in (''HOURLY_RATE'',''DAILY_RATE'') then pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => id',
'                                             ,in_start_date => :DATESTART) * :PERIOD            ',
'            else to_number(replace(:AMOUNT_OWING,'','','''') / :PERIOD) end a,',
'        case  when  QUERY_EMPLOYEE_DATA =1 and :PERCENT_OPTION is not null then pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => id',
'                                             ,in_start_date => :DATESTART)',
'              else  pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => id',
'                                             ,in_start_date => :DATESTART) end b,                                             ',
'        case when QUERY_EMPLOYEE_DATA =1 and :PERCENT_OPTION is not null and earning_rate in (''HOURLY_RATE'',''DAILY_RATE'')',
'        ',
'        then pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => id',
'                                             ,in_start_date => :DATESTART) * :PERIOD            ',
'            else to_number(replace(:AMOUNT_OWING,'','','''') ) end c',
'from pa_pcf_deductioncode',
'where id = :EXPENSE_ID',
'',
'',
''))
,p_attribute_07=>'PERCENT_OPTION,DATESTART,PERCENT_OPTION,EMP_ID,PERCENT_BASIC,AMOUNT_OWING,PERIOD,EXPENSE_ID,PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428349051402556741)
,p_name=>'dy_quickentry_postby_emp'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(428338206488556700)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428350550004556746)
,p_event_id=>wwv_flow_imp.id(428349051402556741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'for selected employees'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; v_start_date date;',
'  V_employment_class_id number; v_payment_type varchar2(50);',
'  v_compute_gross varchar2(255); V_compute_amount number(10,2):=0;',
'  v_emp_id number; v_earning_rate pa_pcf_deductioncode.earning_rate%type;',
'',
'',
'BEGIN',
'',
'  if :P45_EMPLOYEE_ENT is not null then',
'',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P45_EMPLOYEE_ENT);  ',
' ',
'    select  employment_class_id , payment_type,compute_gross, start_date  into  V_employment_class_id , v_payment_type,v_compute_gross, v_start_date',
'    from pa_pcf_earningperiod',
'    where id = :P45_EARNINGS_PERIOD_ID_1;',
'',
'    select earning_rate into v_earning_rate',
'    from pa_pcf_deductioncode',
'    where id =  :P45_ENTITLEMENTS_ENT;',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'   ',
'  begin',
'',
'        if v_earning_rate = ''HOURLY_RATE'' then',
'             V_compute_amount :=  NVL (pkg_global_fnts.fn_hourlyrate (l_selected(I), v_start_date), 0);',
'',
'        elsif v_earning_rate = ''DAILY_RATE'' then',
'             V_compute_amount :=  NVL (pkg_global_fnts.Fn_Daily (l_selected(I), v_start_date, null), 0);',
'',
'        else',
'             V_compute_amount := nvl(:P45_AMOUNT,0);',
'        end if;',
'        ',
'',
'        INSERT INTO PA_PCF_ADMINDEDUCTION(PERCENT_OPTION, PERCENT_BASIC, amount_borrowed, REMARKS,EMP_ID, EXPENSE_ID, APPROVED_BY, APPROVED_DATE, DATESTART , PREVIOUS_START_DATE,AMOUNT_OWING, PERIOD,',
'                DEDUCTION_AMOUNT, deduct_status,INTEREST_TYPE,DEDUCTION_TYPE,TRANSACTION_TYPE_ID,STATUS, ORG_ID, EMPLOYMENT_CLASS_ID, PAYMENT_TYPE,COMPUTE_GROSS)',
'                ',
'            values( :P45_COMPUTATION_FACTOR_D,  nvl(:P45_PERCENT_OF_D,0), nvl(V_compute_amount, 0),''Quick entry deduction'', l_selected(I) , :P45_ENTITLEMENTS_ENT,  ''SYSTEM'',current_date, v_start_date, current_date,nvl(V_compute_amount,0) ,',
'                1, nvl(V_compute_amount,0),''IP'',''NONE'',''EMPLOYEE'', 110,    372, :APP_ORG_ID, V_employment_class_id , v_payment_type,v_compute_gross);',
'',
'       exception',
'          when others then null;',
'       end;',
'   ',
'  END LOOP;  ',
'',
' ',
'  end if;',
' ',
'  :P45_EMPLOYEE_ENT := null;  ',
'',
'',
'end;'))
,p_attribute_02=>'P45_COMPUTATION_FACTOR_D,P45_PERCENT_OF_D,P45_EMPLOYEE_ENT,P45_EARNINGS_PERIOD_ID_1,P45_AMOUNT_D,P45_START_PERIOD_PAID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'| Column 1 | Column 2 | Column 3 |',
'| -------- | -------- | -------- |',
'| Text     | Text     | Text     |',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428351054097556747)
,p_event_id=>wwv_flow_imp.id(428349051402556741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'for All employees'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  v_earning_rate pa_pcf_deductioncode.earning_rate%type;',
'',
'',
'BEGIN',
'',
'if :P45_EMPLOYEE_ENT is  null then',
'',
'    select earning_rate into v_earning_rate',
'    from pa_pcf_deductioncode',
'    where id =  :P45_ENTITLEMENTS_ENT;',
'    ',
'    for I in (',
'                with Employee as ',
'                    (select a.id emp_id, a.org_id, a.payment_type, a.employment_class_id, a.compute_gross,start_date,',
'                      case when v_earning_rate = ''HOURLY_RATE'' then NVL (pkg_global_fnts.fn_hourlyrate (a.id, start_date), 0)',
'                         when v_earning_rate = ''DAILY_RATE'' then NVL (pkg_global_fnts.Fn_Daily (a.id, start_date, null), 0)',
'                         else  to_number(nvl(:P45_AMOUNT_D,0)) end V_compute_amount',
'                    from hr_rcm_employee  a join pa_pcf_earningperiod b on (a.org_id =b.org_id and a.payment_type = b.payment_type ',
'                                                                        and a.employment_class_id = b.employment_class_id and a.compute_gross = b.compute_gross)',
'                    where  separated_status is null',
'                    and (date_separated is null or date_separated > trunc(current_date))',
'                    and b.id= :P45_EARNINGS_PERIOD_ID_1                ',
'                     )',
'                select  emp_id , employment_class_id , payment_type, compute_gross,V_compute_amount, start_date',
'                from Employee ',
'            ) loop',
'',
'',
'           begin',
'',
'                 ',
'               INSERT INTO PA_PCF_ADMINDEDUCTION(PERCENT_OPTION, PERCENT_BASIC, amount_borrowed, REMARKS,EMP_ID, EXPENSE_ID, APPROVED_BY, APPROVED_DATE, DATESTART , PREVIOUS_START_DATE,AMOUNT_OWING, PERIOD,',
'                    DEDUCTION_AMOUNT, deduct_status,INTEREST_TYPE,DEDUCTION_TYPE,TRANSACTION_TYPE_ID,STATUS, ORG_ID, EMPLOYMENT_CLASS_ID, PAYMENT_TYPE,COMPUTE_GROSS)',
'',
'                values( :P45_COMPUTATION_FACTOR_D,  nvl(:P45_PERCENT_OF_D,0), nvl(I.V_compute_amount, 0),''Quick entry deduction'', i.emp_id , :P45_ENTITLEMENTS_ENT,  ''SYSTEM'',current_date, i.start_date, current_date,nvl(I.V_compute_amount,0) ,',
'                    1, nvl(I.V_compute_amount,0),''IP'',''NONE'',''EMPLOYEE'', 110,    372, :APP_ORG_ID, i.employment_class_id , i.payment_type, i.compute_gross );',
'',
'           exception',
'            when dup_val_on_index then null;            ',
'',
'           end;',
'       end loop;   ',
'',
'  end if;',
' ',
'  :P45_EMPLOYEE_ENT := null;  ',
'',
'',
'end;'))
,p_attribute_02=>'P45_COMPUTATION_FACTOR_D,P45_PERCENT_OF_D,P45_EMPLOYEE_ENT,P45_EARNINGS_PERIOD_ID_1,P45_AMOUNT_D,P45_START_PERIOD_PAID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'| Column 1 | Column 2 | Column 3 |',
'| -------- | -------- | -------- |',
'| Text     | Text     | Text     |',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428349458990556742)
,p_event_id=>wwv_flow_imp.id(428349051402556741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System Successfully Generated Employees For Deduction'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428349984274556744)
,p_event_id=>wwv_flow_imp.id(428349051402556741)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4405575486838444791)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428351411040556748)
,p_name=>'dy_quickentry_postby_dedcode'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(428341597018556711)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428351879636556749)
,p_event_id=>wwv_flow_imp.id(428351411040556748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  L_Selected Apex_Application_Global.Vc_Arr2; v_hourly_rate number (10,2):=0; v_earning_rate pa_pcf_deductioncode.earning_rate%type; v_start_date date;',
'  V_employment_class_id number; v_payment_type varchar2(50); v_compute_gross varchar2(255); v_daily_rate number (10,2):=0; V_compute_amount number(10,2):=0;',
' ',
'Begin',
'',
' L_Selected := Apex_Util.String_To_Table(:P45_EMP_ENT);',
'',
'',
'    select  employment_class_id , payment_type,compute_gross, start_date  into  V_employment_class_id , v_payment_type,v_compute_gross, v_start_date',
'    from pa_pcf_earningperiod',
'    where id = :P45_EARNINGS_PERIOD_ID_1;',
'',
'     v_hourly_rate := NVL (pkg_global_fnts.fn_hourlyrate (:P45_EMP_ID, v_start_date), 0);',
'     v_daily_rate := NVL (pkg_global_fnts.Fn_Daily (:P45_EMP_ID, v_start_date, null), 0);',
' ',
'  For I In 1..L_Selected.Count',
'  Loop',
'  begin',
'',
'    select earning_rate into v_earning_rate',
'    from pa_pcf_deductioncode',
'    where id =  L_Selected(I);',
'',
'    if v_earning_rate = ''HOURLY_RATE'' then',
'        V_compute_amount := v_hourly_rate;',
'',
'    elsif v_earning_rate = ''DAILY_RATE'' then',
'        V_compute_amount := v_daily_rate;',
'    else',
'        V_compute_amount := nvl(:P45_AMOUNT,0) ;',
'    end if;',
'   ',
'   ',
'     INSERT INTO PA_PCF_ADMINDEDUCTION(amount_borrowed, REMARKS,EMP_ID, EXPENSE_ID, APPROVED_BY, APPROVED_DATE, DATESTART , PREVIOUS_START_DATE,AMOUNT_OWING, PERIOD,',
'          DEDUCTION_AMOUNT, deduct_status,INTEREST_TYPE,DEDUCTION_TYPE,TRANSACTION_TYPE_ID,STATUS, ORG_ID, EMPLOYMENT_CLASS_ID, PAYMENT_TYPE, compute_gross)',
'          ',
'    values(nvl(:P45_AMOUNT,0),  ''Quick entry deduction'',:P45_EMP_ID, L_Selected(I), ''SYSTEM'',current_date, v_start_date, current_date,V_compute_amount,1  ,V_compute_amount ,''IP'',''NONE'',''EMPLOYEE'',110,	372',
'          ,:APP_ORG_ID, V_employment_class_id , v_payment_type,v_compute_gross);',
'',
'  exception',
'      when others then null;',
'  end;',
'  ',
'  End Loop;  ',
'',
'    :P45_EMP_ENT:=Null;',
'  ',
'End;'))
,p_attribute_02=>'P45_EMP_ENT,P45_EMP_ID,P45_AMOUNT,P45_START_PERIOD_PAID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'| Column 1 | Column 2 | Column 3 |',
'| -------- | -------- | -------- |',
'| Text     | Text     | Text     |',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428352426878556750)
,p_event_id=>wwv_flow_imp.id(428351411040556748)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System Successfully Generated Selected Deductions For Employee'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428352929238556751)
,p_event_id=>wwv_flow_imp.id(428351411040556748)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4405575486838444791)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428353262570556751)
,p_name=>'dy_showhide_regions'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_POST_OPTION'
,p_condition_element=>'P45_POST_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BY_DEDUCTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428353803650556752)
,p_event_id=>wwv_flow_imp.id(428353262570556751)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4450104898925825504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428354323105556754)
,p_event_id=>wwv_flow_imp.id(428353262570556751)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4443993935239937427)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428354844386556754)
,p_event_id=>wwv_flow_imp.id(428353262570556751)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4443993935239937427)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428355355075556755)
,p_event_id=>wwv_flow_imp.id(428353262570556751)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4450104898925825504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428355726155556756)
,p_name=>'set_percent_option'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_ENTITLEMENTS_ENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428356234952556757)
,p_event_id=>wwv_flow_imp.id(428355726155556756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_COMPUTATION_FACTOR_D,P45_PERCENT_OF_D'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PERCENT_OPTION_DEDCODE,EMPLOYEE_DED_PER',
'from pa_pcf_deductioncode',
'where id=:P45_ENTITLEMENTS_ENT'))
,p_attribute_07=>'P45_ENTITLEMENTS_ENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428356573339556758)
,p_name=>'chk_epp'
,p_event_sequence=>90
,p_condition_element=>'P45_EPFLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428357106966556759)
,p_event_id=>wwv_flow_imp.id(428356573339556758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_EARNINGS_PERIOD_ID_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428357639796556760)
,p_event_id=>wwv_flow_imp.id(428356573339556758)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_EARNINGS_PERIOD_ID_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(428357999365556760)
,p_name=>'refresh_entries'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_EARNINGS_PERIOD_ID_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(428358517299556762)
,p_event_id=>wwv_flow_imp.id(428357999365556760)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4405575486838444791)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(428325117634556652)
,p_process_sequence=>29
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4405575486838444791)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>206922561052944958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(428347660488556737)
,p_process_sequence=>39
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'verify_deductions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update pa_pcf_admindeduction',
'set STATUS=264',
'   ,verified_by=:APP_USER',
'   ,verified_date=trunc(current_date)',
'where upper(REMARKS) =''QUICK ENTRY DEDUCTION''',
'and (deduction_no = ''0'' or verified_by is null)',
'and datestart between (select start_date from pa_pcf_earningperiod where id=nvl(:P45_EARNINGS_PERIOD_ID_1, :P1251_EARNINGS_PERIOD_ID))',
'and (select end_date from pa_pcf_earningperiod where id=nvl(:P45_EARNINGS_PERIOD_ID_1, :P1251_EARNINGS_PERIOD_ID))',
'and org_id=:APP_ORG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(428324571332556650)
,p_internal_uid=>206945103906945043
);
wwv_flow_imp.component_end;
end;
/
