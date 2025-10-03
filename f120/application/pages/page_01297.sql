prompt --application/pages/page_01297
begin
--   Manifest
--     PAGE: 01297
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1297
,p_name=>'frmAdminDeductions'
,p_step_title=>'Create/Edit Employee Deductions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435567116494081434)
,p_plug_name=>'Deduction Quick Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>19
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.ID as ID,',
'  x.EMP_ID as EMP_ID,',
' x.EXPENSE_ID as EXPENSE_ID,',
'    x.DATESTART as DATESTART,',
'    x.DEDUCTION_AMOUNT as DEDUCTION_AMOUNT,',
'x.DEDUCTION_NO as DEDUCTION_NO ',
' from PA_PCF_ADMINDEDUCTION x join hr_rcm_employee v on v.id=x.emp_id',
'WHERE X.EMP_ID =:P1297_SEARCH',
'AND exists (select 1',
'             FROM VW_USERACCESS A',
'             where v.org_id=a.org_id',
'             and v.employment_class_id=a.employment_class_id',
'             AND upper(v.PAYMENT_TYPE)=A.PAYMENT_TYPE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1297_SEARCH'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'(:P1297_POST_EARN =0 AND :P1297_ID IS NOT NULL ) OR (:P1297_POST_EARN =0 AND :P1297_LOAD IS NOT NULL)'
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
 p_id=>wwv_flow_imp.id(3435567015991081434)
,p_name=>'Deduction Quick Search'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>217272150155906135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602222698630472464)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602222341824472462)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602221895725472461)
,p_db_column_name=>'ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602221495464472461)
,p_db_column_name=>'DATESTART'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602221133799472461)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3602220721742472461)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3435566315109081089)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'506188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID:DEDUCTION_NO:EXPENSE_ID:EMP_ID:DATESTART:DEDUCTION_AMOUNT:'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(3602220008357472455)
,p_report_id=>wwv_flow_imp.id(3435566315109081089)
,p_group_by_columns=>'EMP_ID'
,p_function_01=>'SUM'
,p_function_column_01=>'DEDUCTION_AMOUNT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3435641611044587390)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>119
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  payroll_last_change_by,',
'  payroll_last_change_date,',
'  apex_util.get_since(last_changed_date) updated',
'from  PA_PCF_ADMINDEDUCTION',
'where  id = :P1297_ID'))
,p_display_when_condition=>':P1297_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1297_ID'
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
 p_id=>wwv_flow_imp.id(475509009917215976)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509114602215977)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509232793215978)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509344308215979)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509487972215980)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509530787215981)
,p_query_column_id=>6
,p_column_alias=>'PAYROLL_LAST_CHANGE_BY'
,p_column_display_sequence=>60
,p_column_heading=>'Payroll Last Change By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509656983215982)
,p_query_column_id=>7
,p_column_alias=>'PAYROLL_LAST_CHANGE_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Payroll Last Change Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(475509782466215983)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>80
,p_column_heading=>'Updated'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435727225339268682)
,p_plug_name=>'Create/Edit Non-Statutory Deduction'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>59
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435627209078444859)
,p_plug_name=>' '
,p_region_name=>'second'
,p_parent_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--danger'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>79
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_imp.id(3435628015574465679)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--danger'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>69
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
 p_id=>wwv_flow_imp.id(3602739519734778320)
,p_plug_name=>'Workflow Notes'
,p_parent_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>89
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3452721180983040921)
,p_plug_name=>'Payroll Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>89
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PMG_PAYROLLDEDUCTION.ID as ID, REDUCE_TAX_NIS_TOTAL,',
'    PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO as PAY_SLIPNO,',
'    PA_PMG_PAYROLLDEDUCTION.DEDUCTION_NO as DEDUCTION_NO,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED as AMOUNT_DEDUCTED,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED_YTD as AMOUNT_DEDUCTED_YTD, ',
'    PA_PMG_PAYROLLDEDUCTION.EXPENSE_CODE as EXPENSE_CODE, c.description,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED_TOTAL,',
'    earnings_period_id,',
'    w.payment_type, w.start_date, w.end_date, x.EMPLOYMENT_CLASS_HIST,COMPUTE_GROSS_HIST, PA_PMG_PAYROLLDEDUCTION.deduction_type',
' from PA_PMG_PAYROLLDEDUCTION PA_PMG_PAYROLLDEDUCTION join PA_PCF_ADMINDEDUCTION b on PA_PMG_PAYROLLDEDUCTION.ADM_DEDUCTION_ID = b.id',
' join PA_PCF_DEDUCTIONCODE c on c.id = b.expense_id',
' join pa_pmg_payrolldtl x on x.id = PA_PMG_PAYROLLDEDUCTION.pay_slipno',
' join pa_pcf_earningperiod w on w.id = x.earnings_period_id',
'WHERE PA_PMG_PAYROLLDEDUCTION.ADM_DEDUCTION_ID=:P1297_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1297_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1297_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Payroll Deductions'
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
 p_id=>wwv_flow_imp.id(3567291075256533234)
,p_name=>'AMOUNT_DEDUCTED_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_DEDUCTED_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Grand Deducted Total'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3630805337538880855)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3632864860498024933)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3632864991377024934)
,p_name=>'COMPUTE_GROSS_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_GROSS_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compute Gross'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3632865043789024935)
,p_name=>'EMPLOYMENT_CLASS_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3632865156315024936)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
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
 p_id=>wwv_flow_imp.id(3632865298389024937)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3632865384587024938)
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
 p_id=>wwv_flow_imp.id(3632865411411024939)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Earnings Period Id'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3632865584007024940)
,p_name=>'EXPENSE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Expense Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(3632865692779024941)
,p_name=>'AMOUNT_DEDUCTED_YTD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_DEDUCTED_YTD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Deducted Ytd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3632865710235024942)
,p_name=>'AMOUNT_DEDUCTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_DEDUCTED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Deducted'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3632865860448024943)
,p_name=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3632865973669024944)
,p_name=>'PAY_SLIPNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_SLIPNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Pay Slipno'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.:1356:P1356_ID:&PAY_SLIPNO.'
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
 p_id=>wwv_flow_imp.id(3632866049089024945)
,p_name=>'REDUCE_TAX_NIS_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REDUCE_TAX_NIS_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reduce TAX/NIS'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632356345784240867)
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
 p_id=>wwv_flow_imp.id(3632866137553024946)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3632866227960024947)
,p_internal_uid=>4819475348424425
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(3568590812674908294)
,p_interactive_grid_id=>wwv_flow_imp.id(3632866227960024947)
,p_static_id=>'690949'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3568590692876908294)
,p_report_id=>wwv_flow_imp.id(3568590812674908294)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3566901286029034513)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3567291075256533234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568560328531848679)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3632864860498024933)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568572186003874183)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3632864991377024934)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568573067581874185)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3632865043789024935)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568574001750874187)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3632865156315024936)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568574850703874189)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3632865298389024937)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568575719681874192)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3632865384587024938)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568583813485908277)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3632865411411024939)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568584797472908279)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3632865584007024940)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568585692894908281)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3632865692779024941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568586539362908283)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3632865710235024942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568587468242908285)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3632865860448024943)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>126
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568588356097908288)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3632865973669024944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568589258907908290)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3632866049089024945)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3568590146394908292)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3632866137553024946)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3630225280981431731)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3630805337538880855)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3637685277227449371)
,p_view_id=>wwv_flow_imp.id(3568590692876908294)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3632865710235024942)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3485945395874047804)
,p_plug_name=>'Deductions for Current Payroll'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>39
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.ID as ID,',
'  x.EMP_ID as EMP_ID,',
' x.EXPENSE_ID as EXPENSE_ID,',
'    x.DATESTART as DATESTART,',
'    x.DEDUCTION_AMOUNT as DEDUCTION_AMOUNT,',
'x.DEDUCTION_NO as DEDUCTION_NO, x.verified_by, x.verified_date',
' from PA_PCF_ADMINDEDUCTION x join hr_rcm_employee v on v.id=x.emp_id',
'WHERE  exists (select 1',
'             FROM VW_USERACCESS A',
'             where v.org_id=a.org_id',
'             and v.employment_class_id=a.employment_class_id',
'             AND upper(v.PAYMENT_TYPE)=A.PAYMENT_TYPE)',
'and exists (select 1',
'            from pa_pcf_earningperiod x',
'            where x.org_id = v.org_id',
'            and x.employment_class_id = v.employment_class_id',
'            AND upper(x.PAYMENT_TYPE) = v.PAYMENT_TYPE',
'            and x.ID = :P1297_POST_EARN)',
'and  (UPPER(deduct_status)=''IP'' or  :P1297_START_DATE between datestart and date_close)         '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P1297_POST_EARN'
,p_plug_display_when_cond2=>'0'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3485945729336047808)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>21562127593213616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485945805900047809)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485945982367047810)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946081322047811)
,p_db_column_name=>'ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946120157047812)
,p_db_column_name=>'DATESTART'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946236952047813)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946342070047814)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946641728047817)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3485946766289047818)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3486637803546624747)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'222543'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:ID:EXPENSE_ID:DATESTART:DEDUCTION_NO:VERIFIED_BY:VERIFIED_DATE:DEDUCTION_AMOUNT:'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
,p_sum_columns_on_break=>'DEDUCTION_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3486807037535902017)
,p_report_id=>wwv_flow_imp.id(3486637803546624747)
,p_name=>'null_verified_by'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VERIFIED_BY'
,p_operator=>'is null'
,p_condition_sql=>' (case when ("VERIFIED_BY" is null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#CF04CF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3486807438578902018)
,p_report_id=>wwv_flow_imp.id(3486637803546624747)
,p_name=>'zero_ded_amt'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCTION_AMOUNT'
,p_operator=>'='
,p_expr=>'0'
,p_condition_sql=>' (case when ("DEDUCTION_AMOUNT" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#F0E800'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3486807815719902018)
,p_report_id=>wwv_flow_imp.id(3486637803546624747)
,p_name=>'Zero_Deduct_no'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCTION_NO'
,p_operator=>'='
,p_expr=>'0'
,p_condition_sql=>' (case when ("DEDUCTION_NO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''0''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#F07C71'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3505190364894103446)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3506290673825648240)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>129
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''PA_PCF_ADMINDEDUCTION''',
'and table_name_key=:P1297_ID'))
,p_display_when_condition=>'P1297_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1297_ID'
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
 p_id=>wwv_flow_imp.id(3506557724263751150)
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
 p_id=>wwv_flow_imp.id(3506558096898751151)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3506558531113751151)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3506558937044751152)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3506559280315751152)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE_OF_ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3506559722844751152)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER_NAME'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3545006113518655073)
,p_plug_name=>'Deduction Summaries for all &P1297_DED_NAME.'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>99
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    extract(year from period_start) Ded_year,',
'    min(datestart) Min_Start_date,',
'    A.DEDUCTION_NO,',
'    A.expense_code,',
'    B.description,',
'    initcap(x.deduction_type) deduction_type,',
'    max(AMOUNT_DEDUCTED) Max_Installment,',
'    sum(AMOUNT_DEDUCTED) AMOUNT_DEDUCTED_SUM  ',
'FROM pa_pmg_payrolldeduction a join pa_pcf_deductioncode b on b.expense_code = a.expense_code',
'join pa_pcf_admindeduction x on x.id = adm_deduction_id',
'join pa_pmg_payrolldtl k on k.id = a.pay_slipno',
'where a.emp_id = :P1297_EMP_ID',
'and b.org_id = :APP_ORG_ID',
'and A.expense_code =(select expense_code ',
'                     from pa_pcf_deductioncode w join pa_pcf_admindeduction y on W.id = Y.expense_id',
'                     where y.id = :P1297_ID',
'                    ) ',
'group by a.DEDUCTION_NO, extract(year from period_start), A.expense_code,  B.description, initcap(x.deduction_type)              ',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1297_ID,P1297_EMP_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1297_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deduction Summaries for all &P1297_DED_NAME.'
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
 p_id=>wwv_flow_imp.id(3541709793615321555)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3545004624670655058)
,p_name=>'DED_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DED_YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ded Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3545005394238655066)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(3545005874425655070)
,p_name=>'EXPENSE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Expense Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(3567291276472533236)
,p_name=>'MAX_INSTALLMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_INSTALLMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max Install'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3567291368745533237)
,p_name=>'MIN_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIN_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Min Start Date'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3567291565458533239)
,p_name=>'AMOUNT_DEDUCTED_SUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_DEDUCTED_SUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'YTD Sum'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3567291688065533240)
,p_name=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3545006075330655072)
,p_internal_uid=>26624917746208830
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(3544533585786859928)
,p_interactive_grid_id=>wwv_flow_imp.id(3545006075330655072)
,p_static_id=>'270975'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3544533356279859927)
,p_report_id=>wwv_flow_imp.id(3544533585786859928)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544521180612859902)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3545004624670655058)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.5
,p_sort_order=>1
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544528348017859914)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3545005394238655066)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>80
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544531937536859920)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3545005874425655070)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
,p_break_order=>3.75
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3566951301088217770)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3567291276472533236)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3566983679773303147)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3567291368745533237)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3567132028857215453)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3567291565458533239)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3567132966876215455)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3567291688065533240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3571624383560835066)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3541709793615321555)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3637682949564445805)
,p_view_id=>wwv_flow_imp.id(3544533356279859927)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3567291565458533239)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3563487997546877836)
,p_plug_name=>'Detail Audit'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>109
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    expense_id,',
'    emp_id,',
'    datestart,',
'    discipline_id,',
'    deduct_status,',
'    amount_borrowed,',
'    amount_owing,',
'    interest_type,',
'    interest_rate,',
'    period,',
'    date_close,',
'    closed_by,',
'    deduction_amount,',
'    approved_by,',
'    approved_date,',
'    deduction_no,',
'    remarks,',
'    previous_start_date,',
'    closing_earning_period,',
'    current_balance,',
'    deduction_type,',
'    hourly_rate,',
'    for_prv_ytd_entry,',
'    entered_by,',
'    entry_date,',
'    verified_by,',
'    verified_date,',
'    last_changed_by,',
'    last_changed_date,',
'    machine_insert,',
'    machine_update,',
'    transaction_type_id,',
'    status,',
'    report_to_hist,',
'    employment_class_hist,',
'    payment_type_hist,',
'    payment_mode_hist,',
'    emp_company_no_hist,',
'    confirmed_hist,',
'    permanent_staff_hist,',
'    surname_hist,',
'    first_name_hist,',
'    lot_street_hist,',
'    village_name_hist,',
'    district_name_hist,',
'    marital_name_hist,',
'    position_name_hist,',
'    location_name_hist,',
'    report_to_fnct_hist,',
'    organisation_name,',
'    org_structure,',
'    middle_name,',
'    percent_basic,',
'    migrate_pk,',
'    org_id,',
'    employment_class_id,',
'    payment_type,',
'    percent_option,',
'    company_deduction_no,',
'    pk_value,',
'    pk_table,',
'    prior_admin_deduct_id,',
'    payroll_last_change_by,',
'    payroll_last_change_date,',
'    deduct_frequency,',
'    pay_exe_status,',
'    orgdtl_id,',
'    sequence_no,',
'    compute_gross,',
'    leave_id,',
'    import_hr_human_resource,',
'    ded_category_id,',
'    ded_date_hplan_effective,',
'    import_hr_data,',
'    import_hr_data_id,',
'    interest_amount,',
'    compound_freq,',
'    entry_date_aud,',
'    entry_by_aud,',
'    pk_id,',
'    AUDIT_OPERATION',
'FROM PA_PCF_ADMINDEDUCTION_AUD',
'where id = :P1297_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1297_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1297_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detail Audit'
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
 p_id=>wwv_flow_imp.id(3563092912920393553)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>820
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(3563093100592393554)
,p_name=>'PK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pk Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>810
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
 p_id=>wwv_flow_imp.id(3563093192201393555)
,p_name=>'ENTRY_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entry By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>800
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
 p_id=>wwv_flow_imp.id(3563093232623393556)
,p_name=>'ENTRY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date Aud'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>790
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3563093340528393557)
,p_name=>'COMPOUND_FREQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPOUND_FREQ'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compound Freq'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>780
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563093498172393558)
,p_name=>'INTEREST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTEREST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Interest Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>770
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
 p_id=>wwv_flow_imp.id(3563093532457393559)
,p_name=>'IMPORT_HR_DATA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORT_HR_DATA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Import Hr Data Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>760
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
 p_id=>wwv_flow_imp.id(3563093640869393560)
,p_name=>'IMPORT_HR_DATA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORT_HR_DATA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Import Hr Data'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>750
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3563093715007393561)
,p_name=>'DED_DATE_HPLAN_EFFECTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DED_DATE_HPLAN_EFFECTIVE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Ded Date Hplan Effective'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>740
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
 p_id=>wwv_flow_imp.id(3563093901365393562)
,p_name=>'DED_CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DED_CATEGORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ded Category Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>730
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
 p_id=>wwv_flow_imp.id(3563093979787393563)
,p_name=>'IMPORT_HR_HUMAN_RESOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPORT_HR_HUMAN_RESOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Import Hr Human Resource'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>720
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
 p_id=>wwv_flow_imp.id(3563094051853393564)
,p_name=>'LEAVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>710
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
 p_id=>wwv_flow_imp.id(3563094105943393565)
,p_name=>'COMPUTE_GROSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPUTE_GROSS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compute Gross'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>700
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563094284138393566)
,p_name=>'SEQUENCE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQUENCE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sequence No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>690
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
 p_id=>wwv_flow_imp.id(3563094321314393567)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orgdtl Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>680
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
 p_id=>wwv_flow_imp.id(3563094457768393568)
,p_name=>'PAY_EXE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_EXE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Exe Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>670
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
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
 p_id=>wwv_flow_imp.id(3563094590302393569)
,p_name=>'DEDUCT_FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduct Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>660
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563094701380393570)
,p_name=>'PAYROLL_LAST_CHANGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_LAST_CHANGE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Payroll Last Change Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>650
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3563094724829393571)
,p_name=>'PAYROLL_LAST_CHANGE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_LAST_CHANGE_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payroll Last Change By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(3563094863082393522)
,p_name=>'PRIOR_ADMIN_DEDUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIOR_ADMIN_DEDUCT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prior Admin Deduct Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>630
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563094966150393523)
,p_name=>'PK_TABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_TABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pk Table'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
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
 p_id=>wwv_flow_imp.id(3563095050665393524)
,p_name=>'PK_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pk Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>610
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
 p_id=>wwv_flow_imp.id(3563095125633393525)
,p_name=>'COMPANY_DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>600
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563095302394393526)
,p_name=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Percent Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>590
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
 p_id=>wwv_flow_imp.id(3563095306579393527)
,p_name=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>580
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
 p_id=>wwv_flow_imp.id(3563095476355393528)
,p_name=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employment Class Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>570
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
 p_id=>wwv_flow_imp.id(3563095505255393529)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>560
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
 p_id=>wwv_flow_imp.id(3563095632033393530)
,p_name=>'MIGRATE_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_PK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Migrate Pk'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>550
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
 p_id=>wwv_flow_imp.id(3563095717218393531)
,p_name=>'PERCENT_BASIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_BASIC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percent Basic'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>540
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
 p_id=>wwv_flow_imp.id(3563095843126393532)
,p_name=>'MIDDLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIDDLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Middle Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>530
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563095908778393533)
,p_name=>'ORG_STRUCTURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_STRUCTURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Org Structure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563096065187393534)
,p_name=>'ORGANISATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANISATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Organisation Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>510
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096113786393535)
,p_name=>'REPORT_TO_FNCT_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORT_TO_FNCT_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Report To Fnct'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563096261562393536)
,p_name=>'LOCATION_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Location Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>490
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096392106393537)
,p_name=>'POSITION_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Position Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096408989393538)
,p_name=>'MARITAL_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARITAL_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Marital Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096514766393539)
,p_name=>'DISTRICT_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISTRICT_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'District Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>460
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096657927393540)
,p_name=>'VILLAGE_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VILLAGE_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Village Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>450
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096736824393541)
,p_name=>'LOT_STREET_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOT_STREET_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Lot Street'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>440
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096872146393542)
,p_name=>'FIRST_NAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563096973805393543)
,p_name=>'SURNAME_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563097055289393544)
,p_name=>'PERMANENT_STAFF_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMANENT_STAFF_HIST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Permanent Staff'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>410
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
 p_id=>wwv_flow_imp.id(3563097150302393545)
,p_name=>'CONFIRMED_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMED_HIST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Confirmed'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>400
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
 p_id=>wwv_flow_imp.id(3563097279415393546)
,p_name=>'EMP_COMPANY_NO_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_COMPANY_NO_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emp Company No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563097379972393547)
,p_name=>'PAYMENT_MODE_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_MODE_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
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
 p_id=>wwv_flow_imp.id(3563097474096393548)
,p_name=>'PAYMENT_TYPE_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_TYPE_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
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
 p_id=>wwv_flow_imp.id(3563097553806393549)
,p_name=>'EMPLOYMENT_CLASS_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_CLASS_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employment Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
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
 p_id=>wwv_flow_imp.id(3563097625792393550)
,p_name=>'REPORT_TO_HIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORT_TO_HIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Report To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(3563097716680393551)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563097899534393552)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Transaction Type Id'
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
 p_id=>wwv_flow_imp.id(3563097916277393553)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3563098061999393554)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3563098128467393555)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3563098295667393556)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(3563098307590393557)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3563098447759393558)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(3563098517184393559)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3563098670980393560)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(3563098730770393561)
,p_name=>'FOR_PRV_YTD_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOR_PRV_YTD_ENTRY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'For Prv Ytd Entry'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(3563098826007393562)
,p_name=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOURLY_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Hourly Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(3563098933650393563)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(3563099065328393564)
,p_name=>'CURRENT_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_BALANCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Current Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(3563099118002393565)
,p_name=>'CLOSING_EARNING_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSING_EARNING_PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Closing Earning Period'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3563099270844393566)
,p_name=>'PREVIOUS_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Previous Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(3563099367281393567)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(3563099476215393568)
,p_name=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(3563099580407393569)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Approved Date'
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
 p_id=>wwv_flow_imp.id(3563099629736393570)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3563099713073393571)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3563486587805877822)
,p_name=>'CLOSED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLOSED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Closed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3563486676050877823)
,p_name=>'DATE_CLOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CLOSE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Close'
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
 p_id=>wwv_flow_imp.id(3563486789150877824)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3563486821508877825)
,p_name=>'INTEREST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTEREST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Interest Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3563486960152877826)
,p_name=>'INTEREST_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTEREST_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Interest Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>25
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
 p_id=>wwv_flow_imp.id(3563487073029877827)
,p_name=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_OWING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Owing'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3563487161353877828)
,p_name=>'AMOUNT_BORROWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_BORROWED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Borrowed'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(3563487204877877829)
,p_name=>'DEDUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduct Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_imp.id(3563487330822877830)
,p_name=>'DISCIPLINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCIPLINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discipline Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3563487436642877831)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
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
 p_id=>wwv_flow_imp.id(3563487505220877832)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3563487611270877833)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632625189517596671)
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
 p_id=>wwv_flow_imp.id(3563487754213877834)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3563487846991877835)
,p_internal_uid=>74197856316571537
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(3563088816631392451)
,p_interactive_grid_id=>wwv_flow_imp.id(3563487846991877835)
,p_static_id=>'745969'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3563088665701392451)
,p_report_id=>wwv_flow_imp.id(3563088816631392451)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563015474351392283)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3563092912920393553)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>71
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563016360035392285)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(3563093100592393554)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563017207658392287)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3563093192201393555)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563018165461392290)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3563093232623393556)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563019071909392292)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(3563093340528393557)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563019971424392294)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(3563093498172393558)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563020818359392296)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(3563093532457393559)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563021787334392298)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(3563093640869393560)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563022635576392300)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(3563093715007393561)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563023543139392302)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(3563093901365393562)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563024442792392304)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(3563093979787393563)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563025309704392306)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(3563094051853393564)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563026270245392308)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(3563094105943393565)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563027123449392310)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(3563094284138393566)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563028093475392312)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(3563094321314393567)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563028996955392314)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(3563094457768393568)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563029786412392316)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(3563094590302393569)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563030671165392318)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(3563094701380393570)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563031521537392320)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(3563094724829393571)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563032462953392322)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(3563094863082393522)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563033306573392324)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(3563094966150393523)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563034293880392326)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(3563095050665393524)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563035105281392328)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(3563095125633393525)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563036077685392330)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(3563095302394393526)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563036945594392332)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(3563095306579393527)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563037823304392334)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(3563095476355393528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563038755215392336)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(3563095505255393529)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563039643862392338)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(3563095632033393530)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563040548959392340)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(3563095717218393531)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563041473080392342)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(3563095843126393532)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563042309536392344)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(3563095908778393533)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>30
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563043210207392346)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(3563096065187393534)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563044144870392348)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(3563096113786393535)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563045024291392350)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(3563096261562393536)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>35
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563045938282392352)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(3563096392106393537)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>40
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563046888993392355)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(3563096408989393538)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563047792878392357)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(3563096514766393539)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563048650384392359)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(3563096657927393540)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563049547053392361)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(3563096736824393541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563050421909392363)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(3563096872146393542)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>25
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563051348354392365)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(3563096973805393543)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>20
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563052261275392367)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(3563097055289393544)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563053187643392369)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(3563097150302393545)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563054050367392371)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(3563097279415393546)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563054925631392373)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(3563097379972393547)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563055811578392375)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(3563097474096393548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563056762842392378)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(3563097553806393549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563057698294392380)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(3563097625792393550)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563058549899392382)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(3563097716680393551)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563059476272392384)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(3563097899534393552)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563060392671392386)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(3563097916277393553)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563061223094392388)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(3563098061999393554)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563062181515392390)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(3563098128467393555)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563063005803392392)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(3563098295667393556)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563063914064392394)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(3563098307590393557)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563064820381392397)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(3563098447759393558)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563065720184392399)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(3563098517184393559)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563066651143392401)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(3563098670980393560)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563067557502392402)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3563098730770393561)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563068440990392404)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(3563098826007393562)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563069354168392406)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3563098933650393563)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563070251006392408)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3563099065328393564)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563071125957392411)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3563099118002393565)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563072076128392413)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3563099270844393566)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563072995650392415)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3563099367281393567)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563073761125392417)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3563099476215393568)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563074664883392419)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3563099580407393569)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563075583772392421)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3563099629736393570)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563076472555392423)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3563099713073393571)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563077373329392425)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3563486587805877822)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563078279901392427)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3563486676050877823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563079181406392428)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3563486789150877824)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563080082138392430)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3563486821508877825)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563080904090392433)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3563486960152877826)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563081857438392434)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3563487073029877827)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563082722539392437)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3563487161353877828)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563083637580392439)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3563487204877877829)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563084602712392441)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3563487330822877830)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563085476432392443)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3563487436642877831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563086381419392445)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3563487505220877832)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563087290130392447)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3563487611270877833)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3563088127276392450)
,p_view_id=>wwv_flow_imp.id(3563088665701392451)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3563487754213877834)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3585619264460083468)
,p_plug_name=>'Notice'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source=>'<div class="strong-text">This deduction requires <i> <b> both employee and employer deductions.</b></i> </div>'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>' fn_testmatchingded (:P1297_EMP_ID, :P1297_EXPENSE_ID, :APP_ORG_ID)=1'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3632866439673024949)
,p_plug_name=>'Region_selecctor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>49
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3741433433550946547)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3543079980506970460)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3741433433550946547)
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
'     where b.id=:P1297_EMP_ID',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1297_EMP_ID',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P1297_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1297_EMP_ID',
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
 p_id=>wwv_flow_imp.id(3485945673074047807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3485945395874047804)
,p_button_name=>'Search_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3485487569203979631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3543079980506970460)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID:&P1297_EMP_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602245172711472506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1297_LOAD.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602244796112472503)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
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
'FROM PA_PCF_ADMINDEDUCTION',
'WHERE ID=:P1297_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602244437997472503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PCF_ADMINDEDUCTION',
'WHERE (ID=:P1297_ID',
'AND VERIFIED_BY IS NULL',
'AND DEDUCT_STATUS!=''CL'')',
'OR (PKG_GLOBAL_FNTS.CHK_VERIFIER(NVL(V(''APP_USER''),USER), :APP_PAGE_ID)>0',
'and ID=:P1297_ID',
'AND DEDUCT_STATUS!=''CL'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602243968066472502)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1297_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602242029158472500)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1297_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602242411881472500)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1297_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3535350450133892195)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'PAYROLL_DEDUCTIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Payroll Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:177:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602243574202472501)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1297_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602243200306472501)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:1297::'
,p_button_condition=>'P1297_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602242815665472500)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1297_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3496591371698309132)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM:&P1297_ID.,ID,&P1297_STATUS.,PA_PCF_ADMINDEDUCTION,&P1297_TRANSACTION_TYPE_ID.,Deduction Management,1297'
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
'where :P1297_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3485695273380727640)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'REOPEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#::t-Button--danger:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reopen'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluser',
'where user_name=:APP_USER',
'and reset_archive_payroll=1',
'and :P1297_DEDUCT_STATUS =''CL'''))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3485694792805727635)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_button_name=>'MIGRATE_FEES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#::t-Button--warning:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Migrate Agency Fees'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'FROM  PA_PCF_ADMINDEDUCTION C',
'where emp_id=:P1297_EMP_ID',
'and not exists (select 1',
'                FROM pa_pcf_deductioncode A JOIN hr_hcf_organisation b ON  A.ENTITY_ABBREVIATION=b.id',
'                where A.ID = :P1297_EXPENSE_ID',
'                and c.expense_id=a.id',
'                and UNION_DEDUCTION=1                                       ',
'                and a.org_id = :APP_ORG_ID',
'               )',
'and :P1297_EXPENSE_ID= 13779'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602203858619472421)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:1297::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602243574202472501)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602204233914472421)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1296:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602244796112472503)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602206248566472423)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_RETURN_VALUE:24,FRMADMINDEDUCTIONS,&P1297_ID.,1297'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602242815665472500)
,p_branch_sequence=>3
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1297_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602205778341472423)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1297_DOC_EXIST.,1297'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602242815665472500)
,p_branch_sequence=>4
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1297_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602205412111472422)
,p_branch_action=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>5
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602204622737472421)
,p_branch_action=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID:&P1297_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602242029158472500)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3602205058049472422)
,p_branch_action=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID:&P1297_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3602242411881472500)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(438804622029609816)
,p_name=>'P1297_SUSPEND_DATE_START'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_prompt=>'Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(438804759683609817)
,p_name=>'P1297_SUSPEND_DATE_END'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_prompt=>'End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2993955920949956204)
,p_name=>'P1297_DEDUCTION_PAYROLL'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Deduction Payroll'
,p_source=>'DEDUCTION_PAYROLL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, INCOME_CODE',
'from pa_pcf_incomecode',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'AND BULK_PAYMENT=''Y''',
'UNION',
'SELECT cast(''Any Supplimentary'' as VARCHAR2(200)), cast(''SUPPL'' as VARCHAR2(50)) from dual',
'UNION',
'SELECT cast(''Regular'' as VARCHAR2(200)), cast(''RG'' as VARCHAR2(50)) from dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Specify which payroll the deduction will come out of.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3343909079617918404)
,p_name=>'P1297_DEDUCTION_CURRENCY'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'GYD'
,p_prompt=>'Currency'
,p_source=>'DEDUCTION_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CURRENCY_CONVERSION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TO_CHAR(value_description) b, TO_CHAR(EMP_CURRENCY) A',
'from  PA_PCF_EARNINGCURRENCY a join hr_hcf_lookup b on table_value=EMP_CURRENCY',
'where a.org_id =:APP_ORG_SHR_DED',
'UNION',
'SELECT distinct value_description A , TO_CHAR(BASE_CURRENCY) B',
'FROM HR_HCF_ORGANISATION a join hr_hcf_lookup b on upper(b.table_value)=upper(a.BASE_CURRENCY)',
'WHERE a.user_org_id=b.org_id',
'and table_name=''TBLCURRENCY''',
'and a.ID =:APP_ORG_ID'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3470021494881036300)
,p_name=>'P1297_COMPUTE_GROSS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3473177129383173816)
,p_name=>'P1297_LEAVE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Related Leave'
,p_source=>'LEAVE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct ''Emp No: ''||EMP_COMPANY_NO_hist||''- ''|| INITCAP(LEAVE_TYPE) || '': ''|| ''( ''|| CAST(FROMDATE AS VARCHAR(12)) || '' -- '' || CAST(TODATE AS VARCHAR(12))|| '')'' AS EXPR1, a.id',
'FROM hr_lv_LeaveHistory a',
'where emp_id=:P1297_EMP_ID',
'order by EXPR1           ',
'          '))
,p_lov_cascade_parent_items=>'P1297_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3485486832790979620)
,p_name=>'P1297_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3741433433550946547)
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
    '              from pa_pcf_admindeduction C ',
    '              where  C.EMP_ID=B.ID',
    '              and c.id=:P1297_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3485945474618047805)
,p_name=>'P1297_LOAD_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3485945395874047804)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3485946470913047815)
,p_name=>'P1297_POST_EARN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3485946524394047816)
,p_name=>'P1297_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3505190364894103446)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT START_DATE',
'from pa_pcf_earningperiod',
'where id= :P1297_POST_EARN'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3544934138018651202)
,p_name=>'P1297_DEDUCT_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'EVERY PAYROLL'
,p_prompt=>'Deduct Frequency'
,p_source=>'DEDUCT_FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Once Monthly'' a, ''ONCE_MONTHLY'' b',
'FROM DUAL',
'UNION',
'SELECT ''Every Payroll'' a, ''EVERY_PAYROLL'' b',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'How often the deduction is to be taken from the employee salary. Please note once it is NOT ''Every Payroll'' then this value conceptually over rides the Period.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3556752734721381372)
,p_name=>'P1297_COMPOUND_FREQ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'12'
,p_prompt=>'Compound Frequency'
,p_source=>'COMPOUND_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Annually;1,Semi-Annually;6,Quarterly;4,Monthly;12,None;0'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3558269856163229337)
,p_name=>'P1297_INTEREST_AMOUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Interest Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INTEREST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3567291164729533235)
,p_name=>'P1297_DED_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3545006113518655073)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description',
'from  pa_pcf_deductioncode b join pa_pcf_admindeduction x on x.expense_id = b.ID',
'where x.id = :P1297_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3601324028462868807)
,p_name=>'P1297_WORK_FLOW_COMMENT'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(3602739519734778320)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3601324333964866735)
,p_name=>'P1297_COMENT_SWITCH'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(3602739519734778320)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602218772938472450)
,p_name=>'P1297_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3435567116494081434)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a, x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1',
'             from PA_PCF_ADMINDEDUCTION w',
'             where x.id=w.emp_id',
'             and org_id=:APP_ORG_ID',
'             )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602219194671472452)
,p_name=>'P1297_LOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3435567116494081434)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602223452451472472)
,p_name=>'P1297_ID_COUNT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602223854748472472)
,p_name=>'P1297_REMARKS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>400
,p_cHeight=>3
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602224245278472473)
,p_name=>'P1297_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1297_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1297_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1297_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602224612167472473)
,p_name=>'P1297_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_item_default=>'110'
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
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602225059238472473)
,p_name=>'P1297_HOURLY_RATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'HOURLY_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602225404560472473)
,p_name=>'P1297_CURRENT_BALANCE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Current Balance'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'CURRENT_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3602225837334472473)
,p_name=>'P1297_DISCIPLINE_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Related Disciplinary Action'
,p_source=>'DISCIPLINE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select offence_class||'' ''||action_description||''(''||to_char(ACTION_START_DATE,''DD-MON-YYYY'')||'' -- ''||to_char(ACTION_END_DATE,''DD-MON-YYYY'')||'')'' b, a.id',
'from hr_gri_disciplineemp a join hr_gri_disciplinaryaction b on a.action_taken_id=b.id',
'where emp_id=:P1297_EMP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1297_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602226262615472474)
,p_name=>'P1297_CLOSING_EARNING_PERIOD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Closing Earning Period'
,p_source=>'CLOSING_EARNING_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'EARNINGS_PERIOD_PAID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPR1 earn_description,id',
'from VW_EARNPAID a',
'where org_id = :APP_ORG_ID',
'order by start_date desc'))
,p_cSize=>30
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602226592941472474)
,p_name=>'P1297_DATE_CLOSE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Close Date'
,p_source=>'DATE_CLOSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602227063535472475)
,p_name=>'P1297_CLOSED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Closed By'
,p_source=>'CLOSED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE',
'WHERE DATE_SEPARATED is null or DATE_SEPARATED > :P1297_DATESTART',
'and org_id =:APP_ORG_ID',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602227461813472475)
,p_name=>'P1297_APPROVED_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved Date'
,p_source=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602227838732472475)
,p_name=>'P1297_APPROVED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILSNREMPLOYEE',
'where Date_Separated is null or Date_Separated > :P1297_DATESTART',
'order by 1'))
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602228261127472476)
,p_name=>'P1297_DEDUCTION_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deduction No.'
,p_source=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602228599310472476)
,p_name=>'P1297_DEDUCT_STATUS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_item_default=>'IP'
,p_prompt=>'Deduction Status'
,p_source=>'DEDUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(3632624875019596671)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602229279601472477)
,p_name=>'P1297_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602229719085472479)
,p_name=>'P1297_PAYMENT_TYPE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602230162037472479)
,p_name=>'P1297_ORG_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602230509878472479)
,p_name=>'P1297_DEDUCTION_TYPE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'EMPLOYEE'
,p_prompt=>'Deduction Type'
,p_source=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3632622997116596669)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PMG_PAYROLLDEDUCTION',
'WHERE ADM_DEDUCTION_ID=:P1297_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602230880630472479)
,p_name=>'P1297_DEDUCTION_AMOUNT'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Deduction'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602231299213472480)
,p_name=>'P1297_PERCENT_OPTION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Computation Factor'
,p_source=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTATION_FACTOR'
,p_lov=>'.'||wwv_flow_imp.id(3397543846349243988)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602231735758472480)
,p_name=>'P1297_PERCENT_BASIC'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Percent Based'
,p_source=>'PERCENT_BASIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602232657896472482)
,p_name=>'P1297_FOR_PRV_YTD_ENTRY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'For Prv Ytd Entry'
,p_source=>'FOR_PRV_YTD_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Check this to set the record for YTD entry only. These values are not computed with current payroll, only YTD values.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602233030105472482)
,p_name=>'P1297_PERIOD'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Period(s)'
,p_source=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This field is used explicitly for recurring (0 periods) or fix payment valued deductions (Balanced Amount) in which case the period is greater than zero. Periods are specific to the payment requency unless Over rided by the deduction frequency that i'
||'s not every payroll. This value also represent the amount in days/hours for less day or Absense. All deductions for Absense and Lateness will be deducted at once.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602233380683472482)
,p_name=>'P1297_INTEREST_RATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Interest Rate(%)'
,p_source=>'INTEREST_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please enter exact interest rate e.g for 20% just add 20.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602233847101472482)
,p_name=>'P1297_INTEREST_TYPE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NONE'
,p_prompt=>'Interest Type'
,p_source=>'INTEREST_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INTEREST_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3632542610301481205)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602234186894472483)
,p_name=>'P1297_AMOUNT_OWING'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Repayment Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The actual amount to be repaid in cases of loans.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602234601831472483)
,p_name=>'P1297_AMOUNT_BORROWED'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Transaction Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'AMOUNT_BORROWED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Principal amount to be repaid in cases of interest based loans. Alternatively its the initial amount in cases where the deduction was managed outside of PeoplePay prior.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '100000000',
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602235040727472485)
,p_name=>'P1297_EXPENSE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expense Code'
,p_source=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1297_ID is null then',
'return ',
'       ''select description, id',
'        from pa_pcf_deductioncode v',
'        where trunc(start_date) <= :P1297_DATESTART',
'        and (trunc(end_date) is null or end_date >= :P1297_DATESTART)',
'        and org_id=:APP_ORG_SHR_DED',
'        order by 1'';',
'',
'else',
'return',
'       ''select description, id',
'        from pa_pcf_deductioncode v',
'        where org_id=:APP_ORG_SHR_DED',
'        order by 1'';',
'end if;        '))
,p_lov_cascade_parent_items=>'P1297_DATESTART'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PMG_PAYROLLDEDUCTION',
'WHERE ADM_DEDUCTION_ID=:P1297_ID',
'UNION',
'SELECT 1',
'FROM DUAL',
'WHERE :P1297_DEDUCTION_NO !=''0'''))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602235384899472485)
,p_name=>'P1297_EMP_ID'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1297_ID is null and :P1297_POST_EARN =0 then',
'',
'return',
' ''select distinct EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''') ''''||initcap(x.PAYMENT_TYPE) a, id B',
'from table(pkg_global_fnts.Get_availemployee_withpen(:P1297_DATESTART)) X ',
'where exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id=x.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'AND ORG_ID =:APP_ORG_ID       ',
'ORDER BY 1'';',
'',
'elsif :P1297_ID is null and :P1297_POST_EARN > 0 then',
'',
'return',
' ''select distinct EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''') ''''||initcap(x.PAYMENT_TYPE) a, id B',
'from table(pkg_global_fnts.Get_availemployee_withpen(:P1297_DATESTART)) X ',
'where  exists (select 1',
'            from pa_pcf_earningperiod w',
'            where w.org_id = x.org_id',
'            and w.payment_type = x.payment_type',
'            and w.employment_class_id = x.employment_class_id',
'            and w.id = :P1297_POST_EARN',
'            )  ',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id=x.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )            ',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_EMPLOYEEALL X',
'WHERE ORG_ID =:APP_ORG_ID'';',
'',
'end if;',
'	'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1297_DATESTART'
,p_ajax_items_to_submit=>'P1297_ID,P1297_POST_EARN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PMG_PAYROLLDEDUCTION',
'WHERE ADM_DEDUCTION_ID=:P1297_ID',
'UNION',
'SELECT 1',
'FROM DUAL',
'WHERE :P1297_DEDUCTION_NO !=''0'''))
,p_read_only_when_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(3602235817294472486)
,p_name=>'P1297_DATESTART'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Start'
,p_source=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602236181954472486)
,p_name=>'P1297_PREVIOUS_START_DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3435628015574465679)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous Start Date'
,p_source=>'PREVIOUS_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3602236868692472487)
,p_name=>'P1297_DOC_EXIST'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(3435641611044587390)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1297_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602237334639472488)
,p_name=>'P1297_MACHINE_UPDATE'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(3435641611044587390)
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
 p_id=>wwv_flow_imp.id(3602237756013472488)
,p_name=>'P1297_MACHINE_INSERT'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(3435641611044587390)
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
 p_id=>wwv_flow_imp.id(3602239361566472490)
,p_name=>'P1297_VERIFIED_BY'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(3435641611044587390)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602240814535472496)
,p_name=>'P1297_ID_PREV'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602241206651472496)
,p_name=>'P1297_ID_NEXT'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602241588246472498)
,p_name=>'P1297_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3435727225339268682)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603281193696873646)
,p_name=>'P1297_COMPANY_DEDUCTION_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3435627209078444859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remittance Deduction No.'
,p_source=>'COMPANY_DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3602217902062472445)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P1297_DATESTART, :P1297_TRANSACTION_TYPE_ID)=TRUE then',
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
 p_id=>wwv_flow_imp.id(3602217118718472443)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1297_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1297_ID, :P1297_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3602218329872472446)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1297_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3622367281670410530)
,p_validation_name=>'chk_dup_deduction'
,p_validation_sequence=>51
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_prv_dup_ded number:=0;',
'   v_ded_count number:=0;',
'   v_description varchar2(500);',
'   ',
'begin',
'    select prv_active_dup, description into v_prv_dup_ded, v_description',
'    from Pa_Pcf_Deductioncode',
'    where id = :P1297_EXPENSE_ID;',
'    ',
'    select count(1) into v_ded_count',
'    from PA_PCF_ADMINDEDUCTION',
'    where emp_id   =:P1297_EMP_ID',
'    and EXPENSE_ID =:P1297_EXPENSE_ID',
'    and DEDUCTION_TYPE =:P1297_DEDUCTION_TYPE',
'    and (DEDUCT_STATUS in (''IP'',''RG'') or CLOSED_BY is null);',
'    ',
'    if v_prv_dup_ded =1 and v_ded_count =1 then',
'        return v_ded_count||'' open deduction/s for this employee ''||v_description||'' deduction type ''||lower(:P1297_DEDUCTION_TYPE)||'' already exists.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3496341804867650140)
,p_validation_name=>'enf_complete_close'
,p_validation_sequence=>61
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1297_DEDUCT_STATUS =''CL'' and (:P1297_CLOSED_BY is null and :P1297_DATE_CLOSE is null)',
'     or :P1297_DEDUCT_STATUS !=''CL'' and (:P1297_CLOSED_BY is not null and :P1297_DATE_CLOSE is not null)',
'        or :P1297_DEDUCT_STATUS !=''CL'' and (:P1297_CLOSED_BY is  null and :P1297_DATE_CLOSE is not null)',
'        or :P1297_DEDUCT_STATUS !=''CL'' and (:P1297_CLOSED_BY is not null and :P1297_DATE_CLOSE is null)',
'        or :P1297_DEDUCT_STATUS =''CL'' and (:P1297_CLOSED_BY is not null and :P1297_DATE_CLOSE is null)',
'        or :P1297_DEDUCT_STATUS =''CL'' and (:P1297_CLOSED_BY is  null and :P1297_DATE_CLOSE is not null)    then',
'    return FALSE;',
'else',
'    return TRUE;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'For a deduction to be closed, the Deduct Status must be Closed, along with a Closed Date and Close By. Before a record is completely closed.'
,p_validation_condition=>'SAVE,CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(438805157687609821)
,p_validation_name=>'suspend_validation'
,p_validation_sequence=>71
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P1297_DEDUCT_STATUS = ''SP'' and :P1297_SUSPEND_DATE_START IS NULL then',
'                 RETURN ''You must enter a start Suspension date.'';',
'    else',
'                return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(438805202390609822)
,p_validation_name=>'susped_vs_start_end'
,p_validation_sequence=>81
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P1297_SUSPEND_DATE_START > :P1297_SUSPEND_DATE_END THEN ',
'        return ''The suspension start date cannot be after the end date.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(438805363094609823)
,p_validation_name=>'PRV_FUTURE_SUSPENSION'
,p_validation_sequence=>91
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_paytype varchar2(50);',
'    v_appender number(2);',
'    ',
'begin',
'    select payment_type INTO v_paytype',
'    from hr_rcm_employee',
'    where id = :P1297_EMP_ID;',
'    ',
'    v_appender := case when v_paytype = ''MONTHLY'' then 31',
'                       when v_paytype = ''WEEKLY'' then 7',
'                       when v_paytype = ''BI-WEEKLY'' then 14',
'                       when v_paytype = ''FORTNIGHTLY'' then 14',
'                       when v_paytype = ''BI-MONTHLY'' then 16',
'                  END;',
'    ',
'    if :P1297_SUSPEND_DATE_START > trunc(current_date) + (v_appender*2) then',
'        return ''The suspension start date cannot be longer that one pay period in advance of the current date.'';',
'    else',
'        return '''';',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602214024405472438)
,p_name=>'set_amt_owing'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_AMOUNT_BORROWED'
,p_condition_element=>'P1297_AMOUNT_BORROWED'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602213537544472436)
,p_event_id=>wwv_flow_imp.id(3602214024405472438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1297_AMOUNT_BORROWED'
,p_attribute_07=>'P1297_AMOUNT_BORROWED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602213129848472435)
,p_name=>'enable_close_earn'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_DEDUCT_STATUS'
,p_condition_element=>'P1297_DEDUCT_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602212106290472434)
,p_event_id=>wwv_flow_imp.id(3602213129848472435)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_CLOSING_EARNING_PERIOD,P1297_CLOSED_BY,P1297_DATE_CLOSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602212593681472434)
,p_event_id=>wwv_flow_imp.id(3602213129848472435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_CLOSING_EARNING_PERIOD,P1297_CLOSED_BY,P1297_DATE_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602211683544472434)
,p_name=>'set_deduction_type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_EXPENSE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602211262472472434)
,p_event_id=>wwv_flow_imp.id(3602211683544472434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_TYPE,P1297_PERCENT_BASIC,P1297_PERCENT_OPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    case when upper(WHO_PAYS) IN (''BOTH'',''EMPLOYEE'') then ''EMPLOYEE'' else WHO_PAYS end a',
'        , employee_ded_per, percent_option_dedcode',
'FROM PA_PCF_DEDUCTIONCODE',
'WHERE ID =:P1297_EXPENSE_ID'))
,p_attribute_07=>'P1297_EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602209874046472429)
,p_name=>'compute_deduction'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_PERIOD'
,p_condition_element=>'P1297_PERIOD'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602209447489472429)
,p_event_id=>wwv_flow_imp.id(3602209874046472429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ',
'',
'case when REPLACE(REPLACE(:P1297_HOURLY_RATE,''$''),'','') = 1 ',
'then  ROUND(REPLACE(REPLACE(:P1297_AMOUNT_OWING,''$''),'','')/(:P1297_PERIOD * REPLACE(REPLACE(:P1297_HOURLY_RATE,''$''),'','')),2) ',
'ELSE ROUND(:P1297_PERIOD * REPLACE(REPLACE(:P1297_HOURLY_RATE,''$''),'',''),2) ',
'',
'END ;'))
,p_attribute_07=>'P1297_PERIOD,P1297_HOURLY_RATE,P1297_AMOUNT_OWING,P1297_AMOUNT_BORROWED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(444912153789670177)
,p_event_id=>wwv_flow_imp.id(3602209874046472429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return case when replace(replace(:P1297_HOURLY_RATE,''$'',''''),'','','''')  = 1 ',
'            then  replace(replace(:P1297_AMOUNT_OWING,''$'',''''),'','','''')',
'            ',
'           ELSE ROUND(:P1297_PERIOD * replace(replace(:P1297_HOURLY_RATE,''$'',''''),'','','''') ,2) ',
'       END ;',
'',
'',
'                         '))
,p_attribute_07=>'P1297_PERIOD,P1297_HOURLY_RATE,P1297_AMOUNT_OWING,P1297_AMOUNT_BORROWED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602210834758472429)
,p_name=>'set_datestart'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_PREVIOUS_START_DATE'
,p_condition_element=>'P1297_PREVIOUS_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602210292387472429)
,p_event_id=>wwv_flow_imp.id(3602210834758472429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DATESTART'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1297_PREVIOUS_START_DATE'
,p_attribute_07=>'P1297_PREVIOUS_START_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558269458478229333)
,p_name=>'compute_final_amt'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_PERIOD'
,p_condition_element=>'P1297_INTEREST_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'NONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558269301452229332)
,p_event_id=>wwv_flow_imp.id(3558269458478229333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    return pkg_global_fnts.fn_getInterestRate(:P1297_INTEREST_RATE, :P1297_EMP_ID, :P1297_INTEREST_TYPE, :P1297_AMOUNT_BORROWED, :P1297_PERIOD,  :P1297_COMPOUND_FREQ, :P1297_AMOUNT_OWING );',
'end;'))
,p_attribute_07=>'P1297_EMP_ID,P1297_INTEREST_TYPE ,P1297_AMOUNT_BORROWED,P1297_INTEREST_RATE,P1297_PERIOD,P1297_AMOUNT_OWING,P1297_COMPOUND_FREQ'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558269222578229331)
,p_event_id=>wwv_flow_imp.id(3558269458478229333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_INTEREST_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when instr(:P1297_AMOUNT_OWING,''$'') >0 then to_number(:P1297_AMOUNT_OWING,''$999,999,999.99'')',
'        else  to_number(:P1297_AMOUNT_OWING) end - case when instr(:P1297_AMOUNT_BORROWED,''$'') >0 then  replace(replace(:P1297_AMOUNT_BORROWED,''$'',''''),'','','''') ',
'                                        else replace(replace(:P1297_AMOUNT_BORROWED,''$'',''''),'','','''') ',
'                                    end  a',
'from dual'))
,p_attribute_07=>'P1297_AMOUNT_OWING,P1297_AMOUNT_BORROWED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558269016132229329)
,p_event_id=>wwv_flow_imp.id(3558269458478229333)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  case when instr(:P1297_AMOUNT_OWING,''$'') >0 then replace(replace(:P1297_AMOUNT_BORROWED,''$'',''''),'','','''')  else to_number(:P1297_AMOUNT_OWING) end  / :P1297_PERIOD',
''))
,p_attribute_07=>'P1297_AMOUNT_OWING,P1297_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602209059239472427)
,p_name=>'compute_percent_of basic'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_PERCENT_BASIC,P1297_PERCENT_OPTION'
,p_condition_element=>'P1297_PERCENT_OPTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602208495429472426)
,p_event_id=>wwv_flow_imp.id(3602209059239472427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT,P1297_AMOUNT_OWING,P1297_HOURLY_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'',
'case when :P1297_PERIOD=0 then pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :P1297_EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => :P1297_EXPENSE_ID',
'                                             ,in_start_date => :P1297_DATESTART) * 1 ',
'else pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :P1297_EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => :P1297_EXPENSE_ID',
'                                             ,in_start_date => :P1297_DATESTART) * :P1297_PERIOD end a,',
'',
'case when :P1297_PERIOD=0 then pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :P1297_EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => :P1297_EXPENSE_ID',
'                                             ,in_start_date => :P1297_DATESTART) * 1 ',
'else pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :P1297_EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => :P1297_EXPENSE_ID',
'                                             ,in_start_date => :P1297_DATESTART) * :P1297_PERIOD end b,',
'',
'pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_SHR_DED',
'                                             ,in_emp_id => :P1297_EMP_ID',
'                                             ,in_entitlement => NULL',
'                                             ,in_deduct_code  => :P1297_EXPENSE_ID',
'                                             ,in_start_date => :P1297_DATESTART) c',
'FROM pa_pcf_deductioncode',
'where id=:P1297_EXPENSE_ID',
'and :P1297_PERCENT_OPTION is not null',
'-- AND QUERY_EMPLOYEE_DATA=1',
'--where :P1297_PERCENT_BASIC >0'))
,p_attribute_07=>'P1297_DATESTART,P1297_PERCENT_OPTION,P1297_EMP_ID,P1297_PERCENT_BASIC,P1297_PERIOD,P1297_EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602208142591472426)
,p_name=>'default_balance'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_DEDUCTION_AMOUNT'
,p_condition_element=>'P1297_AMOUNT_OWING'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602207631723472425)
,p_event_id=>wwv_flow_imp.id(3602208142591472426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING,P1297_AMOUNT_BORROWED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P1297_DEDUCTION_AMOUNT a, :P1297_DEDUCTION_AMOUNT b',
'from dual'))
,p_attribute_07=>'P1297_DEDUCTION_AMOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3602207204092472425)
,p_name=>'POP_PARTITION_DATA'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_EMP_ID'
,p_condition_element=>'P1297_EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3602206668712472425)
,p_event_id=>wwv_flow_imp.id(3602207204092472425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_PAYMENT_TYPE,P1297_EMPLOYMENT_CLASS_ID,P1297_ORG_ID,P1297_COMPUTE_GROSS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PAYMENT_TYPE, EMPLOYMENT_CLASS_ID,ORG_ID, COMPUTE_GROSS',
'from hr_rcm_employee',
'where id=:P1297_EMP_ID'))
,p_attribute_07=>'P1297_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3601323791753870427)
,p_name=>'show_comments'
,p_event_sequence=>110
,p_condition_element=>'P1297_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3601322942269870428)
,p_event_id=>wwv_flow_imp.id(3601323791753870427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3601323441019870428)
,p_event_id=>wwv_flow_imp.id(3601323791753870427)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3601322557257872187)
,p_name=>'show_comment'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_COMENT_SWITCH'
,p_condition_element=>'P1297_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3601321651242872188)
,p_event_id=>wwv_flow_imp.id(3601322557257872187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3601322099871872188)
,p_event_id=>wwv_flow_imp.id(3601322557257872187)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3544934454512651205)
,p_name=>'New'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_EXPENSE_ID'
,p_condition_element=>'P1297_EXPENSE_ID'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'308,316'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3544934505101651206)
,p_event_id=>wwv_flow_imp.id(3544934454512651205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_payfreq VARCHAR2(50);',
'',
'BEGIN',
'		select payment_type into v_payfreq',
'		from HR_RCM_EMPLOYEE',
'		where id = :P1297_EMP_ID;',
'',
'		IF ',
'				 UPPER(v_payfreq) = ''MONTHLY''',
'				 THEN :P1297_DEDUCT_FREQUENCY := ''MONTHLY'';',
'		ELSIF',
'				 UPPER(v_payfreq) = ''WEEKLY''',
'				 THEN :P1297_DEDUCT_FREQUENCY := ''MONTHLY'';',
'		ELSE ',
'				 :P1297_DEDUCT_FREQUENCY := ''EVERY PAYROLL'';',
'',
'	END IF;',
'END;'))
,p_attribute_02=>'P1297_EMP_ID'
,p_attribute_03=>'P1297_DEDUCT_FREQUENCY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3485695331827727641)
,p_name=>'reopen_deduction'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3485695273380727640)
,p_condition_element=>'P1297_DEDUCT_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3485695480765727642)
,p_event_id=>wwv_flow_imp.id(3485695331827727641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update pa_pcf_admindeduction',
'  set  deduct_status=''IP''',
'      ,closed_by  = null',
'      ,date_close = null',
'      ,Closing_Earning_Period =  null    ',
'  Where id = :P1297_ID;',
'  ',
'  end;'))
,p_attribute_02=>'P1297_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3485944214685047793)
,p_event_id=>wwv_flow_imp.id(3485695331827727641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess(''You have successfully opened this current deduction.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3496341590321650137)
,p_name=>'set_close'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_DEDUCT_STATUS'
,p_condition_element=>'P1297_DEDUCT_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3496341644233650138)
,p_event_id=>wwv_flow_imp.id(3496341590321650137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_CLOSED_BY,P1297_DATE_CLOSE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_NO, TRUNC(current_date) CLOSE_DATE',
'from tbluser',
'where user_name=:APP_USER'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3496341718481650139)
,p_event_id=>wwv_flow_imp.id(3496341590321650137)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_CLOSED_BY,P1297_DATE_CLOSE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null a, null  CLOSE_DATE',
'from tbluser',
'where user_name=:APP_USER'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558269697365229336)
,p_name=>'show_hide_interest_parm'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_INTEREST_TYPE'
,p_condition_element=>'P1297_INTEREST_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'NONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558269506603229334)
,p_event_id=>wwv_flow_imp.id(3558269697365229336)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_INTEREST_RATE,P1297_INTEREST_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558269618799229335)
,p_event_id=>wwv_flow_imp.id(3558269697365229336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_INTEREST_RATE,P1297_INTEREST_AMOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3556752649996381371)
,p_name=>'show_hide_interest_parm_comp'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_INTEREST_TYPE'
,p_condition_element=>'P1297_INTEREST_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'COMPOUND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3556752447064381369)
,p_event_id=>wwv_flow_imp.id(3556752649996381371)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_COMPOUND_FREQ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3556752536445381370)
,p_event_id=>wwv_flow_imp.id(3556752649996381371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_COMPOUND_FREQ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558268933715229328)
,p_name=>'recal_final_amount'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_INTEREST_RATE'
,p_condition_element=>'P1297_PERIOD'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558268841454229327)
,p_event_id=>wwv_flow_imp.id(3558268933715229328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'    ',
'    return pkg_global_fnts.fn_getInterestRate(:P1297_INTEREST_RATE, :P1297_EMP_ID, :P1297_INTEREST_TYPE, :P1297_AMOUNT_BORROWED, :P1297_PERIOD,  :P1297_COMPOUND_FREQ, :P1297_AMOUNT_OWING );',
'end;'))
,p_attribute_07=>'P1297_EMP_ID,P1297_INTEREST_TYPE,P1297_AMOUNT_BORROWED,P1297_INTEREST_RATE,P1297_AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558268726362229326)
,p_event_id=>wwv_flow_imp.id(3558268933715229328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_INTEREST_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when instr(:P1297_AMOUNT_OWING,''$'') >0 then to_number(:P1297_AMOUNT_OWING,''$999,999,999.99'')',
'        else  to_number(:P1297_AMOUNT_OWING)  end - case when instr(:P1297_AMOUNT_BORROWED,''$'') >0 then  to_number(:P1297_AMOUNT_BORROWED,''$999,999,999.99'') ',
'                                        else to_number(:P1297_AMOUNT_BORROWED)',
'                                    end',
'         a',
'from dual'))
,p_attribute_07=>'P1297_AMOUNT_OWING,P1297_AMOUNT_BORROWED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3558268577225229325)
,p_event_id=>wwv_flow_imp.id(3558268933715229328)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  case when instr(:P1297_AMOUNT_OWING,''$'') >0 then to_number(:P1297_AMOUNT_OWING,''$999,999,999.99'') else to_number(:P1297_AMOUNT_OWING) end  / :P1297_PERIOD',
'',
''))
,p_attribute_07=>'P1297_AMOUNT_OWING,P1297_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3558268512341229324)
,p_name=>'set_zero_values'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_INTEREST_TYPE'
,p_condition_element=>'P1297_INTEREST_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3556752808261381373)
,p_event_id=>wwv_flow_imp.id(3558268512341229324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_INTEREST_RATE,P1297_INTEREST_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_number(0) INS_RATE,  to_number(0)  INS_AMT',
'FROM DUAL'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3556752190423381367)
,p_name=>'switch_interest'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_INTEREST_TYPE'
,p_condition_element=>'P1297_INTEREST_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'NONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3556752156552381366)
,p_event_id=>wwv_flow_imp.id(3556752190423381367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_AMOUNT_OWING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_interest_type varchar2(50);',
'begin',
'',
'    select interest_type into v_interest_type',
'    from pa_pcf_admindeduction',
'    where id = :P1287_ID;',
'',
'    if v_interest_type != ''NONE'' then',
'        return pkg_global_fnts.fn_getInterestRate(:P1297_INTEREST_RATE, :P1297_EMP_ID, :P1297_INTEREST_TYPE, :P1297_AMOUNT_BORROWED, :P1297_PERIOD,  :P1297_COMPOUND_FREQ, :P1297_AMOUNT_OWING );',
'    else',
'        return case when instr(:P1297_AMOUNT_BORROWED,''$'') >0 then  to_number(:P1297_AMOUNT_BORROWED,''$999,999,999.99'') ',
'                                    else to_number(:P1297_AMOUNT_BORROWED) end;',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_attribute_07=>'P1287_ID,P1297_EMP_ID,P1297_INTEREST_TYPE,P1297_AMOUNT_BORROWED,P1297_INTEREST_RATE,P1297_AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3541709705155321554)
,p_name=>'refresh_quick_search'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3541709612406321553)
,p_event_id=>wwv_flow_imp.id(3541709705155321554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3435567116494081434)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3414608624831585374)
,p_name=>'compute_advance_chg'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_PERIOD'
,p_condition_element=>'P1297_PERCENT_OPTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3414608690830585375)
,p_event_id=>wwv_flow_imp.id(3414608624831585374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT,P1297_AMOUNT_OWING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'pkg_global_fnts.fn_ComputeEntPercentof(id,0, nvl(:P1297_DATESTART, current_date), :P1297_PERCENT_OPTION, :P1297_EMP_ID, :P1297_PERCENT_BASIC, 1) * :P1297_PERIOD a,',
'pkg_global_fnts.fn_ComputeEntPercentof(id,0, nvl(:P1297_DATESTART, current_date), :P1297_PERCENT_OPTION, :P1297_EMP_ID, :P1297_PERCENT_BASIC, 1)  * :P1297_PERIOD b',
'FROM pa_pcf_deductioncode',
'where id=:P1297_EXPENSE_ID',
'and :P1297_PERCENT_OPTION is not null'))
,p_attribute_07=>'P1297_EMP_ID,P1297_PERIOD,P1297_DATESTART,P1297_EXPENSE_ID,P1297_AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(444912432472670180)
,p_name=>'DY_SET'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_AMOUNT_OWING'
,p_condition_element=>'P1297_PERIOD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(444912517943670181)
,p_event_id=>wwv_flow_imp.id(444912432472670180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1297_AMOUNT_OWING'
,p_attribute_07=>'P1297_AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(438804880251609818)
,p_name=>'show_hide_fields'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_DEDUCT_STATUS'
,p_condition_element=>'P1297_DEDUCT_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438804953460609819)
,p_event_id=>wwv_flow_imp.id(438804880251609818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_SUSPEND_DATE_START,P1297_SUSPEND_DATE_END'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(438805030889609820)
,p_event_id=>wwv_flow_imp.id(438804880251609818)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_SUSPEND_DATE_START,P1297_SUSPEND_DATE_END'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(460845858424868775)
,p_name=>'set_deduction_type_change'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1297_DEDUCTION_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(460845950317868776)
,p_event_id=>wwv_flow_imp.id(460845858424868775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1297_DEDUCTION_TYPE,P1297_PERCENT_BASIC,P1297_PERCENT_OPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    case when upper(WHO_PAYS) IN (''BOTH'',''EMPLOYER'') then ''EMPLOYER'' else WHO_PAYS end a',
'        , employer_ded_per, percent_option_dedcode',
'FROM PA_PCF_DEDUCTIONCODE',
'WHERE ID =:P1297_EXPENSE_ID',
'and :P1297_DEDUCTION_TYPE = ''EMPLOYER'''))
,p_attribute_07=>'P1297_EXPENSE_ID,P1297_DEDUCTION_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3602216833641472443)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PA_PCF_ADMINDEDUCTION'
,p_attribute_02=>'PA_PCF_ADMINDEDUCTION'
,p_attribute_03=>'P1297_ID'
,p_attribute_04=>'ID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EXISTS (SELECT 1',
'        FROM VW_USERACCESS A ',
'        where A.PAYMENT_TYPE=PA_PCF_ADMINDEDUCTION.PAYMENT_TYPE AND A.EMPLOYMENT_CLASS_ID=PA_PCF_ADMINDEDUCTION.EMPLOYMENT_CLASS_ID AND',
'        A.ORG_ID=PA_PCF_ADMINDEDUCTION.ORG_ID)'))
,p_process_error_message=>'You don''t have the access rights to view this employee file. Contact your system administrator if you believe access should be granted to you.'
,p_internal_uid=>3180424840443475869
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3602215567269472441)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'PA_PCF_ADMINDEDUCTION'
,p_attribute_03=>'P1297_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'EMP_ID'
,p_attribute_09=>'P1297_ID_NEXT'
,p_attribute_10=>'P1297_ID_PREV'
,p_attribute_13=>'P1297_ID_COUNT'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EXISTS(SELECT 1',
'           FROM HR_RCM_EMPLOYEE B',
'           WHERE PA_PCF_ADMINDEDUCTION.EMP_ID=B.ID',
'           AND b.EMPLOYMENT_CLASS_ID=:P1296_EMPLOYMENT_CLASS',
'           AND b.ORG_ID=:P1296_ORGANISATION)',
''))
,p_internal_uid=>3180423574071475867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3602216435098472443)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PA_PCF_ADMINDEDUCTION'
,p_attribute_02=>'PA_PCF_ADMINDEDUCTION'
,p_attribute_03=>'P1297_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1297_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3180424441900475869
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3602216033176472441)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3602244796112472503)
,p_internal_uid=>3180424039978475867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3602215193882472440)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_deduction varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1297_TRANSACTION_TYPE_ID;',
'',
'SELECT  initcap(z.Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(z.Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'') for ''||DESCRIPTION into v_deduction ',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'JOIN pa_pcf_admindeduction c ON c.emp_id=x.id',
'join pa_pcf_deductioncode d on d.id=c.expense_id',
'where c.id=:P1297_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1297_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_deduction ,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1297_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Deductions'',',
'	:P1297_STATUS,:APP_PAGE_ID,:P1297_TRANSACTION_TYPE_ID,',
'        ''PA_PCF_ADMINDEDUCTION'',:P1297_WORK_FLOW_COMMENT,:P1297_ID);',
'',
'',
' if pkg_global_fnts.status_descript(:P1297_STATUS) like ''APPROV%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''PA_PCF_ADMINDEDUCTION'',''ID'', :P1297_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P1297_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P1297_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(:APP_USER, ''PA_PCF_ADMINDEDUCTION'', ''ID'', :P1417_ID);       ',
' end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3602244437997472503)
,p_process_when=>'P1297_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3180423200684475866
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3598325354266367426)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HR_Calendar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    V_REMARKS varchar2(500);',
'    ',
'begin    ',
'    select DESCRIPTION||CASE when a.remarks is not null then '' ;Remarks: ''||a.remarks else null end into V_REMARKS',
'    from PA_PCF_ADMINDEDUCTION  a join pa_pcf_deductioncode B on a.expense_id=B.id',
'    where a.id=:P1297_ID;',
'',
'    PKG_HR.CALENDAR_UPDATE_EMP(:P1297_EMP_ID,  :P1297_DATESTART, :P1297_DATESTART , V_REMARKS, ''PA_PCF_ADMINDEDUCTION'', :P1297_ID, ''INSERT'', ''P1297_ID'', :P1297_ID);',
' end;',
'  ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3176533361068370852
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3619119364452316560)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_verify_employer_ded'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update PA_PCF_ADMINDEDUCTION',
'set TRANSACTION_TYPE_ID = 110',
'    ,STATUS = 264',
'    ,verified_by = :APP_USER',
'    ,verified_date =trunc(current_date)',
'WHERE DEDUCTION_TYPE=''EMPLOYER''  ',
'and DEDUCTION_NO=''0''',
'and expense_id=:P1297_EXPENSE_ID',
'and EMP_ID=:P1297_EMP_ID',
'and DATESTART=:P1297_DATESTART',
'and verified_by is null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3602244437997472503)
,p_internal_uid=>3197327371254319986
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3485694842390727636)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_union_due'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_expense_id number; v_id number; v_count  number; ',
'    ',
'begin',
'',
'        select nvl(count(1),0) into v_count',
'        FROM  PA_PCF_ADMINDEDUCTION C',
'        where emp_id=:P1297_EMP_ID',
'        and exists (select 1',
'                    FROM pa_pcf_deductioncode A JOIN hr_hcf_organisation b ON  A.ENTITY_ABBREVIATION=b.id',
'                    where A.ID = :P1297_EXPENSE_ID',
'                    and c.expense_id=a.id',
'                    and UNION_DEDUCTION=1                                       ',
'                    and a.org_id = :APP_ORG_ID',
'                   );',
'                   ',
'IF v_count = 0 then',
'',
'    For I in ( Select Percent_Basic, Percent_Option, ''System auto create Unions dues due to closure of agency fees'' Remarks, Emp_Id, B.id Expense_Id, Approved_By, Approved_Date',
'                , Trunc(current_date) st_date , Amount_Owing, 0 Period, union_Amount, Deduct_Status,Interest_Type,Deduction_Type, a.Transaction_Type_Id, a.Status',
'                From Pa_Pcf_Admindeduction a  cross join  (select * from pa_pcf_deductioncode where union_deduction = 1) b    ',
'                where  a.id = :P1297_ID',
'                and instr((select upper(expense_code) from pa_pcf_deductioncode where id= :P1297_EXPENSE_ID),upper(trim(b.expense_code))) > 0) loop',
'                ',
'            begin',
'                Insert Into Pa_Pcf_Admindeduction(Percent_Basic,Percent_Option, Remarks,Emp_Id, Expense_Id, Approved_By, Approved_Date',
'                        , Datestart , Previous_Start_Date,Amount_Owing, Period, Deduction_Amount, Deduct_Status,Interest_Type,Deduction_Type, Transaction_Type_Id,Status)      ',
'                        ',
'                values ( i.Percent_Basic, i.Percent_Option,  i.Remarks, i.Emp_Id, i.Expense_Id, i.Approved_By, i.Approved_Date',
'                        , i.st_date, i.st_date, i.Amount_Owing, i.Period, i.union_Amount, i.Deduct_Status,i.Interest_Type,i.Deduction_Type, i.Transaction_Type_Id, i.Status)',
'                returning Expense_Id, id into v_expense_id, v_id;',
'                ',
'                update Pa_Pcf_Admindeduction',
'                set DEDUCT_STATUS=''CL''',
'                    ,date_close= Trunc(current_date)-1',
'                    ,CLOSED_BY = :APP_USER',
'                where id = :P1297_ID;',
'                ',
'                update Pa_Pcf_Admindeduction',
'                set verified_by  =  :APP_USER',
'                    , verified_date =Trunc(current_date)                   ',
'                where id =v_id;',
'            ',
'                update hr_rcm_employee',
'                set union_code_id =(    ',
'                                        select x.id',
'                                        from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'                                        where organisation_type=''REMITTANCE''',
'                                        and UNION_DEDUCTION=1',
'                                        and w.id=v_expense_id)',
'                   ,union_join_date = Trunc(current_date)',
'                where id= :P1297_EMP_ID;',
'                ',
'                :P1297_ID := v_id;',
'            Exception',
'                when others then null;',
'            end;',
'    end loop;',
'    ',
' end if; ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3485694792805727635)
,p_process_success_message=>'System successfully migrated Union Agency fees to union dues.'
,p_internal_uid=>3063902849192731062
);
wwv_flow_imp.component_end;
end;
/
