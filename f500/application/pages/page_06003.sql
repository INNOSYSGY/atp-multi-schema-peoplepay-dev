prompt --application/pages/page_06003
begin
--   Manifest
--     PAGE: 06003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>6003
,p_name=>'Financial Journal Summary'
,p_step_title=>'Financial Journal Summary'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295437519995187)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696915849784827713)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3674425916685105408)
,p_plug_name=>'FInancial Journal Summary'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'---************ DEDITS ***********',
'',
'select ',
'COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and income_amount >0 and c.org_id=:APP_ORG_ID)',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'',
'union ',
'--personal rate',
'select COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings)-  nvl(fn_adhocPaymentsum(:P6003_PAID_EARNINGS_PERIOD,  COA_CODE),0)  time_tax_earnings,  sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Deb'
||'it_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) ',
'',
'union',
'--employers deductions only',
'',
'select COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , sum(a.amount_deducted) amount_deducted, sum(a.amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and k.org_id=:APP_ORG_ID',
'and amount_deducted >0',
'group by COA_CODE,UNIT_NAME, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE)',
'',
'--NIS-ER',
'union',
'select COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
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
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and amount_deducted >0',
'and k.org_id=:APP_ORG_ID',
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
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))',
'',
'',
'--PAYE',
'union',
'select COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))',
'',
'',
'--NIS',
'union',
'select COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))',
' ',
'',
'--NIS-ER',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) ',
' ',
'*/',
'',
'---************ DEDITS ***********',
'',
'select ',
'COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'join pa_pcf_earningperiod ep on ep.id  = c.earnings_period_id',
'where   ',
'EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'--and income_amount >0 ',
'and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL''   or e.id !=6004)',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION',
'',
'',
'union ',
'--personal rate',
'select COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings) + sum (time_nontax_earnings) +  nvl(FN_priorsalary_month(:P6003_PAID_EARNINGS_PERIOD,  COA_CODE),0) ',
'- sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID)) time_tax_earnings',
',  max(time_tax_earnings_YTD) +max (time_nontax_earnings_ytd) /*-  nvl(fn_adhocPaymentsum(:P6003_PAID_EARNINGS_PERIOD,  COA_CODE),0)*/  time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'where  EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.compute_gross_hist=''BASIC_PAY''',
'and earnings_type = ''RG''',
'and k.org_id=:APP_ORG_ID',
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
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and A.DEDUCTION_TYPE=''EMPLOYER''',
'and k.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION',
'',
'--NIS-ER',
'union',
'select COA_CODE,UNIT_NAME,  cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) nis_employer,  sum(nis_employer_YTD) nis_employer_YTD, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
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
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID',
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
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))',
'',
'',
'--PAYE',
'union',
'select COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))',
'',
'',
'--NIS',
'union',
'select COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))',
' ',
'',
'--NIS-ER',
'union',
'',
'select COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100))  DESCRIPTION, sum(nis_employer) net_pay,  sum(nis_employer_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6003_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3674425967217105409)
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
,p_internal_uid=>568944615589673487
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719654003512996720)
,p_db_column_name=>'COA_CODE'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719654356976996726)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'R'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719654736961996727)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719655201302996728)
,p_db_column_name=>'INCOME_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'T'
,p_column_label=>'Income Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3719655525314996730)
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
 p_id=>wwv_flow_imp.id(3719655927771996730)
,p_db_column_name=>'DEBIT_CREDIT'
,p_display_order=>60
,p_column_identifier=>'V'
,p_column_label=>'Debit Credit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3675439752713346526)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1121388'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COA_CODE:UNIT_NAME:DEBIT_CREDIT:DESCRIPTION:INCOME_AMOUNT:'
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
,p_break_on=>'COA_CODE:UNIT_NAME:DEBIT_CREDIT:0:0:0'
,p_break_enabled_on=>'COA_CODE:UNIT_NAME:DEBIT_CREDIT:0:0:0'
,p_sum_columns_on_break=>'AMOUNT:INCOME_AMOUNT:INCOME_AMOUNT_YTD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3706793837879952575)
,p_plug_name=>'Grade Summary'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.emp_company_no_hist, surname_hist, first_name_hist, unit_code, unit_name, position_name_hist, pay_grade_id, to_char(income_code) income_code, income_amount',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
' join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'where  EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and c.org_id = :APP_ORG_ID',
'union all',
'select c.emp_company_no_hist, surname_hist, first_name_hist, unit_code, unit_name, position_name_hist, pay_grade_id, to_char(''NR(T)'') INCOME_CODE, basic_personal_rate Income_Sum',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where  EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and basic_personal_rate > 0',
'and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY''',
'and c.org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6003_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3706793780350952574)
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
,p_internal_uid=>152294479539108492
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782879170645172879)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782878814609172879)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782878437982172879)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782878011961172879)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782877607128172878)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782877241502172878)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782876784821172878)
,p_db_column_name=>'PAY_GRADE_ID'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Pay Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853961200291092922)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782876405234172878)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782876051786172878)
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
 p_id=>wwv_flow_imp.id(3706762403416424627)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Emp Grade Cross Tab'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'762130'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'UNIT_NAME:UNIT_CODE:EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:POSITION_NAME_HIST:PAY_GRADE_ID:INCOME_CODE:INCOME_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3782817848296384954)
,p_report_id=>wwv_flow_imp.id(3706762403416424627)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:PAY_GRADE_ID'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3782817434197384954)
,p_pivot_id=>wwv_flow_imp.id(3782817848296384954)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3706775409914619334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'762126'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST:PAY_GRADE_ID:INCOME_CODE:INCOME_AMOUNT:'
,p_break_on=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST'
,p_break_enabled_on=>'EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:UNIT_CODE:UNIT_NAME:POSITION_NAME_HIST'
,p_sum_columns_on_break=>'INCOME_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3707807897439421840)
,p_plug_name=>'Department Head Count'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT, sex_code',
', UNIT_NAME,UNIT_CODE,employment_class_hist||'' (''||compute_gross_hist||'')'' Employment_Class',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'join hr_rcm_employee a on a.id = c.emp_id',
'join hr_rcm_individual d on d.id=a.ind_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and c.org_id = :APP_ORG_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6003_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3707807749754421839)
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
,p_internal_uid=>151280510135639227
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782882571304173786)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782882181206173786)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782881799423173786)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782998864127840724)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3849732607890974557)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3706790803596948119)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'762072'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE_HIST||''(''||COMPUTE_GROSS_HIST||'')'':EMPLOYMENT_CLASS:SEX_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3849722689671965090)
,p_report_id=>wwv_flow_imp.id(3706790803596948119)
,p_pivot_columns=>'EMPLOYMENT_CLASS:SEX_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3849722313703965089)
,p_pivot_id=>wwv_flow_imp.id(3849722689671965090)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'EMPLOYMENT_CLASS'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3707813700895422713)
,p_plug_name=>'Department Cost'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT',
', UNIT_NAME,UNIT_CODE, to_char(INCOME_CODE) INCOME_CODE,  a.income_amount',
'from  pa_pmg_payrolldtl c join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and income_amount >0',
'and c.org_id = :APP_ORG_ID ',
'union all',
'select (select UNIT_NAME',
'        from HR_HCF_ORGSTRUCTUREDTL x',
'        where x.ID= b.UNIT_PARENT) UNIT_PARENT',
', UNIT_NAME,UNIT_CODE, to_char(''NR(T)'') INCOME_CODE, basic_personal_rate Income_Sum',
'from  pa_pmg_payrolldtl c join HR_HCF_ORGSTRUCTUREDTL b on b.id = c.orgdtl_id',
'where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'and basic_personal_rate > 0',
'and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY''',
'and c.org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6003_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3707812247694422698)
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
,p_internal_uid=>151276012195638368
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782886413620174639)
,p_db_column_name=>'UNIT_PARENT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Unit Parent'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782886059053174638)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782885643971174638)
,p_db_column_name=>'UNIT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Unit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782885186513174638)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782884858345174638)
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
 p_id=>wwv_flow_imp.id(3706803692317004967)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Unit Totals'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'762049'
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
 p_id=>wwv_flow_imp.id(3706814011391106461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'762038'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
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
 p_id=>wwv_flow_imp.id(3782851023717941376)
,p_report_id=>wwv_flow_imp.id(3706814011391106461)
,p_pivot_columns=>'INCOME_CODE'
,p_row_columns=>'UNIT_PARENT:UNIT_NAME:UNIT_CODE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3782850567983941376)
,p_pivot_id=>wwv_flow_imp.id(3782851023717941376)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'INCOME_AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3707815945096423711)
,p_plug_name=>'Employment Cost'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent12:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, employment_class_hist, sum(Income_Sum) Amount',
'from (',
'    select to_char(initcap(e.DESCRIPTION)) DESCRIPTION, initcap(employment_class_hist) employment_class_hist, a.income_amount Income_Sum',
'    from  pa_pmg_payrolldtl c join PA_PMG_PAYROLLINCOME a on c.id = a.pay_slipno',
'    join hr_rcm_empentitle c on c.id = a.empent_id',
'    join PA_PCF_INCOMECODE e on e.id =  c.INCOME_CODE_id',
'    where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'    and income_amount >0 ',
'    and c.org_id = :APP_ORG_ID',
'    union all',
'    select to_char(''Basic Salary(T)'') DESCRIPTION, initcap(employment_class_hist) employment_class_hist, basic_personal_rate Income_Sum',
'    from  pa_pmg_payrolldtl c',
'    where EXTRACT(year FROM period_start)||EXTRACT(month FROM period_start) =:P6003_PAID_EARNINGS_PERIOD',
'    and basic_personal_rate > 0',
'    and UPPER(COMPUTE_GROSS_HIST) =''BASIC_PAY''',
'        and c.org_id = :APP_ORG_ID',
'',
'    )',
'group by DESCRIPTION, employment_class_hist'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6003_PAID_EARNINGS_PERIOD'
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
 p_id=>wwv_flow_imp.id(3707815893704423710)
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
,p_internal_uid=>151272366185637356
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782887907870175629)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782999276112840728)
,p_db_column_name=>'AMOUNT'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3782999225949840727)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Employment Class Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3706842899172304891)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'762011'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'DESCRIPTION:EMPLOYMENT_CLASS_HIST:AMOUNT:'
,p_sort_column_1=>'DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'INCOME_SUM'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3782821976354591196)
,p_report_id=>wwv_flow_imp.id(3706842899172304891)
,p_pivot_columns=>'EMPLOYMENT_CLASS_HIST'
,p_row_columns=>'DESCRIPTION'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3782821615586591196)
,p_pivot_id=>wwv_flow_imp.id(3782821976354591196)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'AMOUNT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Totals'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3783000989557840745)
,p_plug_name=>'Summary Journal Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3573788574227198685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3674425916685105408)
,p_button_name=>'Preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Preview'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3719657507646996734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(696915849784827713)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3573789372687198693)
,p_name=>'P6003_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3783000989557840745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3573789556828198695)
,p_name=>'P6003_REPORT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3783000989557840745)
,p_item_default=>'6191'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3719657925361996735)
,p_name=>'P6003_PAID_EARNINGS_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3783000989557840745)
,p_prompt=>'Earnings period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD a ',
'      where exists(select 1',
'                 from pa_pmg_payrollhd x',
'                 where X.EARNINGS_PERIOD_ID=a.id',
'                 )',
'      )',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3573789113006198690)
,p_name=>'dyn_preview_summary_journal'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3573788574227198685)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3573789635061198696)
,p_event_id=>wwv_flow_imp.id(3573789113006198690)
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
 p_id=>wwv_flow_imp.id(3573789315071198692)
,p_event_id=>wwv_flow_imp.id(3573789113006198690)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6003_URL'
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
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P6003_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
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
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/showPDF?p2=''||v_report_path||''-Earning_period=''||:P6003_PAID_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P6003_PAID_EARNINGS_PERIOD,P6003_REPORT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3573789441308198694)
,p_event_id=>wwv_flow_imp.id(3573789113006198690)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P6003_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3503471471393863466)
,p_name=>'Refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6003_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3503471563927863467)
,p_event_id=>wwv_flow_imp.id(3503471471393863466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3674425916685105408)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3503471682137863468)
,p_name=>'Refresh_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6003_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3503471761572863469)
,p_event_id=>wwv_flow_imp.id(3503471682137863468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3707815945096423711)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3503471859392863470)
,p_name=>'Refresh_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6003_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3503471974207863471)
,p_event_id=>wwv_flow_imp.id(3503471859392863470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3707813700895422713)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3503472137043863472)
,p_name=>'Refresh_3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6003_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3503472199765863473)
,p_event_id=>wwv_flow_imp.id(3503472137043863472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3707807897439421840)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3503472287134863474)
,p_name=>'Refresh_4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6003_PAID_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3503472425796863475)
,p_event_id=>wwv_flow_imp.id(3503472287134863474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3706793837879952575)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3719658893418996737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset_locations'
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
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
,p_internal_uid=>3076464343639388469
);
wwv_flow_imp.component_end;
end;
/
