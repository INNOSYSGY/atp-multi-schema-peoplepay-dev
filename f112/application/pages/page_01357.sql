prompt --application/pages/page_01357
begin
--   Manifest
--     PAGE: 01357
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
 p_id=>1357
,p_name=>'frmPayrollAnalysisDebug'
,p_alias=>'FRMPAYROLLANALYSISDEBUG'
,p_step_title=>'View Payroll Analysis Debug'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_javascript_code=>'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}',
''))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3794170039775391775)
,p_plug_name=>'View Debug Employee Payslip'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DEBUG_PAYROLLDTL'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(496475899699931267)
,p_plug_name=>'Free Pays & Other Taxable Gross Reductions'
,p_parent_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>31
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PAY_SLIPNO,',
'       EMP_ID,',
'       SOURCE_TABLE,',
'       SOURCE_ID,orig_freepayamount, orig_freepayamount_ytd,',
'       PAY_INCOMEDEDUCTION_ID,',
'       FREEPAYAMOUNT,',
'       FREEPAYAMOUNT_YTD,',
'       REMARKS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_UPDATED_DATE,',
'       LAST_UPDATED_BY,',
'       FREEPAY_NAME,',
'       FREEPAY_NAME_ID',
'  from DEBUG_PAYROLLDTLFREEPAY',
'where pay_slipno =:P1357_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1357_ID'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(496476074851931268)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>496476074851931268
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500982541132111019)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500982650647111020)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500982773414111021)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500982797767111022)
,p_db_column_name=>'SOURCE_TABLE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Source Table'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500982989848111023)
,p_db_column_name=>'SOURCE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Source Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983040516111024)
,p_db_column_name=>'PAY_INCOMEDEDUCTION_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pay Incomededuction Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983127658111025)
,p_db_column_name=>'FREEPAYAMOUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Free Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983251768111026)
,p_db_column_name=>'FREEPAYAMOUNT_YTD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Free Pay Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983296855111027)
,p_db_column_name=>'REMARKS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983474665111028)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983588918111029)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983682793111030)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983695249111031)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983796608111032)
,p_db_column_name=>'FREEPAY_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Freepay Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(500983956942111033)
,p_db_column_name=>'FREEPAY_NAME_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Freepay Name Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323032811428620848)
,p_db_column_name=>'ORIG_FREEPAYAMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Orig Free Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(323032881246620849)
,p_db_column_name=>'ORIG_FREEPAYAMOUNT_YTD'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Orig Free Pay Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(500994321265142038)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1784906'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FREEPAY_NAME:ORIG_FREEPAYAMOUNT:FREEPAYAMOUNT:APXWS_CC_001:ORIG_FREEPAYAMOUNT_YTD:FREEPAYAMOUNT_YTD:LAST_UPDATED_BY:LAST_UPDATED_DATE:'
,p_sum_columns_on_break=>'FREEPAYAMOUNT:ORIG_FREEPAYAMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(70068615633552943)
,p_report_id=>wwv_flow_imp.id(500994321265142038)
,p_name=>'Diff_hilighter'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(70069016222552942)
,p_report_id=>wwv_flow_imp.id(500994321265142038)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'P - G'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Diff'
,p_report_label=>'Diff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3794118333935202955)
,p_plug_name=>'Earnings Totals'
,p_parent_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>21
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3794118519522208216)
,p_plug_name=>'Deductions Summary'
,p_parent_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3794108432008013156)
,p_name=>'Deduction Details'
,p_parent_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_template=>2664334895415463485
,p_display_sequence=>32
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PMG_PAYROLLDEDUCTION.ID as ID, REDUCE_TAX_NIS_TOTAL,',
'    PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO as PAY_SLIPNO,',
'    PA_PMG_PAYROLLDEDUCTION.DEDUCTION_NO as DEDUCTION_NO,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED as AMOUNT_DEDUCTED,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED_YTD as AMOUNT_DEDUCTED_YTD, ',
'    PA_PMG_PAYROLLDEDUCTION.EXPENSE_CODE as EXPENSE_CODE',
' from DEBUG_PAYROLLDEDUCTION PA_PMG_PAYROLLDEDUCTION join PA_PCF_ADMINDEDUCTION b on PA_PMG_PAYROLLDEDUCTION.ADM_DEDUCTION_ID = b.id',
' join PA_PCF_DEDUCTIONCODE c on c.id = b.expense_id',
'WHERE PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO=:P1357_ID',
'AND   UPPER(PA_PMG_PAYROLLDEDUCTION.DEDUCTION_TYPE)=''EMPLOYEE'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from DEBUG_PAYROLLDEDUCTION',
'WHERE PAY_SLIPNO=:P1357_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_imp.id(70089137185552881)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70089559447552880)
,p_query_column_id=>2
,p_column_alias=>'REDUCE_TAX_NIS_TOTAL'
,p_column_display_sequence=>4
,p_column_heading=>'Reduce TAX/NIS'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70089974188552879)
,p_query_column_id=>3
,p_column_alias=>'PAY_SLIPNO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70090383225552878)
,p_query_column_id=>4
,p_column_alias=>'DEDUCTION_NO'
,p_column_display_sequence=>5
,p_column_heading=>'DEDUCTION NO.'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70090796917552877)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT_DEDUCTED'
,p_column_display_sequence=>6
,p_column_heading=>'AMOUNT DEDUCTED'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70091106482552876)
,p_query_column_id=>6
,p_column_alias=>'AMOUNT_DEDUCTED_YTD'
,p_column_display_sequence=>7
,p_column_heading=>'AMOUNT DEDUCTED YTD'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70091593264552876)
,p_query_column_id=>7
,p_column_alias=>'EXPENSE_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'DEDUCTION'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, EXPENSE_CODE',
'from PA_PCF_DEDUCTIONCODE',
'order by 1',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3794118736491213158)
,p_plug_name=>'Earnings Summary'
,p_parent_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3794112613279130702)
,p_plug_name=>'Earnings Details'
,p_parent_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.ID as ID,',
'    B.PAY_SLIPNO as PAY_SLIPNO,',
'    B.INCOME_AMOUNT as INCOME_AMOUNT,',
'    B.INCOME_AMOUNT_YTD as INCOME_AMOUNT_YTD,',
'    A.DESCRIPTION as DESCRIPTION,',
'    B.QUANTITY as QUANTITY,',
'    B.RATE as RATE,',
'    c.INCOME_TYPE,',
'    c.TAXABLE',
' from DEBUG_PAYROLLINCOME B JOIN HR_RCM_EMPENTITLE C ON C.ID=B.EMPENT_ID',
' JOIN PA_PCF_INCOMECODE A ON A.ID=C.INCOME_CODE_ID',
' WHERE  B.PAY_SLIPNO=:P1357_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM DEBUG_PAYROLLINCOME',
'WHERE PAY_SLIPNO=:P1357_ID'))
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3876188530449320657)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>3876188530449320657
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3876188411537320656)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3876188358387320655)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3876188203955320654)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3876188098536320653)
,p_db_column_name=>'INCOME_AMOUNT_YTD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3875086779713433702)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3875086667209433701)
,p_db_column_name=>'QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3875086658105433700)
,p_db_column_name=>'RATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3875086531668433699)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3875086374060433698)
,p_db_column_name=>'TAXABLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3875075753042434382)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'501060'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCOME_TYPE:DESCRIPTION:TAXABLE:QUANTITY:RATE:INCOME_AMOUNT:INCOME_AMOUNT_YTD:'
,p_break_on=>'INCOME_TYPE:TAXABLE:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:TAXABLE:0:0:0:0'
,p_sum_columns_on_break=>'INCOME_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3901198228711849310)
,p_plug_name=>'Prior Period Payments'
,p_parent_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4011152016937917783)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>51
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812798563893941696)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(4011152016937917783)
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
'     where b.id=:P1357_EMP_ID',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1357_EMP_ID',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P1357_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1357_EMP_ID',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70052043228553005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1357_PAGE_RETURN.:&SESSION.:&SESSION.:&DEBUG.:&DEBUG.::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70111925937552814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3812798563893941696)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P1357_EMP_ID.,1356'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70052467104553004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_button_name=>'VIEW_PAYSLIP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Printable Payslip'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from report',
'where upper(report_name) like ''%PAYSLIP%''',
'and upper(report_location) like ''%MULTI_CLOUD%''',
'and (date_end is null or date_end >= current_date)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70115689792552795)
,p_branch_action=>'f?p=&APP_ID.:1357:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(318241351082607549)
,p_name=>'P1357_RETURN_VALUE'
,p_item_sequence=>830
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(501016166043111017)
,p_name=>'P1357_REDUCE_TAXES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(496475899699931267)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Reduce Taxes'
,p_source=>'REDUCE_TAXES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(707246483621213900)
,p_name=>'P1357_REPORT_URL'
,p_item_sequence=>810
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(707247019504247579)
,p_name=>'P1357_PAY_BATCH_ID'
,p_item_sequence=>820
,p_source=>'SELECT PAY_BATCH_ID FROM DEBUG_PAYROLLDTL WHERE ID = :P1357_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3752370708364605235)
,p_name=>'P1357_INDIVIDUAL'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ind_id',
'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
'where b.id = :P1357_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3754705491110234638)
,p_name=>'P1357_EMP_ID'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_use_cache_before_default=>'NO'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3757937165728873511)
,p_name=>'P1357_PHOTO'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(4011152016937917783)
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
    '              from VW_PAYSLIP C ',
    '              where  C.EMP_ID=B.ID',
    '              and c.id=:P1357_ID)')))).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3859390786216287365)
,p_name=>'P1357_NO_PAY_EARNINGS_YTD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'No  Pay Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NO_PAY_EARNINGS_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3859390905857287366)
,p_name=>'P1357_NO_PAY_EARNINGS'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No pay earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NO_PAY_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883620500669488241)
,p_name=>'P1357_ID_COUNT'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
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
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883620923411488242)
,p_name=>'P1357_LOCATION_NAME_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Location'
,p_source=>'LOCATION_NAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883621305070488242)
,p_name=>'P1357_ID_PREV'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883621720852488243)
,p_name=>'P1357_ID_NEXT'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883622195736488243)
,p_name=>'P1357_EARNINGS_PERIOD_ID'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_use_cache_before_default=>'NO'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883622581498488244)
,p_name=>'P1357_DEPARTMENT_NAME_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Department'
,p_source=>'ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883622980948488245)
,p_name=>'P1357_TIN'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_use_cache_before_default=>'NO'
,p_prompt=>'TIN'
,p_source=>'TIN'
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
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883623364413488245)
,p_name=>'P1357_NIS_NUM'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'NIB/SS No.'
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
 p_id=>wwv_flow_imp.id(3883623716627488251)
,p_name=>'P1357_PERIOD_END'
,p_source_data_type=>'DATE'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Period End'
,p_source=>'PERIOD_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624116678488251)
,p_name=>'P1357_PAYMENT_TYPE_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Frequency'
,p_source=>'PAYMENT_TYPE_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624132096488184)
,p_name=>'P1357_GROSS_TAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Gross Taxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_TAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624509500488251)
,p_name=>'P1357_PAY_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Pay Method'
,p_source=>'PAYMENT_MODE_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624529941488184)
,p_name=>'P1357_GROSS_TAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Gross Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_TAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624879802488186)
,p_name=>'P1357_GROSS_NONTAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Gross Nontaxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_NONTAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883624926415488251)
,p_name=>'P1357_POSITION_NAME_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Position'
,p_source=>'POSITION_NAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883625327582488186)
,p_name=>'P1357_GROSS_NONTAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Gross Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_NONTAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883625383231488252)
,p_name=>'P1357_EMP_COMPANY_NO_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Emp No .'
,p_source=>'EMP_COMPANY_NO_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883625739441488186)
,p_name=>'P1357_TOTAL_TAX_EARNINGS_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Total Tax Earnings Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_TAX_EARNINGS_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883625759658488252)
,p_name=>'P1357_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626136474488186)
,p_name=>'P1357_TOTAL_TAX_EARNINGS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Total Tax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_TAX_EARNINGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626180341488253)
,p_name=>'P1357_EMPLOYEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Employee'
,p_source=>'SURNAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626508458488253)
,p_name=>'P1357_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Payslip No.'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626534938488187)
,p_name=>'P1357_TOTAL_NONTAX_EARNINGS_YT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Total Nontax Earnings Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_NONTAX_EARNINGS_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626926200488187)
,p_name=>'P1357_TOTAL_NONTAX_EARNINGS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Total Nontax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_NONTAX_EARNINGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883626972674488255)
,p_name=>'P1357_ORGANISATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Organisation Name'
,p_source=>'ORGANISATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883627318240488187)
,p_name=>'P1357_MISC_TAX_PAYMENT_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Tax Payment Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_TAX_PAYMENT_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883627705701488187)
,p_name=>'P1357_MISC_TAX_PAYMENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Tax Payment'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_TAX_PAYMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883628162839488188)
,p_name=>'P1357_MISC_NONTAX_PAYMENT_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Nontax Payment Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_NONTAX_PAYMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883628565392488188)
,p_name=>'P1357_MISC_NONTAX_PAYMENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3794118333935202955)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Nontax Payment'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_NONTAX_PAYMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883643456779488190)
,p_name=>'P1357_NET_PAY_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Net Pay Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NET_PAY_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883643910739488190)
,p_name=>'P1357_NET_PAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Net Pay'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NET_PAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883644296988488191)
,p_name=>'P1357_TOTAL_DEDUCTION_YTD'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Deduction Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_DEDUCTION_YTD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883644694123488191)
,p_name=>'P1357_TOTAL_DEDUCTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Total Deduction'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_DEDUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883645120484488192)
,p_name=>'P1357_EDUCATION_LEVY_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Education Levy Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EDUCATION_LEVY_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883645479832488192)
,p_name=>'P1357_EDUCATION_LEVY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Education Levy'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EDUCATION_LEVY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883645863346488193)
,p_name=>'P1357_NIS_EMPLOYEE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'NIB/SS Employee Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NIS_EMPLOYEE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883646243479488195)
,p_name=>'P1357_NIS_EMPLOYEE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'NIB/SS Employee'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NIS_EMPLOYEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883646719336488195)
,p_name=>'P1357_UNION_DUES_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Union Dues Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'UNION_DUES_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883647033411488195)
,p_name=>'P1357_UNION_DUES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Union Dues'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'UNION_DUES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883647510691488197)
,p_name=>'P1357_MEDICAL_SUM_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Medical Sum Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MEDICAL_SUM_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883647871154488197)
,p_name=>'P1357_MEDICAL_SUM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Medical Sum'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MEDICAL_SUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883648251039488197)
,p_name=>'P1357_MISC_DEDUCTION_SUM_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Deduction Sum Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_DEDUCTION_SUM_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883648690488488197)
,p_name=>'P1357_MISC_DEDUCTION_SUM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Misc Deduction Sum'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_DEDUCTION_SUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883649128851488199)
,p_name=>'P1357_NIS_CONTRIBUTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'NIB/SS Contribution'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NIS_CONTRIBUTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883649463663488199)
,p_name=>'P1357_TAX_AMOUNT_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Tax Amount Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TAX_AMOUNT_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883649845759488199)
,p_name=>'P1357_TAX_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(3794118519522208216)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Tax Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TAX_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883677267278488213)
,p_name=>'P1357_BENEFIT_TAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Benefit Taxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_TAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883677631665488214)
,p_name=>'P1357_BENEFIT_TAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Benefit Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_TAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883678038784488214)
,p_name=>'P1357_BENEFIT_NONTAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Benefit Nontaxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_NONTAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883678498792488215)
,p_name=>'P1357_BENEFIT_NONTAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Benefit Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_NONTAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883678894034488215)
,p_name=>'P1357_INCENTIVES_TAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Incentives Taxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_TAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883679241080488216)
,p_name=>'P1357_INCENTIVES_TAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Incentives Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_TAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883679658332488216)
,p_name=>'P1357_INCENTIVES_NONTAXABLE_YT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Incentives Nontaxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_NONTAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883680115174488217)
,p_name=>'P1357_INCENTIVES_NONTAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Incentives Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_NONTAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883680339965488218)
,p_name=>'P1357_ALLOWANCE_TAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Allowance Taxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_TAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883680781535488219)
,p_name=>'P1357_ALLOWANCE_TAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Allowance Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_TAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883681219985488219)
,p_name=>'P1357_ALLOWANCE_NONTAXABLE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Allowance Nontaxable Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_NONTAXABLE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883681586257488220)
,p_name=>'P1357_ALLOWANCE_NONTAXABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Allowance Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_NONTAXABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883681992252488221)
,p_name=>'P1357_FREEPAY_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Freepay Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'FREEPAY_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883682408979488221)
,p_name=>'P1357_HOURLY_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'HOURLY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883682747983488222)
,p_name=>'P1357_BASIC_PERSONAL_RATE_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Basic Personal Rate Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BASIC_PERSONAL_RATE_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883683171739488222)
,p_name=>'P1357_BASIC_PERSONAL_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Basic Personal Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BASIC_PERSONAL_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883683608117488223)
,p_name=>'P1357_TIME_TAX_EARNINGS_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Time Tax Earnings Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_TAX_EARNINGS_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883683979577488223)
,p_name=>'P1357_TIME_TAX_EARNINGS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Time Tax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_TAX_EARNINGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883684392371488224)
,p_name=>'P1357_TIME_NONTAX_EARNINGS_YTD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Time Nontax Earnings Ytd'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_NONTAX_EARNINGS_YTD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3883684819427488224)
,p_name=>'P1357_TIME_NONTAX_EARNINGS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3794118736491213158)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Time Nontax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_NONTAX_EARNINGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3891171040048771194)
,p_name=>'P1357_PAGE_RETURN'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901293552343849284)
,p_name=>'P1357_GROSS_NIS_BKPAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3901198228711849310)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Gross Bkpay'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_NIS_BKPAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901293684990849285)
,p_name=>'P1357_TAX_AMOUNT_BKPAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3901198228711849310)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'Tax Amount Bkpay'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TAX_AMOUNT_BKPAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901293786718849286)
,p_name=>'P1357_NIS_EMPLOYEE_BKPAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3901198228711849310)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'NIB/SS Employee Bkpay'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NIS_EMPLOYEE_BKPAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901293835789849287)
,p_name=>'P1357_ADD_FREEPAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3901198228711849310)
,p_item_source_plug_id=>wwv_flow_imp.id(3794170039775391775)
,p_prompt=>'No. Pass Period'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ADD_FREEPAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70114177833552800)
,p_name=>'View Payslips'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70052467104553004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70114607707552798)
,p_event_id=>wwv_flow_imp.id(70114177833552800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
' values(''EMPLOYEE'', :P1357_EMP_ID, 5752, :app_session);',
' ',
'  commit;',
'end;'))
,p_attribute_02=>'P1357_EMP_ID, APP_SESSION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70115166234552797)
,p_event_id=>wwv_flow_imp.id(70114177833552800)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:|EARNINGS_PERIOD_ID=&P1357_EARNINGS_PERIOD_ID.|IN_ORG_ID=&APP_ORG_ID.|SEARCH_OPTION=EMPLOYEE|SUPPRESS_DETAILS=|SESSION_ID=&APP_SESSION.|allEmployees=0|BA'
||'NK=,PeoplePay_GPL/02_PAYROLL/Payslip_Report'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}*/',
'',
'',
'',
'// var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/Peoplepay_GPL_TRAINING/02_PAYROLL/Payslip_Report-EARNINGS_PERIOD_ID=&P1357_EARNINGS_PERIOD_ID.-IN_ORG_ID=&APP_ORG_ID.-SEARCH_OPTION=EMPLOYEE-SUPPRESS_DETAILS=-SESSIO'
||'N_ID=&APP_SESSION.-allEmployees=0-BANK='',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'// if (window.focus) {win.focus();}',
'',
'var win = window.open(''&P1357_REPORT_URL.&p2=/reports/PeoplePay_Multi_Cloud/02_PAYROLL/Standard_Payslip_v3.3-P_ORG_ID=&APP_ORG_ID.-ID=&P1357_PAY_BATCH_ID.-PAYSLIP_ID=&P1357_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollb'
||'ars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}',
'',
'',
'// /reports/PeoplePay_Multi_Cloud/02_PAYROLL/Payslip_Report-EARNINGS_PERIOD_ID=23920-IN_ORG_ID=42757-SEARCH_OPTION=EMPLOYEE-SUPPRESS_DETAILS=-SESSION_ID=105969426380174-allEmployees=1-BANK=-PERIOD_MONTH_YEAR=20247-Details=#page=1&zoom=auto,0,-101'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70113759724552801)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>70113759724552801
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70113388604552802)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DisplayEmpPhoto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_css varchar2(32767);',
'begin',
'',
'   l_css := ''.empphoto { '' ||',
'            ''   background-position-x: center;''||',
'            ''   background-position-y: center;'' ||',
'            ''   background-image: url('''''' || APEX_UTIL.GET_BLOB_FILE_SRC(''P1261_IND_PHOTO'',:P1357_INDIVIDUAL) || ''''''); '' ||',
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
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>70113388604552802
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70062282727552969)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3794170039775391775)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmPayrollAnalysisDebug'
,p_internal_uid=>70062282727552969
);
wwv_flow_imp.component_end;
end;
/
