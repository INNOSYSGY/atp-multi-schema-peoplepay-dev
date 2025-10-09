prompt --application/pages/page_00179
begin
--   Manifest
--     PAGE: 00179
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>179
,p_name=>'rptPayrollLegacy'
,p_alias=>'RPTPAYROLLLEGACY'
,p_step_title=>'Payroll Legacy'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825717571127569059)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(639339273949305444)
,p_plug_name=>'Payroll Incomes Direct Load'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  payment_type,surname, first_name, earnings_period_id, income_code, period_start,period_end,pay_slipno',
',emp_id, description, income_amount, nis_deduction,taxable',
',fn_legacy_Data(income_code, period_start, emp_id) legacy_Data',
'from AA_LEGACY_RECONCILATION',
'where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'and emp_id = nvl(:P179_EMPLOYEE,emp_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P179_EARNINGS_PERIOD_ID,P179_EMPLOYEE,P179_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptPayrollLegacy'
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
 p_id=>wwv_flow_imp.id(639339403848305445)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>228619445548495245
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674529737047578506)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'A'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674529763001578507)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>120
,p_column_identifier=>'B'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674530461187578514)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>190
,p_column_identifier=>'C'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674530670171578516)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>210
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674530910133578518)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>230
,p_column_identifier=>'E'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531052965578519)
,p_db_column_name=>'SURNAME'
,p_display_order=>240
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531128220578520)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>250
,p_column_identifier=>'G'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531199943578521)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>260
,p_column_identifier=>'H'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531284089578522)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>270
,p_column_identifier=>'I'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531434817578523)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>280
,p_column_identifier=>'J'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531534059578524)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>290
,p_column_identifier=>'K'
,p_column_label=>'Nis Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531564251578525)
,p_db_column_name=>'TAXABLE'
,p_display_order=>300
,p_column_identifier=>'L'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674531747543578526)
,p_db_column_name=>'LEGACY_DATA'
,p_display_order=>310
,p_column_identifier=>'M'
,p_column_label=>'Legacy Data'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556783225713213)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>320
,p_column_identifier=>'N'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(674539899679590443)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2638200'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SURNAME:FIRST_NAME:PERIOD_START:PERIOD_END:EMP_ID:EARNINGS_PERIOD_ID:INCOME_CODE:DESCRIPTION:INCOME_AMOUNT:LEGACY_DATA:PAY_SLIPNO:NIS_DEDUCTION:TAXABLE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(674531770542578527)
,p_plug_name=>'Payroll Deductions Direct Load'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    payment_type,',
'    surname,',
'    first_name,',
'    earnings_period_id,',
'    expense_code,',
'    period_start,',
'    period_end,',
'    pay_slipno,',
'    emp_id,',
'    description,',
'    amount_deducted,',
'    reduce_tax_nis_total,',
'    fn_legacy_Data_ded(expense_code, period_start, emp_id) legacy_Data ',
'FROM aa_legacy_reconcilation_ded',
'where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'and emp_id = nvl(:P179_EMPLOYEE,emp_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P179_EARNINGS_PERIOD_ID,P179_EMPLOYEE,P179_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptPayrollLegacy'
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
 p_id=>wwv_flow_imp.id(674531944516578528)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>263811986216768328
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674533026338578539)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674533078818578540)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674534073779578550)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674555954007713204)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556108877713206)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556248467713207)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556297910713208)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556664680713212)
,p_db_column_name=>'LEGACY_DATA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Legacy Data'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674556942489713214)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674557003877713215)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674557072339713216)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674557228005713217)
,p_db_column_name=>'REDUCE_TAX_NIS_TOTAL'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Reduce Tax Nis Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674557571812713221)
,p_db_column_name=>'SURNAME'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(674561392956724632)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2638415'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'FIRST_NAME:DESCRIPTION:EXPENSE_CODE:AMOUNT_DEDUCTED:LEGACY_DATA:PAY_SLIPNO:PAYMENT_TYPE:PERIOD_END:PERIOD_START:REDUCE_TAX_NIS_TOTAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686441113999247907)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686469827091261789)
,p_plug_name=>'General Payroll Legacy'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*, a.*, abs(b.leg_net_pay - a.net_pay) netpay_diff from',
'',
'(',
'',
'select pd.emp_company_no_hist empcompanyno,pd.emp_id,',
'       earnings_period_id,',
'       gross_taxable + gross_nontaxable total_earnings,',
'       nis_employee,',
'       nis_employer,',
'       tax_amount,',
'       total_deduction,',
'       net_pay,',
'       pkg_global_fnts.fn_hourlyrate(pd.emp_id,pd.period_end) hourly_rate',
'from pa_pmg_payrolldtl pd',
'where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'and pd.org_id =:APP_ORG_ID',
'and pd.emp_id =nvl(:P179_EMPLOYEE, pd.emp_id)',
'',
') a',
'',
'full join ',
'',
'(',
'',
'    SELECT ',
'    EMP_ID empid,',
'    EMP_NO,',
'    EMP_NAME,',
'    DEPARTMENT,',
'    DESIGNATION,',
'    epid,',
'    REG_NIS leg_nis,',
'    RATE leg_rate,',
'    TOT_EARN leg_total_earnings,',
'    PAYE leg_tax_amount,',
'    TOT_DED leg_total_deduct,',
'    NET_PAY leg_net_pay',
'FROM ',
'(',
'    SELECT ',
'        EMP_ID,',
'        EMP_NO,',
'        EMP_NAME,',
'        DEPARTMENT,',
'        DESIGNATION,',
'        REG_NIS,',
'        RATE,',
'        TOT_EARN,',
'        PAYE,',
'        TOT_DED,',
'        NET_PAY,',
'        EARNINGS_PERIOD_ID epid,',
'        BASIC_INCOME_ID,',
'        OVER_TIME_AMOUNT,       OVER_TIME_INCOME_ID,',
'        DOUBLE_TIME_AMOUNT,     DOUBLE_TIME_INCOME_ID,',
'        BONUS,                  BONUS_INCOME_ID,',
'        C_ALLOW,                C_ALLOW_INCOME_ID,',
'        R_ALLOW,                R_ALLOW_INCOME_ID,',
'        ACT,                    ACT_INCOME_ID,',
'        T_ALLOW,                T_ALLOW_INCOME_ID,',
'        E_ALLOW,                E_ALLOW_INCOME_ID,',
'        OUT_ALL,                OUT_ALL_INCOME_ID,',
'        MEAL_ALLOW,             MEAL_ALLOW_INCOME_ID,',
'        LPA,                    LPA_INCOME_ID,',
'        TRM_FIN,                TRM_FIN_DEDUCT_ID,',
'        HALFTIME_AMOUNT,        HALFTIME_AMOUNT_INCOME_ID,',
'        NO_PAY_AMOUNT,          NO_PAY_AMOUNT_DED_ID,',
'        SAL_ADV,                SAL_ADV_DED_ID,',
'        PENSION,                PENSION_DED_ID',
'        ',
'    FROM AA_OLD_PAYROLLS',
'    where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'    and emp_id = nvl(:P179_EMPLOYEE,emp_id)',
')',
') b on a.emp_id = b.empid ',
'        and a.earnings_period_id = b.epid ',
'       ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P179_EARNINGS_PERIOD_ID,P179_EMPLOYEE,P179_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptPayrollLegacy'
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
 p_id=>wwv_flow_imp.id(686469865269261790)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>158637315738393355
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686469993185261791)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686470142670261792)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686470174324261793)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686470330149261794)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686472540750262166)
,p_db_column_name=>'NET_PAY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686472656173262167)
,p_db_column_name=>'EMP_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686472667300262168)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631518271363283031)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BG'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631518454394283032)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BH'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631518848325283036)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>340
,p_column_identifier=>'BL'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519451569283042)
,p_db_column_name=>'LEG_NIS'
,p_display_order=>350
,p_column_identifier=>'BR'
,p_column_label=>'Leg Nis'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519484933283043)
,p_db_column_name=>'LEG_RATE'
,p_display_order=>360
,p_column_identifier=>'BS'
,p_column_label=>'Leg Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519615389283044)
,p_db_column_name=>'LEG_TOTAL_EARNINGS'
,p_display_order=>370
,p_column_identifier=>'BT'
,p_column_label=>'Leg Total Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519663659283045)
,p_db_column_name=>'LEG_TAX_AMOUNT'
,p_display_order=>380
,p_column_identifier=>'BU'
,p_column_label=>'Leg Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519796815283046)
,p_db_column_name=>'LEG_TOTAL_DEDUCT'
,p_display_order=>390
,p_column_identifier=>'BV'
,p_column_label=>'Leg Total Deduct'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631519908226283047)
,p_db_column_name=>'LEG_NET_PAY'
,p_display_order=>400
,p_column_identifier=>'BW'
,p_column_label=>'Leg Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631520046093283048)
,p_db_column_name=>'TOTAL_EARNINGS'
,p_display_order=>410
,p_column_identifier=>'BX'
,p_column_label=>'Total Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631520088189283049)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>420
,p_column_identifier=>'BY'
,p_column_label=>'Nis Employee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(631520159808283050)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>430
,p_column_identifier=>'BZ'
,p_column_label=>'Nis Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616687854701036601)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>440
,p_column_identifier=>'CA'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616687888270036602)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>450
,p_column_identifier=>'CB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616687971696036603)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>460
,p_column_identifier=>'CC'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688096828036604)
,p_db_column_name=>'NETPAY_DIFF'
,p_display_order=>470
,p_column_identifier=>'CD'
,p_column_label=>'Netpay Diff'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(616719072780106945)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'netpaydiff'
,p_report_seq=>10
,p_report_alias=>'2059992'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPCOMPANYNO:EMP_NAME:DEPARTMENT:DESIGNATION:HOURLY_RATE:TOTAL_EARNINGS:NIS_EMPLOYEE:NIS_EMPLOYER:TAX_AMOUNT:TOTAL_DEDUCTION:NET_PAY:LEG_RATE:LEG_TOTAL_EARNINGS:LEG_NIS:LEG_TAX_AMOUNT:LEG_TOTAL_DEDUCT:LEG_NET_PAY:NETPAY_DIFF:'
,p_sum_columns_on_break=>'BASIC:TOT_EARN:TOT_DED:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(616719885537106949)
,p_report_id=>wwv_flow_imp.id(616719072780106945)
,p_name=>'net_pay_diff'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NETPAY_DIFF'
,p_operator=>'>'
,p_expr=>'1'
,p_condition_sql=>' (case when ("NETPAY_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(616719491068106947)
,p_report_id=>wwv_flow_imp.id(616719072780106945)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'NETPAY_DIFF'
,p_operator=>'>'
,p_expr=>'1'
,p_condition_sql=>'"NETPAY_DIFF" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(686562090152268121)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPCOMPANYNO:EMP_NAME:DEPARTMENT:DESIGNATION:HOURLY_RATE:TOTAL_EARNINGS:NIS_EMPLOYEE:NIS_EMPLOYER:TAX_AMOUNT:TOTAL_DEDUCTION:NET_PAY:LEG_RATE:LEG_TOTAL_EARNINGS:LEG_NIS:LEG_TAX_AMOUNT:LEG_TOTAL_DEDUCT:LEG_NET_PAY:NETPAY_DIFF:'
,p_sum_columns_on_break=>'BASIC:TOT_EARN:TOT_DED:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(616723119397111933)
,p_report_id=>wwv_flow_imp.id(686562090152268121)
,p_name=>'netpaydiff'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NETPAY_DIFF'
,p_operator=>'>'
,p_expr=>'1'
,p_condition_sql=>' (case when ("NETPAY_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686475743960262198)
,p_plug_name=>'Payroll Deductions via Posting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*, a.* from',
'',
'(',
'',
'select pd.emp_company_no_hist empcompanyno,pd.emp_id, amount_deducted,ad.expense_id,ded.expense_code,ded.description,',
'       earnings_period_id',
'from pa_pmg_payrolldtl pd',
'join pa_pmg_payrolldeduction ic on pd.id = ic.pay_slipno',
'join pa_pcf_admindeduction ad on ic.adm_deduction_id = ad.id',
'join pa_pcf_deductioncode ded on ded.id = ad.expense_id',
'where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'and pd.org_id =:APP_ORG_ID',
'and pd.emp_id =nvl(:P179_EMPLOYEE, pd.emp_id)',
'',
') a',
'',
'full join ',
'',
'(',
'',
'    SELECT ',
'    EMP_ID empid,',
'    EMP_NO,',
'    EMP_NAME,',
'    DEPARTMENT,',
'    DESIGNATION,',
'    epid,',
'    REG_NIS,',
'    RATE,',
'    TOT_EARN,',
'    PAYE,',
'    TOT_DED,',
'    NET_PAY,',
'    ITEM_TYPE,',
'    ITEM_VALUE,',
'    ITEM_ID',
'FROM ',
'(',
'    SELECT ',
'        EMP_ID ,',
'        EMP_NO,',
'        EMP_NAME,',
'        DEPARTMENT,',
'        DESIGNATION,',
'        REG_NIS,',
'        RATE,',
'        TOT_EARN,',
'        PAYE,',
'        TOT_DED,',
'        NET_PAY,',
'',
'        EARNINGS_PERIOD_ID epid,',
'                          BASIC_INCOME_ID,',
'        OVER_TIME_AMOUNT,       OVER_TIME_INCOME_ID,',
'        DOUBLE_TIME_AMOUNT,     DOUBLE_TIME_INCOME_ID,',
'        BONUS,                  BONUS_INCOME_ID,',
'        C_ALLOW,                C_ALLOW_INCOME_ID,',
'        R_ALLOW,                R_ALLOW_INCOME_ID,',
'        ACT,                    ACT_INCOME_ID,',
'        T_ALLOW,                T_ALLOW_INCOME_ID,',
'        E_ALLOW,                E_ALLOW_INCOME_ID,',
'        OUT_ALL,                OUT_ALL_INCOME_ID,',
'        MEAL_ALLOW,             MEAL_ALLOW_INCOME_ID,',
'        LPA,                    LPA_INCOME_ID,',
'        TRM_FIN,                TRM_FIN_DEDUCT_ID,',
'        HALFTIME_AMOUNT,        HALFTIME_AMOUNT_INCOME_ID,',
'        NO_PAY_AMOUNT,          NO_PAY_AMOUNT_DED_ID,',
'        SAL_ADV,                SAL_ADV_DED_ID,',
'        PENSION,                PENSION_DED_ID',
'        ',
'    FROM AA_OLD_PAYROLLS',
'    where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'    and emp_id = nvl(:P179_EMPLOYEE,emp_id)',
')',
'UNPIVOT ',
'(',
'    (ITEM_VALUE, ITEM_ID) FOR ITEM_TYPE IN',
'    (',
'        (OVER_TIME_AMOUNT,      OVER_TIME_INCOME_ID)         AS ''OVER_TIME_AMOUNT'',',
'        (DOUBLE_TIME_AMOUNT,    DOUBLE_TIME_INCOME_ID)       AS ''DOUBLE_TIME_AMOUNT'',',
'        (BONUS,                 BONUS_INCOME_ID)             AS ''BONUS'',',
'        (C_ALLOW,               C_ALLOW_INCOME_ID)           AS ''C_ALLOW'',',
'        (R_ALLOW,               R_ALLOW_INCOME_ID)           AS ''R_ALLOW'',',
'        (ACT,                   ACT_INCOME_ID)               AS ''ACT'',',
'        (T_ALLOW,               T_ALLOW_INCOME_ID)           AS ''T_ALLOW'',',
'        (E_ALLOW,               E_ALLOW_INCOME_ID)           AS ''E_ALLOW'',',
'        (OUT_ALL,               OUT_ALL_INCOME_ID)           AS ''OUT_ALL'',',
'        (MEAL_ALLOW,            MEAL_ALLOW_INCOME_ID)        AS ''MEAL_ALLOW'',',
'        (LPA,                   LPA_INCOME_ID)               AS ''LPA'',',
'        (TRM_FIN,               TRM_FIN_DEDUCT_ID)           AS ''TRM_FIN'',',
'        (HALFTIME_AMOUNT,       HALFTIME_AMOUNT_INCOME_ID)   AS ''HALFTIME_AMOUNT'',',
'        (NO_PAY_AMOUNT,         NO_PAY_AMOUNT_DED_ID)        AS ''NO_PAY_AMOUNT'',',
'        (SAL_ADV,               SAL_ADV_DED_ID)              AS ''SAL_ADV'',',
'        (PENSION,               PENSION_DED_ID)              AS ''PENSION''',
'    )',
')',
'WHERE not (ITEM_TYPE  LIKE ''%ALLOW%'' OR ITEM_TYPE  IN (''SAL_ADV'',''ACT'',''DOUBLE_TIME_AMOUNT'',''OUT_ALL'',''BONUS'',''LPA'',''OVER_TIME_AMOUNT'',''HALTIME_AMOUNT''))',
'',
'',
'',
'',
'',
') b on a.emp_id = b.empid ',
'        and a.earnings_period_id = b.epid ',
'        and a.expense_id = b.item_id',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P179_EARNINGS_PERIOD_ID,P179_EMPLOYEE,P179_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptPayrollLegacy'
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
 p_id=>wwv_flow_imp.id(686475788196262199)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>158643238665393764
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686475910917262200)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686476006563262201)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686476057407264352)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686476219165264353)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686476392629264355)
,p_db_column_name=>'RATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686477806723264369)
,p_db_column_name=>'TOT_EARN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Earn'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686477864939264370)
,p_db_column_name=>'REG_NIS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Reg Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686478092105264372)
,p_db_column_name=>'PAYE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Paye'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686478309654264374)
,p_db_column_name=>'TOT_DED'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Tot Ded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686478412921264375)
,p_db_column_name=>'NET_PAY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686478478697264376)
,p_db_column_name=>'EMP_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686478582924264377)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689344779036616)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BG'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689440107036617)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BH'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689466703036618)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>310
,p_column_identifier=>'BI'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689584350036619)
,p_db_column_name=>'ITEM_VALUE'
,p_display_order=>320
,p_column_identifier=>'BJ'
,p_column_label=>'Item Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689750349036620)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>330
,p_column_identifier=>'BK'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689834102036621)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>340
,p_column_identifier=>'BL'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689867984036622)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>350
,p_column_identifier=>'BM'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689991600036623)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>360
,p_column_identifier=>'BN'
,p_column_label=>'Expense Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616690099293036624)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>370
,p_column_identifier=>'BO'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616690205232036625)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>380
,p_column_identifier=>'BP'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(686563448910268164)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399101'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:DESCRIPTION:EXPENSE_CODE:ITEM_TYPE:ITEM_VALUE:AMOUNT_DEDUCTED:'
,p_sort_column_1=>'EMP_NAME'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'REG_NIS:PENSION:PAYE:NO_PAY_AMOUNT:SAL_ADV:TOT_DED:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(616791891833321170)
,p_report_id=>wwv_flow_imp.id(686563448910268164)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ITEM_VALUE'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"ITEM_VALUE" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686481577662264357)
,p_plug_name=>'Payroll Incomes via Posting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*, a.* from',
'',
'(',
'',
'select pd.emp_company_no_hist empcompanyno,pd.emp_id, ic.income_code,et.income_code_id,inc.description,',
'       ic.income_type, ic.income_amount,',
'       earnings_period_id',
'from pa_pmg_payrolldtl pd',
'join pa_pmg_payrollincome ic on pd.id = ic.pay_slipno',
'join hr_rcm_empentitle et on et.id = ic.empent_id',
'join pa_pcf_incomecode inc on inc.id = et.income_code_id',
'where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'and pd.org_id =:APP_ORG_ID',
'and pd.emp_id =nvl(:P179_EMPLOYEE, pd.emp_id)',
'',
') a',
'',
'full join ',
'',
'(',
'',
'    SELECT ',
'    EMP_ID empid,',
'    EMP_NO,',
'    EMP_NAME,',
'    DEPARTMENT,',
'    DESIGNATION,',
'    epid,',
'    REG_NIS,',
'    RATE,',
'    TOT_EARN,',
'    PAYE,',
'    TOT_DED,',
'    NET_PAY,',
'    ITEM_TYPE,',
'    ITEM_VALUE,',
'    ITEM_ID',
'FROM ',
'(',
'    SELECT ',
'        EMP_ID ,',
'        EMP_NO,',
'        EMP_NAME,',
'        DEPARTMENT,',
'        DESIGNATION,',
'        REG_NIS,',
'        RATE,',
'        TOT_EARN,',
'        PAYE,',
'        TOT_DED,',
'        NET_PAY,',
'',
'        EARNINGS_PERIOD_ID epid,',
'                          BASIC_INCOME_ID,',
'        OVER_TIME_AMOUNT,       OVER_TIME_INCOME_ID,',
'        DOUBLE_TIME_AMOUNT,     DOUBLE_TIME_INCOME_ID,',
'        BONUS,                  BONUS_INCOME_ID,',
'        C_ALLOW,                C_ALLOW_INCOME_ID,',
'        R_ALLOW,                R_ALLOW_INCOME_ID,',
'        ACT,                    ACT_INCOME_ID,',
'        T_ALLOW,                T_ALLOW_INCOME_ID,',
'        E_ALLOW,                E_ALLOW_INCOME_ID,',
'        OUT_ALL,                OUT_ALL_INCOME_ID,',
'        MEAL_ALLOW,             MEAL_ALLOW_INCOME_ID,',
'        LPA,                    LPA_INCOME_ID,',
'        TRM_FIN,                TRM_FIN_DEDUCT_ID,',
'        HALFTIME_AMOUNT,        HALFTIME_AMOUNT_INCOME_ID,',
'        NO_PAY_AMOUNT,          NO_PAY_AMOUNT_DED_ID,',
'        SAL_ADV,                SAL_ADV_DED_ID,',
'        PENSION,                PENSION_DED_ID',
'        ',
'    FROM AA_OLD_PAYROLLS',
'    where earnings_period_id = :P179_EARNINGS_PERIOD_ID',
'    and emp_id = nvl(:P179_EMPLOYEE,emp_id)',
')',
'UNPIVOT ',
'(',
'    (ITEM_VALUE, ITEM_ID) FOR ITEM_TYPE IN',
'    (',
'        (OVER_TIME_AMOUNT,      OVER_TIME_INCOME_ID)         AS ''OVER_TIME_AMOUNT'',',
'        (DOUBLE_TIME_AMOUNT,    DOUBLE_TIME_INCOME_ID)       AS ''DOUBLE_TIME_AMOUNT'',',
'        (BONUS,                 BONUS_INCOME_ID)             AS ''BONUS'',',
'        (C_ALLOW,               C_ALLOW_INCOME_ID)           AS ''C_ALLOW'',',
'        (R_ALLOW,               R_ALLOW_INCOME_ID)           AS ''R_ALLOW'',',
'        (ACT,                   ACT_INCOME_ID)               AS ''ACT'',',
'        (T_ALLOW,               T_ALLOW_INCOME_ID)           AS ''T_ALLOW'',',
'        (E_ALLOW,               E_ALLOW_INCOME_ID)           AS ''E_ALLOW'',',
'        (OUT_ALL,               OUT_ALL_INCOME_ID)           AS ''OUT_ALL'',',
'        (MEAL_ALLOW,            MEAL_ALLOW_INCOME_ID)        AS ''MEAL_ALLOW'',',
'        (LPA,                   LPA_INCOME_ID)               AS ''LPA'',',
'        (TRM_FIN,               TRM_FIN_DEDUCT_ID)           AS ''TRM_FIN'',',
'        (HALFTIME_AMOUNT,       HALFTIME_AMOUNT_INCOME_ID)   AS ''HALFTIME_AMOUNT'',',
'        (NO_PAY_AMOUNT,         NO_PAY_AMOUNT_DED_ID)        AS ''NO_PAY_AMOUNT'',',
'        (SAL_ADV,               SAL_ADV_DED_ID)              AS ''SAL_ADV'',',
'        (PENSION,               PENSION_DED_ID)              AS ''PENSION''',
'    )',
')',
'WHERE (ITEM_TYPE  LIKE ''%ALLOW%'' OR ITEM_TYPE  IN (''SAL_ADV'',''ACT'',''DOUBLE_TIME_AMOUNT'',''OUT_ALL'',''BONUS'',''LPA'',''OVER_TIME_AMOUNT'',''HALTIME_AMOUNT''))',
'',
'',
'',
'',
'',
') b on a.emp_id = b.empid ',
'        and a.earnings_period_id = b.epid ',
'        and a.income_code_id = b.item_id',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P179_EARNINGS_PERIOD_ID,P179_EMPLOYEE,P179_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptPayrollLegacy'
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
 p_id=>wwv_flow_imp.id(686481695273264358)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>158649145742395923
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686481827491264359)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686481929579264360)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686481970032264361)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686482091213264362)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686482284296264364)
,p_db_column_name=>'RATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686483696754264378)
,p_db_column_name=>'TOT_EARN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Earn'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686483773588264379)
,p_db_column_name=>'REG_NIS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Reg Nis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686484042567264381)
,p_db_column_name=>'PAYE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Paye'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686484214504264383)
,p_db_column_name=>'TOT_DED'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Tot Ded'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686484320263264384)
,p_db_column_name=>'NET_PAY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686484380004264385)
,p_db_column_name=>'EMP_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(686484544786264386)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688165362036605)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BG'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688261425036606)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BH'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688390277036607)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>310
,p_column_identifier=>'BI'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688477066036608)
,p_db_column_name=>'ITEM_VALUE'
,p_display_order=>320
,p_column_identifier=>'BJ'
,p_column_label=>'Item Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688560662036609)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>330
,p_column_identifier=>'BK'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688744662036610)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>340
,p_column_identifier=>'BL'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688811657036611)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>350
,p_column_identifier=>'BM'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616688910768036612)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>360
,p_column_identifier=>'BN'
,p_column_label=>'Income Code Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689001935036613)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>370
,p_column_identifier=>'BO'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689071779036614)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>380
,p_column_identifier=>'BP'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616689195933036615)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>390
,p_column_identifier=>'BQ'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(686562711398268148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:RATE:DESCRIPTION:ITEM_TYPE:INCOME_CODE:ITEM_VALUE:INCOME_AMOUNT:'
,p_sort_column_1=>'EMP_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EMP_NO'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'BASIC:OVER_TIME_AMOUNT:DOUBLE_TIME_AMOUNT:BONUS:C_ALLOW:R_ALLOW:ACT:T_ALLOW:OUT_ALL:MEAL_ALLOW:TOT_EARN:TOT_DED:HALFTIME_AMOUNT:NET_PAY:TRM_FIN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(616759038865206589)
,p_report_id=>wwv_flow_imp.id(686562711398268148)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ITEM_VALUE'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'"ITEM_VALUE" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10240534613695580967)
,p_plug_name=>'Filter Options for Legacy Payroll'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(639336116630305412)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(686441113999247907)
,p_button_name=>'EXECUTE_PAYROLLS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute Payrolls'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(639336158458305413)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(686441113999247907)
,p_button_name=>'PURGE_PAYROLLS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Purge Payrolls'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(587137455536167642)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(686441113999247907)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(936010594175972529)
,p_name=>'P179_ORGDTL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_prompt=>'Search by Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select od.unit_name, od.id',
'from hr_hcf_orgstructuredtl od',
'where exists (select 1',
'              from hr_rcm_employee payep join AA_OLD_PAYROLLS aa on aa.emp_id = payep.id',
'              where payep.orgdtl_id = od.id',
'              and aa.earnings_period_id =:P179_EARNINGS_PERIOD_ID',
'              )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P179_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2675565639428407961)
,p_name=>'P179_PAY_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_prompt=>'Pay Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||w.company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  join HR_HCF_COMPANYYEAR w on w.id = PA_PCF_EARNINGPERIOD.company_year_id  ',
'      WHERE PA_PCF_EARNINGPERIOD.ORG_ID =:APP_ORG_ID    ',
'      and exists ( ',
'              select 1',
'              FROM AA_OLD_PAYROLLS A ',
'              where PA_PCF_EARNINGPERIOD.id=a.earnings_period_id      ',
'                  )',
'      ) ',
'ORDER BY C DESC, D DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>15
,p_grid_label_column_span=>1
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2675566010266407961)
,p_name=>'P179_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EARNINGS_PERIOD_ALL_LEG'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id,Earn_pay_status,A.START_PAID_FOR,A.END_PAID_FOR,EARNINGS_TYPE',
'from VW_EARNall a --NOTPAID a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=upper(a.payment_type)',
'              )',
'and exists (select 1',
'            from AA_OLD_PAYROLLS k',
'            where a.id = k.earnings_period_id',
'            )',
'and EXTRACT(year FROM end_date)||EXTRACT(month FROM end_date) =:P179_PAY_PERIOD ',
'order by payment_type, start_date desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P179_PAY_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'System will show only unpaid or unexecuted earning period.'
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
 p_id=>wwv_flow_imp.id(2675566922892407962)
,p_name=>'P179_EMPLOYEE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Search by Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp:-''||EMP_COMPANY_NO||'')'' Label, id',
'from VW_AVAILEMPLOYEEFULL w',
'where exists (select 1',
'                from AA_OLD_PAYROLLS a ',
'                where w.id = a.emp_id',
'                and EARNINGS_PERIOD_ID =:P179_EARNINGS_PERIOD_ID       ',
'            )   ',
'  and NVL(orgdtl_id,1) =nvl(:P179_ORGDTL_ID,NVL(orgdtl_id,1))  ',
'                        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P179_EARNINGS_PERIOD_ID,P179_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2675567352970407963)
,p_name=>'P179_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2675567675129407963)
,p_name=>'P179_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2675568164779407964)
,p_name=>'P179_PAY_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10240534613695580967)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(587398778970989160)
,p_name=>'refreshpayroll'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587399319474989157)
,p_event_id=>wwv_flow_imp.id(587398778970989160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686469827091261789)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587399750284989156)
,p_event_id=>wwv_flow_imp.id(587398778970989160)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'refresh Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686475743960262198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587400295326989155)
,p_event_id=>wwv_flow_imp.id(587398778970989160)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'refresh Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686481577662264357)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674557311664713218)
,p_event_id=>wwv_flow_imp.id(587398778970989160)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'refresh_direct_income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639339273949305444)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674557410882713219)
,p_event_id=>wwv_flow_imp.id(587398778970989160)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'refresh_direct_ded'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674531770542578527)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(587400672244989154)
,p_name=>'refreshpayroll1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_ORGDTL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587401227721989153)
,p_event_id=>wwv_flow_imp.id(587400672244989154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'org refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686469827091261789)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587401714349989152)
,p_event_id=>wwv_flow_imp.id(587400672244989154)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'org refresh deduction'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686475743960262198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587402165853989151)
,p_event_id=>wwv_flow_imp.id(587400672244989154)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'org refresh income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686481577662264357)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(587402590305989151)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587402980588989150)
,p_event_id=>wwv_flow_imp.id(587402590305989151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686469827091261789)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587403514804989149)
,p_event_id=>wwv_flow_imp.id(587402590305989151)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh deduction'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686475743960262198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(587403996786989147)
,p_event_id=>wwv_flow_imp.id(587402590305989151)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686481577662264357)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674555630574713201)
,p_event_id=>wwv_flow_imp.id(587402590305989151)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'emp_refresh_direct_load_Inc'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639339273949305444)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674555734031713202)
,p_event_id=>wwv_flow_imp.id(587402590305989151)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'emp_refresh_direct_load_ded'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674531770542578527)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(639336323449305414)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PURGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SP_PURGE_LEGACY;',
'',
'    execute immediate ''truncate table AA_LEGACY_RECONCILATION'';',
'    execute immediate ''truncate table aa_legacy_reconcilation_ded'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(639336158458305413)
,p_internal_uid=>228616365149495214
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(639336431637305415)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EXECUTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    sp_load_Legacy;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(639336116630305412)
,p_internal_uid=>228616473337495215
);
wwv_flow_imp.component_end;
end;
/
