prompt --application/pages/page_00700
begin
--   Manifest
--     PAGE: 00700
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>700
,p_name=>'frmsupplementalmovement'
,p_alias=>'FRMSUPPLEMENTALMOVEMENT'
,p_step_title=>'Create/Edit Supplemental Movement'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885282361702857)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DISPLAY_ONLY{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:15px;',
'    font-weight:bolder;',
'}',
'',
'/*',
'.disable,#P51_EXECUTED{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:15px;',
'    font-weight:bolder;',
'    opacity: .8;',
'}',
'*/',
'',
'#P51_EMPLOYMENT_STATUS_ID{',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:12px;',
'    font-weight:bolder;',
'}',
'',
'img {',
'    border-radius: 50%;',
'}',
'',
'#movement{',
'        border-color: #e85d88;',
'border-radius: 8px;',
'}',
'.t-Region-header{',
'height: 30px;',
'border-radius: .4em;',
'}',
''))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_comment=>'gen_emp_number is not working'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3143575944358371264)
,p_name=>'Approval History'
,p_region_name=>'movement'
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_MOV_EMPMOVEMENT_NEW''',
'and table_name_key=:P700_ID'))
,p_display_when_condition=>'P700_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198063463582343855)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198063836797343855)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198064226745343856)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198064623192343856)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198065024409343856)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE OF ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3198065455735343856)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER NAME'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3199641066292520787)
,p_plug_name=>'Notice'
,p_region_name=>'movement'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success::::::::::'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>11
,p_plug_source=>'<font color="green" size="3"><b> This movement has been executed!</b></font>'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P700_EXECUTED'
,p_plug_display_when_cond2=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3233281050159108896)
,p_plug_name=>'Leave Entitlements'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,LEAVE_RATE,MOVEMENT_ID ,  emp_id,',
'       LEAVE_TYPE_ID,',
'       QUANTITY,',
'       WORKING_DAYS,',
'       MAX_ACCUMULATION,',
'       ACCUMULATIVE,',
'       REDUCE_SAL_OVERSPENT,',
'       JOB_ID,',
'       START_DATE,',
'       END_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_MOV_EMPLEAVEENTITLE',
'where  MOVEMENT_ID = :P700_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P700_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P700_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3202995295821575317)
,p_name=>'LEAVE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3204391232663180420)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P700_JOB_NAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210563546771721396)
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
 p_id=>wwv_flow_imp.id(3210563634676721397)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210564068649721401)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3210564162176721402)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210564224813721403)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3210564335939721404)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(3210564411234721405)
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
 p_id=>wwv_flow_imp.id(3210564522702721406)
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
,p_default_type=>'STATIC'
,p_default_expression=>'01-JAN-2020'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210564691118721407)
,p_name=>'REDUCE_SAL_OVERSPENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REDUCE_SAL_OVERSPENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Reduce Sal Overspent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210564774097721408)
,p_name=>'ACCUMULATIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCUMULATIVE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Accumulative'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210564856926721409)
,p_name=>'MAX_ACCUMULATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_ACCUMULATION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max Accumulation'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(3210564955828721410)
,p_name=>'WORKING_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKING_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Working Days'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210565053434721411)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(3210565180073721412)
,p_name=>'LEAVE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326523779868798320)
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
 p_id=>wwv_flow_imp.id(3210565316261721414)
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
 p_id=>wwv_flow_imp.id(3305506641765470410)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P700_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3305508054965470424)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P700_EMPLOYEE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3210565492988721415)
,p_internal_uid=>399711291307032226
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3210205786356619901)
,p_interactive_grid_id=>wwv_flow_imp.id(3210565492988721415)
,p_static_id=>'17649'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3210205617127619901)
,p_report_id=>wwv_flow_imp.id(3210205786356619901)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199598302462900367)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3204391232663180420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3201611739329245929)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3202995295821575317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210196777030619851)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3210563634676721397)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210198758719619863)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3210564068649721401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210199257012619866)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3210564162176721402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210199776591619869)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3210564224813721403)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210200218514619871)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3210564335939721404)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210200705690619874)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3210564411234721405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210201222011619876)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3210564522702721406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210201779461619879)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3210564691118721407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210202260111619881)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3210564774097721408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210202726666619884)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3210564856926721409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210203272878619886)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3210564955828721410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210203704894619889)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3210565053434721411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210204108799619892)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3210565180073721412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210205141960619898)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3210565316261721414)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308220272376410799)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3305506641765470410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308254411303892262)
,p_view_id=>wwv_flow_imp.id(3210205617127619901)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3305508054965470424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3233312757778114120)
,p_plug_name=>'Allowance Entitlements'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID, emp_id,',
'       MOVEMENT_ID,',
'       INCOME_TYPE,',
'       INCOME_CODE_ID,',
'       TAXABLE,',
'       NIS_DEDUCTION,',
'       AMOUNT,  ',
'       ADMIN_STATUS,',
'       EXPENSE_CODE_ID,',
'       PERCENTAGE,',
'       REMARKS,',
'       QUICK_ENTRY,',
'       START_DATE,',
'       END_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       PENSIONABLE,',
'       JOB_ID',
'  from HR_MOV_EMPENTITLE',
'where  MOVEMENT_ID = :P700_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P700_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P700_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3199367510350765172)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3199367633181765173)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(3199367772242765174)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3199367822393765175)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(3199367958548765176)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P700_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3199368062016765177)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3199368110672765178)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(3203195928760875637)
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
 p_id=>wwv_flow_imp.id(3203196068122875638)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3204401484904182960)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P700_JOB_NAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3204401608181182961)
,p_name=>'EXPENSE_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210597325173726641)
,p_name=>'PENSIONABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENSIONABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pensionable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326348486442557998)
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
 p_id=>wwv_flow_imp.id(3210598471261726652)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3210598527822726653)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
,p_default_type=>'STATIC'
,p_default_expression=>'01-JAN-2020'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3210598641127726654)
,p_name=>'QUICK_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUICK_ENTRY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Quick Entry'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210598797265726655)
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
 p_id=>wwv_flow_imp.id(3210598874077726656)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3210598956263726657)
,p_name=>'ADMIN_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Admin Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:MAN;MAN,SYS;SYS'
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
 p_id=>wwv_flow_imp.id(3210599227931726660)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3210599355145726661)
,p_name=>'NIS_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIS_DEDUCTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'NIB/SS Deduction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210599442639726662)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Taxable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3210599583569726663)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326548349276798356)
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
 p_id=>wwv_flow_imp.id(3233312188055114114)
,p_name=>'INCOME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326548088606798356)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
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
 p_id=>wwv_flow_imp.id(3233312512449114117)
,p_internal_uid=>376964271846639524
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3210592062112725351)
,p_interactive_grid_id=>wwv_flow_imp.id(3233312512449114117)
,p_static_id=>'17648'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3210591952217725349)
,p_report_id=>wwv_flow_imp.id(3210592062112725351)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199025265186645904)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(3199367510350765172)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199026084682645907)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(3199367633181765173)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199027062870645910)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(3199367772242765174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199027898506645913)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(3199367822393765175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199028861554645916)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(3199367958548765176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199029711748645919)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(3199368062016765177)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199030609861645923)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(3199368110672765178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199361535614748262)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3203196068122875638)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199612220824983622)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(3204401484904182960)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3199614554291998917)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(3204401608181182961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210579158333725154)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3210597325173726641)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210584568743725226)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3210598471261726652)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210585058491725232)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3210598527822726653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210585554358725238)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3210598641127726654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210586021126725244)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3210598797265726655)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210586618787725251)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3210598874077726656)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210587075576725259)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3210598956263726657)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210588542608725276)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3210599227931726660)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210589109183725281)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3210599355145726661)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210589564478725287)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3210599442639726662)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210590034800725293)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3210599583569726663)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3210590553185725302)
,p_view_id=>wwv_flow_imp.id(3210591952217725349)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3233312188055114114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138.7778
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3269692036360333173)
,p_plug_name=>'Comments/Remarks/Work Flow'
,p_region_name=>'REMARKS'
,p_region_template_options=>'#DEFAULT#:::is-collapsed::t-Region--accent2::t-Region--scrollBody:::::::::'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3271443360132765585)
,p_plug_name=>'Old Employee Record'
,p_region_name=>'DISPLAY_ONLY'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent1::t-Region--scrollBody:t-Form--slimPadding::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3271443800975765589)
,p_name=>'Audit Record Verified by: &P700_VERIFIED_BY.'
,p_region_name=>'movement'
,p_template=>2664334895415463485
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'from HR_MOV_EMPMOVEMENT_NEW',
'where id = :P700_ID',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P700_ID'
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
 p_id=>wwv_flow_imp.id(159075970231173231)
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
 p_id=>wwv_flow_imp.id(159076064054173232)
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
 p_id=>wwv_flow_imp.id(159076138423173233)
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
 p_id=>wwv_flow_imp.id(159076295551173234)
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
 p_id=>wwv_flow_imp.id(159076399055173235)
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
 p_id=>wwv_flow_imp.id(159076446541173236)
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
 p_id=>wwv_flow_imp.id(3271492740957774982)
,p_plug_name=>'New Employee Record'
,p_region_name=>'NEW_EMP'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent12::t-Region--scrollBody:t-Form--slimPadding::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'HR_MOV_EMPMOVEMENT_NEW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3271493352387775141)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3298303199047992330)
,p_plug_name=>'Movement Selection'
,p_region_name=>'movement'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent9:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-sm'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>12
,p_location=>null
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3305484418085462601)
,p_plug_name=>'dis_selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3305539161856941390)
,p_plug_name=>'Deductions'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EXPENSE_ID,',
'       EMP_ID,',
'       MOVEMENT_ID,',
'       DATESTART,   ',
'       AMOUNT_OWING,',
'       PERIOD,    ',
'       DEDUCTION_AMOUNT,',
'       REMARKS,',
'       DEDUCTION_TYPE,',
'        percent_basic,',
'         percent_option,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_MOV_ADMINDEDUCTION',
'  where MOVEMENT_ID = :P700_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P700_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P700_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 1;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3204366162075710693)
,p_name=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Percent Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Basic Pay;BASIC_PAY,System Additional Income;SYS_ADD_INCOME,All Predefined Remuneration;ALL'
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(3204366182825710694)
,p_name=>'PERCENT_BASIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_BASIC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percent Basic'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(3305539423401941392)
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
 p_id=>wwv_flow_imp.id(3305539507780941393)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduction Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326617330175913802)
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
 p_id=>wwv_flow_imp.id(3305539641385941394)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
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
,p_default_expression=>'P700_EMPLOYEE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3305539723371941395)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'movement'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
,p_default_type=>'ITEM'
,p_default_expression=>'P700_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3305539801697941396)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P700_FROM_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3305540001475941398)
,p_name=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_OWING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Owing'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3305540081334941399)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3305540361832941402)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3305540504215941403)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3305540630765941404)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326615137774913800)
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
 p_id=>wwv_flow_imp.id(3305540701236941405)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
 p_id=>wwv_flow_imp.id(3305540766593941406)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3305540927411941407)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(3305541030981941408)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3305542318250941421)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3305542373780941422)
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
 p_id=>wwv_flow_imp.id(3305539329246941391)
,p_internal_uid=>252460425609162026
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3308231544691816476)
,p_interactive_grid_id=>wwv_flow_imp.id(3305539329246941391)
,p_static_id=>'17647'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3308231573095816476)
,p_report_id=>wwv_flow_imp.id(3308231544691816476)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3200538101233969267)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3204366162075710693)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3200539021978969269)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3204366182825710694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308232125282816480)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3305539423401941392)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308232640241816486)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3305539507780941393)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308233054057816488)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3305539641385941394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308233468925816490)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3305539723371941395)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308234039249816492)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3305539801697941396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308234999353816496)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3305540001475941398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308235535341816497)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3305540081334941399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308237009968816503)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3305540361832941402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308237468433816505)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3305540504215941403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308238037590816507)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3305540630765941404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308238548006816508)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3305540701236941405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308238974956816510)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3305540766593941406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308239491283816512)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3305540927411941407)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308240013587816514)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3305541030981941408)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308277307470307469)
,p_view_id=>wwv_flow_imp.id(3308231573095816476)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3305542318250941421)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3503732656992705929)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3305379203948729842)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3503732656992705929)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P700_EMPLOYEE',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P700_EMPLOYEE',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P700_EMPLOYEE',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198023190221343817)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed != 1;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198023566357343817)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:699:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198025732056343828)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed != 1;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash-o'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198026189745343828)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:RP,51::'
,p_button_condition=>'P700_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198067536962343859)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3305379203948729842)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P700_EMPLOYEE.,51'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3221247174866149903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3233312757778114120)
,p_button_name=>'IMPORT_ALLOWANCES_FROM_JOB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import Allowances From Job'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 0;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3221247298321149904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3233281050159108896)
,p_button_name=>'IMPORT_LEAVE_ENTITLEMENT_FROM_JOB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import Leave Entitlement From Job'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P700_ID',
'and executed = 0;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198026546935343828)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P700_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198026981140343829)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P700_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198027404068343829)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P700_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3198027729771343829)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P700_ID.,ID,&P700_STATUS.,HR_MOV_EMPMOVEMENT_NEW,&P700_TRANSACTION_TYPE_ID.,Movement Management,51,&P700_WORKFLOW_COMMENT.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'  where :P700_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198138182823343904)
,p_branch_name=>'Create Again'
,p_branch_action=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:RP,51::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198026981140343829)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198137747159343903)
,p_branch_name=>'DELETE'
,p_branch_action=>'f?p=&APP_ID.:699:&SESSION.::&DEBUG.:RP,699::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198025732056343828)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198136531859343903)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:RP:P700_ID:&P700_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198026546935343828)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198136998212343903)
,p_branch_name=>'APPLY_CHANGES'
,p_branch_action=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:RP:P700_ID:&P700_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198023190221343817)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198137396146343903)
,p_branch_name=>'ADD_NEW'
,p_branch_action=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:RP,51::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198026189745343828)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198135778633343902)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY_ID,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:102,FRMMOVEMENTMANAGEMENT,&P700_ID.,&P700_EMPLOYEE.,51'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198027404068343829)
,p_branch_sequence=>53
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P700_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3198136207929343903)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P700_DOC_EXIST.,51'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3198027404068343829)
,p_branch_sequence=>53
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P700_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135229788926227597)
,p_name=>'P700_OLD_ANNUAL_SALARY'
,p_is_required=>true
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Annual Salary'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Value is computed based on the Basic Pay Rate for the specific payment mode or frequency.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135230588611229695)
,p_name=>'P700_ANNUAL_SALARY'
,p_is_required=>true
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Annual Salary'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'ANNUAL_SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Value is computed based on the Basic Pay Rate for the specific payment mode or frequency.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198013997189343810)
,p_name=>'P700_WORKFLOW_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3269692036360333173)
,p_prompt=>'Add Workflow Comment'
,p_display_as=>'NATIVE_YES_NO'
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
 p_id=>wwv_flow_imp.id(3198014661843343810)
,p_name=>'P700_WORKFLOW_COMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3269692036360333173)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Workflow Comment'
,p_source=>'WORKFLOW_COMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198015433626343811)
,p_name=>'P700_NEW_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3269692036360333173)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Remarks'
,p_source=>'NEW_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198017866694343812)
,p_name=>'P700_DOC_EXIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P700_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198018593823343812)
,p_name=>'P700_MOVEMENT_TYPE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Movement Type'
,p_source=>'CHANGE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select UPPER(tblmv.VALUE_DESCRIPTION) B, tblmv.ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'       join (select * from hr_hcf_lookup ',
'              where TABLE_NAME = UPPER(''TBLMOVEMENTCLASS'') ',
'             ) tblmvclass on tblmv.lookup_id = tblmvclass.id',
'        where  tblmv.TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and  tblmvclass.table_value in (''SUPPOS'')',
'        and (tblmv.end_period is null or tblmv.end_period >= current_date) ',
'        and tblmv.verified_by is not null ',
'        and tblmv.verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id',
'            )',
'--            and pkg_global_fnts.get_lookup_col(ID,''TABLE_VALUE'') != ''NEWE''',
'ORDER BY 1'))
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198018998504343813)
,p_name=>'P700_CHANGE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'CHANGE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198019377353343813)
,p_name=>'P700_SHOW_HIDE_HIRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198019796802343813)
,p_name=>'P700_HIRETYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Movement Type Sub'
,p_source=>'CHANGE_TYPE_SUB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(VALUE_DESCRIPTION) B, ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and LOOKUP_ID=:P700_MOVEMENT_TYPE',
'   '))
,p_lov_cascade_parent_items=>'P700_MOVEMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198020126010343813)
,p_name=>'P700_MOVEMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'CHANGE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198020522158343813)
,p_name=>'P700_RETURN_VALUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198021010744343814)
,p_name=>'P700_EMPLOYEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if   PKG_GLOBAL_FNTS.Get_Lookup_Col(:P700_MOVEMENT_TYPE, ''TABLE_VALUE'') in (''ACTI'',''SECO'',''RESP'')',
'        and :P700_EXECUTED is null then ',
'   RETURN ',
'      ''SELECT  x.EMPLOYEE||''''(''''||x.EMP_COMPANY_NO||'''')''''||''''(''''||et.value_description||'''')'''' a, x.id B',
'      from VW_EMPLOYEEALL x',
'      join ',
'      (',
'      select id,table_value,value_description from hr_hcf_lookup ',
'      where table_name = ''''TBLEMPLOYMENTTYPE''''',
'      and org_id = :APP_ORG_SHR_DED',
'      ) et on  x.employment_type_id = et.table_value',
'      where (x.DATE_SEPARATED is null or x.DATE_SEPARATED > current_date)',
'      and x.employment_type_id in (1,2,4)',
'      and x.org_id = :APP_ORG_ID',
'      ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''SELECT  x.EMPLOYEE||''''(''''||x.EMP_COMPANY_NO||'''')''''||''''(''''||et.value_description||'''')'''' a, x.id B',
'      from VW_EMPLOYEEALL x ',
'      join ',
'      (',
'      select id,table_value,value_description from hr_hcf_lookup ',
'      where table_name = ''''TBLEMPLOYMENTTYPE'''' ',
'      and org_id = :APP_ORG_SHR_DED',
'      ) et on  x.employment_type_id = et.table_value',
'      where x.org_id = :APP_ORG_ID'';',
'',
'END IF;'))
,p_lov_cascade_parent_items=>'P700_MOVEMENT_TYPE'
,p_ajax_items_to_submit=>'P700_MOVEMENT_TYPE,P700_EXECUTED'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198021396384343814)
,p_name=>'P700_INDIVIDUAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Individual'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_ID IS NULL AND :P700_MOVEMENT_TYPE =1 and (:P700_HIRETYPE = 167308 or :P700_HIRETYPE = 21) then --rehired',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id= :APP_ORG_ID',
'And Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id                ',
'                And Date_Separated Is not Null)',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)           ',
'UNION',
'SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and a.ind_org_id = :APP_ORG_ID',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)            ',
'order by 1'';',
'',
'elsif :P700_ID IS NULL AND :P700_MOVEMENT_TYPE =1 and (:P700_HIRETYPE  = 167309 or :P700_HIRETYPE = 22 or :P700_HIRETYPE = 23 ) then --Retired REHIRED',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id= :APP_ORG_ID',
'And Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id                ',
'                And Date_Separated Is not Null',
'                and (a.sex_code=''''F''''  and pkg_global_fnts.fn_calcage(a.DOB,trunc(current_date))  >= pkg_global_fnts.fn_GetFemaleRetireAge(b.id, b.org_id, trunc(current_date))    ',
'                or a.sex_code=''''M''''  and pkg_global_fnts.fn_calcage(a.DOB,trunc(current_date))  >= pkg_global_fnts.fn_GetRetireAge(b.id, b.org_id, trunc(current_date)))',
'                )                  ',
'UNION',
'SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and a.ind_org_id = :APP_ORG_ID',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)            ',
'order by 1'';',
'',
'',
'',
'elsif :P700_ID IS NULL AND :P700_MOVEMENT_TYPE =1 and (:P700_HIRETYPE = 20 or :P700_HIRETYPE = 167307) then --New Employee',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and a.ind_org_id = :APP_ORG_ID',
'And Not Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id',
'               )',
'and pkg_global_fnts.fn_calcage(DOB,trunc(current_date))  >= pkg_global_fnts.get_employment_age(:APP_ORG_ID)           ',
'order by 1'';',
'',
'ELSE',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A ',
'where id = (select ind_id from hr_mov_empmovement_new',
'             where id =:P700_ID)',
'order by 1'';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P700_MOVEMENT_TYPE,P700_HIRETYPE'
,p_ajax_items_to_submit=>'P700_ID,P700_MOVEMENT_TYPE,P700_HIRETYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:::::::'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Selected from the individuals screen, conditions include the prevention of individuals already employed for current organisation, auto assignment of rehire status if employee worked for current organisation. Individuals must be verified. Individual''s'
||' age must be equal to or greater than the company''s minimum employment age.'
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
 p_id=>wwv_flow_imp.id(3198022283243343816)
,p_name=>'P700_CHANGE_TYPE_SUB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3298303199047992330)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'CHANGE_TYPE_SUB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198028193674343830)
,p_name=>'P700_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198028603959343830)
,p_name=>'P700_IS_PRIM_TAX_FN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198029230766343831)
,p_name=>'P700_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198029698736343831)
,p_name=>'P700_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Emp Company No.'
,p_source=>'EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>20
,p_grid_column_css_classes=>'display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198030076260343831)
,p_name=>'P700_EMPLOYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYMENT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3202169449667688035)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198030457816343831)
,p_name=>'P700_FROM_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Appointment Start'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This date will be date emmployed or date of appointment for new employment and other movement type respectively.'
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
 p_id=>wwv_flow_imp.id(3198031334654343832)
,p_name=>'P700_TO_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'End'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
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
 p_id=>wwv_flow_imp.id(3198031719557343832)
,p_name=>'P700_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Department'
,p_source=>'ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_MOVEMENT_TYPE = 13',
'then return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and org_id= :APP_ORG_ID)',
'and m.id != nvl(:P700_OLD_ORG_STRUCTURE_ID, -m.id)',
'order by 1'' ;',
'else return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''|| Unit_Name||'''' ''''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and org_id= :APP_ORG_ID) ',
'order by 1'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P700_OLD_ORG_STRUCTURE_ID'
,p_ajax_items_to_submit=>'P700_MOVEMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'--reference codes',
'',
'--ID      CODE    DESCRIPTION',
'---------------------------------',
'--1		NEWE	New Employment',
'--2		ACTI	Acting',
'--3		CONF	Confirmation',
'--4		DEMO	Demotion',
'--5		EXTC	Extension of Contract',
'--6		EXTT	Extension of Training',
'--7		PROM	Promotion',
'--8		RECL	Reclassification',
'--9		REDE	Redesignation',
'--10	REIN	Reinstatement',
'--11	SECO	Secondment',
'--12	SEPA	Separation',
'--13	TRAN	Transfer',
'--14	CONX	Extension of Confirmation',
'',
'--20	1	NEWEM	New Employee',
'--21	1	NEWRH	Rehired Employee',
'--22	1	NEWRT	RETIRED Employee',
'--23	1	NEWPN	RETIRED Pensioner',
'--24	3	CONE	Employment',
'--25	3	CONP	Promotion',
'--26	14	CONEX	Employment Extension',
'--27	14	CONPX	Promotion Extension',
'',
''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198032193161343833)
,p_name=>'P700_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Position'
,p_source=>'POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_MOVEMENT_TYPE = 7 then return',
'''select POSITION_NAME ||'''' (''''||g.grade_code||'''')'''' a, a.id b',
'from HR_HCF_POSITION a',
'join HR_HCF_POSITIONGRADE g on g.id = a.GRADE_id',
'join HR_HCF_ORGSTRUCTUREDTL od on OD.ID = a.orgdtl_id',
'join HR_HCF_ORGSTRUCTUREHD oh on oh.id = od.org_structure_id',
'WHERE oh.ORG_ID=:P700_ORG_ID',
'order by 1'';',
'',
'elsif :P700_MOVEMENT_TYPE = 9 then return',
'''select POSITION_NAME ||'''' (''''||g.grade_code||'''')'''' a, a.id b',
'from HR_HCF_POSITION a',
'join HR_HCF_POSITIONGRADE g on g.id = a.GRADE_id',
'join HR_HCF_ORGSTRUCTUREDTL od on OD.ID = a.orgdtl_id',
'join HR_HCF_ORGSTRUCTUREHD oh on oh.id = od.org_structure_id',
'WHERE oh.ORG_ID=:P700_ORG_ID',
'and a.ORGDTL_ID =:P700_ORG_STRUCTURE',
'and not exists ( select 1 from ',
'                hr_hcf_job jb where jb.org_id = oh.ORG_ID',
'                    and jb.id = a.job_id',
'                and upper(jb.description)  = upper(:P700_OLD_JOB_NAME))',
'                order by 1'';',
'',
'else return',
'''select POSITION_NAME ||'''' (''''||g.grade_code||'''')'''' a, a.id b',
'from HR_HCF_POSITION a',
'join HR_HCF_POSITIONGRADE g on g.id = a.GRADE_id',
'join HR_HCF_ORGSTRUCTUREDTL od on OD.ID = a.orgdtl_id',
'join HR_HCF_ORGSTRUCTUREHD oh on oh.id = od.org_structure_id',
'WHERE oh.ORG_ID=:P700_ORG_ID',
'and a.ORGDTL_ID =:P700_ORG_STRUCTURE',
'order by 1'';',
' end if;',
''))
,p_lov_cascade_parent_items=>'P700_ORG_ID,P700_ORG_STRUCTURE'
,p_ajax_items_to_submit=>'P700_MOVEMENT_TYPE,P700_ORG_ID,P700_ORG_STRUCTURE,P700_OLD_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'--reference codes',
'',
'--ID      CODE    DESCRIPTION',
'---------------------------------',
'--1		NEWE	New Employment',
'--2		ACTI	Acting',
'--3		CONF	Confirmation',
'--4		DEMO	Demotion',
'--5		EXTC	Extension of Contract',
'--6		EXTT	Extension of Training',
'--7		PROM	Promotion',
'--8		RECL	Reclassification',
'--9		REDE	Redesignation',
'--10	REIN	Reinstatement',
'--11	SECO	Secondment',
'--12	SEPA	Separation',
'--13	TRAN	Transfer',
'--14	CONX	Extension of Confirmation',
'',
'--20	1	NEWEM	New Employee',
'--21	1	NEWRH	Rehired Employee',
'--22	1	NEWRT	RETIRED Employee',
'--23	1	NEWPN	RETIRED Pensioner',
'--24	3	CONE	Employment',
'--25	3	CONP	Promotion',
'--26	14	CONEX	Employment Extension',
'--27	14	CONPX	Promotion Extension',
''))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198032588916343833)
,p_name=>'P700_ACTING_FOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Acting/Resp For'
,p_source=>'ACTING_FOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')''  end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where  x.ORG_ID=:APP_ORG_ID',
'and position_id = :P700_POSITION_ID',
'and x.id !=:P700_EMPLOYEE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Person Acting For--'
,p_lov_cascade_parent_items=>'P700_POSITION_ID'
,p_ajax_items_to_submit=>'P700_EMPLOYEE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#::::::::'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3198033012866343833)
,p_name=>'P700_WKLOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEF_WORK_LOCATION_ID FROM HR_HCF_POSITION WHERE ID = :P700_POSITION_ID',
'',
'',
'/*',
'SELECT 1  DEF_WORK_LOCATION_ID',
'from hr_hcf_position',
'where def_work_location_id = :P700_WKLOCATION_ID',
'*/'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.LOCATION_DESCRIPTION || '' ('' || B.LOCATION_code || '')'' a, B.id b',
'from HR_HCF_WORKLOCATION B',
'WHERE ORG_ID=:P700_ORG_ID',
'order by 1',
'',
'/*select B.LOCATION_DESCRIPTION || '' ('' || B.LOCATION_code || '')'' a, B.id b',
'from HR_HCF_WORKLOCATION B',
'WHERE ORG_ID=:P700_ORG_ID',
'and start_date <= :P700_FROM_DATE',
'and nvl(end_date,current_date) >= :P700_FROM_DATE',
'order by 1*/',
'',
'/*select B.LOCATION_DESCRIPTION || '' ('' || B.LOCATION_code || '')'' a, B.id b',
'from HR_HCF_WORKLOCATION B join hr_hcf_position a on a.def_work_location_id =b.id',
'WHERE ORG_ID=:P700_ORG_ID',
'order by 1',
'*/',
'',
'/*select B.LOCATION_DESCRIPTION || '' ('' || B.LOCATION_code || '')'' a, B.id b',
'from HR_HCF_WORKLOCATION B',
'WHERE ORG_ID=:P700_ORG_ID',
'AND ID = (SELECT DEF_WORK_LOCATION_ID FROM HR_HCF_POSITION WHERE ID = :P700_POSITION_ID)',
'order by 1',
'*/',
'',
'',
'',
''))
,p_lov_cascade_parent_items=>'P700_ORG_ID,P700_POSITION_ID'
,p_ajax_items_to_submit=>'P700_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198033382124343833)
,p_name=>'P700_JOB_NAME'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Job Name'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a .description,',
'    a .id',
'FROM',
'    hr_hcf_job a',
'',
'WHERE',
'    a .id = (',
'        select',
'            job_id',
'        from',
'            hr_hcf_position',
'        where',
'            id = :P700_POSITION_ID',
'    )',
'ORDER BY',
'    1',
'',
'',
'',
'/*',
'SELECT',
'    a .description,',
'    a .id',
'FROM',
'    hr_hcf_job a',
'    JOIN hr_hcf_position b ON a .id = b.job_id',
'WHERE',
'    a .id = (',
'        select',
'            job_id',
'        from',
'            hr_hcf_position',
'        where',
'            id = :P700_POSITION_ID',
'    )',
'ORDER BY',
'    1',
'    */'))
,p_lov_cascade_parent_items=>'P700_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198033724839343834)
,p_name=>'P700_JOB_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Job Class'
,p_source=>'JOB_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT job_classification a, job_classification b  ',
'    FROM HR_HCF_job',
'    where id =:P700_JOB_NAME'))
,p_lov_cascade_parent_items=>'P700_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198034136722343834)
,p_name=>'P700_EMPLOYMENT_CLASS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    initcap(VALUE_DESCRIPTION) A, ',
'    ID B',
'FROM',
'hr_hcf_lookup x where table_name = ''TBLEMPLOYMENTCLASS''',
'and x.org_id = :APP_ORG_SHR_DED',
'AND',
'  X .id = (',
'            select',
'                j.employment_class_job',
'            from',
'                hr_hcf_job j',
'            where',
'                j.id = :P700_JOB_NAME',
'           )',
'ORDER BY',
'    1',
'',
'--Richards old code',
'',
'/*select initcap(VALUE_DESCRIPTION) A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.ID=a.employment_class_id',
'             and x.org_id=a.org_id)',
'and    X .id = (',
'        select',
'            j.employment_class_job',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P700_JOB_NAME',
'                )',
'ORDER BY 1*/',
''))
,p_lov_cascade_parent_items=>'P700_JOB_NAME'
,p_ajax_items_to_submit=>'P700_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198034597840343834)
,p_name=>'P700_GRADE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Grade'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.grade_description',
'        || ''(''',
'        || a.grade_code',
'        || '') as at ''',
'        || a.effective_fromdate a,',
'        a.id',
'from hr_hcf_positiongrade   a ',
'WHERE a.id = (',
'        select',
'            j.job_grade_id',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P700_JOB_NAME',
'            )',
'ORDER BY 1',
'',
'',
'--Richard''s old code',
'/*',
'SELECT',
'    a.grade_description',
'    || ''(''',
'    || a.grade_code',
'    || '') as at ''',
'    || a.effective_fromdate a,',
'    a.id',
'FROM',
'    hr_hcf_positiongrade   a',
'    JOIN hr_hcf_job             b ON a.id = b.job_grade_id',
'where b.id=:P700_JOB_NAME',
'ORDER BY',
'    1;',
'    ',
'*/'))
,p_lov_cascade_parent_items=>'P700_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_css_classes=>'display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198034981179343835)
,p_name=>'P700_GRADE_POINT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'1'
,p_prompt=>'Grade Point'
,p_source=>'GRADE_POINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Point: ''||a.point || ''-'' || ''$''||trim(to_char(a.point_amount,''999,999,999'')), a.point',
'from hr_hcf_positiongradepoint   a ',
'WHERE end_date is null',
'  and a.position_grade_id = (',
'        select',
'            j.job_grade_id',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P700_JOB_NAME',
'             )',
'ORDER BY point',
'',
'',
'--Richard''s old code',
'/*',
'select ''(''||grade_code||'')-Point: ''||a.point || ''-'' || ''$''||trim(to_char(a.point_amount,''999,999,999'')), a.id ',
'from hr_hcf_positiongradepoint a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id = :P700_GRADE',
'order by 1;',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Point--'
,p_lov_cascade_parent_items=>'P700_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_css_classes=>'display_only'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198035399870343835)
,p_name=>'P700_GRADE_POINT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'GRADE_POINT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198035765634343835)
,p_name=>'P700_EMPLOYMENT_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'109640'
,p_source=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198036182166343836)
,p_name=>'P700_PERSONAL_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'0'
,p_prompt=>'Personal Rate'
,p_placeholder=>'enter amount for additional remuneration'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'PERSONAL_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198036580271343836)
,p_name=>'P700_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'MONTHLY'
,p_prompt=>'Payment Type'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198036981805343837)
,p_name=>'P700_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'distinct case  when  upper(:P700_PAYMENT_TYPE)  = ''MONTHLY'' then ''Basic Pay''  ',
'                     when compute_gross = ''HOURLY_RATE'' then ''Hourly Rate''',
'                     when compute_gross = ''DAILY_RATE'' then ''Daily Rate''',
'                     when compute_gross = ''BASIC_PAY'' then ''Basic Pay''',
'                     else ''Piece Rate'' end A',
',case       when  upper(:P700_PAYMENT_TYPE)  = ''MONTHLY''  ',
'            then ''BASIC_PAY'' ',
'       else compute_gross end B',
'from hr_rcm_employee',
'where upper(payment_type) = upper(:P700_PAYMENT_TYPE)'))
,p_lov_cascade_parent_items=>'P700_PAYMENT_TYPE'
,p_ajax_items_to_submit=>'P700_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3198037370785343837)
,p_name=>'P700_HOURLY_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'0'
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'HOURLY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198037764703343837)
,p_name=>'P700_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Shift'
,p_source=>'SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_cycle_name||''(Rotating Every ''||hours_worked||'')'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a ',
'join hr_hcf_lookup b on b.id = a.Shift_Type_Id',
'where (B.table_name = ''TBLSHIFTSEQ''',
'OR b.table_name = ''TBLSHIFTTYPE'')',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_SHR_DED',
'AND upper(A.PAYMENT_TYPE) = upper(:P700_PAYMENT_TYPE)',
''))
,p_lov_cascade_parent_items=>'P700_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198038150130343837)
,p_name=>'P700_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198038584555343838)
,p_name=>'P700_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198038929149343838)
,p_name=>'P700_REPORT_TO_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Reports To Admin'
,p_source=>'REPORT_TO_ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_ID is null then',
'',
'return',
' ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_AVAILEMPLOYEE X ',
'where (x.DATE_SEPARATED is null or DATE_SEPARATED > :P700_FROM_DATE)',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE_NAME||''''(no.:''''||EMP_COMPANY_NO||'''')'''' || case when x.date_separated is not null then ''''(IN-ACTIVE)'''' else null end a, id B',
'from VW_EMPLOYEE X'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P700_FROM_DATE,P700_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3198039349007343838)
,p_name=>'P700_REPORT_TO_FUNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Reports to Functional'
,p_source=>'REPORT_TO_FUNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_ID is null then',
'',
'return',
' ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_AVAILEMPLOYEE X ',
'where (x.DATE_SEPARATED is null or x.DATE_SEPARATED > :P700_FROM_DATE)',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE_NAME||''''(no.:''''||EMP_COMPANY_NO||'''')'''' || case when x.date_separated is not null then ''''(IN-ACTIVE)'''' else null end a, id B',
'from VW_EMPLOYEE X'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P700_FROM_DATE,P700_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3198039793911343838)
,p_name=>'P700_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Union Code'
,p_source=>'UNION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_UNION_AND_CREDITUNION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198040145874343839)
,p_name=>'P700_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Union Effective Date'
,p_source=>'UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3198040554239343839)
,p_name=>'P700_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198040919095343839)
,p_name=>'P700_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Approved Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3198041347614343840)
,p_name=>'P700_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'110'
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
,p_lov_null_text=>'--Select --'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198041774965343840)
,p_name=>'P700_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and (upper(Wfl_Status_Description) not like DECODE(:P700_ID, NULL,''%VERI%'',''test'')  ',
'OR upper(Wfl_Status_Description) not like DECODE(:P700_ID, NULL,''%COMP%'',''test'')  ',
'OR upper(Wfl_Status_Description) not like DECODE(:P700_ID, NULL,''%WITH%'',''test'')  ',
'OR upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'OR upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') )',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P700_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P700_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3198042181416343840)
,p_name=>'P700_EFFECTIVE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'EFFECTIVE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198042590068343840)
,p_name=>'P700_EXECUTED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'select current_date from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'EXECUTED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198042919625343841)
,p_name=>'P700_EXECUTED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'0'
,p_source=>'EXECUTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P700_EXECUTED'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198043328226343841)
,p_name=>'P700_OLD_TRANSACTION_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198043749405343841)
,p_name=>'P700_OLD_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198044126794343842)
,p_name=>'P700_CHANGE_TYPE_SUB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'CHANGE_TYPE_SUB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198044529369343842)
,p_name=>'P700_PAYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'PAYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198045015088343842)
,p_name=>'P700_OLD_PAYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_PAYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198045346631343842)
,p_name=>'P700_TRANSFER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'0'
,p_source=>'TRANSFER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198048485428343845)
,p_name=>'P700_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3271443800975765589)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198049277155343845)
,p_name=>'P700_MACHINE_INSERT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3271443800975765589)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198049635284343845)
,p_name=>'P700_MACHINE_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3271443800975765589)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198050364368343846)
,p_name=>'P700_OLD_ORGANISATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Organisation'
,p_source=>'OLD_ORGANISATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198050758892343846)
,p_name=>'P700_TO_DATE_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_MOV_EMPMOVEMENT_NEW',
'WHERE ID = :P700_ID',
'AND VERIFIED_BY IS NOT NULL AND VERIFIED_DATE IS NOT NULL',
'AND CHANGE_TYPE_ID != 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198051124801343847)
,p_name=>'P700_OLD_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Emp Company No.'
,p_source=>'OLD_EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198051532823343847)
,p_name=>'P700_OLD_EMPLOYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Employment Type'
,p_source=>'OLD_EMPLOYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYMENT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3202169449667688035)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198052012040343847)
,p_name=>'P700_OLD_FROM_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Appointment Start'
,p_source=>'OLD_FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198052361239343847)
,p_name=>'P700_OLD_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'End'
,p_source=>'OLD_TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198052814475343848)
,p_name=>'P700_OLD_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Department'
,p_source=>'OLD_ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198053162678343848)
,p_name=>'P700_OLD_POSTION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Position'
,p_source=>'OLD_POSITION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198053547409343848)
,p_name=>'P700_SPACER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P700_ACTING_FOR'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(3198053978899343848)
,p_name=>'P700_OLD_WKLOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Location'
,p_source=>'OLD_WKLOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198054332570343849)
,p_name=>'P700_OLD_JOB_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Job Name'
,p_source=>'OLD_JOB_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198054726098343849)
,p_name=>'P700_OLD_JOB_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Job Class'
,p_source=>'OLD_JOB_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198055140624343849)
,p_name=>'P700_OLD_EMPLOYMENT_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Employment Class'
,p_source=>'OLD_EMPLOYMENT_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198055553121343849)
,p_name=>'P700_OLD_GRADE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Grade'
,p_source=>'OLD_GRADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198055947846343850)
,p_name=>'P700_OLD_GRADE_POINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Grade Point'
,p_source=>'OLD_GRADE_POINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198056355239343850)
,p_name=>'P700_OLD_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Old Shift'
,p_source=>'OLD_SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIFT_ROTATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_CYCLE_NAME||'' ''||B.value_description||''(Rotating Every ''||rotation_days||'' Days)'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_SHR_DED',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198056719381343850)
,p_name=>'P700_OLD_EMPLOYMENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_EMPLOYMENT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198057214872343850)
,p_name=>'P700_OLD_PERSONAL_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Personal Rate'
,p_source=>'OLD_PERSONAL_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198057583317343851)
,p_name=>'P700_OLD_HOURLY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'OLD_HOURLY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198057925902343851)
,p_name=>'P700_OLD_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Payment Type'
,p_source=>'OLD_PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198058369477343851)
,p_name=>'P700_OLD_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Old Compute Gross'
,p_source=>'OLD_COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case when compute_gross = ''HOURLY_RATE'' then ''Hourly Rate''',
'                     when compute_gross = ''DAILY_RATE'' then ''Daily Rate''',
'                     when compute_gross = ''BASIC_PAY'' then ''Basic Pay''',
'                     else ''Piece Rate'' end A',
',compute_gross',
'from hr_rcm_employee'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198058807601343851)
,p_name=>'P700_OLD_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Payroll Effective'
,p_source=>'OLD_PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198059192202343852)
,p_name=>'P700_OLD_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Old Leave Ann Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'OLD_LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3198059610261343852)
,p_name=>'P700_OLD_REPORT_TO_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Report To Admin'
,p_source=>'OLD_REPORT_TO_ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198059980918343852)
,p_name=>'P700_OLD_REPORT_TO_FUNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Report To Functional'
,p_source=>'OLD_REPORT_TO_FUNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198060338380343852)
,p_name=>'P700_OLD_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Union Code'
,p_source=>'OLD_UNION_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_UNION_AND_CREDITUNION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(3198060732580343853)
,p_name=>'P700_OLD_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Union Effective Date'
,p_source=>'OLD_UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3198061133764343853)
,p_name=>'P700_OLD_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Approved By'
,p_source=>'OLD_APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198061550864343853)
,p_name=>'P700_OLD_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Approved Date'
,p_source=>'OLD_APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198061975903343854)
,p_name=>'P700_OLD_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Old Remarks'
,p_source=>'OLD_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198062408240343854)
,p_name=>'P700_OLD_EMPLOYEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_EMPLOYEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198062802425343854)
,p_name=>'P700_OLD_ORG_STRUCTURE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_ORG_STRUCTURE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198066477995343858)
,p_name=>'P700_PHOTO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3503732656992705929)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198066845433343858)
,p_name=>'P700_PHOTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3503732656992705929)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from hr_mov_empmovement_new C ',
    '              where  C.EMP_ID = B.ID',
    '              and c.id = :P700_PHOTO_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3221246932632149901)
,p_name=>'P700_OLD_JOB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3221247043375149902)
,p_name=>'P700_OLD_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_source=>'OLD_POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3254307826990668080)
,p_name=>'P700_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Daily Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'DAILY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3254307920209668081)
,p_name=>'P700_OLD_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3271443360132765585)
,p_item_source_plug_id=>wwv_flow_imp.id(3271492740957774982)
,p_prompt=>'Daily Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'OLD_DAILY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3258177312786310598)
,p_name=>'P700_OVERLAP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3271493352387775141)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198096818302343879)
,p_validation_name=>'chk_emp_age'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_emp_age hr_hcf_org_rule.employment_age%type;',
'  v_dob pls_integer:=0;',
'',
'begin',
'    SELECT to_number(employment_age) into v_emp_age',
'    FROM hr_hcf_org_rule',
'    where org_id=:P700_ORG_ID',
'    and ((trunc(current_date) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'    or  (trunc(start_date) <= TRUNC(current_date) and trunc(end_date) is null ));',
'    ',
'    select pkg_global_fnts.fn_calcage(DOB,trunc(current_date)) into v_dob',
'    from hr_rcm_individual',
'    where id= (select ind_id ',
'               from hr_rcm_employee ',
'               where id = nvl(:P700_EMPLOYEE,0));',
'    ',
'    ',
'    if v_dob < v_emp_age then',
'      return false;',
'    else',
'      return true;    ',
'    end if;',
'   ',
'exception',
'   when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the date of birth or organisation employment age is incorrect.'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198097137250343880)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P700_FROM_DATE, :P700_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198097584306343880)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P700_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P700_ID, :P700_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198097937221343880)
,p_validation_name=>'chk_tin'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ind_id number(38);',
'',
'begin',
'',
'',
'if pkg_global_fnts.fn_getcurnistaxno(:P700_INDIVIDUAL, ''TIN'',  current_date) is null ',
'AND PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P700_EMPLOYMENT_CLASS, ''VALUE_DESCRIPTION'') not in (''APPLICANT'',''PENSIONERS'') THEN',
'return false;',
'else',
' return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'There is no TIN available for this individual. Kindly update the individual data before continuing.'
,p_validation_condition=>'P700_MOVEMENT_TYPE'
,p_validation_condition2=>'9999'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(3198026546935343828)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198098373128343880)
,p_validation_name=>'chk_nis'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ind_id number(38);',
'',
'begin',
'',
'',
'    if pkg_global_fnts.fn_getcurnistaxno(:P700_INDIVIDUAL, ''NIS NUMBER'',  current_date) is null ',
'    AND PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P700_EMPLOYMENT_CLASS, ''VALUE_DESCRIPTION'')  not in (''APPLICANT'',''PENSIONERS'') THEN',
'    return false;',
'    else',
'     return true;',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'There is no NIS No. available for this individual. Kindly update the individual data before continuing.'
,p_validation_condition=>'P700_MOVEMENT_TYPE'
,p_validation_condition2=>'9999'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(3198026546935343828)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198098725031343880)
,p_validation_name=>'chk_address'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_address addr join hr_rcm_individual ind on ind.id = addr.ind_id   ',
'where IND.ID = :P700_INDIVIDUAL'))
,p_validation_type=>'EXISTS'
,p_error_message=>'You must have an address attached to your employee record'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198099121072343881)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P700_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_when_button_pressed=>wwv_flow_imp.id(3198023190221343817)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198099561039343881)
,p_validation_name=>'enforce_employee_license'
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_get_license number(10):=0; cur_emp_count number(10):=0;',
'',
'begin',
'',
'select NO_OF_EMPLOYEES into v_get_license',
'from APP_MODULE_LICENCE a',
'where trunc(current_date) between trunc(START_LICENCE_DATE) and trunc(EXPIRY_LICENCE_DATE)',
'and org_id =:P700_ORG_ID',
'and exists (select 1',
'            from APP_MODULE b',
'            where a.APP_MODULE_ID=b.id',
'            and upper(MODULE_NAME)=''RECRUITMENT''',
'            and trunc(b.START_DATE) <= trunc(current_date)',
'            and (b.END_DATE is null or trunc(b.END_DATE) >= trunc(current_date))',
'            );',
'            ',
'select count(1) into cur_emp_count',
'from hr_rcm_employee',
'where Separated_Status is null',
'and Date_Separated is null',
'and org_id =:P700_ORG_ID',
'and Employment_Status not in (''APPLIED ONLY'',''INTERVIEWED ONLY'',''RESERVED'',''SECONDED'');',
'',
'IF v_get_license < cur_emp_count then',
'return ''You have exceeded the required license purchased of ''||v_get_license||'' current license count is ''||cur_emp_count||''.'';',
'else',
'return null;',
'end if;',
'',
'exception',
'  when no_data_found then ',
'        raise_application_error(-20018, ''The system found no valid License record for this company. Contact Innosys and make payment for same.'');',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198099957756343881)
,p_validation_name=>'chk_dtapp_DOB'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob date;',
'  v_application_date date;',
'BEGIN',
'',
'select dob into v_dob ',
'from hr_rcm_individual ind',
'where id= :P700_INDIVIDUAL;',
'',
'IF TO_DATE(:P700_FROM_DATE) < v_dob  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'EXCEPTION',
' WHEN OTHERS THEN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date applied is incorrect when compared to the employee date of birth!'
,p_always_execute=>'Y'
,p_validation_condition=>'P700_MOVEMENT_TYPE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198100339991343882)
,p_validation_name=>'chk_DOE_DOB'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob date;',
'BEGIN',
'',
'select dob into v_dob ',
'from hr_rcm_individual',
'where id= :P700_INDIVIDUAL;',
'',
'IF TO_DATE(:P700_FROM_DATE) < v_dob  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'EXCEPTION',
' WHEN OTHERS THEN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date employed is incorrect when compared to the employee date of birth!'
,p_always_execute=>'Y'
,p_validation_condition=>'P700_MOVEMENT_TYPE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198100787741343882)
,p_validation_name=>'chk_spaning_DOE'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_mov_empmovement_new',
'where ind_id = :P700_INDIVIDUAL',
'and to_date(:P700_FROM_DATE) between FROM_DATE and TO_DATE',
'and id !=:P700_ID;',
'',
'if v_cnt >0 then',
'  return false;',
'else',
'  return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Spanning dates of employment not allowed for employees.'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198101197790343882)
,p_validation_name=>'chk_DOE_payeff'
,p_validation_sequence=>220
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1281_PAYROLL_EFFECTIVE) >= TO_DATE(:P700_FROM_DATE) THEN',
'RETURN TRUE;',
'ELSE',
'return FALSE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The payroll effective date must be on or after the date employed.'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198101524049343882)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_MOV_EMPMOVEMENT_NEW''',
'        and table_name_key=:P700_ID;',
'        ',
'    if v_test_approval = 0 and pkg_global_fnts.status_descript(:P700_STATUS) =''VERIFY'' then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_when_button_pressed=>wwv_flow_imp.id(3198023190221343817)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198101919216343883)
,p_validation_name=>'chk_emp_number'
,p_validation_sequence=>270
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_cnt number(10):=0;',
'',
'begin',
'    select count(1) into v_cnt',
'    from hr_rcm_employee',
'    where emp_company_no =:P700_EMP_COMPANY_NO',
'    and org_id=:APP_ORG_ID',
'    and date_employed =:P700_FROM_DATE',
'    and :P700_OLD_EMP_COMPANY_NO != :P700_EMP_COMPANY_NO;',
'    ',
'    if v_cnt > 0 then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The employee number entered already exist for the employee.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198096343488343879)
,p_validation_name=>'enf_emptype_payeffetive'
,p_validation_sequence=>290
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id pls_integer; v_payroll_effective date;',
'',
'begin',
'',
'    select employment_type_id, payroll_effective into v_employment_type_id, v_payroll_effective',
'    from hr_rcm_employee',
'    where id = :P700_EMPLOYEE;',
'',
'    if (:P700_MOVEMENT_TYPE != 1 and  :P700_employment_type_id != v_employment_type_id) or  (:P700_MOVEMENT_TYPE != 1 and :P700_PAYROLL_EFFECTIVE != v_payroll_effective) then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Changes to Employment Type and/or Payroll Effective date is specific to new employment only.'
,p_when_button_pressed=>wwv_flow_imp.id(3198023190221343817)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198095547759343879)
,p_validation_name=>'chk_rehire_permanent'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P700_CHANGE_TYPE_SUB_ID = 21 AND :P700_EMPLOYMENT_TYPE_ID = 2 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, please ensure the employment type is not set to permanent for the rehired employee movement.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198095188456343878)
,p_validation_name=>'chk_retire_employee'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P700_CHANGE_TYPE_SUB_ID = 22 AND :P700_EMPLOYMENT_TYPE_ID = 2 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, please ensure the employment type is not set to permanent for the retired employee movement.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3198094731991343878)
,p_validation_name=>'chk_retire_pensioner'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P700_CHANGE_TYPE_SUB_ID = 23 AND :P700_EMPLOYMENT_TYPE_ID = 2 THEN',
'  RETURN FALSE;',
'ELSIF :P700_CHANGE_TYPE_SUB_ID = 23 AND :P700_EMPLOYMENT_TYPE_ID = 1 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, please ensure the employment type is set to other for the retired pensioner movement.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3241725485870422218)
,p_validation_name=>'chk_appointment_dates'
,p_validation_sequence=>340
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if to_date(:P700_TO_DATE) < to_date(:P700_FROM_DATE) then',
'    return False;',
'    else',
'    return True;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the Appointment End should be more than the Appointment Start or a future date.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3198031334654343832)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198104249709343884)
,p_name=>'dy_populate_current_emprecord'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198104765854343885)
,p_event_id=>wwv_flow_imp.id(3198104249709343884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_OLD_ORGANISATION,P700_OLD_POSTION_ID,P700_OLD_FROM_DATE,P700_OLD_WKLOCATION,P700_OLD_ORG_STRUCTURE,P700_OLD_JOB_NAME,P700_OLD_JOB_CLASS,P700_OLD_EMPLOYMENT_CLASS,P700_OLD_PERSONAL_RATE,P700_OLD_HOURLY_RATE,P700_OLD_DAILY_RATE,P700_OLD_REPORT_TO_'
||'ADMIN,P700_OLD_REPORT_TO_FUNC,P700_OLD_PAYROLL_EFFECTIVE,P700_OLD_APPROVED_BY,P700_OLD_APPROVED_DATE,P700_OLD_EMPLOYEE,P700_OLD_REMARKS,P700_OLD_EMP_COMPANY_NO,P700_OLD_PAYMENT_TYPE,P700_OLD_UNION_CODE_ID,P700_OLD_UNION_JOIN_DATE,P700_OLD_EMPLOYMENT_'
||'STATUS,P700_INDIVIDUAL, P700_OLD_LEAVE_ANN_DATE,P700_OLD_ORG_STRUCTURE_ID,P700_OLD_COMPUTE_GROSS,P700_OLD_SHIFT_ID,P700_OLD_JOB_ID,P700_OLD_POSITION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'    org.organisation_name,',
'    emp.position_name,',
'    emp.appointment_date,',
'    wk.location_description,',
'    emp.org_structure,',
'    njob.description,',
'    njob.job_classification,',
'    emp.employment_class,',
'    PKG_GLOBAL_FNTS.FN_PERSONALRATE(emp.id, current_date),',
'    Pkg_Global_Fnts.Fn_Hourlyrate(EMP.id, current_date ),',
'    Pkg_Global_Fnts.Fn_Daily(EMP.id, current_date, null),',
'    emp.report_to,',
'    emp.report_to_functional,',
'    emp.payroll_effective,',
'    emp.verified_by,',
'    emp.verified_date,',
'    initcap(ind.Surname || '', '' || nvl(ind.First_Name, '' '')) ||'' ''||nvl(ind.Middle_Name,'' '') ||''(No.:''||emp.EMP_COMPANY_NO||'')'' "Old Employee",',
'    emp.remarks,',
'    emp.emp_company_no,',
'    emp.payment_type  "old payment type",',
'    emp.union_code_id,',
'    emp.union_join_date,',
'    emp.employment_status,',
'    ind.ID, LEAVE_ANN_DATE,',
'    emp.orgdtl_id, compute_gross, shift_id,',
'    njob.id JOB_ID,',
'    emp.position_id',
'  FROM',
'    hr_rcm_employee emp',
'    join hr_rcm_individual ind',
'    on ind.id = emp.ind_id',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job njob',
'    on pos.job_id = njob.id',
'    join hr_hcf_organisation org',
'    on org.id = emp.org_id',
'    join hr_hcf_worklocation wk',
'    on wk.id = emp.wklocation_id',
'where ',
'    emp.id =nvl(:P700_EMPLOYEE,0)',
'    '))
,p_attribute_07=>'P700_EMPLOYEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198105258950343885)
,p_event_id=>wwv_flow_imp.id(3198104249709343884)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_OLD_GRADE,P700_OLD_GRADE_POINT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ',
'    grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE,',
'    ''Point ''||s.grade_point||'': ''||trim(to_char(s.PERSONAL_RATE,''$999,999,999,999''))',
'    FROM',
'    hr_rcm_employee emp ',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job j',
'    on pos.job_id = j.id',
'    join hr_hcf_positiongrade pg',
'    on pg.id = j.job_grade_id',
'    join (select * from hr_rcm_salary where end_date is null) s on s.emp_id = emp.id',
'where ',
'    emp.id = nvl(:P700_EMPLOYEE,0)'))
,p_attribute_07=>'P700_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198105761792343885)
,p_event_id=>wwv_flow_imp.id(3198104249709343884)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_OLD_EMPLOYMENT_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT emp.employment_type_id',
' FROM hr_rcm_employee emp',
' WHERE emp.id =nvl(:P700_EMPLOYEE,0)'))
,p_attribute_07=>'P700_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198106267611343886)
,p_event_id=>wwv_flow_imp.id(3198104249709343884)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P700_OLD_EMPLOYMENT_TYPE)'
,p_attribute_07=>'P700_OLD_EMPLOYMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198106662726343886)
,p_name=>'dy_populate_current_emprecord_new'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198107204910343886)
,p_event_id=>wwv_flow_imp.id(3198106662726343886)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_ORG_STRUCTURE,P700_POSITION_ID,P700_WKLOCATION_ID,P700_JOB_NAME,P700_JOB_CLASS,P700_PERSONAL_RATE,P700_HOURLY_RATE,P700_DAILY_RATE,P700_SHIFT_ID,P700_REPORT_TO_ADMIN,P700_REPORT_TO_FUNC,P700_PAYROLL_EFFECTIVE,P700_LEAVE_ANN_DATE,P700_UNION_CODE_'
||'ID,P700_UNION_JOIN_DATE,P700_PAYMENT_TYPE,P700_EMPLOYMENT_STATUS_ID,P700_INDIVIDUAL,P700_COMPUTE_GROSS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'    emp.ORGDTL_ID,',
'    emp.position_id,',
'    emp.wklocation_id,',
'    njob.id job_id,',
'    njob.job_classification,',
'    PKG_GLOBAL_FNTS.FN_PERSONALRATE(emp.id, current_date),',
'    Pkg_Global_Fnts.Fn_Hourlyrate(EMP.id, current_date ),',
'    Pkg_Global_Fnts.Fn_Daily(EMP.id, current_date, null ),',
'    shift_id,',
'    emp.REPORT_TO,',
'    emp.REPORT_TO_FUNCTIONAL, ',
'    emp.payroll_effective,',
'    emp.LEAVE_ANN_DATE,',
'    emp.union_code_id,',
'    emp.union_join_date,',
'    emp.payment_type ,',
'    emp.employment_status_id,',
'    ind.ID ind_id, ',
'    compute_gross',
'  FROM',
'    hr_rcm_employee emp',
'    join hr_rcm_individual ind',
'    on ind.id = emp.ind_id',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job njob',
'    on pos.job_id = njob.id',
'    join hr_hcf_organisation org',
'    on org.id = emp.org_id',
'    join hr_hcf_worklocation wk',
'    on wk.id = emp.wklocation_id',
'where ',
'    emp.id =nvl(:P700_EMPLOYEE,0)'))
,p_attribute_07=>'P700_EMPLOYEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198107707667343887)
,p_event_id=>wwv_flow_imp.id(3198106662726343886)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_GRADE_POINT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ',
'   pg.id',
'    FROM',
'    hr_rcm_employee emp ',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job j',
'    on pos.job_id = j.id',
'    join hr_hcf_positiongrade pg',
'    on pg.id = j.job_grade_id',
'    join (select * from hr_rcm_salary where end_date is null) s on s.emp_id = emp.id',
'where ',
'    emp.id = nvl(:P698_EMPLOYEE,0)'))
,p_attribute_07=>'P700_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198108072528343887)
,p_name=>'dy_hide_wkflow_comment'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_WORKFLOW_ADD'
,p_condition_element=>'P700_WORKFLOW_ADD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198108534877343887)
,p_event_id=>wwv_flow_imp.id(3198108072528343887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_WORKFLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198109026769343887)
,p_event_id=>wwv_flow_imp.id(3198108072528343887)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_WORKFLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198109462063343888)
,p_name=>'dy_new_employee'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_INDIVIDUAL'
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198109956489343888)
,p_event_id=>wwv_flow_imp.id(3198109462063343888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMP_COMPANY_NO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198110443584343888)
,p_event_id=>wwv_flow_imp.id(3198109462063343888)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMP_COMPANY_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P700_OLD_EMP_COMPANY_NO is null then ',
'         return :P700_EMP_COMPANY_NO;',
'else',
'         return :P700_OLD_EMP_COMPANY_NO;',
'end if;         '))
,p_attribute_07=>'P700_OLD_EMP_COMPANY_NO,P700_EMP_COMPANY_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198110914440343889)
,p_name=>'dy_acting_for'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_MOVEMENT_TYPE'
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'2,17'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198111370814343889)
,p_event_id=>wwv_flow_imp.id(3198110914440343889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_ACTING_FOR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198111844908343889)
,p_event_id=>wwv_flow_imp.id(3198110914440343889)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_ACTING_FOR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198112279905343889)
,p_name=>'show_hide_IND'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_MOVEMENT_TYPE'
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198112737657343890)
,p_event_id=>wwv_flow_imp.id(3198112279905343889)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198113275130343890)
,p_event_id=>wwv_flow_imp.id(3198112279905343889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_INDIVIDUAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198113735307343890)
,p_event_id=>wwv_flow_imp.id(3198112279905343889)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198114252562343890)
,p_event_id=>wwv_flow_imp.id(3198112279905343889)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_INDIVIDUAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198114768554343891)
,p_event_id=>wwv_flow_imp.id(3198112279905343889)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198115199883343891)
,p_name=>'en_dis_employee'
,p_event_sequence=>70
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198115702533343891)
,p_event_id=>wwv_flow_imp.id(3198115199883343891)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198116158065343891)
,p_event_id=>wwv_flow_imp.id(3198115199883343891)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198116611659343892)
,p_name=>'dy_setSalary'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_GRADE_POINT'
,p_condition_element=>'P700_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'```',
'<b> turned off because acting doesnt need to fire salary on grade point </b>',
'```'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198117053218343892)
,p_event_id=>wwv_flow_imp.id(3198116611659343892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_PERSONAL_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT POINT_AMOUNT',
'FROM HR_HCF_POSITIONGRADEPOINT P',
'WHERE P.POSITION_GRADE_ID = :P700_GRADE',
'AND P.POINT = :P700_GRADE_POINT',
'and p.end_date is null'))
,p_attribute_07=>'P700_GRADE,P700_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198117433335343892)
,p_name=>'dy_compute_hourly_rate'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_PERSONAL_RATE'
,p_condition_element=>'P700_PERSONAL_RATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198117938806343892)
,p_event_id=>wwv_flow_imp.id(3198117433335343892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_HOURLY_RATE,P700_DAILY_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(case when :P700_PAYMENT_TYPE= ''MONTHLY'' and UPPER(:P700_JOB_CLASS) =''TECHNICAL'' then REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (12 / 2080)',
'            when :P700_PAYMENT_TYPE= ''MONTHLY'' and UPPER(:P700_JOB_CLASS) !=''TECHNICAL'' then REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (12 / 1898)   ',
'            when :P700_PAYMENT_TYPE= ''FORTNIGHTLY'' and UPPER(:P700_JOB_CLASS) =''TECHNICAL'' then REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (26 / 2080)',
'            when :P700_PAYMENT_TYPE= ''FORTNIGHTLY'' and UPPER(:P700_JOB_CLASS) !=''TECHNICAL'' then REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (26 / 1898)  ',
'            when :P700_PAYMENT_TYPE= ''WEEKLY'' and UPPER(:P700_JOB_CLASS) =''TECHNICAL'' then REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (52 / 2080) ',
'        ELSE',
'              REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''') * (52 / 1898) ',
'        end, 2 ) a,',
'        round(REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''')/(select num_working_days from Hr_Att_Shift_Rota where id =:P700_SHIFT_ID),2) b',
'from dual',
'',
'--select round((((REPLACE(REPLACE(:P700_PERSONAL_RATE,''$'',''''),'','','''')/4)/7)/8),2) hourly_rate ',
'--from dual;'))
,p_attribute_07=>'P700_PAYMENT_TYPE,P700_JOB_CLASS,P700_PERSONAL_RATE,P700_SHIFT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198118377125343893)
,p_name=>'show_hide_Hiredate2'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_SHOW_HIDE_HIRE'
,p_condition_element=>'P700_SHOW_HIDE_HIRE'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198118892455343893)
,p_event_id=>wwv_flow_imp.id(3198118377125343893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198119342372343893)
,p_event_id=>wwv_flow_imp.id(3198118377125343893)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198119772451343893)
,p_name=>'dy_set_grade_point_id'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_GRADE_POINT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198120265152343894)
,p_event_id=>wwv_flow_imp.id(3198119772451343893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_GRADE_POINT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id',
'from hr_hcf_positiongradepoint a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id = :P700_GRADE',
'and a.point = :P700_GRADE_POINT',
'and a.end_date is null',
'--Grace Code',
'/*select point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P700_GRADE',
'AND id = :P700_GRADE_POINT_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount*/'))
,p_attribute_07=>'P700_GRADE,P700_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198120692014343894)
,p_name=>'dy_set_change_type'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_MOVEMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198121124743343894)
,p_event_id=>wwv_flow_imp.id(3198120692014343894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_CHANGE_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select  UPPER(VALUE_DESCRIPTION) B',
'from table(pkg_global_fnts.get_lookup_value(''TBLMOVEMENT''))',
'WHERE org_id=:APP_ORG_ID',
'and id = :P700_MOVEMENT_TYPE',
'ORDER BY 1*/',
'',
'select UPPER(VALUE_DESCRIPTION) B',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and id=:P700_MOVEMENT_TYPE',
''))
,p_attribute_07=>'P700_MOVEMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198121555947343894)
,p_name=>'dy_set_change_type_id'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_MOVEMENT_TYPE'
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198122022410343895)
,p_event_id=>wwv_flow_imp.id(3198121555947343894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_CHANGE_TYPE_SUB_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select  ID A',
'from table(pkg_global_fnts.get_lookup_value(''TBLMOVEMENT''))',
'WHERE org_id=:APP_ORG_ID',
'and id = :P700_MOVEMENT_TYPE',
'ORDER BY 1*/',
'',
'select id a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and id=:P700_MOVEMENT_TYPE'))
,p_attribute_07=>'P700_MOVEMENT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198122519631343895)
,p_event_id=>wwv_flow_imp.id(3198121555947343894)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_MOVEMENT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select  ID A',
'from table(pkg_global_fnts.get_lookup_value(''TBLMOVEMENT'')) X',
'WHERE org_id=:APP_ORG_ID',
'and id = :P700_MOVEMENT_TYPE',
'ORDER BY 1*/',
'',
'select id a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and id=:P700_MOVEMENT_TYPE'))
,p_attribute_07=>'P700_MOVEMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198122950981343895)
,p_name=>'dy_set_change_type_sub'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_HIRETYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198123484491343895)
,p_event_id=>wwv_flow_imp.id(3198122950981343895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_CHANGE_TYPE_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT value_description a',
'FROM TABLE ( pkg_global_fnts.get_lookup_value(''TBLMOVEMENTTYPE'') ) A',
'WHERE LOOKUP_ID=:P700_MOVEMENT_TYPE',
'and id = :P700_HIRETYPE*/',
'select VALUE_DESCRIPTION a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and LOOKUP_ID=:P700_MOVEMENT_TYPE',
'and id = :P700_HIRETYPE'))
,p_attribute_07=>'P700_MOVEMENT_TYPE,P700_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198123896231343896)
,p_name=>'dy_Newly_set_change_type_sub_id'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_HIRETYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198124395285343896)
,p_event_id=>wwv_flow_imp.id(3198123896231343896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_CHANGE_TYPE_SUB_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT ID a',
'FROM TABLE ( pkg_global_fnts.get_lookup_value(''TBLMOVEMENTTYPE'') ) A',
'WHERE LOOKUP_ID=:P700_MOVEMENT_TYPE',
'and id = :P700_HIRETYPE*/',
'',
'',
'select id a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
'and LOOKUP_ID=:P700_MOVEMENT_TYPE',
'and id = :P700_HIRETYPE'))
,p_attribute_07=>'P700_MOVEMENT_TYPE,P700_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198124774167343896)
,p_name=>'dy_set_payment_type_id'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_PAYMENT_TYPE'
,p_condition_element=>'P700_PAYMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198125253061343896)
,p_event_id=>wwv_flow_imp.id(3198124774167343896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_PAYMENT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM TABLE(pkg_global_fnts.get_lookup_value(''TBLPAYMENTTYPE''))',
'WHERE UPPER(VALUE_DESCRIPTION) = UPPER(:P700_PAYMENT_TYPE)'))
,p_attribute_07=>'P700_PAYMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198125666029343897)
,p_name=>'Set_Leave_AnnDate'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_FROM_DATE'
,p_condition_element=>'P700_FROM_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198126167243343897)
,p_event_id=>wwv_flow_imp.id(3198125666029343897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_LEAVE_ANN_DATE,P700_PAYROLL_EFFECTIVE,P700_EFFECTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_date(case when :P700_MOVEMENT_TYPE=1 then :P700_FROM_DATE else :P700_LEAVE_ANN_DATE END) A',
', to_date(case when :P700_MOVEMENT_TYPE=1 then :P700_FROM_DATE else :P700_PAYROLL_EFFECTIVE END) B ',
', to_date(case when :P700_MOVEMENT_TYPE=1 then :P700_FROM_DATE else :P700_EFFECTIVE_DATE end) my_value',
'FROM DUAL',
'where :P700_MOVEMENT_TYPE =1 ',
'union',
' SELECT  to_date(nvl(:P700_LEAVE_ANN_DATE, :P700_FROM_DATE)) a ',
' , nvl(to_date(:P700_PAYROLL_EFFECTIVE), PAYROLL_EFFECTIVE) B',
' , nvl(to_date(:P700_FROM_DATE), to_date(:P700_EFFECTIVE_DATE)) my_value',
' FROM hr_rcm_employee emp',
' WHERE emp.id = nvl(:P700_EMPLOYEE,0)',
' and  :P700_MOVEMENT_TYPE !=1 '))
,p_attribute_07=>'P700_MOVEMENT_TYPE,P700_FROM_DATE,P700_LEAVE_ANN_DATE,P700_PAYROLL_EFFECTIVE,P700_EFFECTIVE_DATE,P700_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198126593010343897)
,p_name=>'setOldToDate'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_TO_DATE_QUERY'
,p_condition_element=>'P700_TO_DATE_QUERY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198127061872343897)
,p_event_id=>wwv_flow_imp.id(3198126593010343897)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_OLD_TO_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198127599851343898)
,p_event_id=>wwv_flow_imp.id(3198126593010343897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_OLD_TO_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P700_FROM_DATE'
,p_attribute_07=>'P700_FROM_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198127980051343898)
,p_name=>'dySetEmpType'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_HIRETYPE'
,p_condition_element=>'P700_HIRETYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>'not necessary for this screen'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198128497898343898)
,p_event_id=>wwv_flow_imp.id(3198127980051343898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if pkg_global_fnts.get_lookup_col(:P700_HIRETYPE,''TABLE_VALUE'') = ''NEWRH'' then ',
'       :P700_EMPLOYMENT_TYPE_ID := 1;',
'elsif pkg_global_fnts.get_lookup_col(:P700_HIRETYPE,''TABLE_VALUE'') = ''NEWPN'' then ',
'        :P700_EMPLOYMENT_TYPE_ID := 3;',
'elsif pkg_global_fnts.get_lookup_col(:P700_HIRETYPE,''TABLE_VALUE'') = ''NEWRT'' then ',
'        :P700_EMPLOYMENT_TYPE_ID := 0;',
' else :P700_EMPLOYMENT_TYPE_ID := 2;',
'    end if;',
'     return :P700_EMPLOYMENT_TYPE_ID;',
'    end;',
'    ',
'        '))
,p_attribute_07=>'P700_OLD_EMPLOYMENT_TYPE,P700_EMPLOYMENT_TYPE_ID,P700_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198128908109343898)
,p_name=>'dyDisable'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_MOVEMENT_TYPE'
,p_condition_element=>'P700_MOVEMENT_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198129327523343899)
,p_event_id=>wwv_flow_imp.id(3198128908109343898)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198129769205343899)
,p_event_id=>wwv_flow_imp.id(3198128908109343898)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198130151455343899)
,p_name=>'gen_emp_number'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_INDIVIDUAL'
,p_condition_element=>'P700_EMP_COMPANY_NO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198130646057343900)
,p_event_id=>wwv_flow_imp.id(3198130151455343899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_R NUMBER:=0;',
'  V_unique boolean:= false;',
'  v_count number := 0;',
'  v_NUMBER_PREFIX varchar2(50); v_empcount pls_integer:=0;',
'  ',
'BEGIN',
'',
' IF :P700_EMP_COMPANY_NO = 0 AND :P700_MOVEMENT_TYPE = 1 AND pkg_global_fnts.get_lookup_col(:P700_HIRETYPE,''TABLE_VALUE'') in (''NEWRH'',''NEWRT'') AND  :P700_INDIVIDUAL IS NOT NULL THEN',
'  ',
'          select count(1) into v_empcount',
'           from hr_rcm_employee',
'           where ind_id = :P700_INDIVIDUAL;',
'   ',
'  if v_empcount > 0 then --reuse the existing employee number for new employment stints',
'  ',
'           begin',
'',
'            select   EMP_COMPANY_NO into  :P700_EMP_COMPANY_NO',
'            from hr_rcm_employee',
'            where ind_id = :P700_INDIVIDUAL',
'            and rownum=1;',
'',
'           exception',
'               when others then null;',
'                 :P700_EMP_COMPANY_NO := 0;',
'           end;',
'           ',
'   ',
'  else',
'',
'           V_R:=pkg_global_fnts.get_system_no(''EMP_COMPANY_NO'');',
'',
'         begin',
'',
'           select NUMBER_PREFIX into v_NUMBER_PREFIX',
'           from HR_SYS_NUMBER',
'           WHERE ORG_ID =:APP_ORG_ID',
'           AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'',
'           select count(1) into v_count',
'           from hr_rcm_individual',
'           where id = :P700_INDIVIDUAL;',
'',
'         exception',
'             when no_data_found then',
'              IF pkg_global_fnts.Get_Lookup_Col(:P700_EMPLOYMENT_CLASS, ''VALUE_DESCRIPTION'')=''PENSIONER'' THEN ',
'                 V_NUMBER_PREFIX := ''PEN'';',
'              else',
'                 V_NUMBER_PREFIX := null;',
'              end if;',
'         end; ',
'',
'',
'          while (v_unique = false)',
'            loop',
'',
'               V_R :=V_R + 1;',
'',
'            if v_NUMBER_PREFIX is null then ',
'',
'                select count(1) into v_count from hr_rcm_employee where emp_company_no =  to_char(V_R) and org_id=:APP_ORG_ID;',
'            else',
'                 select count(1) into v_count from hr_rcm_employee where emp_company_no = v_NUMBER_PREFIX||TO_CHAR(V_R) and org_id=:APP_ORG_ID;',
'            end if;',
'',
'            if v_count = 0 then',
'',
'                v_unique := true;',
'',
'                exit;',
'',
'            end if;',
'',
'            end loop;',
'',
'           if v_NUMBER_PREFIX is null then ',
'',
'             :P700_EMP_COMPANY_NO := V_R;',
'           else',
'             :P700_EMP_COMPANY_NO := v_NUMBER_PREFIX||TO_CHAR(V_R);',
'',
'           end if;',
'',
'           UPDATE HR_SYS_NUMBER',
'           SET NUMBER_VALUE = V_R',
'           WHERE ORG_ID =:APP_ORG_ID',
'           AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'',
'     END IF; ',
'  elsif   :P700_EMP_COMPANY_NO = 0 AND :P700_MOVEMENT_TYPE = 1 AND pkg_global_fnts.get_lookup_col(:P700_HIRETYPE,''TABLE_VALUE'') in (''NEWPN'') AND  :P700_INDIVIDUAL IS NOT NULL THEN',
'     ',
'        select count(1) into v_empcount',
'           from hr_rcm_employee',
'           where ind_id = :P700_INDIVIDUAL;',
'   ',
'  if v_empcount > 0 then --reuse the existing employee number for new employment stints and add PEN',
'  ',
'           begin',
'',
'            select   ''PEN'' || EMP_COMPANY_NO into  :P700_EMP_COMPANY_NO',
'            from hr_rcm_employee',
'            where ind_id = :P700_INDIVIDUAL',
'            and rownum=1;',
'',
'           exception',
'               when others then null;',
'                 :P700_EMP_COMPANY_NO := 0;',
'           end;',
'     end if;',
'end if;',
'',
' exception    ',
'     when others then null;',
'     end;'))
,p_attribute_02=>'P700_EMP_COMPANY_NO,P700_MOVEMENT_TYPE ,P700_INDIVIDUAL,P700_EMPLOYMENT_CLASS,P700_HIRETYPE'
,p_attribute_03=>'P700_EMP_COMPANY_NO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198131049820343900)
,p_name=>'set_execute_date'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_STATUS'
,p_condition_element=>'P700_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1702'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198131574840343900)
,p_event_id=>wwv_flow_imp.id(3198131049820343900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_EXECUTED_ON'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when to_date(:P700_EXECUTED_ON)  is null and  pkg_global_fnts.status_descript(:P700_STATUS) = ''VERIFY''    then to_date(current_date)',
'            else to_date(:P700_EXECUTED_ON) end ex_value',
'from dual'))
,p_attribute_07=>'P700_EXECUTED_ON,P700_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198131929816343900)
,p_name=>'hide_show_hiretype'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_HIRETYPE'
,p_condition_element=>'P700_HIRETYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198132427897343900)
,p_event_id=>wwv_flow_imp.id(3198131929816343900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198132950291343901)
,p_event_id=>wwv_flow_imp.id(3198131929816343900)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198133346507343901)
,p_name=>'show_spacer'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_ACTING_FOR'
,p_condition_element=>'P700_ACTING_FOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198133841919343901)
,p_event_id=>wwv_flow_imp.id(3198133346507343901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_SPACER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198134351660343902)
,p_event_id=>wwv_flow_imp.id(3198133346507343901)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P700_SPACER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3198134724592343902)
,p_name=>'compute_percent_basic'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P700_GRADE_POINT'
,p_condition_element=>'P700_CHANGE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RESPONSIBILITY'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3198135318626343902)
,p_event_id=>wwv_flow_imp.id(3198134724592343902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_percent number(6,3);',
'begin',
'    select percent_of_basic into v_percent',
'    from pa_pcf_incomecode',
'    where org_id = :APP_ORG_SHR_DED',
'    and income_code = ''RESPALLW''',
'    and (end_date is null or end_date >=current_date);                 ',
'    :P700_PERSONAL_RATE := pkg_global_fnts.fn_personalrate(:P700_EMPLOYEE,TRUNC(current_date)) *(v_percent/100);           ',
'end;'))
,p_attribute_02=>'P700_PERSONAL_RATE,P700_EMPLOYEE'
,p_attribute_03=>'P700_PERSONAL_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232281760182679547)
,p_name=>'set_nis_tax'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3233312757778114120)
,p_triggering_element=>'INCOME_CODE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232281428675679546)
,p_event_id=>wwv_flow_imp.id(3232281760182679547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,QUICK_ENTRY,PENSIONABLE,INCOME_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,CASE WHEN ADMIN_STATUS = ''MAN'' THEN 1 ELSE 0 END QUICK_ENTRY,PENSIONABLE,INCOME_TYPE',
'from PA_PCF_INCOMECODe',
'where id=:INCOME_CODE_ID'))
,p_attribute_07=>'INCOME_CODE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232280969670674114)
,p_name=>'dy_set deduction_type'
,p_event_sequence=>270
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3305539161856941390)
,p_triggering_element=>'EXPENSE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EXPENSE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232280575702674114)
,p_event_id=>wwv_flow_imp.id(3232280969670674114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WHO_PAYS ',
'FROM PA_PCF_DEDUCTIONCODE',
'WHERE ID = :EXPENSE_ID'))
,p_attribute_07=>'EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232279414340667675)
,p_name=>'set_computation_amount'
,p_event_sequence=>290
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3305539161856941390)
,p_triggering_element=>'PERIOD,AMOUNT_OWING'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERIOD'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232278937403667675)
,p_event_id=>wwv_flow_imp.id(3232279414340667675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :EXPENSE_ID=11878 then to_number(replace(:AMOUNT_OWING,'','',''''))',
'            else to_number(replace(:AMOUNT_OWING,'','','''') / :PERIOD) end a',
'from dual',
''))
,p_attribute_07=>'AMOUNT_OWING,PERIOD,EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232278605875666111)
,p_name=>'compute_deduction'
,p_event_sequence=>300
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3305539161856941390)
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
 p_id=>wwv_flow_imp.id(3232278141599666111)
,p_event_id=>wwv_flow_imp.id(3232278605875666111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return pkg_global_fnts.fn_getabsentday1(:EMP_ID',
'                        , :PERIOD',
'                        , :DATESTART',
'                        , :EXPENSE_ID',
'                        , replace(replace(:AMOUNT_OWING,''$'',''''),'','','''')                                   ',
'                        );                     ',
'                         '))
,p_attribute_07=>'EMP_ID,PERIOD,DATESTART,EXPENSE_ID,AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3232274586717621592)
,p_name=>'compute_percent_basic_entitle'
,p_event_sequence=>310
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3233312757778114120)
,p_triggering_element=>'PERCENTAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3232274219314621591)
,p_event_id=>wwv_flow_imp.id(3232274586717621592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P700_PERSONAL_RATE,''$999,999,999.00'') * (:PERCENTAGE/100)'
,p_attribute_07=>'PERCENTAGE,P700_PERSONAL_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198046190322343843)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3271492740957774982)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3082262056466030138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198103041663343883)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_attendance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_Att_count pls_integer:=0;  v_startdate date; v_enddate date;  ',
'',
'begin',
'',
'if :P700_MOVEMENT_TYPE = 1 and pkg_global_fnts.status_descript(:P700_STATUS) like ''VERIF%'' then',
'    select count(1) into v_att_count',
'    from HR_ATT_EMPCALENDAR_HD ',
'    where emp_id=:P700_ID;',
'  ',
'  if v_att_count=0 then',
'  ',
'    select  :P700_FROM_DATE,  end_date into  v_startdate, v_enddate      ',
'    from pa_pcf_earningperiod',
'    where upper(payment_type)=upper(:P700_PAYMENT_TYPE)',
'    and org_id=:P700_ORG_ID',
'    and employment_class_id=:P700_EMPLOYMENT_CLASS',
'    and :P700_FROM_DATE between start_date and end_date;',
'      ',
'     pkg_hr.genearndays(:P700_ID, 0, v_startdate, v_enddate);',
'',
'',
'  end if;',
'end if;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN NULL;',
'  ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3198023190221343817)
,p_internal_uid=>3082318907807030178
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198103446683343884)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'if pkg_global_fnts.status_descript(:P700_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_MOV_EMPMOVEMENT_NEW'',''ID'', :P700_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P700_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P700_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_MOV_EMPMOVEMENT_NEW'', ''ID'', :P700_ID);       ',
' end if;',
'',
'',
'    --begin',
'        select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'        from TBLTRANSACTIONTYPE ',
'        where TRANSACTION_TYPE_ID=:P700_TRANSACTION_TYPE_ID;',
'',
'        select WFL_STATUS_DESCRIPTION into v_description',
'        from tblworkflowstatus',
'        where WFL_STATUS_ID=:P700_STATUS;',
'',
'        Select Individual into v_Individual ',
'        From Vw_Individual ',
'',
'        where Id= (SELECT IND_ID FROM HR_RCM_EMPLOYEE WHERE decode(:P700_EMPLOYEE, null, ind_id, ID) =nvl(:P700_EMPLOYEE,:P700_INDIVIDUAL));',
'',
'   /* exception',
'      when no_data_found then null;',
'    end;*/',
'',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' of: ''||initcap(:P51_CHANGE_TYPE)||'' for ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P700_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Movement'',',
'	:P700_STATUS,:APP_PAGE_ID,:P700_TRANSACTION_TYPE_ID,',
'        ''HR_MOV_EMPMOVEMENT_NEW'',:P700_WORK_FLOW_COMMENT, :P700_ID);',
'',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3198023190221343817)
,p_internal_uid=>3082319312827030179
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198103820022343884)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      v_count number; V_no_emp number :=0;',
'      ',
'begin',
'    ',
'   select count(1) into v_count',
'   from hr_mov_empmovement_new',
'   where id = :P700_ID',
'   and EXECUTED=0 ',
'   and  VERIFIED_BY is not null',
'   and (APPROVED_BY is not null or V_no_emp=0);',
'   ',
'   ',
'   if  v_count > 0 and upper(pkg_global_fnts.status_descript(:P700_STATUS)) = ''VERIFY'' then',
'        pkg_hr.Sp_Mov_Supplemental(:P700_ID, :P700_MOVEMENT_TYPE);',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3198023190221343817)
,p_internal_uid=>3082319686166030179
,p_process_comment=>'Code has been moved to a trigger.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198102630024343883)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_transacted'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update hr_mov_empmovement_new',
'set transfer =  case ',
'                    when old_org_structure_id = org_structure then 0',
'                    when old_org_structure_id != org_structure then 1',
'                    else 0',
'                    end',
'where  org_id = :APP_ORG_ID',
'        and emp_id =:P700_EMPLOYEE',
'        and id =:P700_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3198023190221343817)
,p_internal_uid=>3082318496168030178
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3237697617374080698)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3233312757778114120)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Allowance Entitlements'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3121913483517766993
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3237697466808080697)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3233281050159108896)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Leave Entitlements'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3121913332951766992
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3237697386292080696)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3305539161856941390)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Save Deductions'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3121913252435766991
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3221247381669149905)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import Allowances From Job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if  upper(:P700_CHANGE_TYPE) = ''ACTING'' then ',
'            UPDATE_MOV_SUPPLEMENTARY_ACT(',
'              IN_FROM_DATE    => :P700_FROM_DATE,',
'              IN_TO_DATE      => :P700_TO_DATE,',
'              IN_EMP_ID       => :P700_EMPLOYEE,',
'              IN_MOV_ID       => :P700_ID,',
'              IN_NEW_POS_ID   => :P700_POSITION_ID,',
'              IN_OLD_POS_ID   => :P700_OLD_POSITION_ID,',
'              IN_NEW_JOB_ID   => :P700_JOB_NAME,',
'              IN_OLD_JOB_ID   => :P700_OLD_JOB_ID,',
'              IN_REMARK       => ''Inserted into movement on creation of '' || :P700_CHANGE_TYPE || '' movement'',',
'              IN_FLAG         => ''INSERT'',',
'              IN_PERSONAL_RATE => :P700_PERSONAL_RATE,',
'              IN_ORG_ID => :P700_ORG_ID',
'           );',
'    elsif upper(:P700_CHANGE_TYPE) = ''RESPONSIBILITY'' then  ',
'            UPDATE_MOV_SUPPLEMENTARY_RES(',
'              IN_FROM_DATE    => :P700_FROM_DATE,',
'              IN_TO_DATE      => :P700_TO_DATE,',
'              IN_EMP_ID       => :P700_EMPLOYEE,',
'              IN_MOV_ID       => :P700_ID,',
'              IN_NEW_POS_ID   => :P700_POSITION_ID,',
'              IN_OLD_POS_ID   => :P700_OLD_POSITION_ID,',
'              IN_NEW_JOB_ID   => :P700_JOB_NAME,',
'              IN_OLD_JOB_ID   => :P700_OLD_JOB_ID,',
'              IN_REMARK       => ''Inserted into movement on creation of '' || :P700_CHANGE_TYPE || '' movement'',',
'              IN_FLAG         => ''INSERT'',',
'              IN_PERSONAL_RATE => :P700_PERSONAL_RATE,',
'              IN_ORG_ID => :P700_ORG_ID',
'           );',
'    elsif upper(:P700_CHANGE_TYPE) = ''SECONDMENT'' then  ',
'        UPDATE_MOV_SUPPLEMENTARY_SECND(',
'          IN_FROM_DATE    => :P700_FROM_DATE,',
'          IN_TO_DATE      => :P700_TO_DATE,',
'          IN_EMP_ID       => :P700_EMPLOYEE,',
'          IN_MOV_ID       => :P700_ID,',
'          IN_NEW_POS_ID   => :P700_POSITION_ID,',
'          IN_OLD_POS_ID   => :P700_OLD_POSITION_ID,',
'          IN_NEW_JOB_ID   => :P700_JOB_NAME,',
'          IN_OLD_JOB_ID   => :P700_OLD_JOB_ID,',
'          IN_REMARK       => ''Inserted into movement on creation of '' || :P700_CHANGE_TYPE || '' movement'',',
'          IN_FLAG         => ''INSERT'',',
'          IN_PERSONAL_RATE => :P700_PERSONAL_RATE,',
'          IN_ORG_ID => :P700_ORG_ID ',
'       );',
'       ',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Allowance failed to import. Kindly check the allowances entitlement for the current job selected. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3221247174866149903)
,p_process_success_message=>'Allowances successfully imported!'
,p_internal_uid=>3105463247812836200
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3221247463562149906)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import Leave Entitlement From Job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'            UPDATE_MOV_EMPLEAVEENTITLE(',
'              IN_FROM_DATE    => :P700_FROM_DATE,',
'              IN_TO_DATE      => :P700_TO_DATE,',
'              IN_EMP_ID       => :P700_EMPLOYEE,',
'              IN_MOV_ID       => :P700_ID,',
'              IN_NEW_POS_ID   => :P700_POSITION_ID,',
'              IN_OLD_POS_ID   => :P700_OLD_POSITION_ID,',
'              IN_NEW_JOB_ID   => :P700_JOB_NAME,',
'              IN_OLD_JOB_ID   => :P700_OLD_JOB_ID,',
'              IN_EMPLOYMENT_TYPE_ID => :P700_EMPLOYMENT_TYPE_ID,',
'              IN_REMARK       => ''Inserted into movement on creation of '' || :P700_CHANGE_TYPE || '' movement'',',
'              IN_FLAG         => ''UPDATE''',
'           );  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Leave entitlement failed to import. Kindly check the leave entitlement for the current job selected. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3221247298321149904)
,p_process_success_message=>'Leave entitlement successfully imported!'
,p_internal_uid=>3105463329705836201
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198045729471343843)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3271492740957774982)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
,p_internal_uid=>3082261595615030138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3198102226812343883)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEmpPhoto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_css varchar2(32767);',
'begin',
'',
'   l_css := ''.empphoto { '' ||',
'            ''   background-position-x: center;''||',
'            ''   background-position-y: center;'' ||',
'            ''   background-image: url('''''' || APEX_UTIL.GET_BLOB_FILE_SRC(''P1261_IND_PHOTO'',:P700_INDIVIDUAL) || ''''''); '' ||',
'            ''   width: 100%; '' ||',
'            ''   height: 200px; '' ||',
'            ''   background-size: cover; '' ||',
'            ''   background-repeat:no-repeat;''||',
'            ''   overflow:none;'' ||',
'            ''   margin: 0 auto;''||',
'            ''   display: flex;''||',
'            ''   align-content: space-around;''||',
'            ''   border-radius: 50%;''||',
'            ''} '';',
'   ',
'   apex_css.add( p_css => l_css );',
'end;',
'',
'',
'   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3082318092956030178
);
wwv_flow_imp.component_end;
end;
/
