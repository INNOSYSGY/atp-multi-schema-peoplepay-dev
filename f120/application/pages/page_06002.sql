prompt --application/pages/page_06002
begin
--   Manifest
--     PAGE: 06002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>6002
,p_name=>'rptFinancialJournal'
,p_step_title=>'Financial Journal Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475513253537216018)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3364249060561111494)
,p_plug_name=>'Journal Summarized by Employee'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.* ,(select id from pa_pmg_payrolldtl where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD and emp_id = v.emp_id) pay_slipno    ',
' ,initcap((select distinct employment_class_hist from pa_pmg_payrolldtl where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD and emp_id = v.emp_id)) emp_class,',
'',
' initcap((select distinct decode(employment_status,''IN-ACTIVE'',''SEPARATED'',employment_status)',
'          from hr_rcm_employee ',
'          where id  = v.emp_id)',
'         ) emp_status,',
'',
'',
' (select distinct emp_company_no_hist from pa_pmg_payrolldtl where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD and emp_id = v.emp_id) emp_company_no,',
' initcap((select distinct surname_hist || '', '' || first_name_hist   from pa_pmg_payrolldtl where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD and emp_id = v.emp_id)) emp_name',
'',
'',
'from (',
'      select payslipid,emp_id, EMP_ID LINK_ID, coa_code, unit_name, orgdtl_id,',
'               ',
'               SUM(case when debit_credit = ''DR'' THEN income_amount END) DR_AMOUNT,',
'               SUM(case when debit_credit = ''DR'' THEN income_amount_ytd END) DR_AMOUNT_YTD, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount END) CR_amount, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount_ytd END) CR_AMOUNT_YTD ',
'                                       ',
'               from (',
' select  x.*',
' --row_number() over (partition by emp_id,unit_name, coa_code, debit_credit,orgdtl_id order by emp_id ) --as seqnum',
' from (                                                  ',
'select ',
'payslipid,orgdtl_id, emp_id,COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id, c.id payslipid, c.emp_id,c.orgdtl_id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004)',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,payslipid',
'',
'',
'union ',
'--personal rate',
'select k.id payslipid,k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings)+sum(time_nontax_earnings) ',
'- sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID)) time_tax_earnings,  sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and earnings_type = ''RG''',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) ,k.emp_id,k.orgdtl_id,k.id',
'',
'union',
'--employers deductions only',
'',
'select payslipid,orgdtl_id,emp_id,COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id,k.id payslipid,COA_CODE,UNIT_NAME,k.emp_id,k.orgdtl_id, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, amount_deducted_ytd amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and k.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,payslipid',
'',
'--NIS-ER',
'union',
'select k.id payslipid,k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100)) ,k.emp_id,k.orgdtl_id,k.id',
'',
'',
'---************ CREDITS ***********',
'union ',
'',
'select payslipid,orgdtl_id,emp_id,COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit',
'from',
'(select distinct a.id,k.id payslipid, COA_CODE,UNIT_NAME, k.emp_id,k.orgdtl_id,initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,payslipid',
'',
'',
'--NETPAY',
'union',
'',
'select k.id payslipid,k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))  DESCRIPTION, sum(net_pay) net_pay,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100)),k.emp_id,k.orgdtl_id,k.id',
'',
'',
'--PAYE',
'union',
'select k.id payslipid,k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100)),k.emp_id,k.orgdtl_id,k.id',
'',
'',
'--NIS',
'union',
'select k.id payslipid,k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100)),k.emp_id,k.orgdtl_id,k.id',
' ',
'',
'--NIS-ER',
'union',
'',
'select k.id payslipid,k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) ,k.emp_id,k.orgdtl_id,k.id',
'',
') x ) ',
'where orgdtl_id = nvl(:P6002_DEPARTMENT_ID,orgdtl_id)',
'--AND EMP_ID = ',
'group by emp_id, coa_code, unit_name,orgdtl_id,payslipid',
') v'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD,P6002_DEPARTMENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Journal Summarized by Employee'
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
 p_id=>wwv_flow_imp.id(3364249069775111495)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAY.KHAN'
,p_internal_uid=>118690003185568436
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249209990111496)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249312352111497)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249639714111500)
,p_db_column_name=>'DR_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Dr Amount'
,p_column_html_expression=>'<b>#DR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249678977111501)
,p_db_column_name=>'DR_AMOUNT_YTD'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Dr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249858198111502)
,p_db_column_name=>'CR_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Cr Amount'
,p_column_html_expression=>'<b>#CR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249942575111503)
,p_db_column_name=>'CR_AMOUNT_YTD'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364249968275111504)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364250115538111505)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632490190672373414)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364250247371111506)
,p_db_column_name=>'PAYSLIPID'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Payslipid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364250358349111507)
,p_db_column_name=>'LINK_ID'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Link'
,p_column_link=>'f?p=&APP_ID.:12001:&SESSION.::&DEBUG.:12001:P12001_DEPARTMENT_ID,P12001_EARNINGS_PERIOD_ID,P12001_EMP_ID,P12001_PAYSLIPID:#ORGDTL_ID#,&P6002_PAID_EARNINGS_PERIOD.,#LINK_ID#,#PAY_SLIPNO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364250427413111508)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364250543280111509)
,p_db_column_name=>'EMP_CLASS'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Emp Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364705956823720960)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364706051296720961)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3364706075470720962)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3364715895793721744)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1191569'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_ID:EMP_COMPANY_NO:EMP_CLASS:EMP_STATUS:EMP_NAME:UNIT_NAME:DR_AMOUNT:DR_AMOUNT_YTD:CR_AMOUNT:CR_AMOUNT_YTD:PAY_SLIPNO:APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3364743793427936640)
,p_report_id=>wwv_flow_imp.id(3364715895793721744)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'abs( C- E)'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'dr_cr_diff'
,p_report_label=>'dr_cr_diff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3444040020453660637)
,p_plug_name=>'Financial Journal'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'---************ DEDITS ***********',
'',
'select COA_CODE,UNIT_NAME, initcap(DESCRIPTION) DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit from ',
'(select  distinct a.id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and income_amount >0 )',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'',
'union ',
'--personal rate',
'select COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings) - sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID)) time_tax_earnings,',
'sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)),earnings_period_id',
'',
'union',
'--employers deductions only',
'',
'select COA_CODE,UNIT_NAME,initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION, sum(a.amount_deducted) amount_deducted, sum(a.amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id= :P6002_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and amount_deducted >0',
'group by COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE)',
'',
'--NIS-ER',
'union',
'select COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100)) ',
'',
'',
'---************ CREDITS ***********',
'union ',
'',
'select COA_CODE,UNIT_NAME, DESCRIPTION, sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit from (',
'select distinct a.id, COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION, a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and amount_deducted >0)',
'group by COA_CODE,UNIT_NAME,  DESCRIPTION',
'',
'',
'--NETPAY',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))  DESCRIPTION, sum(net_pay) net_pay,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))',
'',
'',
'--PAYE',
'union',
'select COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))',
'',
'',
'--NIS',
'union',
'select COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))',
' ',
'',
'--NIS-ER',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))',
'*/',
'',
'---************ DEDITS ***********',
'',
'select coa_code, unit_name, description, income_amount, income_amount_ytd, case when debit_credit = ''DR'' then ''DR'' else '' '' end dr, case when debit_credit = ''CR'' then ''CR'' else '' '' end cr from (',
'select ',
'COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and income_amount >0 and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004)',
'and c.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,c.ORGDTL_ID)',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'',
'union ',
'--personal rate',
'select COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings) + sum (time_nontax_earnings) - sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID))  time_tax_earnings',
',  max(time_tax_earnings_YTD) +max (time_nontax_earnings_ytd)-  nvl(fn_adhocPaymentsum(:P6002_PAID_EARNINGS_PERIOD,  COA_CODE),0)  time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and earnings_type = ''RG''',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) ',
'',
'union',
'--employers deductions only',
'',
'select COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id,COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, amount_deducted_ytd amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION',
'',
'--NIS-ER',
'union',
'select COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100)) ',
'',
'',
'---************ CREDITS ***********',
'union ',
'',
'select COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION',
'',
'',
'--NETPAY',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))  DESCRIPTION, sum(net_pay) net_pay,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))',
'',
'',
'--PAYE',
'union',
'select COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))',
'',
'',
'--NIS',
'union',
'select COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))',
' ',
'',
'--NIS-ER',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'and k.ORGDTL_ID= nvl(:P6002_DEPARTMENT_ID,k.ORGDTL_ID)',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) ',
'',
')',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD,P6002_DEPARTMENT_ID'
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
 p_id=>wwv_flow_imp.id(3444040070985660638)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>559961275939840410
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498242466077374885)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498242867478374887)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'R'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498243269016374888)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498243680317374889)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'T'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498244135394374890)
,p_db_column_name=>'INCOME_AMOUNT_YTD'
,p_display_order=>50
,p_column_identifier=>'U'
,p_column_label=>'Income Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389575257411111360)
,p_db_column_name=>'DR'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Dr'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389575310635111361)
,p_db_column_name=>'CR'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'Cr'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3436610526129455758)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Total Cross Regions by Account Code'
,p_report_seq=>10
,p_report_alias=>'1121299'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_sort_column_1=>'CODE_TYPE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'DIV'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'DEPARTMENT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'ACCOUNT_NAME'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'ACCOUNT_NAME:0:0:0:0:0'
,p_break_enabled_on=>'ACCOUNT_NAME:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3436613001627506039)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'By Chart of Accounts'
,p_report_seq=>10
,p_report_alias=>'1121303'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_sort_column_1=>'CODE_TYPE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'DIV'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'DEPARTMENT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'ACCOUNT_NAME'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'COA:0:0:0:0:0'
,p_break_enabled_on=>'COA:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3445053856481901755)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1121307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'COA_CODE:UNIT_NAME:DESCRIPTION:INCOME_AMOUNT::DR:CR'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CODE_TYPE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'DIV'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'DEPARTMENT'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'ACCOUNT_NAME'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'COA_CODE:UNIT_NAME:DR:CR:0:0'
,p_break_enabled_on=>'0:0:COA_CODE:UNIT_NAME:DR:CR'
,p_sum_columns_on_break=>'INCOME_AMOUNT:INCOME_AMOUNT_YTD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3561600015404229067)
,p_plug_name=>'Grade Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.emp_company_no_hist, surname_hist, first_name_hist, unit_code, unit_name, position_name_hist, pay_grade_id, to_char(income_code) income_code, income_amount',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
' join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'union all',
'select c.emp_company_no_hist, surname_hist, first_name_hist, unit_code, unit_name, position_name_hist, pay_grade_id, to_char(''NR(T)'') INCOME_CODE, basic_personal_rate Income_Sum',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and basic_personal_rate > 0',
'and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Department Cost'
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
 p_id=>wwv_flow_imp.id(3561599957875229066)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>76085745433220306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599721696229064)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599628870229063)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599447408229061)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599336500229060)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599217272229059)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599131318229058)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561599063846229057)
,p_db_column_name=>'PAY_GRADE_ID'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Pay Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632558643709481228)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561598981191229056)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561598895735229055)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561568580940701119)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Emp Grade Cross Tab'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'761172'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'UNIT_NAME:UNIT_CODE:EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:POSITION_NAME_HIST:PAY_GRADE_ID:INCOME_CODE:INCOME_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3561414118098770048)
,p_report_id=>wwv_flow_imp.id(3561568580940701119)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:PAY_GRADE_ID'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3561413733320770047)
,p_pivot_id=>wwv_flow_imp.id(3561414118098770048)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561581587438895826)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'761042'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST:PAY_GRADE_ID:INCOME_CODE:INCOME_AMOUNT:'
,p_break_on=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST'
,p_break_enabled_on=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST'
,p_sum_columns_on_break=>'INCOME_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3562421011028691693)
,p_plug_name=>'Journal Detail by Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'      select emp_id, coa_code, unit_name, orgdtl_id,',
'               max(case when debit_credit = ''DR'' then DESCRIPTION end) dr_description,',
'               max(case when debit_credit = ''CR'' then DESCRIPTION end) cr_description,',
'               SUM(case when debit_credit = ''DR'' THEN income_amount END) DR_AMOUNT,',
'               SUM(case when debit_credit = ''DR'' THEN income_amount_ytd END) DR_AMOUNT_YTD, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount END) CR_amount, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount_ytd END) CR_AMOUNT_YTD  ',
'                                                   ',
'               from (',
' select  x.*,',
' row_number() over (partition by emp_id,unit_name, coa_code, debit_credit,orgdtl_id order by emp_id ) as seqnum',
' from (                                                  ',
'select ',
'orgdtl_id, emp_id,COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id, c.emp_id,c.orgdtl_id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004)',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id',
'',
'',
'union ',
'--personal rate',
'select k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings) + sum(time_nontax_earnings)',
'- sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID))  time_tax_earnings,  sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and earnings_type = ''RG''',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) ,k.emp_id,k.orgdtl_id',
'',
'union',
'--employers deductions only',
'',
'select orgdtl_id,emp_id,COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id,COA_CODE,UNIT_NAME,k.emp_id,k.orgdtl_id, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, amount_deducted_ytd amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and k.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id',
'',
'--NIS-ER',
'union',
'select k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100)) ,k.emp_id,k.orgdtl_id',
'',
'',
'---************ CREDITS ***********',
'union ',
'',
'select orgdtl_id,emp_id,COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, k.emp_id,k.orgdtl_id,initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id',
'',
'',
'--NETPAY',
'union',
'',
'select k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))  DESCRIPTION, sum(net_pay) net_pay,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100)),k.emp_id,k.orgdtl_id',
'',
'',
'--PAYE',
'union',
'select k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100)),k.emp_id,k.orgdtl_id',
'',
'',
'--NIS',
'union',
'select k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100)),k.emp_id,k.orgdtl_id',
' ',
'',
'--NIS-ER',
'union',
'',
'select k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) ,k.emp_id,k.orgdtl_id) x ) ',
'where orgdtl_id = nvl(:P6002_DEPARTMENT_ID,orgdtl_id)',
'--AND EMP_ID = ',
'group by emp_id, coa_code, unit_name,orgdtl_id,',
'seqnum',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD,P6002_DEPARTMENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Journal Detail by Employee'
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
 p_id=>wwv_flow_imp.id(3562421112820691694)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAY.KHAN'
,p_internal_uid=>316862046231148635
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362436624457041066)
,p_db_column_name=>'COA_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362436978967041067)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362437424485041068)
,p_db_column_name=>'DR_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Dr Description'
,p_column_html_expression=>'<b>#DR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362437777087041068)
,p_db_column_name=>'CR_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Cr Description'
,p_column_html_expression=>'<b>#CR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362438202782041069)
,p_db_column_name=>'DR_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Dr Amount'
,p_column_html_expression=>'<b>#DR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362438600838041070)
,p_db_column_name=>'DR_AMOUNT_YTD'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Dr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362439007869041072)
,p_db_column_name=>'CR_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Cr Amount'
,p_column_html_expression=>'<b>#CR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362439464842041072)
,p_db_column_name=>'CR_AMOUNT_YTD'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Cr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362439808872041073)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3362440234114041074)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>120
,p_column_identifier=>'Q'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632490190672373414)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3564423724425494039)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1168815'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'EMP_ID:COA_CODE:UNIT_NAME:DR_DESCRIPTION:DR_AMOUNT:CR_DESCRIPTION:CR_AMOUNT:'
,p_sort_column_1=>'DR_DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:COA_CODE:UNIT_NAME'
,p_break_enabled_on=>'EMP_ID:COA_CODE:UNIT_NAME'
,p_sum_columns_on_break=>'DR_AMOUNT:CR_AMOUNT:DR_AMOUNT_YTD:CR_AMOUNT_YTD'
,p_count_columns_on_break=>'EMP_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3562610662105697425)
,p_plug_name=>'Department Head Count'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT, sex_code',
', UNIT_NAME,UNIT_CODE,employment_class_hist',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'join hr_rcm_employee a on a.id = c.emp_id',
'join hr_rcm_individual d on d.id=a.ind_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Department Cost'
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
 p_id=>wwv_flow_imp.id(3562610514420697424)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>75075188887751948
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562610499285697423)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562610305687697422)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561600491555229071)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561600144121229068)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employment Class Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3628330165560362864)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561593568263223704)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'760922'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE:EMPLOYMENT_CLASS_HIST:SEX_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3628319189569349825)
,p_report_id=>wwv_flow_imp.id(3561593568263223704)
,p_pivot_columns=>'EMPLOYMENT_CLASS_HIST:SEX_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3628318803690349824)
,p_pivot_id=>wwv_flow_imp.id(3628319189569349825)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_db_column_name=>'PFC1'
,p_column_label=>'Count'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(3628318368805349824)
,p_pivot_id=>wwv_flow_imp.id(3628319189569349825)
,p_sort_seq=>1
,p_sort_column_name=>'UNIT_PARENT'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3562612728609697446)
,p_plug_name=>'Department Cost'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT',
', UNIT_NAME,UNIT_CODE, to_char(INCOME_CODE) INCOME_CODE,  a.income_amount',
'from  pa_pmg_payrolldtl c join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and income_amount >0 ',
'union all',
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT',
', UNIT_NAME,UNIT_CODE, to_char(''NR(T)'') INCOME_CODE, basic_personal_rate Income_Sum',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and basic_personal_rate > 0',
'and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Department Cost'
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
 p_id=>wwv_flow_imp.id(3562611275408697431)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>75074427899751941
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562611119344697430)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562611071334697429)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562610911180697428)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562610832034697427)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562610746499697426)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561602720031279700)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Unit Totals'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'760830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE:INCOME_CODE:INCOME_AMOUNT'
,p_sort_column_1=>'UNIT_PARENT'
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
,p_break_on=>'UNIT_PARENT:0:0:0:0:0'
,p_break_enabled_on=>'UNIT_PARENT:0:0:0:0:0'
,p_sum_columns_on_break=>'INCOME_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561613039105381194)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'760727'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE:INCOME_CODE:INCOME_AMOUNT'
,p_sort_column_1=>'UNIT_PARENT'
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
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'INCOME_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3561601873304267554)
,p_report_id=>wwv_flow_imp.id(3561613039105381194)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3561601453519267553)
,p_pivot_id=>wwv_flow_imp.id(3561601873304267554)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3562613438790697453)
,p_plug_name=>'Employment Cost'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, sum(Income_Sum) Amount',
'from (',
'    select to_char(initcap(e.DESCRIPTION)) DESCRIPTION, a.income_amount Income_Sum',
'    from  pa_pmg_payrolldtl c join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'    join hr_rcm_empentitle c on c.id = a.empent_id',
'    join PA_PCF_INCOMECODE e on e.id =  c.INCOME_CODE_id',
'    where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'    and income_amount >0 ',
'    union all',
'    select to_char(''Basic Salary(T)'') DESCRIPTION, basic_personal_rate Income_Sum',
'    from  pa_pmg_payrolldtl c',
'    where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'    and basic_personal_rate > 0',
'    and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY''',
'    )',
'group by DESCRIPTION'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employment Cost'
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
 p_id=>wwv_flow_imp.id(3562613387398697452)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>75072315909751920
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3562613220511697451)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3561597879069229045)
,p_db_column_name=>'AMOUNT'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3561640392866578633)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'760454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPTION:AMOUNT'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'INCOME_SUM:AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3619972626246118145)
,p_plug_name=>'Detail Journal Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3619973186868118151)
,p_plug_name=>'Employee/Employer Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) Employee_count, B.description, c.deduction_type',
'from Pa_Pcf_Admindeduction a join pa_pcf_deductioncode b on b.id = a.expense_id',
'join pa_pmg_payrolldeduction c on c.adm_deduction_id = a.id',
'join pa_pmg_payrolldtl d on d.id = c.pay_slipno',
'where who_pays = ''BOTH''',
'and d.earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and date_close is null',
'group by  B.description, c.deduction_type',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3619973116078118150)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GPL'
,p_internal_uid=>269283340987245904
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498238428029374873)
,p_db_column_name=>'EMPLOYEE_COUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498238837957374876)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3498239177256374876)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3616320124515191565)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1121246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_COUNT:DESCRIPTION:DEDUCTION_TYPE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3614662183573542272)
,p_report_id=>wwv_flow_imp.id(3616320124515191565)
,p_pivot_columns=>'DEDUCTION_TYPE'
,p_row_columns=>'DESCRIPTION'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3498240256463374878)
,p_pivot_id=>wwv_flow_imp.id(3614662183573542272)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'EMPLOYEE_COUNT'
,p_db_column_name=>'PFC1'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3498246072078374894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513253537216018)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3498246379122374895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3444040020453660637)
,p_button_name=>'PREVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3277204847449922479)
,p_name=>'P6002_YEAR_OF_INCOME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:APP_ORG_ID',
'order by 1 desc;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Year--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3277204905528922480)
,p_name=>'P6002_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'	AND company_year = :P6002_YEAR_OF_INCOME',
'      )',
'ORDER BY C DESC, D DESC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Month--'
,p_lov_cascade_parent_items=>'P6002_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3362435763319993448)
,p_name=>'P6002_DEPARTMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct * from (select distinct FN_GETDEPARTMENT_NAME(:APP_ORG_ID, EMP_ID) department, ORGDTL_ID',
'from pa_pmg_payrolldtl ',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and org_id = :APP_ORG_ID)',
'order by department asc',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6002_PAID_EARNINGS_PERIOD'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'Used to filter Journal Details By Department'
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
 p_id=>wwv_flow_imp.id(3389575436256111362)
,p_name=>'P6002_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3389575510507111363)
,p_name=>'P6002_REPORT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_item_default=>'6171'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3498241290570374882)
,p_name=>'P6002_PAID_EARNINGS_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3619972626246118145)
,p_prompt=>'Paid earnings period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPR1 earn_description,id',
'from VW_EARNPAID a',
'where org_id=:APP_ORG_ID',
'AND a.company_year||EXTRACT(month FROM a.END_DATE)= :P6002_PERIOD;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P6002_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Click search after selecting the period.'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3498247189363374897)
,p_name=>'search_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3498247660537374897)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3444040020453660637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3498248181016374897)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3619973186868118151)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3562613058714697449)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562613438790697453)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3561598725554229054)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562612728609697446)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3561598677277229053)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562610662105697425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3364706320314720964)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3364249060561111494)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3561598538513229052)
,p_event_id=>wwv_flow_imp.id(3498247189363374897)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3561600015404229067)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3352385245793586983)
,p_name=>'search_region_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_DEPARTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385364308586984)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3444040020453660637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385443198586985)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3619973186868118151)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385533963586986)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562613438790697453)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385600520586987)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562612728609697446)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385737466586988)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562610662105697425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385784900586989)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3561600015404229067)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3352385954364586990)
,p_event_id=>wwv_flow_imp.id(3352385245793586983)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3364249060561111494)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3361802569929499875)
,p_name=>'refresh_employee'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_DEPARTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3361802668992499876)
,p_event_id=>wwv_flow_imp.id(3361802569929499875)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3562421011028691693)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3364706173719720963)
,p_event_id=>wwv_flow_imp.id(3361802569929499875)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3364249060561111494)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3389575571824111364)
,p_name=>'PreviewJournal'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3498246379122374895)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%PEOPLEPAY%'' or upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%150.136.100.215%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3389575715496111365)
,p_event_id=>wwv_flow_imp.id(3389575571824111364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3389575793291111366)
,p_event_id=>wwv_flow_imp.id(3389575571824111364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6002_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'select ',
'    TABLE_VALUE ',
'    || ''&p2='' ',
'    || (select REPORT_LOCATION from report where id = :P6002_REPORT_ID) into v_url_1 ',
'from HR_HCF_LOOKUP ',
'where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' ',
'and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_SHR_DED);',
'',
'v_url_1 := v_url_1  || ''-EARNINGS_PERIOD_ID=''||:P6002_PAID_EARNINGS_PERIOD||''-DEPARTMENT_ID=''||:P6002_DEPARTMENT_ID||''-IN_ORG_ID=''||:APP_ORG_ID||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P6002_REPORT_ID,P6002_PAID_EARNINGS_PERIOD,P6002_DEPARTMENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3389575940939111367)
,p_event_id=>wwv_flow_imp.id(3389575571824111364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// window.open(document.getElementById(''P6002_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
'',
'',
'var win = window.open(''&P6002_URL.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'',
'if (window.focus) {win.focus();}',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3498246760368374895)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reprocess_loc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'      execute IMMEDIATE ''alter trigger TRIG_CHECK_ENF disable'';',
'      execute IMMEDIATE ''alter trigger  SYS_TRG_PAYROLLDTL_AU  disable'';',
'      execute IMMEDIATE ''alter trigger  TRIG_CHECK_AR  disable'';',
'',
'        for I in ( select  A.WKLOCATION_ID,earnings_period_id, b.id pay_id, a.ORG_ID,a.POSITION_ID,PKG_GLOBAL_FNTS.GET_LOOKUP_COL(a.EMPLOYMENT_CLASS_ID,''VALUE_DESCRIPTION'') EMPLOYMENT_CLASS_HIST,PERIOD_START,',
'                    a.PAYMENT_TYPE,Q.BANK_ACCOUNT_NO,a.EMP_COMPANY_NO, a.CONFIRMED, a.PERMANENT_STAFF,SURNAME,FIRST_NAME,Q.MAIDEN_NAME, Q.MARITAL_CODE,a.UNION_CODE, Q.id IND_ID',
'                    ,trim(substr(a.ORG_STRUCTURE,instr(a.ORG_STRUCTURE,'' '',1,2),length(a.ORG_STRUCTURE))) department, a.ORG_STRUCTURE,',
'                    a.position_name,a.REPORT_TO_FUNCTIONAL, A.ORGDTL_ID, q.bank_branch_id',
'                    from hr_rcm_employee a join hr_rcm_individual q on a.ind_id=q.id',
'                    join pa_pmg_payrolldtl b on a.id=b.emp_id ',
'                    where earnings_period_id=:P6002_PAID_EARNINGS_PERIOD',
'                                             ) loop',
'',
'                  update pa_pmg_payrolldtl',
'                  set   Wklocation_Id=(select wklocation_id from hr_hcf_worklocation where id=i.WKLOCATION_ID),                        ',
'                        department_name_hist = i.department,',
'                        position_name_hist=i.position_name,',
'                        LOCATION_NAME_HIST=(select distinct LOCATION_DESCRIPTION',
'                                          from  HR_HCF_WORKLOCATION B',
'                                          where exists (select 1',
'                                                        from HR_HCF_WORKLOCATIONPOSITION a',
'                                                        where B.id=a.WKLOCATION_ID',
'                                                        and a.id=I.POSITION_ID)',
'                                          AND ROWNUM=1),                     ',
'                        ORGDTL_ID =I.ORGDTL_ID                             ',
'                  where id =i.pay_id',
'                  and earnings_period_id=i.earnings_period_id;',
'',
'      ',
'        end loop;',
'        ',
'      execute IMMEDIATE ''alter trigger TRIG_CHECK_ENF enable'';',
'      execute IMMEDIATE ''alter trigger  SYS_TRG_PAYROLLDTL_AU  enable'';',
'      execute IMMEDIATE ''alter trigger  TRIG_CHECK_AR  enable'';',
'      commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3498246379122374895)
,p_internal_uid=>3076454767170378321
);
wwv_flow_imp.component_end;
end;
/
