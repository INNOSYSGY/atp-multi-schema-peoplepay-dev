prompt --application/pages/page_01401
begin
--   Manifest
--     PAGE: 01401
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1401
,p_name=>'frmGenerator'
,p_alias=>'FRMGENERATOR'
,p_step_title=>'Generator'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806580230187387816)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(624233700106581312)
,p_plug_name=>'RS'
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(624233839081581313)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4100078814638756003)
,p_plug_name=>'Requirements Generation (Save the data entered in grid before generating)'
,p_parent_plug_id=>wwv_flow_imp.id(624233839081581313)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"KEY_VALUE",',
'"RULE_OPTION",',
'"RULE_VALUE",',
'"KEY_VALUE" KEY_VALUE_DISPLAY',
'from "#OWNER#"."TMP_PMG_EMPRULE"',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'REQUIREMENT'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4022106372501919188)
,p_name=>'KEY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KEY_VALUE'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4022106460464919189)
,p_name=>'RULE_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULE_OPTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rule option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854267752848290376)
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
 p_id=>wwv_flow_imp.id(4022106606580919190)
,p_name=>'RULE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rule value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854267397440290376)
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
 p_id=>wwv_flow_imp.id(4022106639080919191)
,p_name=>'KEY_VALUE_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KEY_VALUE_DISPLAY'
,p_data_type=>'NUMBER'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4022106721412919192)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4022106858791919193)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4022106964339919194)
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
 p_id=>wwv_flow_imp.id(4022106229548919187)
,p_internal_uid=>554863234277618197
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
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
 p_id=>wwv_flow_imp.id(4024422152501674201)
,p_interactive_grid_id=>wwv_flow_imp.id(4022106229548919187)
,p_static_id=>'18206'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4024422223948674201)
,p_report_id=>wwv_flow_imp.id(4024422152501674201)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024422731601674207)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4022106372501919188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>241
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024423315541674215)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4022106460464919189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>488
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024423745754674220)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4022106606580919190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>566
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024424241171674223)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4022106639080919191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>361.0001220703125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024424774322674227)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4022106721412919192)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4024425297660674232)
,p_view_id=>wwv_flow_imp.id(4024422223948674201)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(4022106858791919193)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4114150107123742243)
,p_plug_name=>'Remuneration Generation (Parameter Selections Major)'
,p_parent_plug_id=>wwv_flow_imp.id(624233839081581313)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'REMUNERATION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4114150306835742257)
,p_plug_name=>'Parameters Selections Minor'
,p_parent_plug_id=>wwv_flow_imp.id(624233839081581313)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4099937902242743090)
,p_plug_name=>'Exclusions From Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
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
 p_id=>wwv_flow_imp.id(4114171830926015089)
,p_plug_name=>'Employee Non-Statutory Deduction Generation  (Parameter Selections Major)'
,p_parent_plug_id=>wwv_flow_imp.id(624233839081581313)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'DEDUCTION'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4114528509387968273)
,p_plug_name=>'Work Flow Forwarding for Transactions'
,p_parent_plug_id=>wwv_flow_imp.id(624233839081581313)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'FORWARD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697121483089898551)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4182240721236913189)
,p_plug_name=>'Display Data'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'STAY:REMUNERATION:REQUIREMENT:DEDUCTION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4003767312952181133)
,p_plug_name=>'Existing Records Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(nvl(:P1401_ALL_POSITION_LOCATION,:P1401_ALL_POS_LOC),:P1401_ALL_POS_LOC_DED)= 0 then',
'return',
'    ''select a.ID as ID, ENTITLEMENT_CURRENCY,',
'        EMP_ID as EMP_ID,',
'        INCOME_TYPE as INCOME_TYPE,',
'        INCOME_CODE_ID as INCOME_CODE_ID,',
'        case when TAXABLE=1 then ''''Yes'''' else ''''No'''' end as TAXABLE,',
'        case when NIS_DEDUCTION=1 then ''''Yes'''' else ''''No'''' end as NIS_DEDUCTION,',
'        AMOUNT as AMOUNT,',
'        EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'        STD_DETAIL_KEY as STD_DETAIL_KEY,',
'        ADMIN_STATUS as ADMIN_STATUS,',
'        PERCENTAGE as PERCENTAGE,',
'        b.REMARKS as REMARKS,',
'        QUICK_ENTRY as QUICK_ENTRY,',
'        START_DATE as START_DATE,',
'        END_DATE as END_DATE,',
'        b.ENTERED_BY as ENTERED_BY,',
'        b.ENTRY_DATE as ENTRY_DATE,',
'        b.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'        b.LAST_CHANGED_DATE as LAST_CHANGED_DATE',
'    from hr_rcm_employee b join hr_rcm_empentitle a on b.id = a.emp_id',
'    where employment_class_id = :P1401_EMPLOYMENT_CLASS',
'    AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'    AND COMPUTE_GROSS = :P1401_COMPUTE_GROSS',
'    AND B.org_id = :APP_ORG_ID',
'    and a.income_code_id = :P1401_INCOME_COME',
'    and start_date <= trunc(current_date)',
'    and (end_date is null or end_date >= nvl(nvl(:P1401_DATE_EFFECTIVE,:P1401_DATE_EFFECT), :P1401_START_DATE))',
'    AND INCOME_TYPE  = :P1401_INCOME_TYPE',
'    AND ADMIN_STATUS = :P1401_ADMIN_STATUS',
'    and case when :P1401_SEARCH_OPTION=''''GRADE_SCALE'''' then b.EMP_GRADE_ID',
'            when :P1401_SEARCH_OPTION=''''ORG_STRUCT_LEVEL'''' then b.ORGDTL_ID',
'            when :P1401_SEARCH_OPTION=''''POSITION'''' then b.POSITION_ID',
'            when :P1401_SEARCH_OPTION=''''WORK_LOCATION'''' then b.WKLOCATION_ID',
'            when :P1401_SEARCH_OPTION=''''UNION'''' then b.UNION_CODE_ID  ',
'            when :P1401_SEARCH_OPTION=''''EMPLOYEE'''' then B.ID         ',
'     else  to_number(EMPLOYMENT_TYPE_ID) end in (SELECT to_number(a_field)',
'                                                FROM ',
'                                                    xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                                    || REPLACE(:P1401_SEARCH_RESULTS,'''':'''',''''</e><e>'''')',
'                                                    || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'                                                )',
'    and b.id not in (SELECT a_field',
'                    FROM ',
'                        xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                        || REPLACE(:P1401_EXCLUSION,'''':'''',''''</e><e>'''')',
'                        || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'    ) ',
'    '';',
'',
'else',
'',
'    return',
'    ''select a.ID as ID, ENTITLEMENT_CURRENCY,',
'        EMP_ID as EMP_ID,',
'        INCOME_TYPE as INCOME_TYPE,',
'        INCOME_CODE_ID as INCOME_CODE_ID,',
'        case when TAXABLE=1 then ''''Yes'''' else ''''No'''' end as TAXABLE,',
'        case when NIS_DEDUCTION=1 then ''''Yes'''' else ''''No'''' end as NIS_DEDUCTION,',
'        AMOUNT as AMOUNT,',
'        EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'        STD_DETAIL_KEY as STD_DETAIL_KEY,',
'        ADMIN_STATUS as ADMIN_STATUS,',
'        PERCENTAGE as PERCENTAGE,',
'        b.REMARKS as REMARKS,',
'        QUICK_ENTRY as QUICK_ENTRY,',
'        START_DATE as START_DATE,',
'        END_DATE as END_DATE,',
'        b.ENTERED_BY as ENTERED_BY,',
'        b.ENTRY_DATE as ENTRY_DATE,',
'        b.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'        b.LAST_CHANGED_DATE as LAST_CHANGED_DATE',
'    from hr_rcm_employee b join hr_rcm_empentitle a on b.id = a.emp_id',
'    where employment_class_id = :P1401_EMPLOYMENT_CLASS',
'    AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'    AND COMPUTE_GROSS = :P1401_COMPUTE_GROSS',
'    AND B.org_id = :APP_ORG_ID',
'    and a.income_code_id = :P1401_INCOME_COME',
'    and start_date <= trunc(current_date)',
'    and (end_date is null or end_date >= nvl(nvl(:P1401_DATE_EFFECTIVE,:P1401_DATE_EFFECT), :P1401_START_DATE))',
'    AND INCOME_TYPE  = :P1401_INCOME_TYPE',
'    AND ADMIN_STATUS = :P1401_ADMIN_STATUS'';',
'',
'end if;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1401_ALL_POSITION_LOCATION,P1401_ALL_POS_LOC,P1401_ALL_POS_LOC_DED,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_COMPUTE_GROSS,P1401_INCOME_COME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'REMUNERATION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
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
 p_id=>wwv_flow_imp.id(4003767421919181134)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>536524426647880144
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633526580421795758)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633526952705795758)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Entitlement Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633527392864795759)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633527789487795760)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633528175620795760)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854240137300239156)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633528566141795761)
,p_db_column_name=>'TAXABLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633528987502795761)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633529373233795762)
,p_db_column_name=>'AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633529773348795763)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Expense Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633530192636795763)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633530540362795764)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633530898677795765)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633531393391795765)
,p_db_column_name=>'REMARKS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633531735855795766)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633532147779795767)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633532539437795767)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633532988026795768)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633533344592795769)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633533782679795769)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633534165000795770)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4004298625624016315)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1662915'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCOME_TYPE:INCOME_CODE_ID:ENTITLEMENT_CURRENCY:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:REMARKS:QUICK_ENTRY:START_DATE:END_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_break_on=>'INCOME_TYPE:INCOME_CODE_ID:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:INCOME_CODE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4182240796359913190)
,p_plug_name=>'Generated Result Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(nvl(:P1401_ALL_POSITION_LOCATION,:P1401_ALL_POS_LOC),:P1401_ALL_POS_LOC_DED)= 0 then',
'',
'return',
'    ''select HR_RCM_EMPENTITLE.ID as ID,ENTITLEMENT_CURRENCY,',
'                    HR_RCM_EMPENTITLE.EMP_ID as EMP_ID,',
'                    HR_RCM_EMPENTITLE.INCOME_TYPE as INCOME_TYPE,',
'                    HR_RCM_EMPENTITLE.INCOME_CODE_ID as INCOME_CODE_ID,',
'                    case when HR_RCM_EMPENTITLE.TAXABLE=1 then ''''Yes'''' else ''''No'''' end as TAXABLE,',
'                    case when HR_RCM_EMPENTITLE.NIS_DEDUCTION=1 then ''''Yes'''' else ''''No'''' end as NIS_DEDUCTION,',
'                    HR_RCM_EMPENTITLE.AMOUNT as AMOUNT,',
'                    HR_RCM_EMPENTITLE.EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'                    HR_RCM_EMPENTITLE.STD_DETAIL_KEY as STD_DETAIL_KEY,',
'                    HR_RCM_EMPENTITLE.ADMIN_STATUS as ADMIN_STATUS,',
'                    HR_RCM_EMPENTITLE.PERCENTAGE as PERCENTAGE,',
'                    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'                    HR_RCM_EMPENTITLE.QUICK_ENTRY as QUICK_ENTRY,',
'                    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'                    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'                    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,',
'                    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'                    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'                    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'                    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT ',
'                from HR_RCM_EMPENTITLE HR_RCM_EMPENTITLE join hr_rcm_employee b on b.id = HR_RCM_EMPENTITLE.emp_id           ',
'             where INCOME_TYPE = :P1401_INCOME_TYPE',
'                AND employment_class_id = :P1401_EMPLOYMENT_CLASS',
'                AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'                AND INCOME_CODE_ID = :P1401_INCOME_COME',
'                AND TAXABLE = :P1401_TAXABLE',
'              AND NIS_DEDUCTION = :P1401_NIS_DEDUCTION',
'                AND ADMIN_STATUS = :P1401_ADMIN_STATUS',
'             AND NVL(EXPENSE_CODE_ID,1) =  NVL(:P1401_EXPENSE_CODE,1) ',
'               AND AMOUNT = case when pkg_global_fnts.Get_Lookup_Col(TO_NUMBER(:P1401_INCOME_COME), ''''TABLE_VALUE'''')  =''''LEAVEPASS'''' or :P1401_COMPUTE_FACTOR is not null or :P1401_PERCENTAGE> 0 or :P1401_PERCENTAGE_OF_BASIC > 0 then AMOUNT',
'                            else TO_NUMBER(:P1401_AMOUNT) end ',
'                AND B.org_id = :APP_ORG_ID',
'                AND Start_Date = :P1401_DATE_EFFECTIVE           ',
'             --   AND TRUNC(HR_RCM_EMPENTITLE.ENTRY_DATE) = :P1401_EXECUTE_ON',
'                   and HR_RCM_EMPENTITLE.entered_by= :APP_USER',
'                 and case when :P1401_SEARCH_OPTION=''''GRADE_SCALE'''' then EMP_GRADE_ID',
'                            when :P1401_SEARCH_OPTION=''''ORG_STRUCT_LEVEL'''' then ORGDTL_ID',
'                            when :P1401_SEARCH_OPTION=''''POSITION'''' then POSITION_ID',
'                            when :P1401_SEARCH_OPTION=''''WORK_LOCATION'''' then WKLOCATION_ID',
'                            when :P1401_SEARCH_OPTION=''''UNION'''' then UNION_CODE_ID  ',
'                            when :P1401_SEARCH_OPTION=''''EMPLOYEE'''' then B.ID         ',
'                              else  to_number(EMPLOYMENT_TYPE_ID) end in (SELECT to_number(a_field)',
'                                                        FROM ',
'                                                            xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                                            || REPLACE(:P1401_SEARCH_RESULTS,'''':'''',''''</e><e>'''')',
'                                                            || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'                                                        )',
'                and b.id not in (SELECT a_field',
'                                FROM ',
'                                    xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                    || REPLACE(:P1401_EXCLUSION,'''':'''',''''</e><e>'''')',
'                                    || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'                ) ',
'            ''; ',
'else',
'',
'return',
'    ''select HR_RCM_EMPENTITLE.ID as ID,ENTITLEMENT_CURRENCY,',
'                    HR_RCM_EMPENTITLE.EMP_ID as EMP_ID,',
'                    HR_RCM_EMPENTITLE.INCOME_TYPE as INCOME_TYPE,',
'                    HR_RCM_EMPENTITLE.INCOME_CODE_ID as INCOME_CODE_ID,',
'                    case when HR_RCM_EMPENTITLE.TAXABLE=1 then ''''Yes'''' else ''''No'''' end as TAXABLE,',
'                    case when HR_RCM_EMPENTITLE.NIS_DEDUCTION=1 then ''''Yes'''' else ''''No'''' end as NIS_DEDUCTION,',
'                    HR_RCM_EMPENTITLE.AMOUNT as AMOUNT,',
'                    HR_RCM_EMPENTITLE.EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'                    HR_RCM_EMPENTITLE.STD_DETAIL_KEY as STD_DETAIL_KEY,',
'                    HR_RCM_EMPENTITLE.ADMIN_STATUS as ADMIN_STATUS,',
'                    HR_RCM_EMPENTITLE.PERCENTAGE as PERCENTAGE,',
'                    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'                    HR_RCM_EMPENTITLE.QUICK_ENTRY as QUICK_ENTRY,',
'                    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'                    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'                    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,',
'                    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'                    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'                    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'                    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT ',
'                from HR_RCM_EMPENTITLE HR_RCM_EMPENTITLE join hr_rcm_employee b on b.id = HR_RCM_EMPENTITLE.emp_id           ',
'             where INCOME_TYPE = :P1401_INCOME_TYPE',
'                AND employment_class_id = :P1401_EMPLOYMENT_CLASS',
'                AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'                AND INCOME_CODE_ID = :P1401_INCOME_COME',
'                AND TAXABLE = :P1401_TAXABLE',
'              AND NIS_DEDUCTION = :P1401_NIS_DEDUCTION',
'                AND ADMIN_STATUS = :P1401_ADMIN_STATUS',
'               AND NVL(EXPENSE_CODE_ID,1) =  NVL(:P1401_EXPENSE_CODE,1)',
'            --   AND AMOUNT = case when pkg_global_fnts.Get_Lookup_Col(TO_NUMBER(:P1401_INCOME_COME), ''''TABLE_VALUE'''')  =''''LEAVEPASS'''' or :P1401_COMPUTE_FACTOR is not null or :P1401_PERCENTAGE > 0 or :P1401_PERCENTAGE_OF_BASIC > 0 then AMOUNT',
'             --               else TO_NUMBER(:P1401_AMOUNT) end ',
'                AND B.org_id = :APP_ORG_ID',
'                AND Start_Date = :P1401_DATE_EFFECTIVE           ',
'                 AND TRUNC(HR_RCM_EMPENTITLE.ENTRY_DATE) = :P1401_EXECUTE_ON',
'                 and HR_RCM_EMPENTITLE.entered_by= :APP_USER'';             ',
'end if;           '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1401_ALL_POSITION_LOCATION,P1401_ALL_POS_LOC,P1401_ALL_POS_LOC_DED,P1401_INCOME_TYPE,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_COMPUTE_FACTOR,P1401_INCOME_COME,P1401_TAXABLE,P1401_NIS_DEDUCTION,P1401_ADMIN_STATUS,P1401_EXPENSE_CODE,P1401_'
||'AMOUNT,P1401_DATE_EFFECTIVE,P1401_EXECUTE_ON,P1401_COMPUTE_GROSS,P1401_PERCENTAGE_OF_BASIC,P1401_PERCENTAGE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'REMUNERATION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4182240907229913191)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>714997911958612201
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633538204744795781)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'AC'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633538652204795782)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>'Entitlement Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633539079415795783)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'AE'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633539454476795784)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>40
,p_column_identifier=>'AF'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633539894533795785)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>50
,p_column_identifier=>'AG'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854240137300239156)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633540286758795785)
,p_db_column_name=>'TAXABLE'
,p_display_order=>60
,p_column_identifier=>'AH'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633540618254795786)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>70
,p_column_identifier=>'AI'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633541031690795787)
,p_db_column_name=>'AMOUNT'
,p_display_order=>80
,p_column_identifier=>'AJ'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633541450290795787)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>90
,p_column_identifier=>'AK'
,p_column_label=>'Expense Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633541811019795788)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>100
,p_column_identifier=>'AL'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633542220873795788)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>110
,p_column_identifier=>'AM'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633542630310795789)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'AN'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633543037058795790)
,p_db_column_name=>'REMARKS'
,p_display_order=>130
,p_column_identifier=>'AO'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633543409121795791)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>140
,p_column_identifier=>'AP'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854040274465998798)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633543870110795791)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'AQ'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633544214774795792)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'AR'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633544628279795793)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>170
,p_column_identifier=>'AS'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633545068457795793)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>180
,p_column_identifier=>'AT'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633545474090795794)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'AU'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633545826601795795)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>200
,p_column_identifier=>'AV'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633546148155795796)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>210
,p_column_identifier=>'AW'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4182666699679462959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1663035'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCOME_TYPE:INCOME_CODE_ID:EMP_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ENTITLEMENT_CURRENCY:ADMIN_STATUS:QUICK_ENTRY:REMARKS:PERCENTAGE:START_DATE:'
,p_break_on=>'INCOME_TYPE:INCOME_CODE_ID:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:INCOME_CODE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4183202579668083601)
,p_plug_name=>'Existing Records Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.id,  emp_id, a.start_date, a.end_date, a.entered_by, a.entry_date, a.last_changed_by, a.last_changed_date, rule_option, rule_value',
'FROM  hr_rcm_emprule a join hr_rcm_employee b on b.id = a.emp_id',
'where upper(b.payment_type)= :P1401_RULE_FREQUENCY     ',
'AND b.employment_class_id = :P1401_EMP_CLASS_RULE ',
'and b.org_id = :APP_ORG_ID	',
'and a.start_date  = :P1401_DATE_EFFECT',
'and trunc(a.entry_date) = :P1401_EXECUTE_ON_REQ'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1401_RULE_FREQUENCY,P1401_EMP_CLASS_RULE,P1401_DATE_EFFECT,P1401_EXECUTE_ON_REQ'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'REQUIREMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4183202800497083603)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1283:&SESSION.::&DEBUG.:RP,1283:P1283_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>715959805225782613
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633547648202795799)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633548037854795799)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633548451071795800)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633548889431795800)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633549256843795800)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633549611881795801)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633549998646795801)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633550454151795802)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633550812514795802)
,p_db_column_name=>'RULE_OPTION'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Rule Option'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854267752848290376)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633551250657795803)
,p_db_column_name=>'RULE_VALUE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Rule Value'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854267397440290376)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4183279218421492584)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1663086'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:RULE_OPTION:RULE_VALUE:START_DATE:END_DATE:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4204290407888711565)
,p_plug_name=>'Existing Records Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent15::t-Region--hiddenOverflow:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(nvl(:P1401_ALL_POSITION_LOCATION,:P1401_ALL_POS_LOC),:P1401_ALL_POS_LOC_DED)= 0 then',
'return',
'    ''select ',
'x.ID, ',
'X.EXPENSE_ID,',
'X.EXPENSE_ID expense_LKID,',
'x.EMP_ID,',
'x.EMP_ID employee_id,',
'X.DATESTART,',
'X.DISCIPLINE_ID,',
'X.DEDUCT_STATUS,',
'X.AMOUNT_BORROWED,',
'X.AMOUNT_OWING,',
'X.INTEREST_TYPE,',
'X.INTEREST_RATE,',
'X.PERIOD,',
'X.DATE_CLOSE,',
'X.CLOSED_BY,',
'X.DEDUCTION_AMOUNT,',
'X.APPROVED_BY,',
'X.APPROVED_DATE,',
'X.DEDUCTION_NO,',
'x.REMARKS,',
'X.PREVIOUS_START_DATE,',
'X.CLOSING_EARNING_PERIOD,',
'X.CURRENT_BALANCE,',
'X.DEDUCTION_TYPE,',
'x.HOURLY_RATE,',
'X.FOR_PRV_YTD_ENTRY,',
'x.ENTERED_BY,',
'x.ENTRY_DATE,',
'x.VERIFIED_BY,',
'x.VERIFIED_DATE,',
'x.LAST_CHANGED_BY,',
'x.LAST_CHANGED_DATE,',
'x.MACHINE_INSERT,',
'x.MACHINE_UPDATE,',
'x.TRANSACTION_TYPE_ID,',
'x.STATUS',
'from PA_PCF_ADMINDEDUCTION x',
'JOIN HR_RCM_EMPLOYEE B ON B.ID=X.EMP_ID',
'where B.org_id= :APP_ORG_ID',
'and X.EXPENSE_ID =:P1401_DEDUCTION_CODE',
'and X.DATESTART = :P1401_START_DATE',
'and X.DEDUCTION_AMOUNT = :P1401_AMOUNT_DEDUCTED',
'and X.PERIOD = :P1401_PERIODS',
'and X.DEDUCTION_TYPE = :P1401_WHO_PAYS',
'and X.EMPLOYMENT_CLASS_ID = :P1401_EARN_CLASS',
'and trunc(x.entry_date) = :P1401_EXECUTE_ON_DED',
'and case when :P1401_SEARCH_OPTION=''''GRADE_SCALE'''' then b.EMP_GRADE_ID',
'            when :P1401_SEARCH_OPTION=''''ORG_STRUCT_LEVEL'''' then b.ORGDTL_ID',
'            when :P1401_SEARCH_OPTION=''''POSITION'''' then b.POSITION_ID',
'            when :P1401_SEARCH_OPTION=''''WORK_LOCATION'''' then b.WKLOCATION_ID',
'            when :P1401_SEARCH_OPTION=''''UNION'''' then b.UNION_CODE_ID  ',
'            when :P1401_SEARCH_OPTION=''''EMPLOYEE'''' then B.ID         ',
'     else  to_number(EMPLOYMENT_TYPE_ID) end in (SELECT to_number(a_field)',
'                                                FROM ',
'                                                    xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                                    || REPLACE(:P1401_SEARCH_RESULTS,'''':'''',''''</e><e>'''')',
'                                                    || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'                                                )',
'    and b.id not in (SELECT a_field',
'                    FROM ',
'                        xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                        || REPLACE(:P1401_EXCLUSION,'''':'''',''''</e><e>'''')',
'                        || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'    ) ',
'    '';',
'',
'else',
'',
'return',
'    ''select x.ID, ',
'EXPENSE_ID,EXPENSE_ID expense_LKID,',
'x.EMP_ID,x.EMP_ID employee_id,',
'DATESTART,',
'DISCIPLINE_ID,',
'DEDUCT_STATUS,',
'AMOUNT_BORROWED,',
'AMOUNT_OWING,',
'INTEREST_TYPE,',
'INTEREST_RATE,',
'PERIOD,',
'DATE_CLOSE,',
'CLOSED_BY,',
'DEDUCTION_AMOUNT,',
'APPROVED_BY,',
'APPROVED_DATE,',
'DEDUCTION_NO,',
'x.REMARKS,',
'PREVIOUS_START_DATE,',
'CLOSING_EARNING_PERIOD,',
'CURRENT_BALANCE,',
'DEDUCTION_TYPE,',
'x.HOURLY_RATE,',
'FOR_PRV_YTD_ENTRY,',
'x.ENTERED_BY,',
'x.ENTRY_DATE,',
'x.VERIFIED_BY,',
'x.VERIFIED_DATE,',
'x.LAST_CHANGED_BY,',
'x.LAST_CHANGED_DATE,',
'x.MACHINE_INSERT,',
'x.MACHINE_UPDATE,',
'x.TRANSACTION_TYPE_ID,',
'x.STATUS',
'from PA_PCF_ADMINDEDUCTION x ',
'where org_id= :APP_ORG_ID',
'and EXPENSE_ID =:P1401_DEDUCTION_CODE',
'and DATESTART = :P1401_START_DATE',
'and DEDUCTION_AMOUNT = :P1401_AMOUNT_DEDUCTED',
'and PERIOD = :P1401_PERIODS',
'and DEDUCTION_TYPE = :P1401_WHO_PAYS',
'and EMPLOYMENT_CLASS_ID = :P1401_EARN_CLASS',
'and trunc(x.entry_date) = :P1401_EXECUTE_ON_DED'';',
'',
'',
'end if;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1401_DEDUCTION_CODE,P1401_START_DATE,P1401_AMOUNT_DEDUCTED,P1401_PERIODS,P1401_WHO_PAYS,P1401_EARN_CLASS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1401_STAY'
,p_plug_display_when_cond2=>'DEDUCTION'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4204290629956711567)
,p_name=>'Listing of Employee Non Statutory Deductions'
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
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:1297:P1297_ID,P1297_LOAD:#ID#,1281'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>737047634685410577
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633553132553795806)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633553580392795807)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854309118199354602)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633553959786795808)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633554303858795808)
,p_db_column_name=>'DATESTART'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633554709747795809)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633555118379795809)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633555588050795810)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633555936408795810)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633556313770795811)
,p_db_column_name=>'PERIOD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633556730139795811)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633557110021795812)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633557566899795812)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633557929945795813)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633558296029795814)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633558768963795814)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633559106740795815)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633559544938795815)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633559993133795816)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633560346928795816)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633560742058795817)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633561104266795817)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633561509291795818)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633561964228795818)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633562372019795819)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3854308803701354602)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633562794215795819)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633563098606795820)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633563506727795820)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633563995252795821)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633564331061795822)
,p_db_column_name=>'REMARKS'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633564724716795823)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633565124720795823)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633565561443795824)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633565915362795824)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633566353241795825)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633566760221795825)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633552699504795805)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4095415692171916684)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'1663241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3633567532650795827)
,p_report_id=>wwv_flow_imp.id(4095415692171916684)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4204294408310712376)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1663249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4305031610208690213)
,p_plug_name=>'Data Pool Applicable'
,p_parent_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(nvl(:P1401_ALL_POSITION_LOCATION,:P1401_ALL_POS_LOC),:P1401_ALL_POS_LOC_DED)= 0 then',
'return',
'    ''select b.id,',
'    full_name,',
'        initcap(employment_class) employment_class,',
'    initcap(PAYMENT_TYPE) PAYMENT_TYPE,',
'    initcap(COMPUTE_GROSS) COMPUTE_GROSS,',
'    date_employed,',
'    wklocation_id,',
'    initcap(position_name) position_name,',
'    org_structure,',
'        b.ENTERED_BY as ENTERED_BY,',
'        b.ENTRY_DATE as ENTRY_DATE,',
'        b.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'        b.LAST_CHANGED_DATE as LAST_CHANGED_DATE',
'    from hr_rcm_employee b ',
'    where employment_class_id = :P1401_EMPLOYMENT_CLASS',
'    AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'    AND COMPUTE_GROSS = :P1401_COMPUTE_GROSS',
'    AND B.org_id = :APP_ORG_ID',
'    and (date_separated is null or date_separated > trunc(current_date))',
'    and case when :P1401_SEARCH_OPTION=''''GRADE_SCALE'''' then EMP_GRADE_ID',
'            when :P1401_SEARCH_OPTION=''''ORG_STRUCT_LEVEL'''' then ORGDTL_ID',
'            when :P1401_SEARCH_OPTION=''''POSITION'''' then POSITION_ID',
'            when :P1401_SEARCH_OPTION=''''WORK_LOCATION'''' then WKLOCATION_ID',
'            when :P1401_SEARCH_OPTION=''''UNION'''' then UNION_CODE_ID  ',
'            when :P1401_SEARCH_OPTION=''''EMPLOYEE'''' then B.ID         ',
'     else  to_number(EMPLOYMENT_TYPE_ID) end in (SELECT to_number(a_field)',
'                                                FROM ',
'                                                    xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                                                    || REPLACE(:P1401_SEARCH_RESULTS,'''':'''',''''</e><e>'''')',
'                                                    || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'                                                )',
'    and b.id not in (SELECT a_field',
'                    FROM ',
'                        xmltable(''''/root/e/text()'''' passing xmltype(''''<root><e>''''',
'                        || REPLACE(:P1401_EXCLUSION,'''':'''',''''</e><e>'''')',
'                        || ''''</e></root>'''') columns a_field VARCHAR2(1500) path ''''/'''')',
'    ) ',
'    '';',
'else',
'return',
'    ''select b.id,',
'    full_name,',
'        initcap(employment_class) employment_class,',
'    initcap(PAYMENT_TYPE) PAYMENT_TYPE,',
'    initcap(COMPUTE_GROSS) COMPUTE_GROSS,',
'    date_employed,',
'    wklocation_id,',
'    initcap(position_name) position_name,',
'    org_structure,',
'        b.ENTERED_BY as ENTERED_BY,',
'        b.ENTRY_DATE as ENTRY_DATE,',
'        b.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'        b.LAST_CHANGED_DATE as LAST_CHANGED_DATE',
'    from hr_rcm_employee b ',
'    where employment_class_id = :P1401_EMPLOYMENT_CLASS',
'    AND PAYMENT_TYPE = :P1401_PAYMENT_FREQUENCY',
'    AND COMPUTE_GROSS = :P1401_COMPUTE_GROSS',
'    AND B.org_id = :APP_ORG_ID',
'    and (date_separated is null or date_separated > trunc(current_date))'';',
'',
'end if;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1401_ALL_POSITION_LOCATION,P1401_ALL_POS_LOC,P1401_ALL_POS_LOC_DED,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_COMPUTE_GROSS,P1401_EXCLUSION,P1401_POSITION_LOCATION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
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
 p_id=>wwv_flow_imp.id(4305031321032690211)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>837788325761389221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633568651417795830)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>170
,p_column_identifier=>'AL'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633569091450795831)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>180
,p_column_identifier=>'AM'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633569468524795831)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'AN'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633569816571795832)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>200
,p_column_identifier=>'AO'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633570274668795832)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>210
,p_column_identifier=>'AP'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633570683488795833)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>220
,p_column_identifier=>'AQ'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633571072542795833)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>230
,p_column_identifier=>'AR'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633571468136795834)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>240
,p_column_identifier=>'AS'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850394744405229690)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633571858874795835)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>250
,p_column_identifier=>'AT'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633572200060795837)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>260
,p_column_identifier=>'AU'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633572662014795838)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>270
,p_column_identifier=>'AV'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633573060115795838)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>280
,p_column_identifier=>'AW'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3633573400755795839)
,p_db_column_name=>'ID'
,p_display_order=>290
,p_column_identifier=>'AX'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4302665008155170699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1663308'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'FULL_NAME:WKLOCATION_POSITION_NAME:ORG_STRUCTURE:EMPLOYMENT_CLASS:PAYMENT_TYPE:COMPUTE_GROSS:DATE_EMPLOYED:ID'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633552026517795803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4183202579668083601)
,p_button_name=>'REFRESH_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633492734378795706)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633498388279795722)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_button_name=>'RETURN_REM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633508958908795734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_button_name=>'RETURN_NONSTAT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633520499698795746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_button_name=>'RETURN_FLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633546932237795797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4182240796359913190)
,p_button_name=>'REFRESH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633493170148795707)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_button_name=>'SUBMIT_REQ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit and Generate'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633498719620795722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_button_name=>'GENERATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633509367164795734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_button_name=>'GENERATE_DED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Ded'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633520981007795747)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_button_name=>'GENERATE_FWD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Fwd'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3633535257491795775)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3633622039767795887)
,p_branch_name=>'stay_update'
,p_branch_action=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.::P1401_STAY:STAY&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3633498719620795722)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3633622399809795887)
,p_branch_action=>'f?p=&APP_ID.:1401:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>2
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3633621611694795886)
,p_branch_name=>'Go To Page 1401'
,p_branch_action=>'f?p=&APP_ID.:1401:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633493543463795712)
,p_name=>'P1401_ORGANISATION_RULE'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from HR_HCF_organisation X',
'where id=:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633493991411795714)
,p_name=>'P1401_RULE_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,upper(PAYMENT_TYPE) B',
'FROM VW_USERACCESS',
'where org_id=:P1401_ORGANISATION_RULE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_lov_cascade_parent_items=>'P1401_ORGANISATION_RULE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633494385021795714)
,p_name=>'P1401_EMP_CLASS_RULE'
,p_is_required=>true
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.ID=a.employment_class_id',
'             and org_id=:P1401_ORGANISATION_RULE)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_lov_cascade_parent_items=>'P1401_ORGANISATION_RULE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633494781450795714)
,p_name=>'P1401_DATE_EFFECT'
,p_is_required=>true
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Date Effective'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633495159371795715)
,p_name=>'P1401_DATE_END_RULE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Date Effective'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633495524478795715)
,p_name=>'P1401_UPDATE_EXISTING_REQ'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Update Existing'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633495972827795716)
,p_name=>'P1401_ALL_POS_LOC'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3633496310533795716)
,p_name=>'P1401_REMARKS_REQ'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633496758699795717)
,p_name=>'P1401_EXECUTE_ON_REQ'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(4100078814638756003)
,p_prompt=>'Execute On'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This date is used to query the results for the process. Its compared with the creation date for the entry.'
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
 p_id=>wwv_flow_imp.id(3633499137230795723)
,p_name=>'P1401_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from HR_HCF_organisation X',
'where id=:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633499542881795724)
,p_name=>'P1401_EMPLOYMENT_CLASS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM hr_rcm_employee A',
'             where x.ID = a.employment_class_id',
'             AND org_id=:P1401_ORGANISATION)',
'and upper(VALUE_DESCRIPTION) not like ''%HRMIS%CONS%''             ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633499963937795724)
,p_name=>'P1401_PAYMENT_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,PAYMENT_TYPE B',
'FROM hr_rcm_employee ',
'WHERE ORG_ID=:P1401_ORGANISATION',
'AND EMPLOYMENT_CLASS_ID = :P1401_EMPLOYMENT_CLASS',
'order by 1'))
,p_lov_cascade_parent_items=>'P1401_ORGANISATION,P1401_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3633500374850795725)
,p_name=>'P1401_COMPUTE_GROSS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Compute Gross'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(replace(compute_gross,''_'','' '')) a, compute_gross b',
'from hr_rcm_employee',
'where Employment_Class_Id = :P1401_EMPLOYMENT_CLASS',
'and payment_type = :P1401_PAYMENT_FREQUENCY',
'and org_id=:P1401_ORGANISATION'))
,p_lov_cascade_parent_items=>'P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_ORGANISATION'
,p_ajax_items_to_submit=>'P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633500747591795725)
,p_name=>'P1401_INCOME_COME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Income Code'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'INCOME_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_incomecode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and v.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633501155063795726)
,p_name=>'P1401_INCOME_TYPE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Income Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INCOME_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3854239876630239156)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633501576136795726)
,p_name=>'P1401_ADMIN_STATUS'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Admin Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:MAN,SYS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633501897897795726)
,p_name=>'P1401_COMPUTE_FACTOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Computational Base'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTATION_FACTOR'
,p_lov=>'.'||wwv_flow_imp.id(3619227775031001919)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633502317158795727)
,p_name=>'P1401_PERCENTAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_item_default=>'0'
,p_prompt=>'% of Compute Factor'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633502784250795727)
,p_name=>'P1401_NIS_DEDUCTION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'NIB Deduction'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633503176881795728)
,p_name=>'P1401_TAXABLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Taxable'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633503587390795728)
,p_name=>'P1401_AMOUNT'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_item_default=>'0'
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter an amount or a decimal percentage in case when a percent of basic was selected.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633504434439795729)
,p_name=>'P1401_DATE_EFFECTIVE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Date Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633504832371795730)
,p_name=>'P1401_DATE_END'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Date End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(3633505242804795730)
,p_name=>'P1401_EXPENSE_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Expense Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DEDUCTION_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(3633505653270795730)
,p_name=>'P1401_ALL_POSITION_LOCATION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_item_default=>'1'
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If Position is select ensure Position Selector region has data, if not not Data Pool Applicable will be shown.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633506517809795731)
,p_name=>'P1401_UPDATE_EXISTING'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Update Existing'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633506994542795732)
,p_name=>'P1401_EXECUTE_ON'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Execute On'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This date is used to query the results for the process. Its compared with the creation date for the entry.'
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
 p_id=>wwv_flow_imp.id(3633507855571795732)
,p_name=>'P1401_REMARKS_REM'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4114150107123742243)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3633508269999795733)
,p_name=>'P1401_EARNINGS_PERIOD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4182240721236913189)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633509709112795735)
,p_name=>'P1401_ORGANISATION_DED'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from HR_HCF_organisation X',
'where id=:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633510125240795735)
,p_name=>'P1401_DEDUCTION_CODE'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Deduction Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633510516488795736)
,p_name=>'P1401_WHO_PAYS'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Who Pays'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3854306925798354600)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633510941863795736)
,p_name=>'P1401_EMPLOYEE_PER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Employee%'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633511312213795736)
,p_name=>'P1401_EMPLOYER_PER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Employer%'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633511742433795737)
,p_name=>'P1401_EXCLUDE_NIS_TAX'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Exclude NIS/TAX'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633512193893795737)
,p_name=>'P1401_USE_HOUR_RATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Use Hour Rate'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633512559220795738)
,p_name=>'P1401_UNION_DEDUCTION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Union Deduction'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633512909944795738)
,p_name=>'P1401_PENSION_DEDUCTION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Pension Deduction'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3633513379617795739)
,p_name=>'P1401_START_DATE'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633513726956795739)
,p_name=>'P1401_PREVIOUS_START_DATE'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Previous Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633514120932795739)
,p_name=>'P1401_PERIODS'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_item_default=>'0'
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633514587865795740)
,p_name=>'P1401_AMOUNT_OWING'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_item_default=>'0'
,p_prompt=>'Amount Owing'
,p_format_mask=>'FML999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633514962387795740)
,p_name=>'P1401_AMOUNT_DEDUCTED'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_item_default=>'0'
,p_prompt=>'Amount Deducted'
,p_format_mask=>'FML999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633515352774795741)
,p_name=>'P1401_EARN_CLASS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM hr_rcm_employee A',
'             where x.ID = a.employment_class_id',
'             AND org_id=:P1401_ORGANISATION_DED)',
'and upper(VALUE_DESCRIPTION) not like ''%HRMIS%CONS%''             ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_ORGANISATION_DED'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633515722101795741)
,p_name=>'P1401_PAYMENT_TYPE_DED'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,PAYMENT_TYPE B',
'FROM hr_rcm_employee ',
'WHERE ORG_ID=:P1401_ORGANISATION_DED',
'AND EMPLOYMENT_CLASS_ID = :P1401_EARN_CLASS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_ORGANISATION_DED,P1401_EARN_CLASS'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3633516193166795741)
,p_name=>'P1401_COMPUTE_GROSS_DED'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Compute Gross'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(replace(compute_gross,''_'','' '')) a, compute_gross b',
'from hr_rcm_employee',
'where Employment_Class_Id = :P1401_EARN_CLASS',
'and payment_type = :P1401_PAYMENT_TYPE_DED',
'and org_id=:P1401_ORGANISATION_DED'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_EARN_CLASS,P1401_PAYMENT_TYPE_DED,P1401_ORGANISATION_DED'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633516561809795742)
,p_name=>'P1401_COMPUTE_FACTOR_DED'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Compute Factor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTATION_FACTOR'
,p_lov=>'.'||wwv_flow_imp.id(3619227775031001919)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633516967766795742)
,p_name=>'P1401_PERCENTAGE_OF_BASIC'
,p_is_required=>true
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_item_default=>'0'
,p_prompt=>'Percentage'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633517371025795743)
,p_name=>'P1401_EXECUTE_ON_DED'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Execute On'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This date is used to query the results for the process. Its compared with the creation date for the entry.'
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
 p_id=>wwv_flow_imp.id(3633518293746795744)
,p_name=>'P1401_APPROVED_BY'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Approved By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' b',
'FROM VW_AVAILSNREMPLOYEE',
'where Date_Separated is null or Date_Separated > :P1401_START_DATE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1401_START_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633518610458795744)
,p_name=>'P1401_APPROVED_DATE'
,p_is_required=>true
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Approved Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633519091318795745)
,p_name=>'P1401_UPDATE_EXISTING_DED'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'Update Existing'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633519413155795745)
,p_name=>'P1401_ALL_POS_LOC_DED'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633519827670795745)
,p_name=>'P1401_REMARKS_DED'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(4114171830926015089)
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
 p_id=>wwv_flow_imp.id(3633521340206795747)
,p_name=>'P1401_STAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Flow Name'
,p_source=>'STAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1401_FORWARD_LIST_ID is null then',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'';',
'else',
'',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
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
 p_id=>wwv_flow_imp.id(3633521731008795748)
,p_name=>'P1401_WFL_STATUS_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Status'
,p_source=>'WFL_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and b.STAGE_ID=:P1401_STAGE_ID)             ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1401_STAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633522097229795748)
,p_name=>'P1401_FORWARD_MODE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Forward Mode'
,p_source=>'FORWARD_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3806722137229925056)||'.'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633522593500795748)
,p_name=>'P1401_SRC_POSLOC'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source Position'
,p_source=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    position_name',
'    || '':-''',
'    || (',
'        SELECT',
'            job_code',
'        FROM',
'            hr_hcf_job',
'        WHERE',
'            ID = b.job_id',
'    )',
'    || '' (''',
'    || initcap(unit_name) ||'')'' A,',
'    b.ID b',
'FROM',
'    hr_hcf_position b ',
'JOIN hr_hcf_worklocation C ON C.ID=b.def_work_location_id',
'JOIN hr_hcf_orgstructuredtl D ON D.ID=b.orgdtl_id',
'ORDER BY',
'    1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
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
 p_id=>wwv_flow_imp.id(3633522899406795749)
,p_name=>'P1401_IS_DEFAULT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Default'
,p_source=>'IS_DEFAULT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This ensures that the flow works without user intervention'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633523838257795750)
,p_name=>'P1401_AUTO_CLOSE_ON_COMPLETE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Auto Close On Complete'
,p_source=>'AUTO_CLOSE_ON_COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This ensures that flow automatically closes off thus no need to edit notification record and close off the notices.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633524760415795751)
,p_name=>'P1401_EFFECTIVE_FROM'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Effective From'
,p_source=>'EFFECTIVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3633525194527795751)
,p_name=>'P1401_EFFECTIVE_TO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Effective To'
,p_source=>'EFFECTIVE_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3633525540793795752)
,p_name=>'P1401_REMARKS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4114528509387968273)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>180
,p_cMaxlength=>500
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
 p_id=>wwv_flow_imp.id(3633535597816795776)
,p_name=>'P1401_POSITION_LOCATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_prompt=>'Destination Position'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1401_STAY=''FORWARD'' then',
'',
'return',
'''SELECT  POSITION_NAME||'''':-''''||',
'        (SELECT JOB_CODE FROM HR_HCF_JOB WHERE ID=B.JOB_ID)||'''' (''''',
'        ||INITCAP(UNIT_NAME)||'''')'''' A, B.ID B',
'        ',
'FROM HR_HCF_POSITION B jOIN HR_HCF_ORGSTRUCTUREDTL D ON D.ID=B.ORGDTL_ID',
'WHERE EXISTS(SELECT 1',
'           FROM TBLUSER U JOIN TBLUSERDETAIL B ON U.USER_ID=B.USER_ID',
'           JOIN TBLRESPONSIBILITY C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'           JOIN TBLRESPONSIBILITYORGPAGE D ON C.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'           JOIN TBLPAGELIST E ON E.PAGE_ID=D.PAGE_ID',
'           JOIN TBLWORKFLOWDTL F ON F.WEBPAGE_ID=E.WEBPAGE_ID',
'           JOIN TBLWORKFLOWSTATUS G ON F.ID=G.WORKFLOW_DTL_ID',
'           JOIN HR_RCM_EMPLOYEE V ON U.EMPLOYEE_NO=V.ID',
'           WHERE C.ID=V.WKLOCATION_ID',
'           AND WFL_STATUS_ID=:P1401_WFL_STATUS_ID',
'           AND D.CAN_VIEW=''''Y''''',
'           AND TRUNC(D.START_DATE) <= TRUNC(current_date)',
'           AND (D.END_DATE IS NULL OR TRUNC(D.END_DATE) >= TRUNC(current_date))',
'           AND TRUNC(D.START_DATE) <= TRUNC(current_date)',
'           AND (D.END_DATE IS NULL OR TRUNC(D.END_DATE) >= TRUNC(current_date))',
'           )',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'''SELECT',
'    position_name || '''':-''''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'''' (''''||initcap(unit_name)||'''')'''' a, B.id b',
'FROM HR_HCF_POSITION B JOIN HR_HCF_ORGSTRUCTUREDTL D ON D.ID=B.ORGDTL_ID',
'WHERE EXISTS (',
'        SELECT',
'            1',
'        FROM',
'            hr_rcm_employee d',
'        WHERE b.id = d.position_id',
'            AND  org_id = :APP_ORG_ID',
'            AND payment_type = DECODE(:P1401_RULE_FREQUENCY, NULL, NVL(:P1401_PAYMENT_FREQUENCY, PAYMENT_TYPE), :P1401_RULE_FREQUENCY',
'            )',
'                AND employment_class_id = DECODE(:P1401_EMP_CLASS_RULE, null, NVL(:P1401_EMPLOYMENT_CLASS, EMPLOYMENT_CLASS_ID), :P1401_EMP_CLASS_RULE)',
'    )',
'order by 1',
''';',
'end if;',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_WFL_STATUS_ID,P1401_ORGANISATION,P1401_ORGANISATION_DED,P1401_ORGANISATION_RULE,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_RULE_FREQUENCY,P1401_EMP_CLASS_RULE'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_item_comment=>'No longer in use.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633536007266795777)
,p_name=>'P1401_STAY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633536397697795777)
,p_name=>'P1401_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Union;UNION,Employment Type;EMPLOYMENT_TYPE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Option--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633536806823795777)
,p_name=>'P1401_SEARCH_RESULTS'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(4114150306835742257)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'GEN_PARAMTER_RESULTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1401_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no)) display, b.id return',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where exists (select 1',
'              from pa_pcf_earningperiod c ',
'              where b.payment_type=c.payment_type',
'              and b.employment_class_id=c.employment_class_id',
'              and b.org_id=c.org_id',
'              and b.compute_gross =c.compute_gross',
'              and id = :P1401_EARNINGS_PERIOD)',
'and b.date_separated is null or b.date_separated > trunc(current_date)     ',
'and include_payroll=''''Y''''',
'order by 1'';',
'',
'ELSif :P1401_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and exists(select 1',
'                   from vw_EmpEarn g',
'                   where g.EMP_GRADE_ID = v.id',
'                   and g.Earning_period_id = :P1401_EARNINGS_PERIOD',
'                   )',
'        order by grade_code'';',
'',
'elsif  :P1401_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1401_EARNINGS_PERIOD',
'              and m.id= g.orgdtl_id',
'              )',
'order by 1'';',
'',
'elsif  :P1401_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE  exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1401_EARNINGS_PERIOD',
'              and b.id=g.Position_ID',
'              )',
'order by 1'';',
'',
'elsif  :P1401_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE  exists (select 1',
'              from vw_EmpEarn e',
'              where c.id=e.wklocation_id',
'              and e.Earning_period_id = :P1401_EARNINGS_PERIOD                           ',
'              )'';',
'     ',
'',
'elsif  :P1401_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name display ,x.id return',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    and exists (select 1',
'              from vw_EmpEarn g',
'              where x.id = g.union_code_id',
'              and g.Earning_period_id = :P1401_EARNINGS_PERIOD                           ',
'              )',
'    order by  1'';    ',
'',
'elsif  :P1401_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,nvl(employment_type_id,3) return',
'        from vw_EmpEarn g',
'        where g.Earning_period_id = :P1401_EARNINGS_PERIOD'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_SEARCH_OPTION,P1401_EARNINGS_PERIOD'
,p_ajax_items_to_submit=>'P1401_SEARCH_OPTION,P1401_EARNINGS_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3633537505768795779)
,p_name=>'P1401_EXCLUSION'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4099937902242743090)
,p_prompt=>'Select Employees to Exclude'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp No.: ''||Emp_company_no||'')'' Employee, id',
'from VW_AVAILEMPLOYEE a',
'where case when :P1401_SEARCH_OPTION=''GRADE_SCALE'' then EMP_GRADE_ID',
'            when :P1401_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then ORGDTL_ID',
'            when :P1401_SEARCH_OPTION=''POSITION'' then POSITION_ID',
'            when :P1401_SEARCH_OPTION=''WORK_LOCATION'' then WKLOCATION_ID',
'            when :P1401_SEARCH_OPTION=''UNION'' then UNION_CODE_ID         ',
'     else  to_number(EMPLOYMENT_TYPE_ID) end in (SELECT to_number(a_field)',
'                        FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P1401_SEARCH_RESULTS,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'and employment_class_id = :P1401_EMPLOYMENT_CLASS',
'and PAYMENT_TYPE =:P1401_PAYMENT_FREQUENCY',
'and COMPUTE_GROSS_EMP = :P1401_COMPUTE_GROSS                       ',
'              ',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1401_SEARCH_RESULTS,P1401_SEARCH_OPTION,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_COMPUTE_GROSS'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3633574362723795843)
,p_validation_name=>'chk_percentage_vs_amount'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P1401_PERCENTAGE > 0 and :P1401_AMOUNT > 0 then',
'        return ''You cannot use percentage and amounts at the same time, its one or the other'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3633498719620795722)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633576199773795846)
,p_name=>'show_hide_button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_POSITION_LOCATION'
,p_condition_element=>'P1401_POSITION_LOCATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633576785982795847)
,p_event_id=>wwv_flow_imp.id(3633576199773795846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633577196521795848)
,p_event_id=>wwv_flow_imp.id(3633576199773795846)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633577672832795848)
,p_name=>'show_hide_button_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_ALL_POSITION_LOCATION'
,p_condition_element=>'P1401_ALL_POSITION_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633578175521795849)
,p_event_id=>wwv_flow_imp.id(3633577672832795848)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633578621348795849)
,p_event_id=>wwv_flow_imp.id(3633577672832795848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633579149158795850)
,p_event_id=>wwv_flow_imp.id(3633577672832795848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633579605857795850)
,p_event_id=>wwv_flow_imp.id(3633577672832795848)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633580019291795850)
,p_name=>'show_hide_button_1_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_ALL_POS_LOC'
,p_condition_element=>'P1401_ALL_POS_LOC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633580544654795851)
,p_event_id=>wwv_flow_imp.id(3633580019291795850)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633580997269795851)
,p_event_id=>wwv_flow_imp.id(3633580019291795850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633581590902795852)
,p_event_id=>wwv_flow_imp.id(3633580019291795850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633582055953795852)
,p_event_id=>wwv_flow_imp.id(3633580019291795850)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633582395273795853)
,p_name=>'set_deduction_amt'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_PERIODS'
,p_condition_element=>'P1401_PERIODS'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633582959617795853)
,p_event_id=>wwv_flow_imp.id(3633582395273795853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_AMOUNT_DEDUCTED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  round(:P1401_AMOUNT_OWING/:P1401_PERIODS,0)',
'from dual'))
,p_attribute_07=>'P1401_PERIODS,P1401_AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633583302568795853)
,p_name=>'show_hide_reqrule'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_EMP_CLASS_RULE'
,p_condition_element=>'P1401_EMP_CLASS_RULE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633583845371795854)
,p_event_id=>wwv_flow_imp.id(3633583302568795853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633493170148795707)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633584386430795854)
,p_event_id=>wwv_flow_imp.id(3633583302568795853)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633493170148795707)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633584721625795854)
,p_name=>'setvalue_income_attrib'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_INCOME_COME'
,p_condition_element=>'P1401_INCOME_COME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633585227075795855)
,p_event_id=>wwv_flow_imp.id(3633584721625795854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_INCOME_TYPE,P1401_ADMIN_STATUS,P1401_TAXABLE,P1401_NIS_DEDUCTION,P1401_PERCENTAGE,P1401_COMPUTE_FACTOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INCOME_TYPE, ADMIN_STATUS, TAXABLE, NIS_DEDUCTION, percent_of_basic, INC_PERCENT_OPTION',
'from PA_PCF_INCOMECODE',
'where id=:P1401_INCOME_COME'))
,p_attribute_07=>'P1401_INCOME_COME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633585643615795855)
,p_name=>'show_hide_all'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_ALL_POS_LOC_DED'
,p_condition_element=>'P1401_ALL_POS_LOC_DED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633586147376795856)
,p_event_id=>wwv_flow_imp.id(3633585643615795855)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633586622942795856)
,p_event_id=>wwv_flow_imp.id(3633585643615795855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633587170300795857)
,p_event_id=>wwv_flow_imp.id(3633585643615795855)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4114150306835742257)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633587672717795857)
,p_event_id=>wwv_flow_imp.id(3633585643615795855)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3633498719620795722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633588014497795858)
,p_name=>'refrest_compute_gross'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_COMPUTE_GROSS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633588499989795858)
,p_event_id=>wwv_flow_imp.id(3633588014497795858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633589074140795858)
,p_event_id=>wwv_flow_imp.id(3633588014497795858)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633589576170795859)
,p_event_id=>wwv_flow_imp.id(3633588014497795858)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633589897503795859)
,p_name=>'refresh_payment'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_PAYMENT_FREQUENCY'
,p_condition_element=>'P1401_COMPUTE_GROSS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633590397617795860)
,p_event_id=>wwv_flow_imp.id(3633589897503795859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633590926489795860)
,p_event_id=>wwv_flow_imp.id(3633589897503795859)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633591481351795860)
,p_event_id=>wwv_flow_imp.id(3633589897503795859)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633591831865795861)
,p_name=>'refresh_empClass'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_EMPLOYMENT_CLASS'
,p_condition_element=>'P1401_PAYMENT_FREQUENCY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633592348516795861)
,p_event_id=>wwv_flow_imp.id(3633591831865795861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633592802856795862)
,p_event_id=>wwv_flow_imp.id(3633591831865795861)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633593312800795862)
,p_event_id=>wwv_flow_imp.id(3633591831865795861)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633593764210795862)
,p_name=>'refresh_incomecode'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_INCOME_COME'
,p_condition_element=>'P1401_COMPUTE_GROSS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633594267907795863)
,p_event_id=>wwv_flow_imp.id(3633593764210795862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633594763962795863)
,p_event_id=>wwv_flow_imp.id(3633593764210795862)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633595257996795864)
,p_event_id=>wwv_flow_imp.id(3633593764210795862)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633595660816795864)
,p_name=>'refresh_incometype'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_INCOME_TYPE'
,p_condition_element=>'P1401_INCOME_COME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633596125181795865)
,p_event_id=>wwv_flow_imp.id(3633595660816795864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633596630491795865)
,p_event_id=>wwv_flow_imp.id(3633595660816795864)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633597001008795865)
,p_name=>'refresh_admin_status'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_ADMIN_STATUS'
,p_condition_element=>'P1401_INCOME_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633597575944795866)
,p_event_id=>wwv_flow_imp.id(3633597001008795865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633598077896795866)
,p_event_id=>wwv_flow_imp.id(3633597001008795865)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633598466197795866)
,p_name=>'date_eff_refresh'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_DATE_EFFECTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633598963887795867)
,p_event_id=>wwv_flow_imp.id(3633598466197795866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633599494012795867)
,p_event_id=>wwv_flow_imp.id(3633598466197795866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633599875904795868)
,p_name=>'refresh_percentage'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_PERCENTAGE'
,p_condition_element=>'P1401_DATE_EFFECTIVE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633600296452795868)
,p_event_id=>wwv_flow_imp.id(3633599875904795868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633600813233795868)
,p_event_id=>wwv_flow_imp.id(3633599875904795868)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633601223326795869)
,p_name=>'refresh_taxable'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_TAXABLE'
,p_condition_element=>'P1401_PERCENTAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633601780954795869)
,p_event_id=>wwv_flow_imp.id(3633601223326795869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633602294755795870)
,p_event_id=>wwv_flow_imp.id(3633601223326795869)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633602669469795870)
,p_name=>'refresh_NIS'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_NIS_DEDUCTION'
,p_condition_element=>'P1401_TAXABLE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633603141208795870)
,p_event_id=>wwv_flow_imp.id(3633602669469795870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633603671215795871)
,p_event_id=>wwv_flow_imp.id(3633602669469795870)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633604076170795871)
,p_name=>'refresh_expense'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_EXPENSE_CODE'
,p_condition_element=>'P1401_EXECUTE_ON'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633604581686795872)
,p_event_id=>wwv_flow_imp.id(3633604076170795871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633604938894795872)
,p_name=>'refresh_execute_on'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_EXECUTE_ON'
,p_condition_element=>'P1401_AMOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633605466741795873)
,p_event_id=>wwv_flow_imp.id(3633604938894795872)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633605888649795873)
,p_name=>'refresh_amount'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_AMOUNT'
,p_condition_element=>'P1401_NIS_DEDUCTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633606301704795873)
,p_event_id=>wwv_flow_imp.id(3633605888649795873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633606708659795874)
,p_name=>'refresh_data_pool'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_POSITION_LOCATION'
,p_condition_element=>'P1401_POSITION_LOCATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633607198607795874)
,p_event_id=>wwv_flow_imp.id(3633606708659795874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633607622465795874)
,p_name=>'refresh_data_pool_2'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_EXCLUSION'
,p_condition_element=>'P1401_EXCLUSION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633608122080795875)
,p_event_id=>wwv_flow_imp.id(3633607622465795874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633608505941795875)
,p_name=>'get_earn_prd'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_COMPUTE_GROSS,P1401_PAYMENT_FREQUENCY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633609089428795875)
,p_event_id=>wwv_flow_imp.id(3633608505941795875)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_EARNINGS_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(ID)',
'from pa_pcf_earningperiod',
'where compute_gross=:P1401_COMPUTE_GROSS',
'and employment_class_id=:P1401_EMPLOYMENT_CLASS',
'and org_id=:APP_ORG_ID',
'and payment_type=:P1401_PAYMENT_FREQUENCY',
''))
,p_attribute_07=>'P1401_EMPLOYMENT_CLASS,P1401_COMPUTE_GROSS,P1401_PAYMENT_FREQUENCY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633609401335795876)
,p_name=>'refresh_result_grids'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_SEARCH_RESULTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633609960963795876)
,p_event_id=>wwv_flow_imp.id(3633609401335795876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633610475414795877)
,p_event_id=>wwv_flow_imp.id(3633609401335795876)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633610969167795877)
,p_event_id=>wwv_flow_imp.id(3633609401335795876)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633611379434795877)
,p_name=>'refresh_pool'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633611826698795878)
,p_event_id=>wwv_flow_imp.id(3633611379434795877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633612251941795878)
,p_name=>'show_hide_except'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_SEARCH_OPTION'
,p_condition_element=>'P1401_SEARCH_OPTION'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633612730292795878)
,p_event_id=>wwv_flow_imp.id(3633612251941795878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4099937902242743090)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633613210238795879)
,p_event_id=>wwv_flow_imp.id(3633612251941795878)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4099937902242743090)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633613662396795879)
,p_name=>'refresh_existing'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633614137517795880)
,p_event_id=>wwv_flow_imp.id(3633613662396795879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633614521476795880)
,p_name=>'refresh_results'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633615077290795880)
,p_event_id=>wwv_flow_imp.id(3633614521476795880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633615417832795881)
,p_name=>'Execute_generators'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3633498719620795722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633615904232795881)
,p_event_id=>wwv_flow_imp.id(3633615417832795881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_rejected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' BEGIN',
'',
' IF :P1401_ALL_POSITION_LOCATION =0 then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1401_SEARCH_RESULTS);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	    insert into tmp_rpt_parameter (option_name,  option_value, SESSION_ID)',
'        values(:P1401_SEARCH_OPTION, l_selected(i),:APP_SESSION);',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id, session_id)',
'        values(l_rejected(i),:APP_SESSION);',
'  end loop;',
'',
'',
'END;',
'end if;',
'',
'pkg_generators.sp_QuickGenerateAdd',
'              (',
'                     :P1401_INCOME_TYPE',
'                    ,:P1401_EMPLOYMENT_CLASS',
'                    ,:P1401_PAYMENT_FREQUENCY',
'                    ,:P1401_INCOME_COME',
'                    ,:P1401_TAXABLE',
'                    ,:P1401_NIS_DEDUCTION',
'                    ,:P1401_ADMIN_STATUS',
'                    ,:P1401_EXPENSE_CODE',
'                    ,nvl(:P1401_AMOUNT,0)',
'                    ,:P1401_ORGANISATION',
'                    ,:P1401_DATE_EFFECTIVE                   ',
'                    ,:P1401_PERCENTAGE',
'                    ,:P1401_ALL_POSITION_LOCATION  ',
'                    ,:P1401_UPDATE_EXISTING',
'                    ,:P1401_REMARKS_REM',
'                    ,:P1401_COMPUTE_GROSS',
'                    ,:P1401_COMPUTE_FACTOR',
'                );',
'',
'',
'END;'))
,p_attribute_02=>'P1401_SEARCH_RESULTS,P1401_SEARCH_OPTION,P1401_EXCLUSION,P1401_INCOME_TYPE,P1401_EMPLOYMENT_CLASS,P1401_PAYMENT_FREQUENCY,P1401_INCOME_COME,P1401_TAXABLE,P1401_NIS_DEDUCTION,P1401_ADMIN_STATUS,P1401_EXPENSE_CODE,P1401_AMOUNT,P1401_ORGANISATION,P1401_'
||'DATE_EFFECTIVE,P1401_PERCENTAGE,P1401_ALL_POSITION_LOCATION,P1401_UPDATE_EXISTING,P1401_REMARKS_REM,P1401_COMPUTE_GROSS,P1401_COMPUTE_FACTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633616459361795882)
,p_event_id=>wwv_flow_imp.id(3633615417832795881)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully generated Remuneration based on established parameters.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633616945395795882)
,p_event_id=>wwv_flow_imp.id(3633615417832795881)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4305031610208690213)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633617416791795882)
,p_event_id=>wwv_flow_imp.id(3633615417832795881)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4003767312952181133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633617966359795883)
,p_event_id=>wwv_flow_imp.id(3633615417832795881)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4182240796359913190)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633618311419795883)
,p_name=>'clear_parameters'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_ALL_POSITION_LOCATION'
,p_condition_element=>'P1401_ALL_POSITION_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633618890764795884)
,p_event_id=>wwv_flow_imp.id(3633618311419795883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_SEARCH_OPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from dual'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633619283443795884)
,p_name=>'disable_enable_amuount'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_COMPUTE_FACTOR'
,p_condition_element=>'P1401_COMPUTE_FACTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633619730637795884)
,p_event_id=>wwv_flow_imp.id(3633619283443795884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633620264862795885)
,p_event_id=>wwv_flow_imp.id(3633619283443795884)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_AMOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3633620619577795885)
,p_name=>'setup_lookup'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_DEDUCTION_CODE'
,p_condition_element=>'P1401_DEDUCTION_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3633621149264795886)
,p_event_id=>wwv_flow_imp.id(3633620619577795885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_WHO_PAYS,P1401_EMPLOYER_PER,P1401_EMPLOYEE_PER,P1401_EXCLUDE_NIS_TAX,P1401_UNION_DEDUCTION,P1401_PENSION_DEDUCTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  who_pays, employer_ded_per, employee_ded_per, reduce_tax_nis_total, union_deduction, pension_deduction',
'FROM  pa_pcf_deductioncode',
'where id = :P1401_DEDUCTION_CODE'))
,p_attribute_07=>'P1401_DEDUCTION_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3535293087626658109)
,p_name=>'set eanring period ded'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1401_COMPUTE_GROSS_DED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3535293164003658110)
,p_event_id=>wwv_flow_imp.id(3535293087626658109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1401_EARNINGS_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(ID)',
'from pa_pcf_earningperiod',
'where compute_gross=:P1401_COMPUTE_GROSS_DED',
'and employment_class_id=:P1401_EARN_CLASS',
'and org_id=:APP_ORG_ID',
'and payment_type=:P1401_PAYMENT_TYPE_DED',
''))
,p_attribute_07=>'P1401_COMPUTE_GROSS_DED,P1401_EARN_CLASS,P1401_PAYMENT_TYPE_DED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3633575031957795844)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_rejected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' BEGIN',
'',
' IF :P1401_ALL_POSITION_LOCATION =0 then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1401_SEARCH_RESULTS);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	    insert into tmp_rpt_parameter (option_name,  option_value, SESSION_ID)',
'        values(:P1401_SEARCH_OPTION, l_selected(i),:APP_SESSION);',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id, session_id)',
'        values(l_rejected(i),:APP_SESSION);',
'  end loop;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'END;',
'end if;',
'',
'pkg_generators.sp_QuickGenerateAdd',
'              (',
'                     :P1401_INCOME_TYPE',
'                    ,:P1401_EMPLOYMENT_CLASS',
'                    ,:P1401_PAYMENT_FREQUENCY',
'                    ,:P1401_INCOME_COME',
'                    ,:P1401_TAXABLE',
'                    ,:P1401_NIS_DEDUCTION',
'                    ,:P1401_ADMIN_STATUS',
'                    ,:P1401_EXPENSE_CODE',
'                    ,:P1401_AMOUNT',
'                    ,:P1401_ORGANISATION',
'                    ,:P1401_DATE_EFFECTIVE                   ',
'                    ,:P1401_PERCENTAGE',
'                    ,:P1401_ALL_POSITION_LOCATION  ',
'                    ,:P1401_UPDATE_EXISTING',
'                    ,:P1401_REMARKS_REM',
'                    ,:P1401_COMPUTE_GROSS',
'                    ,:P1401_COMPUTE_FACTOR',
'                );',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3633498719620795722)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>2990099110078041339
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3633575404291795845)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' l_rejected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' BEGIN',
'',
' IF :P1401_ALL_POS_LOC =0 then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1401_POSITION_LOCATION);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	insert into tmp_genpositionlocation(position_id) ',
'        values(l_selected(i));',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id)',
'        values(l_rejected(i));',
'  end loop;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN NULL;',
'END;',
'end if;',
'',
'',
'pkg_generators.sp_QuickGenerateRule',
'                (',
'                     :P1401_RULE_FREQUENCY',
'                    ,:P1401_EMP_CLASS_RULE',
'                    ,:P1401_ORGANISATION_RULE',
'                    ,:P1401_DATE_EFFECT',
'                    ,:P1401_ALL_POS_LOC ',
'                    ,:P1401_UPDATE_EXISTING_REQ',
'                );',
'',
'  :P1401_POSITION_LOCATION:=null;',
'  :P1401_EXCLUSION:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3633493170148795707)
,p_process_success_message=>'Successful generation of Employee rules.'
,p_internal_uid=>2990099482412041340
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3633575848730795845)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data_wfl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_rejected  APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
' IF :P1401_ALL_POSITION_LOCATION =0 then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1401_POSITION_LOCATION);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	insert into tmp_genpositionlocation(position_id) ',
'        values(l_selected(i));',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id)',
'        values(l_rejected(i));',
'  end loop;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'END;',
'end if;',
'',
'pkg_generators.gen_forward_list(:P1401_FORWARD_MODE, :P1401_EFFECTIVE_FROM,  :P1401_IS_DEFAULT, :P1401_SRC_POSLOC ',
'                              ,:P1401_REMARKS,  :P1401_AUTO_CLOSE_ON_COMPLETE,  :P1401_STAGE_ID ,  :P1401_WFL_STATUS_ID);',
'',
'  :P1401_POSITION_LOCATION:=null;',
'  :P1401_EXCLUSION:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3633520981007795747)
,p_process_success_message=>'System successfully generated work flow data.'
,p_internal_uid=>2990099926851041340
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3633574674479795844)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data_ded'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_rejected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' BEGIN',
'',
' IF :P1401_ALL_POS_LOC_DED =0 then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1401_POSITION_LOCATION);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	insert into tmp_genpositionlocation(position_id) ',
'        values(l_selected(i));',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_rejected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id)',
'        values(l_rejected(i));',
'  end loop;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'END;',
'end if;',
'',
'',
'pkg_generators.sp_QuickGenerateAdDed',
'                            (',
'                                 :P1401_DEDUCTION_CODE',
'                                ,:P1401_APPROVED_BY',
'                                ,:P1401_APPROVED_DATE',
'                                ,:P1401_START_DATE',
'                                ,:P1401_PREVIOUS_START_DATE',
'                                ,:P1401_AMOUNT_OWING',
'                                ,:P1401_PERIODS',
'                                ,:P1401_AMOUNT_DEDUCTED',
'                                ,:P1401_PERCENTAGE_OF_BASIC                               ',
'                                ,:P1401_WHO_PAYS',
'                                ,:P1401_ORGANISATION_DED',
'                                ,:P1401_ALL_POS_LOC_DED  ',
'                                ,:P1401_EARN_CLASS',
'                                ,:P1401_UPDATE_EXISTING_DED',
'                            );',
'                                                       ',
'',
'  :P1401_POSITION_LOCATION:=null;',
'  :P1401_EXCLUSION:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3633509367164795734)
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>2990098752600041339
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3633497645818795720)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4100078814638756003)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Requirements Generation - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2990021723939041215
);
wwv_flow_imp.component_end;
end;
/
