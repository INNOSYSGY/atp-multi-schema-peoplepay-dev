prompt --application/pages/page_01309
begin
--   Manifest
--     PAGE: 01309
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
 p_id=>1309
,p_name=>'frmpositiongrade'
,p_step_title=>'Create/Edit Grade Scale'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3198636541670834802)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3201122858994327079)
,p_plug_name=>'Grade Point Generation Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3215331567515143985)
,p_plug_name=>'Create/Edit Salary Grade'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3285191745775809951)
,p_name=>'Audit Record Verified by: &P1309_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_HCF_POSITIONGRADE',
'where  id = :P1309_ID'))
,p_display_when_condition=>':P1309_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1309_ID'
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
 p_id=>wwv_flow_imp.id(158733216820457023)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(158733250859457024)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(158733366499457025)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(158733470324457026)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(158733574151457027)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(158733699577457028)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3314878364909646428)
,p_plug_name=>'Create/ Edit Grade Points for &P1309_GRADE_DESCRIPTION.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent4:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.id,',
'    a.position_grade_id,',
'    a.point,',
'    a.point_amount,',
'    a.start_date,',
'    a.end_date,',
'    a.remarks,',
'    a.entered_by,',
'    a.entry_date,',
'    a.verified_by,',
'    a.verified_date,',
'    a.last_changed_by,',
'    a.last_changed_date,ANNUAL_POINT_AMOUNT',
'FROM',
'    hr_hcf_positiongradepoint a ',
'    join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'    where a.position_grade_id = :P1309_ID',
'    and a.position_grade_id=b.id',
'    and b.org_id = :APP_ORG_SHR_DED;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1309_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(144305969093025108)
,p_name=>'ANNUAL_POINT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANNUAL_POINT_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Annual Point Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'999G999G999G999G990D000'
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
 p_id=>wwv_flow_imp.id(3232719463269481211)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3232719556507481212)
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
 p_id=>wwv_flow_imp.id(3314878586349646430)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3314878716717646431)
,p_name=>'POSITION_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Position Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_code , id',
'from hr_hcf_positiongrade',
'where id =:P1309_ID'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(3314878784354646432)
,p_name=>'POINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POINT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Point'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3314878877937646433)
,p_name=>'POINT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POINT_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Point Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D000'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3314878991037646434)
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
 p_id=>wwv_flow_imp.id(3314879157218646435)
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
 p_id=>wwv_flow_imp.id(3314879194457646436)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3314879308321646437)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3314879382369646438)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3314879487237646439)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(3314879650752646440)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3314879732652646441)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(3314879767022646442)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3314878501593646429)
,p_internal_uid=>11042336784405704
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_show_nulls_as=>'-'
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3266321401234263856)
,p_interactive_grid_id=>wwv_flow_imp.id(3314878501593646429)
,p_name=>'Old Grade Points'
,p_static_id=>'Old_Grade_Points'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3266321238442263855)
,p_report_id=>wwv_flow_imp.id(3266321401234263856)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266314856295263826)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3314879767022646442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266315379516263827)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3314879732652646441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266315789306263829)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3314879650752646440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266316211976263831)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3314879487237646439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266316729445263832)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3314879382369646438)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266317225318263834)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3314879308321646437)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266317785809263836)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3314879194457646436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266318280006263837)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3314879157218646435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266318710973263839)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3314878991037646434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>299
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266319265907263841)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3314878877937646433)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>255
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266319797490263843)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3314878784354646432)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266320221041263845)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3314878716717646431)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3266320758706263850)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3314878586349646430)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>48
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3305306960604491280)
,p_view_id=>wwv_flow_imp.id(3266321238442263855)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3232719463269481211)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3168047469203861615)
,p_report_id=>wwv_flow_imp.id(3266321401234263856)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(3314879157218646435)
,p_operator=>'NN'
,p_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3326486873369022189)
,p_interactive_grid_id=>wwv_flow_imp.id(3314878501593646429)
,p_static_id=>'18044'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3326487036161022190)
,p_report_id=>wwv_flow_imp.id(3326486873369022189)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125144808274652352)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(144305969093025108)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3234759547274244319)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3232719463269481211)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>82.82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326487515897022195)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3314878586349646430)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>48
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326488053562022200)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3314878716717646431)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326488477113022202)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3314878784354646432)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326489008696022204)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3314878877937646433)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326489563630022206)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3314878991037646434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326489994597022208)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3314879157218646435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326490488794022209)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3314879194457646436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326491049285022211)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3314879308321646437)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326491545158022213)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3314879382369646438)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326492062627022214)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3314879487237646439)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326492485297022216)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3314879650752646440)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326492895087022218)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3314879732652646441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3326493418308022219)
,p_view_id=>wwv_flow_imp.id(3326487036161022190)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3314879767022646442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3238594882534108576)
,p_report_id=>wwv_flow_imp.id(3326486873369022189)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(3314879157218646435)
,p_operator=>'N'
,p_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198418311199376463)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3314878364909646428)
,p_button_name=>'REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#::t-Button--success::t-Button--iconRight:::::::'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303150273619320525)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1308:&SESSION.::&DEBUG.:RP,1308::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303149059565320519)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1309_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303147843143320514)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1309_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303149839572320521)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_POSITIONGRADE',
'WHERE ID=:P1309_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3303149465969320520)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
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
'if (:P1309_ID is not null AND LENGTH(:P1309_VERIFIED_BY)=0) OR (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P1309_ID is not null ) THEN',
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
 p_id=>wwv_flow_imp.id(3303147464555320513)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:1309::'
,p_button_condition=>'P1309_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3181229875989872240)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3198636541670834802)
,p_button_name=>'GENERATE_GRADE_POINT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Grade Point'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1309_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3303130607402320471)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:1309:P1309_POINTS,P1309_EFFECTIVE_FROMDATE:&P1309_POINTS.,&P1309_EFFECTIVE_FROMDATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3303147843143320514)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3303131098755320472)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1308:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3303149839572320521)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3303132261928320476)
,p_branch_action=>'f?p=&APP_ID.:1309:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3225084624884565983)
,p_name=>'P1309_INCREMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_item_default=>'PERCENTAGE'
,p_prompt=>'Increment Type'
,p_source=>'INCREMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Percentage;PERCENTAGE,Value;VALUE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Type of increment to be used whether by percentage or by a flat amount '
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3225084741879565984)
,p_name=>'P1309_INCREMENT_AMOUNT'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Increment Amount'
,p_source=>'INCREMENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the value of increment between points (depends on whether the increment is by percentage or by amount)'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3232738418347099864)
,p_name=>'P1309_CAPTURE_POSITION_GRADE_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from hr_hcf_positiongradepoint',
'where position_grade_id = :P1309_ID',
'and end_date is null'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3279610982594400595)
,p_name=>'P1309_GRADE_SEQUENCE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sequence'
,p_source=>'GRADE_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'a number that can be used to order the grade scale when printing or viewing'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303137537801320488)
,p_name=>'P1309_MACHINE_UPDATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3285191745775809951)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303137954146320489)
,p_name=>'P1309_MACHINE_INSERT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3285191745775809951)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303139576127320490)
,p_name=>'P1309_VERIFIED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3285191745775809951)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303142299630320502)
,p_name=>'P1309_STD_DETAIL_KEY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Detail Key'
,p_source=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3303142629562320502)
,p_name=>'P1309_STATUS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1309_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1309_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1309_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3303143102030320503)
,p_name=>'P1309_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
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
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303143414674320503)
,p_name=>'P1309_EFFECTIVE_TODATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EFFECTIVE_TODATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Effective end date of the application of the salaries associated with each grade point. Current active grade points will not have an end date.'
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
 p_id=>wwv_flow_imp.id(3303143888512320504)
,p_name=>'P1309_EFFECTIVE_FROMDATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EFFECTIVE_FROMDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Effective start date of the application of the salaries associated with each grade point'
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
 p_id=>wwv_flow_imp.id(3303144271193320506)
,p_name=>'P1309_LEAVE_PASSAGE_AMOUNT'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Leave Passage Amount'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'LEAVE_PASSAGE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303144668242320506)
,p_name=>'P1309_POINTS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Points'
,p_source=>'POINTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the number of grade points to be generated with salaries'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '100',
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303145081460320507)
,p_name=>'P1309_GRADE_MAX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(point_amount)',
'from hr_hcf_positiongradepoint',
'where position_grade_id = :P1309_ID',
'and end_date is null;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Grade Max'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GRADE_MAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Salary associated with the the last point  of the current Grade Scale. Can also be entered manually'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303145463895320507)
,p_name=>'P1309_GRADE_MINI'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3201122858994327079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grade Min'
,p_placeholder=>'Enter Minimum Grade'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GRADE_MINI'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Salary associated with the the first point (1) of the current Grade Scale'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303145902577320508)
,p_name=>'P1309_GRADE_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'GRADE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(3303146280281320509)
,p_name=>'P1309_GRADE_CODE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'GRADE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(3303146693296320512)
,p_name=>'P1309_ORG_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_COMPANY_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name, id',
'from HR_HCF_ORGANISATION k',
'where trunc(start_date) <= trunc(current_date)',
'and (trunc(End_date) is null or End_date >= trunc(current_date))',
'and Verified_by is not null',
'and user_org_id = :APP_ORG_SHR_DED',
'and country = :APP_COUNTRY',
'order by organisation_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF pkg_global_fnts.User_Org_count(nvl(V(''APP_USER''),USER) )>1 then',
' return TRUE;',
'else',
' return FALSE;',
'end if;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3303147029911320513)
,p_name=>'P1309_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325334786785139346)
,p_name=>'P1309_SALARY_CURRENCY_GRADE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3215331567515143985)
,p_use_cache_before_default=>'NO'
,p_item_default=>'GYD'
,p_prompt=>'Salary Currency'
,p_source=>'SALARY_CURRENCY_GRADE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'CURRENCY_NEW1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description disp, table_value RTN',
'from hr_hcf_lookup',
'where table_name=''TBLCURRENCY'' ',
'and  org_id =:APP_ORG_SHR_DED',
'',
''))
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3303136267123320483)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where org_id= :APP_ORG_ID',
'AND workflow_required =1',
'and ((to_date(:P1309_EFFECTIVE_FROMDATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1309_EFFECTIVE_FROMDATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1309_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3303135876347320482)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1309_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1309_ID, :P1309_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3303137047391320486)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1309_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3181229789619872239)
,p_validation_name=>'chkDate'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_prev_effective_from DATE;',
'BEGIN',
'    SELECT max(gp.START_DATE) INTO V_prev_effective_from',
'    FROM hr_hcf_positiongradepoint gp',
'    JOIN hr_hcf_positiongrade g on g.id = gp.position_grade_id',
'    WHERE gp.position_grade_id = :P1309_ID',
'    AND g.org_id = :APP_ORG_ID',
'    AND gp.end_date is null;',
'IF :P1309_EFFECTIVE_FROMDATE < V_prev_effective_from AND :P1309_EFFECTIVE_TODATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the "To Date" for the grade is required to generate old grade point.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3303149465969320520)
,p_associated_item=>wwv_flow_imp.id(3303143414674320503)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3181229730342872238)
,p_validation_name=>'chkDate2'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF :P1309_EFFECTIVE_FROMDATE >= :P1309_EFFECTIVE_TODATE THEN',
'',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the "To Date" should be more than the "From Date".'
,p_validation_condition=>'CREATE,SAVE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3303143414674320503)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198416590167376446)
,p_name=>'setMaxPoint'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1309_EFFECTIVE_FROMDATE,P1309_INCREMENT_AMOUNT'
,p_condition_element=>'P1309_EFFECTIVE_FROMDATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'one'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198416704393376447)
,p_event_id=>wwv_flow_imp.id(3198416590167376446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1309_GRADE_MAX'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(point_amount)',
'from hr_hcf_positiongradepoint',
'where position_grade_id = :P1309_ID',
'and end_date is null;'))
,p_attribute_07=>'P1309_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198416816484376448)
,p_name=>'Refresh'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3198418311199376463)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198416936970376449)
,p_event_id=>wwv_flow_imp.id(3198416816484376448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3314878364909646428)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3174016986799267046)
,p_name=>'New'
,p_event_sequence=>110
,p_condition_element=>'P1309_GRADE_MINI'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3174017115735267047)
,p_event_id=>wwv_flow_imp.id(3174016986799267046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1309_GRADE_MINI'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P1309_GRADE_MINI,''$'',''''),'','','''')',
''))
,p_attribute_07=>'P1309_GRADE_MINI'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303135136682320480)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HCF_POSITIONGRADE'
,p_attribute_02=>'HR_HCF_POSITIONGRADE'
,p_attribute_03=>'P1309_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3187351002826006775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303133184936320477)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1309_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
' :P1309_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P1309_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P1309_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3187349051080006772
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303132777564320477)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1309_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P1309_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P1309_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3303149465969320520)
,p_internal_uid=>3187348643708006772
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303134739430320480)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HCF_POSITIONGRADE'
,p_attribute_02=>'HR_HCF_POSITIONGRADE'
,p_attribute_03=>'P1309_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1309_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3187350605574006775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303133557597320477)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1309_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1309_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1309_GRADE_DESCRIPTION,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1309_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Position Grades'',',
'	:P1309_STATUS,:APP_PAGE_ID,:P1309_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_POSITIONGRADE'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3303149465969320520)
,p_process_when=>'P1309_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3187349423741006772
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3232719688498481213)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3314878364909646428)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Create/ Edit Grade Points for &P1309_GRADE_DESCRIPTION. - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3116935554642167508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3225085163645565989)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GEN_GRADE_POINT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update HR_HCF_POSITIONGRADE',
'set grade_max = fn_gen_grade_points(:P1309_ID, :P1309_POINTS, replace(replace(:P1309_GRADE_MINI,''$'',''''),'','',''''), replace(replace(:P1309_INCREMENT_AMOUNT,''$'',''''),'','',''''), :P1309_INCREMENT_TYPE, :P1309_EFFECTIVE_FROMDATE, :P1309_EFFECTIVE_TODATE)',
'where id = :P1309_ID;',
'end;',
'-- begin',
'--     :P1309_GRADE_MAX :=fn_gen_grade_points(:P1309_ID, :P1309_POINTS, replace(replace(:P1309_GRADE_MINI,''$'',''''),'','',''''), replace(replace(:P1309_INCREMENT_AMOUNT,''$'',''''),'','',''''), :P1309_INCREMENT_TYPE, :P1309_EFFECTIVE_FROMDATE, :P1309_EFFECTIVE_TOD'
||'ATE);',
'-- end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3181229875989872240)
,p_process_when=>'P1309_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Grade Points Generated'
,p_internal_uid=>3109301029789252284
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303134318234320480)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3303149839572320521)
,p_internal_uid=>3187350184378006775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303135605707320482)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3303150273619320525)
,p_internal_uid=>3187351471851006777
);
wwv_flow_imp.component_end;
end;
/
