prompt --application/pages/page_00179
begin
--   Manifest
--     PAGE: 00179
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
 p_id=>179
,p_name=>'rptPayrollLegacy'
,p_alias=>'RPTPAYROLLLEGACY'
,p_step_title=>'Payroll Legacy'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158608564468379472)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158637277560393354)
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
 p_id=>wwv_flow_imp.id(158637315738393355)
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
 p_id=>wwv_flow_imp.id(158637443654393356)
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
 p_id=>wwv_flow_imp.id(158637593139393357)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158637624793393358)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158637780618393359)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158639991219393731)
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
 p_id=>wwv_flow_imp.id(158640106642393732)
,p_db_column_name=>'EMP_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158640117769393733)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253217557255108)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BF'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253313585255109)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BG'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253428691255110)
,p_db_column_name=>'LEG_NIS'
,p_display_order=>310
,p_column_identifier=>'BH'
,p_column_label=>'Leg Nis'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253538512255111)
,p_db_column_name=>'LEG_RATE'
,p_display_order=>320
,p_column_identifier=>'BI'
,p_column_label=>'Leg Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253607473255112)
,p_db_column_name=>'LEG_TOTAL_EARNINGS'
,p_display_order=>330
,p_column_identifier=>'BJ'
,p_column_label=>'Leg Total Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253758026255113)
,p_db_column_name=>'LEG_TAX_AMOUNT'
,p_display_order=>340
,p_column_identifier=>'BK'
,p_column_label=>'Leg Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253827711255114)
,p_db_column_name=>'LEG_TOTAL_DEDUCT'
,p_display_order=>350
,p_column_identifier=>'BL'
,p_column_label=>'Leg Total Deduct'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118253981724255115)
,p_db_column_name=>'LEG_NET_PAY'
,p_display_order=>360
,p_column_identifier=>'BM'
,p_column_label=>'Leg Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254017698255116)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>370
,p_column_identifier=>'BN'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254152687255117)
,p_db_column_name=>'TOTAL_EARNINGS'
,p_display_order=>380
,p_column_identifier=>'BO'
,p_column_label=>'Total Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254299400255118)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>390
,p_column_identifier=>'BP'
,p_column_label=>'Nis Employee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254364475255119)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>400
,p_column_identifier=>'BQ'
,p_column_label=>'Nis Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254486826255120)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>410
,p_column_identifier=>'BR'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254536163255121)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>420
,p_column_identifier=>'BS'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254621480255122)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>430
,p_column_identifier=>'BT'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254706165255123)
,p_db_column_name=>'NETPAY_DIFF'
,p_display_order=>440
,p_column_identifier=>'BU'
,p_column_label=>'Netpay Diff'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158729540621399686)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:NET_PAY'
,p_sum_columns_on_break=>'BASIC:TOT_EARN:TOT_DED:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(118416738083466988)
,p_report_id=>wwv_flow_imp.id(158729540621399686)
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
 p_id=>wwv_flow_imp.id(158643194429393763)
,p_plug_name=>'Payroll Deductions'
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
 p_id=>wwv_flow_imp.id(158643238665393764)
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
 p_id=>wwv_flow_imp.id(158643361386393765)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158643457032393766)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158643507876395917)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158643669634395918)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158643843098395920)
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
 p_id=>wwv_flow_imp.id(158645257192395934)
,p_db_column_name=>'TOT_EARN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tot Earn'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158645315408395935)
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
 p_id=>wwv_flow_imp.id(158645542574395937)
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
 p_id=>wwv_flow_imp.id(158645760123395939)
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
 p_id=>wwv_flow_imp.id(158645863390395940)
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
 p_id=>wwv_flow_imp.id(158645929166395941)
,p_db_column_name=>'EMP_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Emp ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158646033393395942)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Earnings Period ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255948121255135)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BF'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256079448255136)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BG'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256193983255137)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>310
,p_column_identifier=>'BH'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256299866255138)
,p_db_column_name=>'ITEM_VALUE'
,p_display_order=>320
,p_column_identifier=>'BI'
,p_column_label=>'Item Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256365695255139)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>330
,p_column_identifier=>'BJ'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256421155255140)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>340
,p_column_identifier=>'BK'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256536743255141)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>350
,p_column_identifier=>'BL'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256608322255142)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>360
,p_column_identifier=>'BM'
,p_column_label=>'Expense Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256782963255143)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>370
,p_column_identifier=>'BN'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118256826223255144)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>380
,p_column_identifier=>'BO'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158730899379399729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399101'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:RATE:REG_NIS:PAYE:TOT_DED:NET_PAY'
,p_sum_columns_on_break=>'REG_NIS:PENSION:PAYE:NO_PAY_AMOUNT:SAL_ADV:TOT_DED:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(118418108564476105)
,p_report_id=>wwv_flow_imp.id(158730899379399729)
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
 p_id=>wwv_flow_imp.id(158649028131395922)
,p_plug_name=>'Payroll Incomes'
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
 p_id=>wwv_flow_imp.id(158649145742395923)
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
 p_id=>wwv_flow_imp.id(158649277960395924)
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
 p_id=>wwv_flow_imp.id(158649380048395925)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158649420501395926)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158649541682395927)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158649734765395929)
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
 p_id=>wwv_flow_imp.id(158651147223395943)
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
 p_id=>wwv_flow_imp.id(158651224057395944)
,p_db_column_name=>'REG_NIS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Reg Nis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158651493036395946)
,p_db_column_name=>'PAYE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Paye'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158651664973395948)
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
 p_id=>wwv_flow_imp.id(158651770732395949)
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
 p_id=>wwv_flow_imp.id(158651830473395950)
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
 p_id=>wwv_flow_imp.id(158651995255395951)
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
 p_id=>wwv_flow_imp.id(118254813202255124)
,p_db_column_name=>'EMPID'
,p_display_order=>290
,p_column_identifier=>'BF'
,p_column_label=>'Empid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118254968640255125)
,p_db_column_name=>'EPID'
,p_display_order=>300
,p_column_identifier=>'BG'
,p_column_label=>'Epid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255006117255126)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>310
,p_column_identifier=>'BH'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255113295255127)
,p_db_column_name=>'ITEM_VALUE'
,p_display_order=>320
,p_column_identifier=>'BI'
,p_column_label=>'Item Value'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255216664255128)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>330
,p_column_identifier=>'BJ'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255302514255129)
,p_db_column_name=>'EMPCOMPANYNO'
,p_display_order=>340
,p_column_identifier=>'BK'
,p_column_label=>'Empcompanyno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255440975255130)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>350
,p_column_identifier=>'BL'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255512246255131)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>360
,p_column_identifier=>'BM'
,p_column_label=>'Income Code Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255611547255132)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>370
,p_column_identifier=>'BN'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255794765255133)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>380
,p_column_identifier=>'BO'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(118255847733255134)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>390
,p_column_identifier=>'BP'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158730161867399713)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'399094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:RATE:TOT_EARN:REG_NIS:PAYE:TOT_DED:NET_PAY'
,p_sum_columns_on_break=>'BASIC:OVER_TIME_AMOUNT:DOUBLE_TIME_AMOUNT:BONUS:C_ALLOW:R_ALLOW:ACT:T_ALLOW:OUT_ALL:MEAL_ALLOW:TOT_EARN:TOT_DED:HALFTIME_AMOUNT:NET_PAY:TRM_FIN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(118417420595472312)
,p_report_id=>wwv_flow_imp.id(158730161867399713)
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
 p_id=>wwv_flow_imp.id(9712702064164712532)
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
 p_id=>wwv_flow_imp.id(59304906005299207)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(158608564468379472)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(408178044645104094)
,p_name=>'P179_ORGDTL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
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
 p_id=>wwv_flow_imp.id(2147733089897539526)
,p_name=>'P179_PAY_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
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
 p_id=>wwv_flow_imp.id(2147733460735539526)
,p_name=>'P179_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
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
 p_id=>wwv_flow_imp.id(2147734373361539527)
,p_name=>'P179_EMPLOYEE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
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
 p_id=>wwv_flow_imp.id(2147734803439539528)
,p_name=>'P179_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2147735125598539528)
,p_name=>'P179_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2147735615248539529)
,p_name=>'P179_PAY_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9712702064164712532)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59566229440120725)
,p_name=>'refreshpayroll'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59566769944120722)
,p_event_id=>wwv_flow_imp.id(59566229440120725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158637277560393354)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59567200754120721)
,p_event_id=>wwv_flow_imp.id(59566229440120725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'refresh Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158643194429393763)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59567745796120720)
,p_event_id=>wwv_flow_imp.id(59566229440120725)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'refresh Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158649028131395922)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59568122714120719)
,p_name=>'refreshpayroll1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_ORGDTL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59568678191120718)
,p_event_id=>wwv_flow_imp.id(59568122714120719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'org refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158637277560393354)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59569164819120717)
,p_event_id=>wwv_flow_imp.id(59568122714120719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'org refresh deduction'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158643194429393763)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59569616323120716)
,p_event_id=>wwv_flow_imp.id(59568122714120719)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'org refresh income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158649028131395922)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59570040775120716)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P179_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59570431058120715)
,p_event_id=>wwv_flow_imp.id(59570040775120716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh payroll'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158637277560393354)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59570965274120714)
,p_event_id=>wwv_flow_imp.id(59570040775120716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh deduction'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158643194429393763)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59571447256120712)
,p_event_id=>wwv_flow_imp.id(59570040775120716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'emp refresh income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(158649028131395922)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
