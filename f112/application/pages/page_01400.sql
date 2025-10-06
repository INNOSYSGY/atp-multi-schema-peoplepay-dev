prompt --application/pages/page_01400
begin
--   Manifest
--     PAGE: 01400
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1400
,p_name=>'rptAdhocPosting'
,p_step_title=>'Manage Departmental Payroll Entries'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42730766176870847)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169917294397969307)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3314452643619210288)
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
'where EARNINGS_PERIOD_ID=:P1400_EARNINGS_PERIOD_ID',
'and NVL(x.orgdtl_id,:P1400_WORK_UNIT) =NVL(:P1400_WORK_UNIT,x.orgdtl_id)',
'--and (emp_id =decode(:P1400_EMP_ID, 0, emp_id, :P1400_EMP_ID)',
'--or EMPENT_ID =decode(:P1400_ENTITLEMENTS_ENT, 0, emp_id, :P1400_ENTITLEMENTS_ENT))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2912649745828222126)
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
,p_lov_id=>wwv_flow_imp.id(3326517621716798305)
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
 p_id=>wwv_flow_imp.id(2912649935866222127)
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
,p_lov_id=>wwv_flow_imp.id(2914980605641546518)
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
 p_id=>wwv_flow_imp.id(3104003589636834595)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326483173226690551)
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
 p_id=>wwv_flow_imp.id(3184908996311646643)
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
 p_id=>wwv_flow_imp.id(3314451072686210272)
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
 p_id=>wwv_flow_imp.id(3314451118353210273)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3314451365538210275)
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
 p_id=>wwv_flow_imp.id(3314451427985210276)
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
,p_lov_id=>wwv_flow_imp.id(3316814715915867495)
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
 p_id=>wwv_flow_imp.id(3314451525559210277)
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
 p_id=>wwv_flow_imp.id(3314451655917210278)
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
 p_id=>wwv_flow_imp.id(3314451779685210279)
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
 p_id=>wwv_flow_imp.id(3314451882334210280)
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
 p_id=>wwv_flow_imp.id(3314451914744210281)
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
 p_id=>wwv_flow_imp.id(3314452032403210282)
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
 p_id=>wwv_flow_imp.id(3314452117231210283)
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
 p_id=>wwv_flow_imp.id(3314452231171210284)
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
,p_lov_id=>wwv_flow_imp.id(3326575354479849575)
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
 p_id=>wwv_flow_imp.id(3314452317883210285)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where org_id=:APP_ORG_ID             ',
'        order by 1'))
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
,p_readonly_condition=>'P1400_EMP_ID'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3314452433914210286)
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
 p_id=>wwv_flow_imp.id(3326858819312342082)
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
 p_id=>wwv_flow_imp.id(3314452504844210287)
,p_internal_uid=>32378801961094413
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
 p_id=>wwv_flow_imp.id(3313569619285536876)
,p_interactive_grid_id=>wwv_flow_imp.id(3314452504844210287)
,p_static_id=>'18204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3313569511633536865)
,p_report_id=>wwv_flow_imp.id(3313569619285536876)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2914977495283528933)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2912649745828222126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2914978370165528940)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2912649935866222127)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79.7917
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3106365094025135071)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3104003589636834595)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3160325270992716898)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3184908996311646643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3263018968622846614)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3326858819312342082)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313561863983535004)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3314451118353210273)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313563742586536696)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3314451365538210275)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313564291951536697)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3314451427985210276)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313564723513536698)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3314451525559210277)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313565213094536699)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3314451655917210278)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>172
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313565751787536707)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3314451779685210279)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313566288907536707)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3314451882334210280)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313566766377536709)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3314451914744210281)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313567275351536713)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3314452032403210282)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313567789106536714)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3314452117231210283)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313568243234536734)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3314452231171210284)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313568800327536788)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3314452317883210285)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>294
,p_break_order=>5
,p_break_is_enabled=>false
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3313569160815536798)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3314452433914210286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3316524478615228306)
,p_view_id=>wwv_flow_imp.id(3313569511633536865)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3314451914744210281)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3563110937528512496)
,p_plug_name=>'Departmental Post Option'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3232946490150451855)
,p_plug_name=>'Create Quick Payroll Entries By Employees'
,p_parent_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3276034195217717652)
,p_plug_name=>'Create Quick Payroll Entries By Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3324019282168769409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(169917294397969307)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1400_RETURN_PAGE.:&SESSION.::&DEBUG.:&P1400_RETURN_PAGE.:P&P1400_RETURN_PAGE._ID:&P1400_PAY_BATCH.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3324019677169769410)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P1400_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3324039613990769442)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_button_name=>'CREATE_ENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P1400_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2961969726106800440)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_button_name=>'GENERATE_EMPLOYEES_EX'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generation Categories'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:RP,79:P79_EARNINGS_PERIOD_ID,P79_END_PERIOD_PAID,P79_START_PERIOD_PAID,P79_RETURN,P79_ORGDTL_ID:&P1400_EARNINGS_PERIOD_ID.,&P1400_END_PERIOD_PAID.,&P1400_START_PERIOD_PAID.,1400,&P1400_WORK_UNIT.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3193411727277824373)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3314452643619210288)
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
 p_id=>wwv_flow_imp.id(12113030876398783)
,p_name=>'P1400_WORK_UNIT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(42730766176870847)
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
'           and earn.id = nvl(:P1400_PASS_EARN_PRD_ID,earn.id)',
'        )        ',
'ORDER BY unit_name        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1400_PASS_EARN_PRD_ID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(12113334910398786)
,p_name=>'P1400_EARN_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_prompt=>'Earnings ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53635722917298458)
,p_name=>'P1400_PASS_EARN_PRD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42730766176870847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2774702884908658886)
,p_name=>'P1400_EPFLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(42730766176870847)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912649218865222120)
,p_name=>'P1400_POST_COUNTER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2914001262386207909)
,p_name=>'P1400_JOB_TASK'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_prompt=>'Job Task'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACTIVITY_CODE||'' ''||description LABEL, ID',
'FROM PA_PCF_WORKACTIVITY',
'WHERE DATE_EFFECTIVE <=:P1400_START_PERIOD_PAID',
'and (end_date is null or end_date >= trunc(current_date))',
'and DATE_EFFECTIVE <= trunc(current_date)',
'AND ORG_ID=:APP_ORG_SHR_DED'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--No Job--'
,p_lov_cascade_parent_items=>'P1400_START_PERIOD_PAID'
,p_ajax_items_to_submit=>'P1400_START_PERIOD_PAID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2961970898591800441)
,p_name=>'P1400_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :APP_MY_POSTING_ONLY = 1  THEN '' Records are only my entries,'' else '' Records are entries by all users for my department,'' end msg',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2961971260333800443)
,p_name=>'P1400_EARNINGS_PERIOD_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(42730766176870847)
,p_item_default=>'&P1400_PASS_EARN_PRD_ID.'
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
,p_lov_cascade_parent_items=>'P1400_WORK_UNIT'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2961971644351800443)
,p_name=>'P1400_START_PAID_FOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2961972078111800444)
,p_name=>'P1400_END_PERIOD_PAID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2961972855420800445)
,p_name=>'P1400_PAY_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(42730766176870847)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2961973283266800445)
,p_name=>'P1400_START_PERIOD_PAID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(2962022234273987784)
,p_name=>'P1400_RETURN_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2962022320983987785)
,p_name=>'P1400_PAY_BATCH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3170450360533083254)
,p_name=>'P1400_QUANTITY'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3232662475637662899)
,p_name=>'P1400_BYPASS_COMPUTE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>'N'
,p_prompt=>'Bypass Compute'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3232662526267662900)
,p_name=>'P1400_AMOUNT_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>'0'
,p_prompt=>'Rate Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3232663033812662905)
,p_name=>'P1400_BYPASS_COMPUTE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_item_default=>'N'
,p_prompt=>'Bypass Compute'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3232663197797662906)
,p_name=>'P1400_AMOUNT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_item_default=>'0'
,p_prompt=>'Amount'
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
 p_id=>wwv_flow_imp.id(3232663673319662911)
,p_name=>'P1400_QUANTITY_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3238689109834346185)
,p_name=>'P1400_START_PAID_FOR_OLD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select START_PAID_FOR',
'from pa_pcf_earningperiod',
'where id = :P1400_EARNINGS_PERIOD_Id'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324012490546769401)
,p_name=>'P1400_ID_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324012818162769402)
,p_name=>'P1400_ID_PREV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324013218074769402)
,p_name=>'P1400_ID_NEXT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324013654953769402)
,p_name=>'P1400_IS_SUPPLEMENTAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324014084767769403)
,p_name=>'P1400_PAY_OPTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324014433489769403)
,p_name=>'P1400_BACKUP_EARN_PRD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324014872229769404)
,p_name=>'P1400_INCREASE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324015304606769404)
,p_name=>'P1400_AMOUNT_PAID_INC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324015658268769404)
,p_name=>'P1400_PAY_STATUS_OLD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324016015557769405)
,p_name=>'P1400_END_PERIOD_PAID_OLD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324016822161769406)
,p_name=>'P1400_EMP_ENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_prompt=>'Employee Entitlement'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ADD_INCOME_ID',
'from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code=b.id',
'where a.admin_status=''MAN''',
'and a.emp_id=:P1400_EMP_ID',
'and B.org_id= :APP_ORG_SHR_DED',
'and not exists (select 1',
'                from PA_PCF_ADHOCPAYMENT c',
'                where a.ADD_INCOME_ID=c.EMPENT_ID',
'                and EARNINGS_PERIOD_ID=:P1400_EARNINGS_PERIOD_ID',
'                )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_EMP_ID'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID_OLD,P1400_EMP_ID,P1400_START_PAID_FOR_OLD'
,p_ajax_optimize_refresh=>'Y'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324017219713769408)
,p_name=>'P1400_EMP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMP_COMPANY_NO||''--(''||EMPLOYEE||'')'' a,X.ID b',
'        FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_START_PAID_FOR,''DD-MON-YYYY''))) X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID  and x.compute_gross_emp=z.compute_gross)',
'where z.id=(:P1400_EARNINGS_PERIOD_ID)',
'and x.ORGDTL_ID = nvl(:P1400_WORK_UNIT, x.ORGDTL_ID)',
'and not exists (select 1',
'                from pa_pcf_adhocpayment y',
'                where EMPENT_ID = ALL (select ID',
'                                    from HR_RCM_EMPENTITLE',
'                                    where emp_id=x.id) ',
'and EARNINGS_PERIOD_ID =:P1400_EARNINGS_PERIOD_ID)',
'order by EMPLOYEE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_START_PAID_FOR,P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324017611307769408)
,p_name=>'P1400_EARNINGS_PERIOD_DIS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324018076465769408)
,p_name=>'P1400_EARNINGS_PERIOD_ID_OLD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>'&P1298_EARNINGS_PERIOD_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324018500416769408)
,p_name=>'P1400_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324037712714769433)
,p_name=>'P1400_POST_OPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3563110937528512496)
,p_item_default=>'BY_EMPLOYEE'
,p_prompt=>'Post Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:By Employees;BY_EMPLOYEE,By Entitlement;BY_ENTITLEMENT,Task/Job Work;BY_JOB_WORK'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324038494007769437)
,p_name=>'P1400_EMPLOYEE_ENT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_prompt=>'Employees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMP_COMPANY_NO||''--(''||EMPLOYEE||'')'' a,X.ID b',
'      FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_START_PAID_FOR,''DD-MON-YYYY''))) X join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID  and'
||' x.compute_gross_emp=z.compute_gross)',
'      where z.id=:P1400_EARNINGS_PERIOD_ID',
'      and x.ORGDTL_ID = nvl(:P1400_WORK_UNIT, x.ORGDTL_ID)',
'      and exists (select 1',
'              from hr_rcm_employee y join HR_RCM_EMPENTITLE w on y.id=w.emp_id',
'               where w.emp_id = x.id ',
'               --  AND QUICK_ENTRY=1',
'               AND ADMIN_STATUS IN (''MAN'',''BOTH'')',
'               and org_id =:APP_ORG_ID',
'               And w.INCOME_CODE_ID = to_number(:P1400_ENTITLEMENTS_ENT)',
'               and w.end_date is null',
'               )',
'       and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=x.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'      order by EMPLOYEE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_START_PAID_FOR,P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT,P1400_ENTITLEMENTS_ENT'
,p_ajax_optimize_refresh=>'Y'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324038879631769437)
,p_name=>'P1400_ENTITLEMENTS_ENT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1400_EMP_ID.'
,p_prompt=>'Entitlements'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1400_POST_OPTION = ''BY_ENTITLEMENT'' then',
'return',
'        ''SELECT DISTINCT DESCRIPTION||''''(''''||B.ACCOUNT_CODE||'''')'''' DESCRIPTION, B.ID',
'        from pa_pcf_incomecode b ',
'        where B.ORG_ID =:APP_ORG_SHR_DED',
'        and TRUNC(b.START_DATE) <= TRUNC(current_date)',
'        and (trunc(b.end_date) is null or b.end_date >= trunc(current_date))',
'        and exists(select 1',
'                   from hr_rcm_empentitle x JOIN hr_rcm_employee y on y.id=x.emp_id',
'                   join pa_pcf_earningperiod c on ( c.payment_type = y.payment_type and c.employment_class_id = y.employment_class_id',
'                                                    and c.compute_gross = y.compute_gross and c.org_id = y.org_id)',
'                   where b.id = x.income_code_id',
'                   and orgdtl_id = nvl(:P1400_WORK_UNIT, orgdtl_id)',
'                   and c.id = :P1400_EARNINGS_PERIOD_ID)    ',
'        and not exists (select 1',
'                        from PA_PCF_WORKACTIVITY_DTL wktdtl',
'                        where wktdtl.income_code_id = b.id)   ',
'       order by 1'';',
'',
'else',
'return',
'        ''SELECT DISTINCT DESCRIPTION||''''(''''||B.ACCOUNT_CODE||'''')'''' DESCRIPTION, B.ID',
'        from pa_pcf_incomecode b ',
'        where B.ORG_ID =:APP_ORG_SHR_DED',
'        and TRUNC(b.START_DATE) <= TRUNC(current_date)',
'        and (trunc(b.end_date) is null or b.end_date >= trunc(current_date))',
'        and exists(select 1',
'                   from hr_rcm_empentitle x JOIN hr_rcm_employee y on y.id=x.emp_id',
'                   join pa_pcf_earningperiod c on ( c.payment_type = y.payment_type and c.employment_class_id = y.employment_class_id',
'                                                    and c.compute_gross = y.compute_gross and c.org_id = y.org_id)',
'                   where b.id = x.income_code_id',
'                    and orgdtl_id = nvl(:P1400_WORK_UNIT, orgdtl_id)',
'                   and c.id = :P1400_EARNINGS_PERIOD_ID)',
'        and exists (select 1',
'                    from PA_PCF_WORKACTIVITY wk join PA_PCF_WORKACTIVITY_DTL wkdtl on wk.id = wkdtl.workactivity_id',
'                    where  wkdtl.income_code_id  = b.id',
'                    and  wk.id  = :P1400_JOB_TASK ',
'                    )                ',
'        order by 1'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1400_POST_OPTION,P1400_JOB_TASK,P1400_WORK_UNIT'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID,P1400_POST_OPTION,P1400_JOB_TASK'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3324039230719769441)
,p_name=>'P1400_EARNINGS_PERIOD_ENT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326858892054342083)
,p_name=>'P1400_REMARKS'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3326858956019342084)
,p_name=>'P1400_POST_SEQUENCE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3276034195217717652)
,p_item_default=>'P1400_POST_COUNTER'
,p_item_default_type=>'ITEM'
,p_prompt=>'Post Sequence'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326859055550342085)
,p_name=>'P1400_REMARKS_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3326859191449342086)
,p_name=>'P1400_POST_SEQUENCE_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3232946490150451855)
,p_item_default=>'P1400_POST_COUNTER'
,p_item_default_type=>'ITEM'
,p_prompt=>'Post Sequence'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Use Post Sequence to assign values in batches.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2912649464469222123)
,p_validation_name=>'chk_null_job'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P1400_PAY_OPTION =''BY_JOB_WORK'' AND :P1400_JOB_TASK IS NULL then',
'        return ''You must select a Job task before selecting an entitlement.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_ENT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(53635924004298460)
,p_validation_name=>'chk_by_pass_remarks'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if (:P1400_BYPASS_COMPUTE =''Y'' OR :P1400_BYPASS_COMPUTE_1 =''Y'') AND (:P1400_REMARKS is null or :P1400_REMARKS_1 is null ) then',
'        return ''You must enter a remark for the reason you are by passing the rate!'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_ENT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3324010158015769397)
,p_name=>'populate_period_date'
,p_event_sequence=>9
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3324009607640769396)
,p_event_id=>wwv_flow_imp.id(3324010158015769397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_END_PERIOD_PAID_OLD,P1400_START_PAID_FOR_OLD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT start_date,end_date, START_PAID_FOR',
'FROM PA_PCF_EARNINGPERIOD',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1400_EARNINGS_PERIOD_ID_OLD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3324009260471769396)
,p_name=>'SET_VALUE_AMOUNT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EMPENT_ID'
,p_condition_element=>'P1400_EMPENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3324008794681769395)
,p_event_id=>wwv_flow_imp.id(3324009260471769396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_RATE,P1400_QUANTITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  case when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y'' then  case when income_code =''NR'' then pkg_global_fnts.Fn_Daily(e.ID, to_date(:P1400_START_PERIOD_PAID), to_date(:P1400_START_PERIOD_PAID)) * Hourly_Rate_Multiplier ',
'                                                                                                               else  PKG_GLOBAL_FNTS.FN_HOURLYRATE(to_number(E.id), to_date(:P1400_START_PERIOD_PAID)) * Hourly_Rate_Multiplier end',
'             when b.USE_STANDARD_HOURS=''Y'' and compute_gross !=''DAILY_RATE''  then PKG_GLOBAL_FNTS.FN_HOURLYRATE(to_number(E.id),to_date(:P1400_START_PERIOD_PAID)) * Hourly_Rate_Multiplier',
'                   else a.AMOUNT  end AMT ',
', CASE WHEN B.USE_STANDARD_HOURS=''Y''  AND compute_gross !=''DAILY_RATE'' and b.income_code=''NR'' THEN TO_NUMBER(RULE_VALUE)    ',
'      when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y''  AND b.income_code=''NR'' and payment_type=''FORTNIGHTLY'' then 10',
'       when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y''  AND b.income_code=''NR'' and payment_type=''WEEKLY'' then 5',
'ELSE 0 END QTY',
'from hr_rcm_employee e join  hr_rcm_empentitle a on e.id=a.emp_id',
'JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'join hr_rcm_emprule c on c.emp_id=e.id',
'WHERE A.ID=:P1400_EMPENT_ID',
'and a.quick_entry=1',
'AND  UPPER(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(RULE_OPTION,''TABLE_VALUE''))=''STANDARD_HOURS''',
'AND (to_date(:P1400_START_PERIOD_PAID) BETWEEN TRUNC(C.START_DATE) AND TRUNC(C.END_DATE)',
'    OR  (TRUNC(C.START_DATE) <= TRUNC(current_date)',
'    and trunc(C.end_date) is null or C.end_date >= trunc(current_date)))',
'    '))
,p_attribute_07=>'P1400_EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3324007500857769394)
,p_name=>'comp_amt'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_triggering_element=>'QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3324007002731769392)
,p_event_id=>wwv_flow_imp.id(3324007500857769394)
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
 p_id=>wwv_flow_imp.id(3324005622833769391)
,p_name=>'COMP_AMT_2'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_triggering_element=>'RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3324005130240769391)
,p_event_id=>wwv_flow_imp.id(3324005622833769391)
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
 p_id=>wwv_flow_imp.id(3174960245972704545)
,p_name=>'dy_quickentry_postby_entitlement'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3324039613990769442)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62728735618540789)
,p_event_id=>wwv_flow_imp.id(3174960245972704545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'enf+bypass_remarks'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remarks = document.getElementById(''P1400_REMARKS'');',
'var bypass_compute_Y = document.getElementById(''P1400_BYPASS_COMPUTE_Y'').checked;',
'',
'if(remarks.value === '''' && bypass_compute_Y){',
'    apex.message.clearErrors();',
'',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: ["page"],',
'        message: "You must enter a remark for the reason you are by passing the rate!",',
'        unsafe: false',
'    }',
'    ]);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174960739770704547)
,p_event_id=>wwv_flow_imp.id(3174960245972704545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'    v_sqlcode varchar2(25);',
'   v_sqlerrm varchar2(2000); v_quick_post number(1):=0;',
'',
'BEGIN',
'',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1400_EMPLOYEE_ENT);',
'',
'  ',
'          select  quick_post into  v_quick_post',
'          from pa_pcf_earningperiod',
'          where id =  :P1400_EARNINGS_PERIOD_ID;',
'  ',
'FOR i IN 1..l_selected.COUNT',
'',
'LOOP',
'   ',
'   BEGIN',
'        INSERT INTO PA_PCF_ADHOCPAYMENT (WORKACTIVITY_ID, REMARKS, POST_SEQUENCE, quantity, RATE, amount_paid,by_pass_computation,  EMP_ID, EMPENT_ID, ',
'         EARNINGS_PERIOD_ID, START_PERIOD_PAID, END_PERIOD_PAID)  ',
'      ',
'        select nvl(:P1400_JOB_TASK,0), :P1400_REMARKS, :P1400_POST_SEQUENCE, case when USE_STANDARD_HOURS=''Y'' and v_quick_post = 1 then qty else to_number(:P1400_QUANTITY) end , ',
'        case WHEN :P1400_BYPASS_COMPUTE = ''Y'' then TO_NUMBER(:P1400_AMOUNT) ELSE  RATE END,  to_number(:P1400_AMOUNT),',
'        :P1400_BYPASS_COMPUTE,l_selected(i), entitle_id, :P1400_EARNINGS_PERIOD_ID, :P1400_START_PERIOD_PAID, :P1400_END_PERIOD_PAID',
'        from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID ,null,:P1400_ENTITLEMENTS_ENT,  :APP_ORG_ID, l_selected(i)))',
'        x join hr_rcm_empentitle y on y.id=x.entitle_id',
'        join pa_pcf_incomecode w on w.id = y.income_code_id;   ',
'',
'-- exception',
'--   when others then ',
'--       v_sqlcode := sqlcode;',
'--       v_sqlerrm := sqlerrm;',
'--       pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating on page 1400 by entitlements'' ,''page 1400'',NULL);                                        ',
'end;',
'  END LOOP;  ',
'commit;',
'',
'    :P1400_JOB_TASK := NULL;',
'    :P1400_ENTITLEMENTS_ENT := NULL;',
'    :P1400_EMPLOYEE_ENT := NULL;',
'    :P1400_BYPASS_COMPUTE := NULL;',
'',
'',
'end;'))
,p_attribute_02=>'P1400_JOB_TASK,P1400_EARNINGS_PERIOD_ID,P1400_ENTITLEMENTS_ENT,P1400_REMARKS,P1400_START_PERIOD_PAID,P1400_END_PERIOD_PAID,P1400_AMOUNT,P1400_BYPASS_COMPUTE,P1400_POST_SEQUENCE,P1400_QUANTITY,P1400_EMPLOYEE_ENT'
,p_attribute_03=>'P1400_JOB_TASK ,P1400_ENTITLEMENTS_ENT ,P1400_EMPLOYEE_ENT'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(3174961212998704547)
,p_event_id=>wwv_flow_imp.id(3174960245972704545)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded selected employees for the current entitlement'' );',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174961725766704547)
,p_event_id=>wwv_flow_imp.id(3174960245972704545)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3174963113629762224)
,p_name=>'dy_quickentry_postby_emp'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3324019677169769410)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62348242864873278)
,p_event_id=>wwv_flow_imp.id(3174963113629762224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'enf+bypass_remarks'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remarks = document.getElementById(''P1400_REMARKS_1'');',
'var bypass_compute_Y = document.getElementById(''P1400_BYPASS_COMPUTE_1_Y'').checked;',
'',
'if(remarks.value === '''' && bypass_compute_Y){',
'    apex.message.clearErrors();',
'',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: ["page"],',
'        message: "You must enter a remark for the reason you are by passing the rate!",',
'        unsafe: false',
'    }',
'    ]);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174963176689762225)
,p_event_id=>wwv_flow_imp.id(3174963113629762224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  L_Selected Apex_Application_Global.Vc_Arr2;',
'     v_sqlcode varchar2(25);',
'   v_sqlerrm varchar2(2000); ',
'   v_quick_post number(1):=0;',
'',
'Begin',
'',
' if not (:P1400_BYPASS_COMPUTE_1 =''Y'' AND  :P1400_REMARKS_1 is null) then',
'',
'     L_Selected := Apex_Util.String_To_Table(:P1400_EMP_ENT);',
'',
'        select  quick_post into  v_quick_post',
'        from pa_pcf_earningperiod',
'        where id =  :P1400_EARNINGS_PERIOD_ID;',
'     ',
'      For I In 1..L_Selected.Count',
'      Loop',
'      begin',
'     execute immediate ''ALTER SESSION SET NLS_DATE_FORMAT = ''''DD-MON-YYYY'''''';',
'        Insert Into PA_PCF_ADHOCPAYMENT(REMARKS, POST_SEQUENCE, RATE, QUANTITY,AMOUNT_PAID,',
'                                        by_pass_computation, EMP_ID, EMPENT_ID, EARNINGS_PERIOD_ID, ',
'                                        START_PERIOD_PAID, END_PERIOD_PAID )',
'',
'        select :P1400_REMARKS_1, :P1400_POST_SEQUENCE_1, case WHEN :P1400_BYPASS_COMPUTE_1 = ''Y'' then TO_NUMBER(:P1400_AMOUNT_1) ELSE  RATE END, case when USE_STANDARD_HOURS=''Y'' and v_quick_post =1 then qty else to_number(:P1400_QUANTITY_1) end , ',
'         RATE * case when USE_STANDARD_HOURS=''Y'' then qty else to_number(:P1400_QUANTITY_1) end ,  :P1400_BYPASS_COMPUTE_1, :P1400_EMP_ID,  L_Selected(I), :P1400_EARNINGS_PERIOD_ID, ',
'               :P1400_START_PERIOD_PAID, :P1400_END_PERIOD_PAID',
'        from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID , ',
'                                                    L_Selected(I), ',
'                                                    null,',
'                                                    :APP_ORG_ID, ',
'                                                    :P1400_EMP_ID)) x join hr_rcm_empentitle y on y.id=x.entitle_id',
'         join pa_pcf_incomecode w on w.id = y.income_code_id;     ',
'      ',
'       exception',
'      when others then ',
'          v_sqlcode := sqlcode;',
'          v_sqlerrm := sqlerrm;',
'          pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating on page 1400 by employee'' ,''page 1400'',NULL);                                        ',
'    end;',
'    commit;',
'      End Loop;  ',
'',
'        :P1400_EMP_ENT:=Null;',
'        :P1400_QUANTITY_1 :=1;',
'        :P1400_BYPASS_COMPUTE_1 := ''N'';',
'        :P1400_AMOUNT_1 := 0;',
'        :P1400_REMARKS_1:=Null;',
'        :P1400_POST_SEQUENCE_1:=Null;     ',
'',
'END IF;',
'',
'End;',
''))
,p_attribute_02=>'P1400_BYPASS_COMPUTE_1,P1400_AMOUNT_1,P1400_REMARKS_1,P1400_POST_SEQUENCE_1,P1400_EMP_ID,P1400_EARNINGS_PERIOD_ID,P1400_START_PERIOD_PAID,P1400_END_PERIOD_PAID,P1400_EMP_ENT,P1400_QUANTITY_1'
,p_attribute_03=>'P1400_EMP_ENT,P1400_QUANTITY_1,P1400_BYPASS_COMPUTE_1 ,P1400_AMOUNT_1 ,P1400_REMARKS_1,,P1400_POST_SEQUENCE_1'
,p_attribute_04=>'N'
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
 p_id=>wwv_flow_imp.id(3174963310786762226)
,p_event_id=>wwv_flow_imp.id(3174963113629762224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded selected entitlements for the current employee'' );',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174963411350762227)
,p_event_id=>wwv_flow_imp.id(3174963113629762224)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3174963874532762232)
,p_name=>'dy_showhide_regions'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_POST_OPTION'
,p_condition_element=>'P1400_POST_OPTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'BY_ENTITLEMENT,BY_JOB_WORK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117710457074064701)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3324019677169769410)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174963993531762233)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3276034195217717652)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42730915498870849)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3324039613990769442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174964186227762235)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3232946490150451855)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174964270610762236)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3232946490150451855)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2867323534734861414)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3232946490150451855)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174964127745762234)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3276034195217717652)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2874326212602101909)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3276034195217717652)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2874326264859101910)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42730805210870848)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'show_entitle_btn'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3324039613990769442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42731019156870850)
,p_event_id=>wwv_flow_imp.id(3174963874532762232)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'hide_Emp_btn'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3324019677169769410)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3181587407675553461)
,p_name=>'dy_show_hide_shrtpay'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from pa_pcf_earningperiod',
'where employment_class_id = 109629 --jsm',
'and upper(payment_type) = ''MONTHLY''',
'and id = :P1400_EARNINGS_PERIOD_ID'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232663018754662904)
,p_name=>'dy_enable_disable'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_BYPASS_COMPUTE'
,p_condition_element=>'P1400_BYPASS_COMPUTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232662754744662902)
,p_event_id=>wwv_flow_imp.id(3232663018754662904)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232662904944662903)
,p_event_id=>wwv_flow_imp.id(3232663018754662904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232662375244662898)
,p_name=>'dy_enable_disable_1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_BYPASS_COMPUTE_1'
,p_condition_element=>'P1400_BYPASS_COMPUTE_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232662220374662896)
,p_event_id=>wwv_flow_imp.id(3232662375244662898)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232662312490662897)
,p_event_id=>wwv_flow_imp.id(3232662375244662898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2955475199210243530)
,p_name=>'dy_setvalue'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1400_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2955475281820243531)
,p_event_id=>wwv_flow_imp.id(2955475199210243530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_PAY_STATUS,P1400_START_PERIOD_PAID,P1400_START_PAID_FOR,P1400_END_PERIOD_PAID,P1400_EARNINGS_PERIOD_DIS,P1400_EARN_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Earn_pay_status, start_date, start_paid_for, end_date, EARN_DESCRIPTION,id',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1400_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2962022639907987788)
,p_event_id=>wwv_flow_imp.id(2955475199210243530)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2963345164489243003)
,p_name=>'disable_whateverthefuck'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_triggering_element=>'BY_PASS_COMPUTATION'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'BY_PASS_COMPUTATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2963345299869243004)
,p_event_id=>wwv_flow_imp.id(2963345164489243003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2966297232245380596)
,p_event_id=>wwv_flow_imp.id(2963345164489243003)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2963345640456243008)
,p_name=>'set_rate'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_triggering_element=>'BY_PASS_COMPUTATION'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'BY_PASS_COMPUTATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2963345741186243009)
,p_event_id=>wwv_flow_imp.id(2963345640456243008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select rate',
'    from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID,:EMPENT_ID, null, :APP_ORG_ID, :EMP_ID));'))
,p_attribute_07=>'EMP_ID,EMPENT_ID,P1400_START_PERIOD_PAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2962023126245987793)
,p_name=>'clear_return_value'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'unload'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2962023190899987794)
,p_event_id=>wwv_flow_imp.id(2962023126245987793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_RETURN_PAGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from dual'))
,p_attribute_07=>'P1400_RETURN_PAGE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2774703010175658887)
,p_name=>'chk_ep'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EPFLAG'
,p_condition_element=>'P1400_EPFLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2774703111513658888)
,p_event_id=>wwv_flow_imp.id(2774703010175658887)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2774703229573658889)
,p_event_id=>wwv_flow_imp.id(2774703010175658887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2914001638072207912)
,p_name=>'show_hide_job'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_POST_OPTION'
,p_condition_element=>'P1400_POST_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BY_JOB_WORK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2914001645540207913)
,p_event_id=>wwv_flow_imp.id(2914001638072207912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_JOB_TASK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2914001812096207914)
,p_event_id=>wwv_flow_imp.id(2914001638072207912)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_JOB_TASK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63836022493810409)
,p_name=>'refresh_entries'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2961969726106800440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63836181248810410)
,p_event_id=>wwv_flow_imp.id(63836022493810409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12113155885398784)
,p_name=>'REFRESH_POSTED'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_WORK_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12113219379398785)
,p_event_id=>wwv_flow_imp.id(12113155885398784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32270087077028551)
,p_name=>'show_hide_generate_ex'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1400_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32270174045028552)
,p_event_id=>wwv_flow_imp.id(32270087077028551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2961969726106800440)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32270281370028553)
,p_event_id=>wwv_flow_imp.id(32270087077028551)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2961969726106800440)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3324050197948769469)
,p_process_sequence=>49
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3314452643619210288)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3208266064092455764
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2912649340617222121)
,p_process_sequence=>59
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COUNT_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1400_POST_COUNTER := :P1400_POST_COUNTER +1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_ENT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2796865206760908416
);
wwv_flow_imp.component_end;
end;
/
