prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'frmDeductionCodedummy'
,p_alias=>'FRMDEDUCTIONCODE1'
,p_step_title=>'frmDeductionCode'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1553052272019342275)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1553052393180342276)
,p_plug_name=>'Deduction attributes'
,p_parent_plug_id=>wwv_flow_imp.id(1553052272019342275)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EXPENSE_ID,',
'       OPTION_NAME,',
'       COMPUTE_OPTION,',
'       START_DATE,',
'       END_DATE,',
'       REMARKS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_UPDATED_DATE,',
'       LAST_UPDATED_BY,',
'       ATTRIB_VALUE,',
'       EXCLUDE_INCOME_OR_DEDUCTION,',
'       ATTRIB_INCOME_OR_DEDUCTION_ID,',
'       ATTRIB_INCOME_OR_DEDUCTION',
'  from PA_PCF_DEDUCTIONCODEATTRIB',
'  where expense_id = :P12_ID',
'  --and rule_table_id is null',
'  --and OPTION_ID!=-999',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction attributes'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553054207358342294)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553054290633342295)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
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
,p_default_expression=>'P12_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553054358873342296)
,p_name=>'OPTION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553054575192342298)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(SYSDATE)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553054715735342299)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
 p_id=>wwv_flow_imp.id(1553054789300342300)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(1553054905171342301)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
 p_id=>wwv_flow_imp.id(1553054950553342302)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1020
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
 p_id=>wwv_flow_imp.id(1553055058159342303)
,p_name=>'LAST_UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Updated Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
 p_id=>wwv_flow_imp.id(1553055228413342304)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1020
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
 p_id=>wwv_flow_imp.id(1553055283965342305)
,p_name=>'ATTRIB_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIB_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attrib Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1553055383196342306)
,p_name=>'EXCLUDE_INCOME_OR_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCLUDE_INCOME_OR_DEDUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Ex/Inc Inc/Ded'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Exclude Income;EXCLUDE_INCOME,Include Income;INCLUDE_INCOME,Exclude Deduction;EXCLUDE_DEDUCTION,Include Deduction;INCLUDE_DEDUCTION,Not Applicable;NOT_APPLICABLE,Validation;VALIDATION,Related to;REALTED_TO'
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
 p_id=>wwv_flow_imp.id(1553055437746342307)
,p_name=>'ATTRIB_INCOME_OR_DEDUCTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIB_INCOME_OR_DEDUCTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Inc/Ded Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :EXCLUDE_INCOME_OR_DEDUCTION LIKE ''%INCOME'' then',
'return',
'    ''select to_char(description) disp, id',
'    from pa_pcf_incomecode',
'    where org_id = :APP_ORG_ID',
'    order by 1'';',
'    ',
'elsif :EXCLUDE_INCOME_OR_DEDUCTION LIKE ''%DEDUCTION'' then',
'return',
'    ''select to_char(description) disp, id',
'    from PA_PCF_DEDUCTIONCODE',
'    where org_id = :APP_ORG_ID',
'    order by 1'';',
'else',
'    return',
'        ''select distinct attrib_income_or_deduction a, attrib_income_or_deduction_id b',
'         from PA_PCF_DEDUCTIONCODEATTRIB a',
'         where exists (select 1',
'                       from PA_PCF_DEDUCTIONCODE b',
'                       where b.id = a.expense_id',
'                       and b.org_id = :APP_ORG_ID)',
'         union',
'         select distinct attrib_income_or_deduction a, attrib_income_or_deduction_id b',
'         from PA_PCF_INCOMECODEATTRIB a',
'          where exists (select 1',
'                       from PA_PCF_incomeCODE b',
'                       where b.id = a.income_code_id',
'                       and b.org_id = :APP_ORG_ID)'';',
'end if;',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'EXCLUDE_INCOME_OR_DEDUCTION'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553055560332342308)
,p_name=>'ATTRIB_INCOME_OR_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIB_INCOME_OR_DEDUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553055670160342309)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1553286796504232160)
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
 p_id=>wwv_flow_imp.id(1557614859630815660)
,p_name=>'COMPUTE_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Compute Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Percentage;PERCENTAGE,Amount;AMOUNT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1553054096327342293)
,p_internal_uid=>1597978537478322249
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
 p_id=>wwv_flow_imp.id(1553237317560056259)
,p_interactive_grid_id=>wwv_flow_imp.id(1553054096327342293)
,p_static_id=>'15342269'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1553237518405056260)
,p_report_id=>wwv_flow_imp.id(1553237317560056259)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553237999479056262)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1553054207358342294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553238867748056271)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1553054290633342295)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553239799700056277)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1553054358873342296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553241583527056284)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1553054575192342298)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553242503174056287)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1553054715735342299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553243428232056292)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1553054789300342300)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553244278598056297)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1553054905171342301)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553245146796056302)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1553054950553342302)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553246094370056308)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1553055058159342303)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553246950706056314)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1553055228413342304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553247851311056319)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1553055283965342305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553248755077056324)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1553055383196342306)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553249643981056330)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1553055437746342307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553250576018056335)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1553055560332342308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1553293408219233309)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1553055670160342309)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1557620870840816521)
,p_view_id=>wwv_flow_imp.id(1553237518405056260)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1557614859630815660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1681534944163349083)
,p_plug_name=>'Deduction Benefits'
,p_parent_plug_id=>wwv_flow_imp.id(1553052272019342275)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_BEN_DEDUCTION_BENEFITS'
,p_query_where=>'EXPENSE_ID = :P12_ID'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'PRIORITY_LEVEL'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction Benefits'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681535187811349085)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681535235113349086)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681535346539349087)
,p_name=>'BENEFIT_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BENEFIT_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Benefit Plan'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(19335522807616235)
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(1681535485638349088)
,p_name=>'PRIORITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY_LEVEL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Priority Level'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold u-color-9-text'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(1681535630621349089)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
 p_id=>wwv_flow_imp.id(1681535699185349090)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
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
 p_id=>wwv_flow_imp.id(1681535791818349091)
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
 p_id=>wwv_flow_imp.id(1681535851777349092)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681535952374349093)
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
 p_id=>wwv_flow_imp.id(1681536038055349094)
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681536225502349095)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1681536250638349096)
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
 p_id=>wwv_flow_imp.id(1681535099393349084)
,p_internal_uid=>1726459540544329040
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
 p_id=>wwv_flow_imp.id(1716837985603944981)
,p_interactive_grid_id=>wwv_flow_imp.id(1681535099393349084)
,p_static_id=>'16978276'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1716838179652944981)
,p_report_id=>wwv_flow_imp.id(1716837985603944981)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716838682734944983)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1681535187811349085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716839535263944987)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1681535235113349086)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716840518988944991)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1681535346539349087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716841336960944993)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1681535485638349088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716842279733944996)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1681535630621349089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716843152997945000)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1681535699185349090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716844044106945002)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1681535791818349091)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716844991229945005)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1681535851777349092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716845910939945009)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1681535952374349093)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716846744285945011)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1681536038055349094)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1716847646289945014)
,p_view_id=>wwv_flow_imp.id(1716838179652944981)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1681536225502349095)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6218606140452066549)
,p_name=>'Audit Record'
,p_parent_plug_id=>wwv_flow_imp.id(1553052272019342275)
,p_template=>4501440665235496320
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
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
'from PA_PCF_DEDUCTIONCODE',
'where id = :P12_ID',
'',
''))
,p_display_when_condition=>':P12_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(19281636050596898)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19281206794596897)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19280790207596896)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19280413822596895)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19279992770596894)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19279610448596893)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6218611352774066580)
,p_plug_name=>'Manage Deduction Codes'
,p_parent_plug_id=>wwv_flow_imp.id(1553052272019342275)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'PA_PCF_DEDUCTIONCODE'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5247839976214258046)
,p_plug_name=>'Configure Deduction Code Details'
,p_parent_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5192428291678762979)
,p_plug_name=>'Deduction Code Details'
,p_parent_plug_id=>wwv_flow_imp.id(5247839976214258046)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEDCODE_ID,',
'       SEQUENCE,',
'       OPTION_NAME,',
'       OPTION_RANGE_UNIT,',
'       RANGE_A,',
'       RANGE_B,',
'       OPTION_VALUE_UNIT,',
'       OPTION_VALUE,',
'       a.ENTRY_DATE,',
'       a.ENTERED_BY,',
'       a.LAST_CHANGED_DATE,',
'       a.LAST_CHANGED_BY,',
'       a.ID',
'  from PA_PCF_DEDUCTIONCODEDTL a',
'  join PA_PCF_DEDUCTIONCODE b on a.dedcode_id = b.id',
'  WHERE DEDCODE_ID=:P12_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P12_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction Code Details'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5192428745094762983)
,p_name=>'DEDCODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDCODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduction Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description a, id b',
'from pa_pcf_deductioncode ',
'where id = :P12_ID'))
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
,p_default_type=>'ITEM'
,p_default_expression=>'P12_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5192428851704762984)
,p_name=>'SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQUENCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sequence'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5192428972267762985)
,p_name=>'OPTION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Option Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2661890956870725881)
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
 p_id=>wwv_flow_imp.id(5192429013883762986)
,p_name=>'OPTION_RANGE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_RANGE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Option Range Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:YEARS;YEARS'
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
 p_id=>wwv_flow_imp.id(5192429169752762987)
,p_name=>'RANGE_A'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_A'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Range A'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5192429218692762988)
,p_name=>'RANGE_B'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_B'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Range B'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5192429383041762989)
,p_name=>'OPTION_VALUE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_VALUE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Option Value Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:PERCENTAGE;PERCENT'
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
 p_id=>wwv_flow_imp.id(5192429479768762990)
,p_name=>'OPTION_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Option Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5192429537879762991)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(5247839569148258042)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(5247839610908258043)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5247839743993258044)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5247839824160258045)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5247839992151258047)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5247840121186258048)
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
 p_id=>wwv_flow_imp.id(5192428619375762982)
,p_internal_uid=>5237353060526742938
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
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
 p_id=>wwv_flow_imp.id(5247848368398281352)
,p_interactive_grid_id=>wwv_flow_imp.id(5192428619375762982)
,p_static_id=>'4079424'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5247848514043281352)
,p_report_id=>wwv_flow_imp.id(5247848368398281352)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247849008602281359)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5192428745094762983)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247849937677281367)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5192428851704762984)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247850839916281371)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5192428972267762985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247851782463281375)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5192429013883762986)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247852669151281379)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5192429169752762987)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247853522245281383)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5192429218692762988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247854418626281386)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5192429383041762989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247855296646281390)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5192429479768762990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247856281694281395)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5192429537879762991)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247857168009281399)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5247839569148258042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247858066062281402)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5247839610908258043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247858913425281406)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5247839743993258044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247859840605281410)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5247839824160258045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5247869767348323803)
,p_view_id=>wwv_flow_imp.id(5247848514043281352)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5247839992151258047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5930943610236672863)
,p_plug_name=>'Configure Computation Factor'
,p_parent_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:t-Form--slimPadding'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19263033467596842)
,p_button_sequence=>10
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4608:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19262587835596841)
,p_button_sequence=>20
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19262225160596840)
,p_button_sequence=>30
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19261776734596839)
,p_button_sequence=>40
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PCF_DEDUCTIONCODE',
'WHERE ID=:P12_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19261366483596838)
,p_button_sequence=>50
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P12_ID is not null and LENGTH(:P12_VERIFIED_BY)=0) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P12_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19263353848596843)
,p_button_sequence=>60
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12::'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19260993143596837)
,p_button_sequence=>70
,p_button_name=>'GEN_DED_CODES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate From Parent'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_hcf_organisation',
'where parent_org_id is not null',
'and id =:APP_ORG_ID',
'AND pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) != :APP_ORG_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19232177555596773)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:4609:&SESSION.::&DEBUG.:4609::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(19262225160596840)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19231783286596772)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:4608:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(19261776734596839)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19231430157596771)
,p_branch_name=>'Go To Page 4609'
,p_branch_action=>'f?p=&APP_ID.:4609:&SESSION.::&DEBUG.::P12_ID:&P12_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541039707409136765)
,p_name=>'P12_DEDUCTION_CODE_PARENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Deduction Code Parent'
,p_source=>'DEDUCTION_CODE_PARENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(sysdate)',
'and (trunc(end_date) is null or end_date >= trunc(sysdate))',
'and  v.org_id=:APP_ORG_SHR_DED',
'and id !=:P12_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Code Parent--'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541040115660136765)
,p_name=>'P12_ENTITY_ABBREVIATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Organisation'
,p_source=>'ENTITY_ABBREVIATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_REMIT_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation',
'where organisation_type=''REMITTANCE''',
'and user_org_id = :APP_ORG_SHR_DED',
'and end_date is null'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Organisations that you remit deduction taken out of employee salary.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541041022540136767)
,p_name=>'P12_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541041460598136768)
,p_name=>'P12_PRIORITY_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Priority Level'
,p_source=>'PRIORITY_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541041801489136770)
,p_name=>'P12_ID_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541042284727136771)
,p_name=>'P12_ACCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Account Code'
,p_source=>'ACCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541042606219136772)
,p_name=>'P12_ACCOUNT_CODE_EMPLR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Account Code Emplr'
,p_source=>'ACCOUNT_CODE_EMPLR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541043052072136772)
,p_name=>'P12_SORT_ORDER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Financial Journal Sort Order'
,p_source=>'SORT_ORDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541043479836136772)
,p_name=>'P12_RETRO_PAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Retro Pay'
,p_source=>'RETRO_PAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541043860782136773)
,p_name=>'P12_SHORT_PAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Short Pay'
,p_source=>'SHORT_PAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541044190676136773)
,p_name=>'P12_DEDUCT_FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Deduct Frequency'
,p_source=>'DEDUCT_FREQUENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Once Monthly'' a, ''ONCE_MONTHLY'' b',
'FROM DUAL',
'UNION',
'SELECT ''Every Payroll'' a, ''EVERY_PAYROLL'' b',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541044651824136774)
,p_name=>'P12_UNION_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_default=>'0'
,p_prompt=>'Union Amount'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'UNION_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541045082198136774)
,p_name=>'P12_QUERY_EMPLOYEE_DATA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_source=>'QUERY_EMPLOYEE_DATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'This option allows you to compute deductions using the employee hourly rate.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541045917386136775)
,p_name=>'P12_PRV_ACTIVE_DUP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Prevent Duplicate Deduction'
,p_source=>'PRV_ACTIVE_DUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Use to prevent duplicate active deductions codes for a specific employee. e.g Prevention of duplicate active salary advance.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541046859491136776)
,p_name=>'P12_AFFECTED_BY_GROSS_REDUCT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Affect Gross Reduction'
,p_source=>'AFFECTED_BY_GROSS_REDUCT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'States whether to reduce/Increase the deduction as a result of increase or decrease in Gross'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541047785924136777)
,p_name=>'P12_UNION_DEDUCTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Union Deduction'
,p_source=>'UNION_DEDUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541048097124136777)
,p_name=>'P12_PENSION_DEDUCTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Pension Deduction'
,p_source=>'PENSION_DEDUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541048521261136778)
,p_name=>'P12_GROUP_MED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Group Med'
,p_source=>'GROUP_MED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541048983011136778)
,p_name=>'P12_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541049300743136778)
,p_name=>'P12_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'max_static', '',
  'min_date', 'NONE',
  'min_static', '',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541049746999136779)
,p_name=>'P12_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541050108832136779)
,p_name=>'P12_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541050492333136780)
,p_name=>'P12_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_item_source_plug_id=>wwv_flow_imp.id(6218611352774066580)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P12_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P12_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541050567268136804)
,p_name=>'P12_EXPENSE_CODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expense Code'
,p_source=>'EXPENSE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pcf_admindeduction',
'WHERE expense_id=:P12_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541050925042136806)
,p_name=>'P12_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>55
,p_cMaxlength=>400
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1541051349366136806)
,p_name=>'P12_WHO_PAYS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Who Pays'
,p_source=>'WHO_PAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:EMPLOYEE;EMPLOYEE,EMPLOYER;EMPLOYER,BOTH;BOTH'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PCF_ADMINDEDUCTION',
'WHERE EXPENSE_ID=:P12_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541051734768136807)
,p_name=>'P12_EMPLOYER_DED_PER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Employer %'
,p_source=>'EMPLOYER_DED_PER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541052139771136807)
,p_name=>'P12_EMPLOYEE_DED_PER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Employee %'
,p_source=>'EMPLOYEE_DED_PER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541052562838136808)
,p_name=>'P12_REDUCE_TAX_NIS_TOTAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exclude Options'
,p_source=>'REDUCE_TAX_NIS_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REDUCE_STATUTORY_DEDUCTIONS'
,p_lov=>'.'||wwv_flow_imp.id(2672841774933598467)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(1541052891598136808)
,p_name=>'P12_TAX_FREE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Free'
,p_source=>'TAX_FREE'
,p_source_type=>'DB_COLUMN'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541053323223136809)
,p_name=>'P12_TAX_FREE_CEILING'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Free Ceiling'
,p_source=>'TAX_FREE_CEILING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541053722166136809)
,p_name=>'P12_PERCENT_OPTION_DEDCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Compute Factor'
,p_source=>'PERCENT_OPTION_DEDCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTATION_FACTOR_DYN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLINCOMECOMPUTEFACTOR''))',
'where org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541054073979136809)
,p_name=>'P12_EARNING_RATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earning Rate'
,p_source=>'EARNING_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EARNING_RATE_INC'
,p_lov=>'.'||wwv_flow_imp.id(2948036974243982002)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541054491361136810)
,p_name=>'P12_RATE_AMOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Rate Amount'
,p_source=>'RATE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541054963505136810)
,p_name=>'P12_HOURLY_RATE_MULTIPLIER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Multiplier Factor'
,p_source=>'HOURLY_RATE_MULTIPLIER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_grid_column=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541055352924136811)
,p_name=>'P12_PERCENT_OF_BASIC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5930943610236672863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Percent Factor'
,p_source=>'PERCENT_OF_BASIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '100',
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541092506943136890)
,p_name=>'P12_VERIFIED_BY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6218606140452066549)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541093314492136891)
,p_name=>'P12_MACHINE_INSERT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(6218606140452066549)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1541093727438136891)
,p_name=>'P12_MACHINE_UPDATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(6218606140452066549)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19256264677596825)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P12_START_DATE, :P12_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19256712500596826)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P12_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P12_ID, :P12_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(19255465729596823)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P12_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(19255897111596824)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>41
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P12_END_DATE) < TO_DATE(:P12_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19257081957596827)
,p_validation_name=>'chk_for_slash'
,p_validation_sequence=>51
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:P12_EXPENSE_CODE,''/'',1) > 0 or instr(:P12_EXPENSE_CODE,''\'',1) > 0 then',
' return FALSE;',
'else',
' return TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Slashes (/ or \) not allowed in deduction codes.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19257473447596828)
,p_validation_name=>'chk_who_pays'
,p_validation_sequence=>61
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :P12_WHO_PAYS = ''BOTH'' and (:P12_EMPLOYER_DED_PER = 0  or :P12_EMPLOYEE_DED_PER = 0) then ',
'     return ''Employee and Employer % must be more than 0 when '' || '' is set to '' ||  :P12_WHO_PAYS ;',
'    elsif :P12_WHO_PAYS = ''EMPLOYER'' and :P12_EMPLOYER_DED_PER = 0 then ',
'     return ''Please set Employer % to a value that is more than 0'';',
'    elsif :P12_WHO_PAYS = ''EMPLOYEE'' and :P12_EMPLOYEE_DED_PER = 0 then ',
'      return ''Please set Employee % to a value that is more than 0'';',
'    else return null;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(1541051349366136806)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19257851900596829)
,p_validation_name=>'prv_use_hr_rate_and_percenta_of'
,p_validation_sequence=>71
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P12_EMPLOYER_DED_PER > 0  or :P12_EMPLOYEE_DED_PER > 0) and :P12_QUERY_EMPLOYEE_DATA=1 then',
'    return ''Percent of computate factor and Use Hourly Rate are mutually exclusive. Select one or the other.'';',
'else',
'    return '''';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19235017699596779)
,p_name=>'enable_union_amount'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_UNION_DEDUCTION'
,p_condition_element=>'P12_UNION_DEDUCTION'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19234041264596777)
,p_event_id=>wwv_flow_imp.id(19235017699596779)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_UNION_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19234444144596778)
,p_event_id=>wwv_flow_imp.id(19235017699596779)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_UNION_AMOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19235933774596781)
,p_name=>'disable_key_fields'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19235438124596780)
,p_event_id=>wwv_flow_imp.id(19235933774596781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EXPENSE_CODE,P12_WHO_PAYS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19238315485596786)
,p_name=>'dy_who_pays'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_WHO_PAYS'
,p_condition_element=>'P12_WHO_PAYS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19236786668596783)
,p_event_id=>wwv_flow_imp.id(19238315485596786)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19237266723596784)
,p_event_id=>wwv_flow_imp.id(19238315485596786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19236294737596782)
,p_event_id=>wwv_flow_imp.id(19238315485596786)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19237797435596785)
,p_event_id=>wwv_flow_imp.id(19238315485596786)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19239151381596788)
,p_name=>'dy_who_pays_both'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_WHO_PAYS'
,p_condition_element=>'P12_WHO_PAYS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BOTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19238660045596787)
,p_event_id=>wwv_flow_imp.id(19239151381596788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER,P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19241627788596793)
,p_name=>'Hide/Show Rate Amount'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_condition_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FIXED_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19241135297596792)
,p_event_id=>wwv_flow_imp.id(19241627788596793)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19240122610596790)
,p_event_id=>wwv_flow_imp.id(19241627788596793)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19240543103596791)
,p_event_id=>wwv_flow_imp.id(19241627788596793)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19239635367596789)
,p_event_id=>wwv_flow_imp.id(19241627788596793)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19243457467596797)
,p_name=>'set_earning_type'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_condition_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FIXED_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19242020452596794)
,p_event_id=>wwv_flow_imp.id(19243457467596797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'FIXED_RATE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19242444886596795)
,p_event_id=>wwv_flow_imp.id(19243457467596797)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19242977410596796)
,p_event_id=>wwv_flow_imp.id(19243457467596797)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19233645035596776)
,p_name=>'set_hourly_rate_chk'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_EARNING_RATE'
,p_condition_element=>'P12_EARNING_RATE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'HOURLY_RATE,DAILY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19232668901596774)
,p_event_id=>wwv_flow_imp.id(19233645035596776)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_QUERY_EMPLOYEE_DATA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19233189234596775)
,p_event_id=>wwv_flow_imp.id(19233645035596776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_QUERY_EMPLOYEE_DATA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19244438285596799)
,p_name=>'gen_code'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19260993143596837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19243843815596798)
,p_event_id=>wwv_flow_imp.id(19244438285596799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_generators.gen_deduction_code(:P12_ID, :APP_ORG_ID);',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19246759268596804)
,p_name=>'dy_who_pays'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_WHO_PAYS'
,p_condition_element=>'P12_WHO_PAYS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19245762446596802)
,p_event_id=>wwv_flow_imp.id(19246759268596804)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19246296360596803)
,p_event_id=>wwv_flow_imp.id(19246759268596804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19244758223596800)
,p_event_id=>wwv_flow_imp.id(19246759268596804)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19245298554596801)
,p_event_id=>wwv_flow_imp.id(19246759268596804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19247664299596806)
,p_name=>'dy_who_pays_both'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_WHO_PAYS'
,p_condition_element=>'P12_WHO_PAYS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BOTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19247202243596805)
,p_event_id=>wwv_flow_imp.id(19247664299596806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EMPLOYER_DED_PER,P12_EMPLOYEE_DED_PER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19250074533596811)
,p_name=>'Hide/Show Rate Amount'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_condition_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FIXED_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19249061903596809)
,p_event_id=>wwv_flow_imp.id(19250074533596811)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19249628581596810)
,p_event_id=>wwv_flow_imp.id(19250074533596811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19248098417596807)
,p_event_id=>wwv_flow_imp.id(19250074533596811)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19248576967596808)
,p_event_id=>wwv_flow_imp.id(19250074533596811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_RATE_AMOUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19251988951596815)
,p_name=>'set_earning_type'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_condition_element=>'P12_PERCENT_OPTION_DEDCODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FIXED_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19250954739596813)
,p_event_id=>wwv_flow_imp.id(19251988951596815)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19251488683596814)
,p_event_id=>wwv_flow_imp.id(19251988951596815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'FIXED_RATE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19250527480596812)
,p_event_id=>wwv_flow_imp.id(19251988951596815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_EARNING_RATE'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19253420782596818)
,p_name=>'set_hourly_rate_chk'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_EARNING_RATE'
,p_condition_element=>'P12_EARNING_RATE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'HOURLY_RATE,DAILY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19252413060596816)
,p_event_id=>wwv_flow_imp.id(19253420782596818)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_QUERY_EMPLOYEE_DATA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19252869415596817)
,p_event_id=>wwv_flow_imp.id(19253420782596818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_QUERY_EMPLOYEE_DATA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19254802267596822)
,p_name=>'enable_union_amount'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_UNION_DEDUCTION'
,p_condition_element=>'P12_UNION_DEDUCTION'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19253797705596819)
,p_event_id=>wwv_flow_imp.id(19254802267596822)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_UNION_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19254287311596820)
,p_event_id=>wwv_flow_imp.id(19254802267596822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_UNION_AMOUNT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19294477635596939)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6218611352774066580)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process DML Deduction Code'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25629963515383017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19282287043596900)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5192428291678762979)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Configure Deduction Code Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25642154107383056
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19255149109596822)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'6'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19261776734596839)
,p_internal_uid=>25669292041383134
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19264084716596845)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1553052393180342276)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deduction attributes - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25660356434383111
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19272410300596870)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1681534944163349083)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deduction Benefits - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25652030850383086
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19294856818596940)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6218611352774066580)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmDeductionCode'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25629584332383016
);
wwv_flow_imp.component_end;
end;
/
