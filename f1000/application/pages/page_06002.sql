prompt --application/pages/page_06002
begin
--   Manifest
--     PAGE: 06002
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
 p_id=>6002
,p_name=>'rptFinancialJournal'
,p_step_title=>'Financial Journal Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825576809620141424)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697197182218973949)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3841656554927876076)
,p_plug_name=>'Detail Journal Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655304384238528067)
,p_plug_name=>'PeoplePay Generic'
,p_parent_plug_id=>wwv_flow_imp.id(3841656554927876076)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3585932989242869425)
,p_plug_name=>'Journal Summarized by Employee'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3585932998456869426)
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
 p_id=>wwv_flow_imp.id(3585933138671869427)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585933241033869428)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585933568395869431)
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
 p_id=>wwv_flow_imp.id(3585933607658869432)
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
 p_id=>wwv_flow_imp.id(3585933786879869433)
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
 p_id=>wwv_flow_imp.id(3585933871256869434)
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
 p_id=>wwv_flow_imp.id(3585933896956869435)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585934044219869436)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854174119354131345)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585934176052869437)
,p_db_column_name=>'PAYSLIPID'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Payslipid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585934287030869438)
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
 p_id=>wwv_flow_imp.id(3585934356094869439)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585934471961869440)
,p_db_column_name=>'EMP_CLASS'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Emp Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586389885505478891)
,p_db_column_name=>'EMP_STATUS'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586389979978478892)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586390004152478893)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3586399824475479675)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1191569'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_ID:EMP_COMPANY_NO:EMP_CLASS:EMP_STATUS:EMP_NAME:UNIT_NAME:DR_AMOUNT:DR_AMOUNT_YTD:CR_AMOUNT:CR_AMOUNT_YTD:PAY_SLIPNO:APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3586427722109694571)
,p_report_id=>wwv_flow_imp.id(3586399824475479675)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'abs( C- E)'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'dr_cr_diff'
,p_report_label=>'dr_cr_diff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3665723949135418568)
,p_plug_name=>'Financial Journal'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3665723999667418569)
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
 p_id=>wwv_flow_imp.id(3719926394759132816)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719926796160132818)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'R'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719927197698132819)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719927608999132820)
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
 p_id=>wwv_flow_imp.id(3719928064076132821)
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
 p_id=>wwv_flow_imp.id(3611259186092869291)
,p_db_column_name=>'DR'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Dr'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611259239316869292)
,p_db_column_name=>'CR'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'Cr'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3658294454811213689)
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
 p_id=>wwv_flow_imp.id(3658296930309263970)
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
 p_id=>wwv_flow_imp.id(3666737785163659686)
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
 p_id=>wwv_flow_imp.id(3783283944085986998)
,p_plug_name=>'Grade Summary'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3783283886556986997)
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
 p_id=>wwv_flow_imp.id(3783283650377986995)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783283557551986994)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783283376089986992)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783283265181986991)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783283145953986990)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783283059999986989)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783282992527986988)
,p_db_column_name=>'PAY_GRADE_ID'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Pay Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854242572391239159)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783282909872986987)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783282824416986986)
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
 p_id=>wwv_flow_imp.id(3783252509622459050)
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
 p_id=>wwv_flow_imp.id(3783098046780527979)
,p_report_id=>wwv_flow_imp.id(3783252509622459050)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:PAY_GRADE_ID'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3783097662002527978)
,p_pivot_id=>wwv_flow_imp.id(3783098046780527979)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3783265516120653757)
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
 p_id=>wwv_flow_imp.id(3784104939710449624)
,p_plug_name=>'Journal Detail by Employee'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3784105041502449625)
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
 p_id=>wwv_flow_imp.id(3584120553138798997)
,p_db_column_name=>'COA_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3584120907648798998)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3584121353166798999)
,p_db_column_name=>'DR_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Dr Description'
,p_column_html_expression=>'<b>#DR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3584121705768798999)
,p_db_column_name=>'CR_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Cr Description'
,p_column_html_expression=>'<b>#CR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3584122131463799000)
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
 p_id=>wwv_flow_imp.id(3584122529519799001)
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
 p_id=>wwv_flow_imp.id(3584122936550799003)
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
 p_id=>wwv_flow_imp.id(3584123393523799003)
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
 p_id=>wwv_flow_imp.id(3584123737553799004)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3584124162795799005)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>120
,p_column_identifier=>'Q'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854174119354131345)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3786107653107251970)
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
 p_id=>wwv_flow_imp.id(3784294590787455356)
,p_plug_name=>'Department Head Count'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3784294443102455355)
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
 p_id=>wwv_flow_imp.id(3784294427967455354)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784294234369455353)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783284420236987002)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783284072802986999)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Employment Class Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3850014094242120795)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3783277496944981635)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'760922'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE:EMPLOYMENT_CLASS_HIST:SEX_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3850003118251107756)
,p_report_id=>wwv_flow_imp.id(3783277496944981635)
,p_pivot_columns=>'EMPLOYMENT_CLASS_HIST:SEX_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3850002732372107755)
,p_pivot_id=>wwv_flow_imp.id(3850003118251107756)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_db_column_name=>'PFC1'
,p_column_label=>'Count'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(3850002297487107755)
,p_pivot_id=>wwv_flow_imp.id(3850003118251107756)
,p_sort_seq=>1
,p_sort_column_name=>'UNIT_PARENT'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3784296657291455377)
,p_plug_name=>'Department Cost'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3784295204090455362)
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
 p_id=>wwv_flow_imp.id(3784295048026455361)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784295000016455360)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784294839862455359)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784294760716455358)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784294675181455357)
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
 p_id=>wwv_flow_imp.id(3783286648713037631)
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
 p_id=>wwv_flow_imp.id(3783296967787139125)
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
 p_id=>wwv_flow_imp.id(3783285801986025485)
,p_report_id=>wwv_flow_imp.id(3783296967787139125)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3783285382201025484)
,p_pivot_id=>wwv_flow_imp.id(3783285801986025485)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3784297367472455384)
,p_plug_name=>'Employment Cost'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3784297316080455383)
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
 p_id=>wwv_flow_imp.id(3784297149193455382)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783281807750986976)
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
 p_id=>wwv_flow_imp.id(3783324321548336564)
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
 p_id=>wwv_flow_imp.id(3841657115549876082)
,p_plug_name=>'Employee/Employer Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(655304384238528067)
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_imp.id(3841657044759876081)
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
 p_id=>wwv_flow_imp.id(3719922356711132804)
,p_db_column_name=>'EMPLOYEE_COUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719922766639132807)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719923105938132807)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3838004053196949496)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1121246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_COUNT:DESCRIPTION:DEDUCTION_TYPE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3836346112255300203)
,p_report_id=>wwv_flow_imp.id(3838004053196949496)
,p_pivot_columns=>'DEDUCTION_TYPE'
,p_row_columns=>'DESCRIPTION'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3719924185145132809)
,p_pivot_id=>wwv_flow_imp.id(3836346112255300203)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'EMPLOYEE_COUNT'
,p_db_column_name=>'PFC1'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655304399844528068)
,p_plug_name=>'Specific'
,p_parent_plug_id=>wwv_flow_imp.id(3841656554927876076)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655304511182528069)
,p_plug_name=>'Branch Entries'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ACCOUNT_NAME, ',
'						 to_char(BK) BK, ',
'						 TO_CHAR(BR) BR, ',
'						 CCY, ',
'						 GL, ',
'						 CC, ',
'						 DR_CR, ',
'						 DEBIT_AMOUNT, ',
'						 CREDIT_AMOUNT, ',
'						 D_C,',
'                         emp_id',
'',
'               from (',
' select  x.account_code GL,',
'				 x.coa_code CC, ',
'				 x.description ACCOUNT_NAME, ',
'				 x.income_amount ALL_AMOUNT, ',
'				 x.debit_credit DR_CR, ',
'				 ''GYD'' CCY,',
'				 ''01'' BK,',
'				 to_char(case when length(location_code) = 1 then ''00''||location_code ',
'				      when length(location_code) = 2 then ''0''||location_code',
'							else location_code end) BR,',
'				 case when UPPER(x.debit_credit) = ''DR'' THEN ''D''',
'						  when UPPER(x.debit_credit) = ''CR'' THEN ''C'' END D_C,',
'				 case when UPPER(x.debit_credit) = ''DR'' THEN INCOME_AMOUNT ELSE 0 END DEBIT_AMOUNT,',
'				 case when UPPER(x.debit_credit) = ''CR'' THEN INCOME_AMOUNT ELSE 0 END CREDIT_AMOUNT,',
' row_number() over (partition by emp_id,unit_name, COA_CODE, debit_credit,orgdtl_id order by emp_id ) as seqnum,',
'                x.emp_id',
' from (',
' ',
' ',
'select to_char(account_code) account_code,',
'			 orgdtl_id, ',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION, ',
'			 sum(income_amount) income_amount, ',
'			 sum(income_amount_ytd) income_amount_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						e.account_code, ',
'						c.emp_id,',
'						c.orgdtl_id, ',
'						x.COA_CODE,',
'						x.UNIT_NAME, ',
'						initcap(e.DESCRIPTION) DESCRIPTION, ',
'						a.income_amount income_amount, ',
'						a.income_amount_ytd income_amount_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'		join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'		and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004))',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id, account_code,location_code',
'',
'',
'union ',
'--personal rate',
'select * ',
'from(',
'		select nvl(sal.GL_CODE,''500701000000'') account_code,',
'					 k.orgdtl_id, ',
'					 k.emp_id,',
'					 x.COA_CODE,',
'					 x.UNIT_NAME,  ',
'					 case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                     when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end DESCRIPTION, ',
'					 sum(time_tax_earnings) + sum(time_nontax_earnings) - case when :APP_ORG_ID = 32661 then sum(nvl(get_overtime_cb(k.id),0)) ',
'                     else nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) end ',
'                     time_tax_earnings,  ',
'					 sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ',
'					 ''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and k.compute_gross_hist=''BASIC_PAY''',
'		and earnings_type = ''RG''',
'		and k.org_id=:APP_ORG_ID',
'        and ((sal.start_date <= k.period_start and (sal.end_Date is null or sal.end_Date >= k.period_end)) or',
'        (sal.start_date between k.period_start and k.period_end))',
'		group by x.COA_CODE,UNIT_NAME,  cast(''Basic Salary'' as nvarchar2(100)) ,k.emp_id,k.orgdtl_id,wk.location_code,sal.GL_CODE)',
'',
'union',
'--employers deductions only',
'',
'select to_char(ACCOUNT_CODE) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						--case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else cast(d.account_code_emplr as nvarchar2(100)) end',
'                        d.account_code_emplr ACCOUNT_CODE,',
'						x.COA_CODE,',
'						x.UNIT_NAME,',
'						k.emp_id,',
'						k.orgdtl_id, ',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		and k.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,ACCOUNT_CODE,location_code',
'',
'--NIS-ER',
'union',
'',
'select ''500714000000''  account_code,--''210008000000''',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 x.UNIT_NAME,  ',
'			 cast(''NIS Employer''  as nvarchar2(100)) DESCRIPTION, ',
'			 sum(nis_employer) nis_employer,  ',
'			 sum(nis_employer_YTD) nis_employer_YTD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,k.orgdtl_id, wk.location_code',
'',
'',
'---************ CREDITS ***********',
'union ',
'/*',
'select to_char(account_code) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						k.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'						''CR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,location_code',
'*/',
'select  case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'                else to_char(account_code) end account_code,',
'         --    account_code_emplr  account_code,   ',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'		--	case when deduction_type=''EMPLOYEE'' THEN ''DR''',
'        --            else ''CR'' end   Debit_Credit,',
'             ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'                        account_code_emplr,',
'                        DEDUCTION_TYPE,',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						k.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'					--	case when deduction_type=''EMPLOYEE'' THEN ''CR''',
'                      --  else ''DR'' end  Debit_Credit,',
'						wk.location_code',
'from  hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,account_code_emplr,DEDUCTION_TYPE,location_code',
'',
'--NETPAY',
'union',
'',
'select       to_char(BANK_ACCOUNT_NO) account_code,',
'			 k.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NETPAY''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(net_pay) net_pay,  ',
'			 sum(net_pay_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NETPAY''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code,BANK_ACCOUNT_NO',
'',
'',
'--PAYE',
'union',
'',
'select ''210005000000'' account_code,',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''PAYE''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay,  ',
'			 sum(tax_amount_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'				wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''PAYE''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code',
'',
'',
'--NIS',
'union',
'',
'select ''210007000000'' account_code,',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employee''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employee) net_pay,  ',
'			 sum(nis_employee_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employee''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code',
'',
'',
'--NIS-ER',
'union',
'',
'select  ''210008000000'' account_code,--''500714000000''',
'			 k.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employer''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employer) net_pay,  ',
'			 sum(nis_employer_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,k.orgdtl_id,wk.location_code',
'',
'union ',
'--personal rate negative pay',
'select * ',
'from(',
'		select nvl(sal.GL_CODE,''500701000000'') account_code,',
'					 b.orgdtl_id, ',
'					 k.emp_id,',
'					 x.COA_CODE,',
'					 x.UNIT_NAME,  ',
'					 case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                     when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end DESCRIPTION, ',
'					 sum(time_tax_earnings) + sum(time_nontax_earnings) - sum(nvl(get_overtime_cb_negative(k.id),0))-- nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) ',
'                     time_tax_earnings,  ',
'					 sum(time_tax_earnings) time_tax_earnings_ytd, ',
'					 ''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'        and sal.start_date<w.end_date',
'        and ',
'        (sal.end_date is null or sal.end_date BETWEEN w.start_date and w.end_date)',
'		group by x.COA_CODE,UNIT_NAME,  cast(''Basic Salary'' as nvarchar2(100)) ,k.emp_id,b.orgdtl_id,wk.location_code,sal.GL_CODE)',
'',
'',
'--NIS-ER -negative pay',
'union',
'',
'select ''500714000000''  account_code,--''210008000000''',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 x.UNIT_NAME,  ',
'			 cast(''NIS Employer''  as nvarchar2(100)) DESCRIPTION, ',
'			 sum(nis_employer) nis_employer,  ',
'			 sum(nis_employer) nis_employer_YTD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,b.orgdtl_id, wk.location_code',
'',
'',
'',
'--NETPAY negative pay',
'union',
'',
'select       to_char(BANK_ACCOUNT_NO) account_code,',
'			 b.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NETPAY''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(net_pay)*-1 net_pay,  ',
'			 sum(net_pay) net_pay_TD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NETPAY''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code,BANK_ACCOUNT_NO',
'',
'',
'',
'--PAYE negative pay',
'union',
'',
'select ''210005000000'' account_code,',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''PAYE''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay,  ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'				wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''PAYE''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code',
'',
'',
'--NIS  negative pay',
'union',
'',
'select ''210007000000'' account_code,',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employee''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employee) net_pay,  ',
'			 sum(nis_employee) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employee''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code',
'',
'',
'--NIS-ER',
'union',
'',
'select  ''210008000000'' account_code,--''500714000000''',
'			 b.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employer''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employer) net_pay,  ',
'			 sum(nis_employer) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,b.orgdtl_id,wk.location_code',
'',
'union ',
'--income negative pay',
'select to_char(account_code) account_code,',
'			 orgdtl_id, ',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION, ',
'			 sum(income_amount) income_amount, ',
'			 sum(income_amount_ytd) income_amount_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						e.account_code, ',
'						c.emp_id,',
'						b.orgdtl_id, ',
'						x.COA_CODE,',
'						x.UNIT_NAME, ',
'						initcap(e.DESCRIPTION) DESCRIPTION, ',
'						a.income_amount income_amount, ',
'						a.income_amount_ytd income_amount_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join PA_PMG_PAYROLLINCOMENEG a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and e.org_id=:APP_ORG_ID',
'		)',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id, orgdtl_id, account_code,location_code',
'',
'',
'union',
'--employers deductions only negative pay',
'',
'select to_char(ACCOUNT_CODE) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'					--	case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else d.account_code end',
'                        d.account_code_emplr ACCOUNT_CODE,',
'						x.COA_CODE,',
'						x.UNIT_NAME,',
'						k.emp_id,',
'						b.orgdtl_id, ',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'		join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,ACCOUNT_CODE,location_code',
'',
'---credits deduction  negative pay',
'union ',
'',
'select  --case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'         --       else account_code_emplr end account_code,',
'',
'        case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'                else to_char(account_code) end account_code,        ',
'         --    account_code_emplr  account_code,   ',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'		--	case when deduction_type=''EMPLOYEE'' THEN ''DR''',
'        --            else ''CR'' end   Debit_Credit,',
'             ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'                        account_code_emplr,',
'                        DEDUCTION_TYPE,',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						b.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'					--	case when deduction_type=''EMPLOYEE'' THEN ''CR''',
'                      --  else ''DR'' end  Debit_Credit,',
'						wk.location_code',
'from  hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,account_code_emplr,DEDUCTION_TYPE,location_code',
'',
') x ',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6002_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(655304601387528070)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>244725404595145505
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655304928532528073)
,p_db_column_name=>'ACCOUNT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Account Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305056844528074)
,p_db_column_name=>'BK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Bk'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305121645528075)
,p_db_column_name=>'BR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Br'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305276492528076)
,p_db_column_name=>'CCY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ccy'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305367330528077)
,p_db_column_name=>'GL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Gl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305482599528078)
,p_db_column_name=>'CC'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305571700528079)
,p_db_column_name=>'DR_CR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Dr Cr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305624761528080)
,p_db_column_name=>'DEBIT_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Debit Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305757345528081)
,p_db_column_name=>'CREDIT_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Credit Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305868476528082)
,p_db_column_name=>'D_C'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'D C'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655305952243528083)
,p_db_column_name=>'EMP_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772971129959159135)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623920'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCOUNT_NAME:BK:BR:CCY:GL:CC:DR_CR:DEBIT_AMOUNT:CREDIT_AMOUNT:D_C:EMP_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655304749816528071)
,p_plug_name=>'Branch Entries by Branch'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select       ACCOUNT_NAME, ',
'						 to_char(max(BK)) BK, ',
'						 TO_CHAR(BR) BR, ',
'						 max(CCY) CCY, ',
'                         trim(GL) GL, ',
'						 max(CC) CC, ',
'						 max(DR_CR) DR_CR, ',
'						 sum(DEBIT_AMOUNT) DEBIT_AMOUNT, ',
'						 sum(CREDIT_AMOUNT) CREDIT_AMOUNT, ',
'						 max(D_C) D_C',
'',
'               from (',
' select  x.account_code GL,',
'				 x.coa_code CC, ',
'				 x.description ACCOUNT_NAME, ',
'				 x.income_amount ALL_AMOUNT, ',
'				 x.debit_credit DR_CR, ',
'				 ''GYD'' CCY,',
'				 ''01'' BK,',
'				 to_char(case when length(location_code) = 1 then ''00''||location_code ',
'				      when length(location_code) = 2 then ''0''||location_code',
'							else location_code end) BR,',
'				 case when UPPER(x.debit_credit) = ''DR'' THEN ''D''',
'						  when UPPER(x.debit_credit) = ''CR'' THEN ''C'' END D_C,',
'				 case when UPPER(x.debit_credit) = ''DR'' THEN INCOME_AMOUNT ELSE 0 END DEBIT_AMOUNT,',
'				 case when UPPER(x.debit_credit) = ''CR'' THEN INCOME_AMOUNT ELSE 0 END CREDIT_AMOUNT,',
' row_number() over (partition by emp_id,unit_name, COA_CODE, debit_credit,orgdtl_id order by emp_id ) as seqnum,',
'                x.emp_id',
' from (',
' ',
' ',
'select to_char(account_code) account_code,',
'			 orgdtl_id, ',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION, ',
'			 sum(income_amount) income_amount, ',
'			 sum(income_amount_ytd) income_amount_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						e.account_code, ',
'						c.emp_id,',
'						c.orgdtl_id, ',
'						x.COA_CODE,',
'						x.UNIT_NAME, ',
'						initcap(e.DESCRIPTION) DESCRIPTION, ',
'						a.income_amount income_amount, ',
'						a.income_amount_ytd income_amount_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'		join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'		and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004))',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id, account_code,location_code',
'',
'',
'union ',
'--personal rate',
'select * ',
'from(',
'		select nvl(sal.GL_CODE,''500701000000'') account_code,',
'					 k.orgdtl_id, ',
'					 k.emp_id,',
'					 x.COA_CODE,',
'					 x.UNIT_NAME,  ',
'					 case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                     when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end DESCRIPTION, ',
'					 sum(time_tax_earnings) + sum(time_nontax_earnings) - case when :APP_ORG_ID = 32661 then sum(nvl(get_overtime_cb(k.id),0)) ',
'                     else nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) end ',
'                     time_tax_earnings,  ',
'					 sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ',
'					 ''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and k.compute_gross_hist=''BASIC_PAY''',
'		and earnings_type = ''RG''',
'		and k.org_id=:APP_ORG_ID',
'        and ((sal.start_date <= k.period_start and (sal.end_Date is null or sal.end_Date >= k.period_end)) or',
'        (sal.start_date between k.period_start and k.period_end))',
'		group by x.COA_CODE,UNIT_NAME,  cast(''Basic Salary'' as nvarchar2(100)) ,k.emp_id,k.orgdtl_id,wk.location_code,sal.GL_CODE)',
'',
'union',
'--employers deductions only',
'',
'select to_char(ACCOUNT_CODE) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						--case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else cast(d.account_code_emplr as nvarchar2(100)) end',
'                        d.account_code_emplr  ACCOUNT_CODE,',
'						x.COA_CODE,',
'						x.UNIT_NAME,',
'						k.emp_id,',
'						k.orgdtl_id, ',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		and k.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,ACCOUNT_CODE,location_code',
'',
'--NIS-ER',
'union',
'',
'select ''500714000000''  account_code,--''210008000000''',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 x.UNIT_NAME,  ',
'			 cast(''NIS Employer''  as nvarchar2(100)) DESCRIPTION, ',
'			 sum(nis_employer) nis_employer,  ',
'			 sum(nis_employer_YTD) nis_employer_YTD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,k.orgdtl_id, wk.location_code',
'',
'',
'---************ CREDITS ***********',
'union ',
'/*',
'select to_char(account_code) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						k.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'						''CR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,location_code',
'*/',
'select  case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'                else to_char(account_code)  end account_code,',
'         --    account_code_emplr  account_code,   ',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'		--	case when deduction_type=''EMPLOYEE'' THEN ''DR''',
'        --            else ''CR'' end   Debit_Credit,',
'             ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'                        account_code_emplr,',
'                        DEDUCTION_TYPE,',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						k.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'					--	case when deduction_type=''EMPLOYEE'' THEN ''CR''',
'                      --  else ''DR'' end  Debit_Credit,',
'						wk.location_code',
'from  hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,account_code_emplr,DEDUCTION_TYPE,location_code',
'',
'--NETPAY',
'union',
'',
'select       to_char(BANK_ACCOUNT_NO) account_code,',
'			 k.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NETPAY''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(net_pay) net_pay,  ',
'			 sum(net_pay_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NETPAY''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code,BANK_ACCOUNT_NO',
'',
'',
'--PAYE',
'union',
'',
'select ''210005000000'' account_code,',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''PAYE''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay,  ',
'			 sum(tax_amount_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'				wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''PAYE''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code',
'',
'',
'--NIS',
'union',
'',
'select ''210007000000'' account_code,',
'			 k.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employee''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employee) net_pay,  ',
'			 sum(nis_employee_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employee''  as nvarchar2(100)),k.emp_id,k.orgdtl_id,wk.location_code',
'',
'',
'--NIS-ER',
'union',
'',
'select  ''210008000000'' account_code,--''500714000000''',
'			 k.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employer''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employer) net_pay,  ',
'			 sum(nis_employer_YTD) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,k.orgdtl_id,wk.location_code',
'',
'union ',
'--personal rate negative pay',
'select * ',
'from(',
'		select nvl(sal.GL_CODE,''500701000000'') account_code,',
'					 b.orgdtl_id, ',
'					 k.emp_id,',
'					 x.COA_CODE,',
'					 x.UNIT_NAME,  ',
'					 case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                     when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end DESCRIPTION, ',
'					 sum(time_tax_earnings) + sum(time_nontax_earnings) - sum(nvl(get_overtime_cb_negative(k.id),0)) -- nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) ',
'                     time_tax_earnings,  ',
'					 sum(time_tax_earnings) time_tax_earnings_ytd, ',
'					 ''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'          and sal.start_date<w.end_date',
'        and ',
'        (sal.end_date is null or sal.end_date BETWEEN w.start_date and w.end_date)',
'		group by x.COA_CODE,UNIT_NAME,  cast(''Basic Salary'' as nvarchar2(100)) ,k.emp_id,b.orgdtl_id,wk.location_code,sal.GL_CODE)',
'',
'',
'--NIS-ER -negative pay',
'union',
'',
'select ''500714000000''  account_code,--''210008000000''',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 x.UNIT_NAME,  ',
'			 cast(''NIS Employer''  as nvarchar2(100)) DESCRIPTION, ',
'			 sum(nis_employer) nis_employer,  ',
'			 sum(nis_employer) nis_employer_YTD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,b.orgdtl_id, wk.location_code',
'',
'',
'',
'--NETPAY negative pay',
'union',
'',
'select       to_char(BANK_ACCOUNT_NO) account_code,',
'			 b.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NETPAY''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(net_pay)*-1 net_pay,  ',
'			 sum(net_pay) net_pay_TD, ',
'			 ''DR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NETPAY''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code,BANK_ACCOUNT_NO',
'',
'',
'',
'--PAYE -negative pay',
'union',
'',
'select ''210005000000'' account_code,',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''PAYE''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay,  ',
'			 sum(case when tax_amount<0 then 0 else tax_amount end) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'				wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''PAYE''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code',
'',
'',
'--NIS negative pay',
'union',
'',
'select ''210007000000'' account_code,',
'			 b.orgdtl_id,',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employee''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employee) net_pay,  ',
'			 sum(nis_employee) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employee''  as nvarchar2(100)),k.emp_id,b.orgdtl_id,wk.location_code',
'',
'',
'--NIS-ER',
'union',
'',
'select  ''210008000000'' account_code,--''500714000000''',
'			 b.orgdtl_id, ',
'			 k.emp_id,',
'			 x.COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(''NIS Employer''  as nvarchar2(100))  DESCRIPTION, ',
'			 sum(nis_employer) net_pay,  ',
'			 sum(nis_employer) net_pay_TD, ',
'			 ''CR'' Debit_Credit,',
'			 wk.location_code',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by x.COA_CODE,UNIT_NAME, cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,b.orgdtl_id,wk.location_code',
'',
'union ',
'--income negative pay',
'select to_char(account_code) account_code,',
'			 orgdtl_id, ',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION, ',
'			 sum(income_amount) income_amount, ',
'			 sum(income_amount_ytd) income_amount_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						e.account_code, ',
'						c.emp_id,',
'						b.orgdtl_id, ',
'						x.COA_CODE,',
'						x.UNIT_NAME, ',
'						initcap(e.DESCRIPTION) DESCRIPTION, ',
'						a.income_amount income_amount, ',
'						a.income_amount_ytd income_amount_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join PA_PMG_PAYROLLINCOMENEG a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and e.org_id=:APP_ORG_ID',
'		)',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id, orgdtl_id, account_code,location_code',
'',
'',
'union',
'--employers deductions only negative pay',
'',
'select to_char(ACCOUNT_CODE) account_code,',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'			 ''DR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'					--	case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else d.account_code end',
'                        d.account_code_emplr ACCOUNT_CODE, ',
'						x.COA_CODE,',
'						x.UNIT_NAME,',
'						k.emp_id,',
'						b.orgdtl_id, ',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						''DR'' Debit_Credit,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'		join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,ACCOUNT_CODE,location_code',
'',
'---credits deduction  negative pay',
'union ',
'',
'select  case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'                else to_char(account_code) end account_code,',
'',
'        --case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'        --        else account_code_emplr end account_code,',
'         --    account_code_emplr  account_code,   ',
'			 orgdtl_id,',
'			 emp_id,',
'			 COA_CODE,',
'			 UNIT_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION , ',
'			 sum(amount_deducted) amount_deducted, ',
'			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'		--	case when deduction_type=''EMPLOYEE'' THEN ''DR''',
'        --            else ''CR'' end   Debit_Credit,',
'             ''CR'' Debit_Credit,',
'			 location_code',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'                        account_code_emplr,',
'                        DEDUCTION_TYPE,',
'						x.COA_CODE,',
'						UNIT_NAME, ',
'						k.emp_id,',
'						b.orgdtl_id,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'					--	case when deduction_type=''EMPLOYEE'' THEN ''CR''',
'                      --  else ''DR'' end  Debit_Credit,',
'						wk.location_code',
'from  hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID)',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,account_code_emplr,DEDUCTION_TYPE,location_code',
'',
') x ',
') group by ACCOUNT_NAME,BR,trim(GL)'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(655306999918528094)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>244727803126145529
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307160577528095)
,p_db_column_name=>'ACCOUNT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Account Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307217140528096)
,p_db_column_name=>'BK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Bk'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307325373528097)
,p_db_column_name=>'BR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Br'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307474747528098)
,p_db_column_name=>'CCY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ccy'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307507516528099)
,p_db_column_name=>'GL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Gl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307650917528100)
,p_db_column_name=>'CC'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307735621528101)
,p_db_column_name=>'DR_CR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Dr Cr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307834697528102)
,p_db_column_name=>'DEBIT_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Debit Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655307963448528103)
,p_db_column_name=>'CREDIT_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Credit Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655308023525528104)
,p_db_column_name=>'D_C'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'D C'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772971770125159244)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623926'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCOUNT_NAME:BK:BR:CCY:GL:CC:DR_CR:DEBIT_AMOUNT:CREDIT_AMOUNT:D_C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655306041298528084)
,p_plug_name=>'Journal report'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---************ DEDITS ***********',
'',
'--Allowance',
'select COA_CODE,UNIT_NAME, ''Income Statement'' type_account,initcap(DESCRIPTION) DESCRIPTION, sum(income_amount) Debits, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit, 0 Credit from ',
'(select  distinct a.id, COA_CODE,UNIT_NAME, cast(''Allowance'' as nvarchar2(100)) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on trim(e.INCOME_CODE)=trim(a.INCOME_CODE)',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and e.org_id=:APP_ORG_ID',
'and income_amount >0 ',
'and upper(a.INCOME_TYPE)=''ALLOWANCE''',
'--and a.TAXABLE=1',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'union',
'--Overtime',
'select COA_CODE,UNIT_NAME, ''Income Statement'' type_account, initcap(DESCRIPTION) DESCRIPTION, sum(income_amount) Debits, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit, 0 Credit from ',
'(select  distinct a.id, COA_CODE,UNIT_NAME, cast(''Overtime'' as nvarchar2(100)) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and e.org_id=:APP_ORG_ID',
'and income_amount >0 ',
'and a.INCOME_CODE in (select INCOME_CODE from PA_PCF_INCOMECODE ic where upper(ic.DESCRIPTION) like ''%OVERTIME%'' and ic.ORG_ID=:APP_ORG_ID)',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'',
'union ',
'--personal rate',
'select x.COA_CODE,x.UNIT_NAME, ''Income Statement'' type_account,  cast(''Basic Pay''  as nvarchar2(100)) DESCRIPTION, sum(time_tax_earnings)+ sum(time_nontax_earnings) ',
'- case when :APP_ORG_ID = 32661 then sum(nvl(get_overtime_cb(k.id),0)) ',
'else nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) end ',
'Debits,',
'sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Debit_Credit, 0 Credit',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where k.earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and k.org_id = :APP_ORG_ID',
'group by x.COA_CODE,x.UNIT_NAME,  cast(''Basic Pay''  as nvarchar2(100)),k.earnings_period_id',
'',
'union',
'--employers deductions only',
'',
'select COA_CODE,UNIT_NAME, ''Income Statement'' type_account,DESCRIPTION, sum(amount_deducted) Debits, sum(amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit, 0 Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, cast(''Employer Medical'' as nvarchar2(100)) DESCRIPTION, a.amount_deducted amount_deducted, amount_deducted_ytd amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id= :P6002_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and amount_deducted >0',
'and a.EXPENSE_CODE=''MED''',
'and d.org_id =:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION',
'',
'--NIS-ER',
'union',
'select COA_CODE,UNIT_NAME, ''Income Statement'' type_account,  cast(''NIS Employer''  as nvarchar2(100))  DESCRIPTION, sum(nis_employer) Debits,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit, 0 Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.org_id =:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as nvarchar2(100)) ',
'',
'',
'---************ CREDITS ***********',
'union ',
'',
'select COA_CODE,UNIT_NAME, ''Balance Sheet'' type_account, DESCRIPTION, 0 Debits, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit, sum(amount_deducted) Credit from (',
'select distinct a.id, COA_CODE,UNIT_NAME, cast(''Payroll & Benefits - Medical Insurance'' as nvarchar2(100)) DESCRIPTION, a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on trim(d.EXPENSE_CODE)=trim(a.EXPENSE_CODE)',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID',
'and amount_deducted >0',
'and a.EXPENSE_CODE=''MED'')',
'group by COA_CODE,UNIT_NAME,  DESCRIPTION',
'',
'',
'--NETPAY',
'union',
'',
'select COA_CODE,UNIT_NAME,''Balance Sheet'' type_account, cast(''Net Liability Account''  as nvarchar2(100))  DESCRIPTION, 0 Debits,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit, sum(',
'TIME_TAX_EARNINGS+TIME_NONTAX_EARNINGS+ALLOWANCE_TAXABLE+ALLOWANCE_NONTAXABLE+MISC_TAX_PAYMENT - case when tax_amount<0 then 0 else tax_amount end-NIS_EMPLOYEE-MEDICAL_SUM',
') Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.org_id = :APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''Net Liability Account''  as nvarchar2(100))',
'',
'--PAYE',
'union',
'select COA_CODE,UNIT_NAME,''Balance Sheet'' type_account, cast(''PAYE''  as nvarchar2(100))  DESCRIPTION, 0 Debits,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit, sum(case when tax_amount<0 then 0 else tax_amount end) Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.org_id = :APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as nvarchar2(100))',
'',
'',
'--NIS',
'union',
'select COA_CODE,UNIT_NAME,''Balance Sheet'' type_account, cast(''NIS Control Account''  as nvarchar2(100))  DESCRIPTION, 0 Debits,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit, sum(nis_employee+nis_employer) Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and k.org_id = :APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Control Account''  as nvarchar2(100))',
' '))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(655306105262528085)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>244726908470145520
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306237626528086)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306346301528087)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306471865528088)
,p_db_column_name=>'TYPE_ACCOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Type Account'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306590004528089)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306687311528090)
,p_db_column_name=>'DEBITS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Debits'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306727462528091)
,p_db_column_name=>'INCOME_AMOUNT_YTD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Income Amount Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306824921528092)
,p_db_column_name=>'DEBIT_CREDIT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Debit Credit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655306905956528093)
,p_db_column_name=>'CREDIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772972308890159353)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623932'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COA_CODE:UNIT_NAME:TYPE_ACCOUNT:DESCRIPTION:DEBITS:INCOME_AMOUNT_YTD:DEBIT_CREDIT:CREDIT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655308160819528105)
,p_plug_name=>'Net Payroll Liability'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---************ DEDITS ***********',
'',
'--NETPAY',
'select COA_CODE,UNIT_NAME,''Balance Sheet'' type_account, cast(''Net Pay''  as nvarchar2(100))  DESCRIPTION, sum(net_pay) Debits,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit, 0 Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'group by COA_CODE,UNIT_NAME, cast(''Net Pay''  as nvarchar2(100))',
'',
'---************ CREDITS ***********',
'union ',
'',
'select COA_CODE,UNIT_NAME, ''Balance Sheet'' type_account, cast(initcap(DESCRIPTION) as nvarchar2(100)) DESCRIPTION, 0 Debits, sum(amount_deducted_ytd) amount_deducted_ytd, ''CR'' Debit_Credit, sum(amount_deducted) Credit from (',
'select distinct a.id, COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION, a.amount_deducted amount_deducted, a.amount_deducted_ytd amount_deducted_ytd, ''CR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on trim(d.EXPENSE_CODE)=trim(a.EXPENSE_CODE)',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID',
'and amount_deducted >0',
')',
'group by COA_CODE,UNIT_NAME,  DESCRIPTION'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(655308597642528110)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>244729400850145545
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655308781496528111)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655308814819528112)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655308917761528113)
,p_db_column_name=>'TYPE_ACCOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Type Account'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655309034622528114)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(655309188120528115)
,p_db_column_name=>'DEBITS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Debits'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943386379098866)
,p_db_column_name=>'NET_PAY_TD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Net Pay Td'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943443172098867)
,p_db_column_name=>'DEBIT_CREDIT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Debit Credit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943540398098868)
,p_db_column_name=>'CREDIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Credit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772972933813159389)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COA_CODE:UNIT_NAME:TYPE_ACCOUNT:DESCRIPTION:DEBITS:NET_PAY_TD:DEBIT_CREDIT:CREDIT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655308220876528106)
,p_plug_name=>'Payroll Deductions Report'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ad.remarks, ',
'                k.emp_company_no_hist, ',
'                k.first_name_hist||'' ''||k.surname_hist name, ',
'                a.id, ',
'                COA_CODE,UNIT_NAME, ',
'                initcap(d.DESCRIPTION||'' ''||a.DEDUCTION_TYPE) DESCRIPTION, ',
'                a.amount_deducted amount_deducted, ',
'                ''CR'' Debit_Credit,',
'                INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(ep.EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))||'' ''||ep.PAYMENT_TYPE||'' ''||EARNINGS_TYPE||'' ''||initcap(replace(ep.compute_gross,''_'','' '')) earning_period',
'                --, a.account_code_cr',
'from  hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join pa_pcf_admindeduction ad on ad.id=a.ADM_DEDUCTION_ID',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join PA_PCF_EARNINGPERIOD ep on ep.id=k.earnings_period_id',
'join Pa_Pcf_Deductioncode d on trim(d.EXPENSE_CODE)=trim(a.EXPENSE_CODE)',
'where earnings_period_id = :P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID',
'and amount_deducted >0'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(772943623761098869)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>362364426968716304
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943702612098870)
,p_db_column_name=>'REMARKS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943875385098871)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772943929154098872)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944028768098873)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944164254098874)
,p_db_column_name=>'COA_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944216448098875)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944357096098876)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944444544098877)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944516406098878)
,p_db_column_name=>'DEBIT_CREDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Debit Credit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944657643098879)
,p_db_column_name=>'EARNING_PERIOD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Earning Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772973681148159401)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623945'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REMARKS:EMP_COMPANY_NO_HIST:NAME:ID:COA_CODE:UNIT_NAME:DESCRIPTION:AMOUNT_DEDUCTED:DEBIT_CREDIT:EARNING_PERIOD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655308305573528107)
,p_plug_name=>'Medical Scheme Contribution'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'o.coa_code||'' ''||o.unit_name coa,',
'pa.emp_company_no_hist,',
'INITCAP(pa.first_name_hist||'' ''||pa.surname_hist) name,',
'(select sum(AMOUNT_DEDUCTED) from PA_PMG_PAYROLLDEDUCTION where PAY_SLIPNO=pa.id and DEDUCTION_TYPE=''EMPLOYEE'' and EXPENSE_CODE=''MED'') med_employee,',
'(select sum(AMOUNT_DEDUCTED) from PA_PMG_PAYROLLDEDUCTION where PAY_SLIPNO=pa.id and DEDUCTION_TYPE=''EMPLOYER'' and EXPENSE_CODE=''MED'') med_employer,',
'(select sum(AMOUNT_DEDUCTED) from PA_PMG_PAYROLLDEDUCTION where PAY_SLIPNO=pa.id and EXPENSE_CODE=''MED'') total,',
'(select sum(AMOUNT_DEDUCTED) from PA_PMG_PAYROLLDEDUCTION where PAY_SLIPNO=pa.id and DEDUCTION_TYPE=''EMPLOYEE'' and EXPENSE_CODE=''MED'') payroll',
'from',
'pa_pmg_payrolldtl pa',
'join HR_HCF_ORGSTRUCTUREDTL o on o.id=pa.orgdtl_id',
'where ',
'pa.earnings_period_id=:P6002_PAID_EARNINGS_PERIOD',
'and exists (select 1 from PA_PMG_PAYROLLDEDUCTION where PAY_SLIPNO=pa.id and EXPENSE_CODE=''MED'')'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(772944749216098880)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>362365552423716315
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944844469098881)
,p_db_column_name=>'COA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772944993389098882)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945069117098883)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945190046098884)
,p_db_column_name=>'MED_EMPLOYEE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Med Employee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945240122098885)
,p_db_column_name=>'MED_EMPLOYER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Med Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945313859098886)
,p_db_column_name=>'TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945464440098887)
,p_db_column_name=>'PAYROLL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Payroll'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772974252888159413)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623951'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COA:EMP_COMPANY_NO_HIST:NAME:MED_EMPLOYEE:MED_EMPLOYER:TOTAL:PAYROLL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655308479848528108)
,p_plug_name=>'Income Codes'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'       INNOCODE,',
'       INNO_DESCRIPTION',
'  from GTT_ALLOW_MAPPING'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(772945561473098888)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>362366364680716323
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945625702098889)
,p_db_column_name=>'INNOCODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Innocode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945727071098890)
,p_db_column_name=>'INNO_DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Inno Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772974946206159423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623958'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INNOCODE:INNO_DESCRIPTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(655308561344528109)
,p_plug_name=>'FMS Journal Report'
,p_parent_plug_id=>wwv_flow_imp.id(655304399844528068)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select       ACCOUNT_NAME, ',
'-- 						 to_char(max(BK)) BK, ',
'-- 						 TO_CHAR(BR) BR, ',
'-- 						 max(CCY) CCY, ',
'--                          trim(GL) GL, ',
'-- 						 max(CC) CC, ',
'-- 						 max(DR_CR) DR_CR, ',
'-- 						 sum(DEBIT_AMOUNT) DEBIT_AMOUNT, ',
'-- 						 sum(CREDIT_AMOUNT) CREDIT_AMOUNT, ',
'-- 						 max(D_C) D_C',
'--                from (',
'--  select  x.account_code GL,',
'-- 				 x.coa_code CC, ',
'-- 				 x.description ACCOUNT_NAME, ',
'-- 				 x.income_amount ALL_AMOUNT, ',
'-- 				 x.Code_Type DR_CR, ',
'-- 				 ''GYD'' CCY,',
'-- 				 ''01'' BK,',
'-- 				 to_char(case when length(location_code) = 1 then ''00''||location_code ',
'-- 				      when length(location_code) = 2 then ''0''||location_code',
'-- 							else location_code end) BR,',
'-- 				 case when UPPER(x.debit_credit) = ''DR'' THEN ''D''',
'-- 						  when UPPER(x.debit_credit) = ''CR'' THEN ''C'' END D_C,',
'-- 				 case when UPPER(x.debit_credit) = ''DR'' THEN INCOME_AMOUNT ELSE 0 END DEBIT_AMOUNT,',
'-- 				 case when UPPER(x.debit_credit) = ''CR'' THEN INCOME_AMOUNT ELSE 0 END CREDIT_AMOUNT,',
'--  row_number() over (partition by emp_id,unit_name, COA_CODE, debit_credit,orgdtl_id order by emp_id ) as seqnum,',
'--                 x.emp_id',
'--  from (',
' ',
' ',
'',
'-- ***************************************** DEBITS ******************************************',
'',
'',
'select ',
'	''DR'' Code_Type,',
'    to_char(account_code) CODE,',
'    POSITION_NAME,',
'	cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name, ',
'			 sum(income_amount) Amount, ',
'			 sum(income_amount_ytd) income_amount_ytd',
'    ',
'from',
'		(select distinct a.id,',
'						''DR'' Code_Type,',
'						e.account_code, ',
'                        POSITION_NAME, ',
'						initcap(e.DESCRIPTION) DESCRIPTION, ',
'						a.income_amount income_amount, ',
'						a.income_amount_ytd income_amount_ytd, ',
'						wk.location_code',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'		join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'		and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004))',
'group by DESCRIPTION,account_code, POSITION_NAME',
'',
'',
'union ',
'--personal rate',
'select * ',
'from(',
'		select ',
'            nvl(',
'                sal.GL_CODE,''10-01'') CODE,',
'				''DR'' Code_Type,',
'                POSITION_NAME, ',
'				case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end Account_Name, ',
'                sum(time_tax_earnings) + sum(time_nontax_earnings) - case when :APP_ORG_ID = 32661 then sum(nvl(get_overtime_cb(k.id),0)) ',
'                     else nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) end ',
'                     Amount,  ',
'			    sum(time_tax_earnings_YTD) time_tax_earnings_ytd',
'                ',
'',
'		from hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and k.compute_gross_hist=''BASIC_PAY''',
'		and earnings_type = ''RG''',
'		and k.org_id=:APP_ORG_ID',
'        and ((sal.start_date <= k.period_start and (sal.end_Date is null or sal.end_Date >= k.period_end)) or',
'        (sal.start_date between k.period_start and k.period_end))',
'		group by x.COA_CODE,cast(''Basic Salary'' as nvarchar2(100)) , POSITION_NAME ,sal.GL_CODE)',
'',
'union',
'--employers deductions only',
'',
'select ',
'	''DR'' Code_Type,',
'    to_char(ACCOUNT_CODE) CODE,',
'	POSITION_NAME, ',
'	cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name, ',
'	sum(amount_deducted) Amount, ',
'	sum(amount_deducted_ytd) amount_deducted_ytd',
'	',
'',
'from',
'		(select distinct a.id,',
'						''DR'' Code_Type,',
'						--case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else cast(d.account_code_emplr as nvarchar2(100)) end',
'                        d.account_code_emplr  ACCOUNT_CODE,',
'                        POSITION_NAME,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		and k.org_id=:APP_ORG_ID)',
'group by DESCRIPTION,ACCOUNT_CODE, POSITION_NAME',
'',
'-- --NIS-ER',
'union',
'',
'select',
'	''DR'' Code_Type,',
'    ''5150-090''  CODE,--''210008000000''',
'    POSITION_NAME,',
'	cast(''NIS Employer''  as nvarchar2(100)) Account_Name, ',
'	sum(nis_employer) Amount,  ',
'	sum(nis_employer_YTD) nis_employer_YTD',
'	',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by cast(''NIS Employer''  as nvarchar2(100)) , POSITION_NAME',
'',
'union',
'',
'',
'-- --NETPAY negative pay',
'select ',
'	''DR'' Debit_Credit,',
'    ''2340-NEG'' CODE,',
'    k.POSITION_NAME,',
'	cast(''NETPAY negative pay''  as nvarchar2(100))  Account_Name, ',
'	sum(net_pay)*-1 Amount,  ',
'	sum(net_pay) net_pay_TD ',
'	',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by cast(''NETPAY negative pay''  as nvarchar2(100)),BANK_ACCOUNT_NO, k.POSITION_NAME',
'',
'union',
'',
'--personal rate negative pay',
'',
'select * ',
'from(',
'		select ',
'			''DR'' Code_Type,',
'            nvl(sal.GL_CODE,''10-01'') CODE,',
'            k.POSITION_NAME,',
'			case when nvl(sal.GL_CODE,''500701000000'') = ''500901000000'' then cast(''Basic Salary - Security''  as nvarchar2(100))',
'                     when nvl(sal.GL_CODE,''500701000000'') = ''500933000000'' then cast(''Basic Salary - Director''  as nvarchar2(100))',
'                     else cast(''Basic Salary''  as nvarchar2(100)) end Account_Name, ',
'			sum(time_tax_earnings) + sum(time_nontax_earnings) - sum(nvl(get_overtime_cb_negative(k.id),0)) Amount,-- nvl(fn_adhocPayment(:P6002_PAID_EARNINGS_PERIOD,  x.COA_CODE),0) ',
'	       	sum(time_tax_earnings) time_tax_earnings_ytd ',
'            ',
'',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'        join hr_rcm_salary sal on sal.emp_id = k.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'          and sal.start_date<w.end_date',
'        and ',
'        (sal.end_date is null or sal.end_date BETWEEN w.start_date and w.end_date)',
'		group by cast(''Basic Salary'' as nvarchar2(100)), k.POSITION_NAME, sal.GL_CODE)',
'',
'',
'-- --NIS-ER -negative pay',
'-- union',
'',
'-- select ',
'-- 	''DR'' Code_Type,',
'--     ''??????''  CODE,--''210008000000''',
'-- 	POSITION_NAME, ',
'-- 	cast(''NIS Employer''  as nvarchar2(100)) Account_Name, ',
'-- 	sum(nis_employer) Amount,  ',
'-- 	sum(nis_employer) nis_employer_YTD',
'	',
'-- from hr_rcm_employee b ',
'-- join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'-- join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'-- join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'-- where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'-- group by  cast(''NIS Employer - negative pay''  as nvarchar2(100)) , POSITION_NAME',
'',
'',
'union ',
'--income negative pay',
'select ',
'	''DR'' Code_Type,',
'    to_char(account_code) CODE,',
'	POSITION_NAME, ',
'			 cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name, ',
'			 sum(income_amount) Amount, ',
'			 sum(income_amount_ytd) income_amount_ytd',
'	        ',
'',
'from',
'		(select distinct a.id,',
'			e.account_code, ',
'	        c.POSITION_NAME POSITION_NAME, ',
'			initcap(e.DESCRIPTION) DESCRIPTION, ',
'			a.income_amount income_amount, ',
'			a.income_amount_ytd income_amount_ytd, ',
'			wk.location_code',
'		from hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG c on b.id = c.emp_id',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join PA_PMG_PAYROLLINCOMENEG a on c.id=a.pay_slipno',
'		join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'		JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and e.org_id=:APP_ORG_ID',
'		)',
'group by DESCRIPTION, account_code,POSITION_NAME',
'',
'',
'union',
'--employers deductions only negative pay',
'',
'select ',
'	''DR'' Code_Type,',
'    to_char(ACCOUNT_CODE) CODE,',
'	POSITION_NAME, ',
'	cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name, ',
'	sum(amount_deducted) amount_deducted, ',
'	sum(amount_deducted_ytd) amount_deducted_ytd',
'	',
'',
'from',
'		(select distinct a.id,',
'					--	case when d.expense_code = ''PENSION DEDUCTION'' then cast(d.ACCOUNT_CODE as nvarchar2(100)) else d.account_code end',
'            d.account_code_emplr ACCOUNT_CODE, ',
'	        k.POSITION_NAME, ',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						amount_deducted_ytd amount_deducted_ytd, ',
'						''DR'' Code_Type,',
'						wk.location_code',
'		from  hr_rcm_employee b ',
'		join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'		join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'		join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'		and A.DEDUCTION_TYPE=''EMPLOYER''',
'		)',
'group by DESCRIPTION,ACCOUNT_CODE,POSITION_NAME',
'',
'',
'union',
'-- ---  ***************************************** Amount ******************************************',
'-- union ',
'-- /*',
'-- select to_char(account_code) account_code,',
'-- 			 orgdtl_id,',
'-- 			 emp_id,',
'-- 			 COA_CODE,',
'-- 			 UNIT_NAME, ',
'-- 			 DESCRIPTION , ',
'-- 			 sum(amount_deducted) amount_deducted, ',
'-- 			 sum(amount_deducted_ytd) amount_deducted_ytd, ',
'-- 			 ''CR'' Code_Type,',
'-- 			 location_code',
'-- from',
'-- 		(select distinct a.id,',
'-- 						d.account_code, ',
'-- 						x.COA_CODE,',
'-- 						UNIT_NAME, ',
'-- 						k.emp_id,',
'-- 						k.orgdtl_id,',
'-- 						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'-- 						a.amount_deducted amount_deducted, ',
'-- 						a.amount_deducted_ytd amount_deducted_ytd, ',
'-- 						''CR'' Code_Type,',
'-- 						wk.location_code',
'-- 		from  hr_rcm_employee b ',
'-- 		join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'-- 		join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'-- 		join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'-- 		join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'-- 		join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'-- 		where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'-- 		and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'-- group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,account_code,location_code',
'-- */',
'select  ',
'    ''CR'' Code_Type,',
'    case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) else to_char(account_code)  end CODE,',
'    POSITION_NAME,',
'	cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name , ',
'	sum(amount_deducted) Amount, ',
'	sum(amount_deducted_ytd) amount_deducted_ytd',
'    ',
'from',
'		(select distinct a.id,',
'        ''CR'' Code_Type,',
'		d.account_code,',
'        b.POSITION_NAME,',
'        DEDUCTION_TYPE,',
'		initcap(d.DESCRIPTION) DESCRIPTION, ',
'		a.amount_deducted amount_deducted, ',
'		a.amount_deducted_ytd amount_deducted_ytd',
'from  hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID)',
'group by DESCRIPTION, account_code, DEDUCTION_TYPE, POSITION_NAME',
'',
'',
'-- --NETPAY',
'union',
'',
'select       ',
'    ''CR'' Code_Type,',
'    ''2340'' CODE,',
'    POSITION_NAME,',
'	cast(''NETPAY''  as nvarchar2(100))  Account_Name, ',
'	sum(net_pay) Amount,  ',
'	sum(net_pay_YTD) net_pay_TD',
'    ',
'from hr_rcm_employee b ',
'join hr_rcm_individual ind on ind.id=b.ind_id',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by x.COA_CODE,UNIT_NAME, cast(''NETPAY''  as nvarchar2(100)),BANK_ACCOUNT_NO, 	POSITION_NAME',
'',
'',
'-- --PAYE',
'union',
'',
'select ',
'    ''CR'' Code_Type,',
'    ''302'' CODE,',
'    POSITION_NAME,',
'	cast(''PAYE''  as nvarchar2(100))  Account_Name, ',
'	sum(case when tax_amount<0 then 0 else tax_amount end) Amount,  ',
'	sum(tax_amount_YTD) net_pay_TD',
'    ',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by cast(''PAYE''  as nvarchar2(100)), 	POSITION_NAME',
'',
'',
'-- --NIS',
'union',
'',
'select',
'	''CR'' Code_Type,',
'    ''00-00'' CODE,',
'    POSITION_NAME,',
'	cast(''NIS Employee''  as nvarchar2(100))  Account_Name, ',
'	sum(nis_employee) Amount,',
'	sum(nis_employee_YTD) net_pay_TD',
'	',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by cast(''NIS Employee''  as nvarchar2(100)), POSITION_NAME',
'',
'',
'-- --NIS-ER',
'union',
'',
'select  ',
'	''CR'' Code_Type,',
'    ''5150-090'' CODE,',
'    POSITION_NAME,',
'    cast(''NIS Employer''  as nvarchar2(100))  Account_Name, ',
'	sum(nis_employer) Amount,  ',
'	sum(nis_employer_YTD) net_pay_TD',
'	',
'from hr_rcm_employee b ',
'join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by cast(''NIS Employer''  as nvarchar2(100)) , POSITION_NAME',
'',
'-- --PAYE -negative pay',
'union',
'',
'select ',
'	''CR'' Code_Type,',
'    ''302-NEG'' CODE,',
'    k.POSITION_NAME,',
'	cast(''PAYE - negative pay''  as nvarchar2(100))  Account_Name, ',
'	sum(case when tax_amount<0 then 0 else tax_amount end) Amount,  ',
'	sum(case when tax_amount<0 then 0 else tax_amount end) net_pay_TD',
'	',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by cast(''PAYE - negative pay''  as nvarchar2(100)), k.POSITION_NAME',
'',
'',
'-- --NIS negative pay',
'union',
'',
'select ',
'	''CR'' Code_Type,',
'    ''00-00-NEG'' CODE,',
'    k.POSITION_NAME,',
'	cast(''NIS Employee''  as nvarchar2(100))  Account_Name, ',
'	sum(nis_employee) Amount,  ',
'	sum(nis_employee) net_pay_TD',
'	',
'from hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'group by cast(''NIS Employee - negative pay''  as nvarchar2(100)), k.POSITION_NAME',
'',
'-- --NIS-ER',
'-- union',
'',
'-- select  ''210008000000'' account_code,--''500714000000''',
'-- 			 b.orgdtl_id, ',
'-- 			 k.emp_id,',
'-- 			 x.COA_CODE,',
'-- 			 UNIT_NAME, ',
'-- 			 cast(''NIS Employer''  as nvarchar2(100))  Account_Name, ',
'-- 			 sum(nis_employer) net_pay,  ',
'-- 			 sum(nis_employer) net_pay_TD, ',
'-- 			 ''CR'' Code_Type,',
'-- 			 wk.location_code',
'-- from hr_rcm_employee b ',
'-- join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'-- join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'-- join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'-- where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'-- group by x.COA_CODE,UNIT_NAME, cast(''NIS Employer''  as nvarchar2(100)) ,k.emp_id,b.orgdtl_id,wk.location_code',
'',
'',
'-- ---Amount deduction  negative pay',
'union ',
'',
'select  ',
'    ''CR'' Code_Type,',
'    case when deduction_type=''EMPLOYEE'' THEN to_char(account_code) ',
'                else to_char(account_code) end CODE,  ',
'    POSITION_NAME,            ',
'	cast(initcap(DESCRIPTION) as nvarchar2(100)) Account_Name , ',
'	sum(amount_deducted) Amount, ',
'	sum(amount_deducted_ytd) amount_deducted_ytd ',
'		--	case when deduction_type=''EMPLOYEE'' THEN ''DR''',
'        --            else ''CR'' end   Code_Type,',
'	',
'from',
'		(select distinct a.id,',
'						d.account_code, ',
'                        DEDUCTION_TYPE,',
'                        k.POSITION_NAME,',
'						initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , ',
'						a.amount_deducted amount_deducted, ',
'						a.amount_deducted_ytd amount_deducted_ytd, ',
'					--	case when deduction_type=''EMPLOYEE'' THEN ''CR''',
'                      --  else ''DR'' end  Code_Type,',
'						wk.location_code',
'from  hr_rcm_employee b ',
'join PA_PMG_PAYROLLDTLNEG K ON b.id=k.emp_id',
'join PA_PMG_PAYROLLDEDUCTIONNEG a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = b.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'join hr_hcf_worklocation wk on wk.id=b.wklocation_id',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and d.org_id=:APP_ORG_ID)',
'group by DESCRIPTION,account_code,DEDUCTION_TYPE,POSITION_NAME',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'-- ) x ',
'-- ) group by ACCOUNT_NAME,BR,trim(GL)'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(772945888744098891)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LMORALES@INNOSYSGY.COM'
,p_internal_uid=>362366691951716326
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772945987290098892)
,p_db_column_name=>'CODE_TYPE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Code Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772946073243098893)
,p_db_column_name=>'CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772946159209098894)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772946213883098895)
,p_db_column_name=>'ACCOUNT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772946359312098896)
,p_db_column_name=>'AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(772946451133098897)
,p_db_column_name=>'INCOME_AMOUNT_YTD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Income Amount Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(772975635246159429)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3623965'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODE_TYPE:CODE:POSITION_NAME:ACCOUNT_NAME:AMOUNT:INCOME_AMOUNT_YTD'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3719930000760132825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(697197182218973949)
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
 p_id=>wwv_flow_imp.id(3719930307804132826)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3665723949135418568)
,p_button_name=>'PREVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3807018089076118135)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3498888776131680410)
,p_name=>'P6002_YEAR_OF_INCOME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
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
 p_id=>wwv_flow_imp.id(3498888834210680411)
,p_name=>'P6002_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
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
 p_id=>wwv_flow_imp.id(3584119692001751379)
,p_name=>'P6002_DEPARTMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
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
 p_id=>wwv_flow_imp.id(3611259364937869293)
,p_name=>'P6002_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3611259439188869294)
,p_name=>'P6002_REPORT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
,p_item_default=>'6364'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3719925219252132813)
,p_name=>'P6002_PAID_EARNINGS_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3841656554927876076)
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
 p_id=>wwv_flow_imp.id(3719931118045132828)
,p_name=>'search_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3719931589219132828)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3665723949135418568)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3719932109698132828)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3841657115549876082)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3784296987396455380)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784297367472455384)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3783282654235986985)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784296657291455377)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3783282605958986984)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784294590787455356)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3586390248996478895)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3585932989242869425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3783282467194986983)
,p_event_id=>wwv_flow_imp.id(3719931118045132828)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3783283944085986998)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3574069174475344914)
,p_name=>'search_region_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_DEPARTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069292990344915)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3665723949135418568)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069371880344916)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3841657115549876082)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069462645344917)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784297367472455384)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069529202344918)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784296657291455377)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069666148344919)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784294590787455356)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069713582344920)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3783283944085986998)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3574069883046344921)
,p_event_id=>wwv_flow_imp.id(3574069174475344914)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3585932989242869425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3583486498611257806)
,p_name=>'refresh_employee'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6002_DEPARTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3583486597674257807)
,p_event_id=>wwv_flow_imp.id(3583486498611257806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3784104939710449624)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3586390102401478894)
,p_event_id=>wwv_flow_imp.id(3583486498611257806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3585932989242869425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3611259500505869295)
,p_name=>'PreviewJournal'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3719930307804132826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%PEOPLEPAY%'' or upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%150.136.100.215%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3611259644177869296)
,p_event_id=>wwv_flow_imp.id(3611259500505869295)
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
 p_id=>wwv_flow_imp.id(3611259721972869297)
,p_event_id=>wwv_flow_imp.id(3611259500505869295)
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
'--select replace(report_location,''/reports/'') into v_report_path from report where id= :P6002_REPORT_ID;',
'--v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p6002_earnings_period||''|IN_ORG_ID=''||:p6002_organisation||''|SEARCH_OPTION=''||:p6002_search_option||''|SUPPRESS_DETAILS=''||:p6002_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p6002_parameters:=''&EARNINGS_PERIOD_ID=''||:p6002_earnings_period||''&IN_ORG_ID=''||:p6002_organisation||''&SEARCH_OPTION=''||:p6002_search_option||''&SUPPRESS_DETAILS=''||:p6002_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'--||:APP_ORG_ID||',
'',
'--v_url_1:=''http://apps4.innosysgy.com:8082/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P6002_PAID_EARNINGS_PERIOD||''-DEPARTMENT_ID=''||:P6002_DEPARTMENT_ID||''-IN_ORG_ID=''||:APP_ORG_ID||''-SESSION_ID=''||:APP_SESSION;',
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
'v_url_1 := v_url_1  || ''-EARNINGS_PERIOD_ID=''||:P6002_PAID_EARNINGS_PERIOD||''-DEPARTMENT_ID=''||:P6002_DEPARTMENT_ID||''-IN_ORG_ID=''||:APP_ORG_ID||''-SESSION_ID=''||:APP_SESSION; ',
' ',
'',
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
 p_id=>wwv_flow_imp.id(3611259869620869298)
,p_event_id=>wwv_flow_imp.id(3611259500505869295)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P6002_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3719930689050132826)
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
,p_process_when_button_id=>wwv_flow_imp.id(3719930307804132826)
,p_internal_uid=>3076454767170378321
);
wwv_flow_imp.component_end;
end;
/
