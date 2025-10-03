prompt --application/pages/page_01507
begin
--   Manifest
--     PAGE: 01507
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
 p_id=>1507
,p_name=>'frmPayrollAnalysisNeg'
,p_step_title=>'Payroll Analysis for Negative or Zero Net Payment'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_javascript_code=>'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475511902119216005)
,p_plug_name=>'breadcrumb'
,p_title=>'Zero and Negative Payroll'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3453703027628586675)
,p_plug_name=>'View Employee Negative NetPay Payslip'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(3453651321788397855)
,p_plug_name=>'Earnings Totals'
,p_parent_plug_id=>wwv_flow_imp.id(3453703027628586675)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3453651507375403116)
,p_plug_name=>'Deductions Summary'
,p_parent_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3453641419861208056)
,p_plug_name=>'Deduction Details'
,p_parent_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>32
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PMG_PAYROLLDEDUCTION.ID as ID,DESCRIPTION,',
'    PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO as PAY_SLIPNO,',
'    PA_PMG_PAYROLLDEDUCTION.DEDUCTION_NO as DEDUCTION_NO,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED as AMOUNT_DEDUCTED,',
'    PA_PMG_PAYROLLDEDUCTION.AMOUNT_DEDUCTED_YTD as AMOUNT_DEDUCTED_YTD, ',
'    PA_PMG_PAYROLLDEDUCTION.EXPENSE_CODE as EXPENSE_CODE',
' from PA_PMG_PAYROLLDEDUCTIONneg PA_PMG_PAYROLLDEDUCTION join pa_pcf_deductioncode b on upper(b.expense_code) = upper(PA_PMG_PAYROLLDEDUCTION.expense_code)',
'WHERE PA_PMG_PAYROLLDEDUCTION.PAY_SLIPNO=:P1507_ID',
'AND   UPPER(PA_PMG_PAYROLLDEDUCTION.DEDUCTION_TYPE)=''EMPLOYEE''',
'and b.org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1507_ID'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from PA_PMG_PAYROLLDEDUCTIONneg',
'WHERE PAY_SLIPNO=:P1507_ID'))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(474762458152860137)
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
,p_internal_uid=>285867190042235503
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474762554708860138)
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
 p_id=>wwv_flow_imp.id(474762596314860139)
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
 p_id=>wwv_flow_imp.id(474762727787860140)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474762850150860141)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474762965314860142)
,p_db_column_name=>'AMOUNT_DEDUCTED_YTD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount Deducted Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474763054834860143)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474763131579860144)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(474777851796857340)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2858826'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXPENSE_CODE:DEDUCTION_NO:AMOUNT_DEDUCTED:AMOUNT_DEDUCTED_YTD:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3453651724344408058)
,p_plug_name=>'Earnings Summary'
,p_parent_plug_id=>wwv_flow_imp.id(3453703027628586675)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3453645601132325602)
,p_plug_name=>'Earnings Details'
,p_parent_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
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
'    B.RATE as RATE',
' from PA_PMG_PAYROLLINCOMEneg B JOIN HR_RCM_EMPENTITLE C ON C.ID=B.EMPENT_ID',
' JOIN PA_PCF_INCOMECODE A ON A.ID=C.INCOME_CODE_ID',
' WHERE  B.PAY_SLIPNO=:P1507_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1507_ID'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PMG_PAYROLLINCOMEneg',
'WHERE PAY_SLIPNO=:P1507_ID'))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(473070980277332079)
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
,p_internal_uid=>284175712166707445
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473071093079332080)
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
 p_id=>wwv_flow_imp.id(473071200063332081)
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
 p_id=>wwv_flow_imp.id(473071331006332082)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473071458412332083)
,p_db_column_name=>'INCOME_AMOUNT_YTD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Amount Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(473071541438332084)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474762170533860135)
,p_db_column_name=>'QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(474762354831860136)
,p_db_column_name=>'RATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(474777189500857363)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2858820'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPTION:QUANTITY:RATE:INCOME_AMOUNT:INCOME_AMOUNT_YTD:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3584713119114837799)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475511902119216005)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1507_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3584713554306837800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475511902119216005)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1507_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3584713872127837801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475511902119216005)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3584676351304837770)
,p_branch_action=>'f?p=&APP_ID.:1507:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3584676712914837770)
,p_branch_action=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.::P1507_ID:&P1507_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3584713554306837800)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3584677123441837771)
,p_branch_action=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.::P1507_ID:&P1507_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3584713119114837799)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584679629035837781)
,p_name=>'P1507_GROSS_TAXABLE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gross Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584680409617837781)
,p_name=>'P1507_GROSS_NONTAXABLE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gross Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GROSS_NONTAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584681235235837782)
,p_name=>'P1507_TOTAL_TAX_EARNINGS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Tax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_TAX_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584682023065837783)
,p_name=>'P1507_TOTAL_NONTAX_EARNINGS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Nontax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_NONTAX_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584682810395837783)
,p_name=>'P1507_MISC_TAX_PAYMENT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Misc Tax Payment'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_TAX_PAYMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584683588325837784)
,p_name=>'P1507_MISC_NONTAX_PAYMENT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3453651321788397855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Misc Nontax Payment'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_NONTAX_PAYMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584687436364837786)
,p_name=>'P1507_NET_PAY'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Net Pay'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NET_PAY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584688171911837786)
,p_name=>'P1507_NO_PAY_EARNINGS'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No pay earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NO_PAY_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584688984269837786)
,p_name=>'P1507_TOTAL_DEDUCTION'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Deduction'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584689821828837786)
,p_name=>'P1507_EDUCATION_LEVY'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Education Levy'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EDUCATION_LEVY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584690660744837787)
,p_name=>'P1507_NIS_EMPLOYEE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIB/SS Employee'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'NIS_EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584691379118837787)
,p_name=>'P1507_UNION_DUES'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Union Dues'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'UNION_DUES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584692264061837787)
,p_name=>'P1507_MEDICAL_SUM'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Medical Sum'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MEDICAL_SUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584693014161837787)
,p_name=>'P1507_MISC_DEDUCTION_SUM'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Misc Deduction Sum'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'MISC_DEDUCTION_SUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584693456633837787)
,p_name=>'P1507_NIS_CONTRIBUTION'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_prompt=>'NIB/SS Contribution'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584694244436837788)
,p_name=>'P1507_TAX_AMOUNT'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(3453651507375403116)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tax Amount'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TAX_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584698436705837792)
,p_name=>'P1507_BENEFIT_TAXABLE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Benefit Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584699196189837794)
,p_name=>'P1507_BENEFIT_NONTAXABLE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Benefit Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'BENEFIT_NONTAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584699993441837794)
,p_name=>'P1507_INCENTIVES_TAXABLE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Incentives Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584700773649837794)
,p_name=>'P1507_INCENTIVES_NONTAXABLE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Incentives Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'INCENTIVES_NONTAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584701578571837794)
,p_name=>'P1507_ALLOWANCE_TAXABLE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Allowance Taxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584702371889837795)
,p_name=>'P1507_ALLOWANCE_NONTAXABLE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Allowance Nontaxable'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ALLOWANCE_NONTAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584703243478837795)
,p_name=>'P1507_HOURLY_RATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584703976991837796)
,p_name=>'P1507_BASIC_PERSONAL_RATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_prompt=>'Basic Personal Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584704836707837796)
,p_name=>'P1507_TIME_TAX_EARNINGS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Tax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_TAX_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584705615856837796)
,p_name=>'P1507_TIME_NONTAX_EARNINGS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3453651724344408058)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Nontax Earnings'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TIME_NONTAX_EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584706316356837797)
,p_name=>'P1507_ID_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
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
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584707149837837797)
,p_name=>'P1507_ID_PREV'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584707546125837797)
,p_name=>'P1507_ID_NEXT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584707938914837797)
,p_name=>'P1507_EARNINGS_PERIOD_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584708693327837798)
,p_name=>'P1507_TIN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584709116421837798)
,p_name=>'P1507_NIS_NUM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIB/SS No.'
,p_source=>'NIS_NUM'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584709522112837798)
,p_name=>'P1507_PERIOD_END'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Period End'
,p_source=>'PERIOD_END'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(3584709904143837798)
,p_name=>'P1507_PAYMENT_TYPE_HIST'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Frequency'
,p_source=>'PAYMENT_TYPE_HIST'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584710307120837798)
,p_name=>'P1507_PAY_METHOD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pay Method'
,p_source=>'PAY_METHOD'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584710702184837798)
,p_name=>'P1507_POSITION_NAME_HIST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Position'
,p_source=>'POSITION_NAME_HIST'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584711127634837798)
,p_name=>'P1507_EMP_COMPANY_NO_HIST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp No .'
,p_source=>'EMP_COMPANY_NO_HIST'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(3584711546958837799)
,p_name=>'P1507_DATE_EMPLOYED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Employed'
,p_source=>'DATE_EMPLOYED'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584711932302837799)
,p_name=>'P1507_EMPLOYEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMPLOYEE'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584712338285837799)
,p_name=>'P1507_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payslip No.'
,p_source=>'ID'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3584712719063837799)
,p_name=>'P1507_ORGANISATION_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3453703027628586675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation Name'
,p_source=>'ORGANISATION_NAME'
,p_source_type=>'DB_COLUMN'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3584678368210837772)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from VW_PAYSLIPNEG'
,p_attribute_02=>'VW_PAYSLIPNEG'
,p_attribute_03=>'P1507_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3162886375012841198
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3584678770439837772)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'VW_PAYSLIPNEG'
,p_attribute_03=>'P1507_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'EMPLOYEE'
,p_attribute_09=>'P1507_ID_NEXT'
,p_attribute_10=>'P1507_ID_PREV'
,p_attribute_13=>'P1507_ID_COUNT'
,p_attribute_14=>wwv_flow_string.join(wwv_flow_t_varchar2(
'org_id = :P1355_ORGANISATION',
'AND EARNINGS_PERIOD_ID=DECODE(:P1355_PERIODS,''1'',EARNINGS_PERIOD_ID,:P1355_PERIODS)'))
,p_internal_uid=>3162886777241841198
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3584678016170837772)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of VW_PAYSLIP'
,p_attribute_02=>'VW_PAYSLIP'
,p_attribute_03=>'P1507_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3162886022972841198
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3584677595515837772)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3162885602317841198
);
wwv_flow_imp.component_end;
end;
/
