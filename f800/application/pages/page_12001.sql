prompt --application/pages/page_12001
begin
--   Manifest
--     PAGE: 12001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>12001
,p_name=>'frmmodalemployeejournalsummary'
,p_alias=>'FRMMODALEMPLOYEEJOURNALSUMMARY'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee Detail Journal'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3671567233337027213)
,p_plug_name=>'Employee Journal Summary'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'      select payslipid,emp_id, coa_code, unit_name, orgdtl_id,',
'               max(case when debit_credit = ''DR'' then DESCRIPTION end) dr_description,',
'               max(case when debit_credit = ''CR'' then DESCRIPTION end) cr_description,',
'               SUM(case when debit_credit = ''DR'' THEN income_amount END) DR_AMOUNT,',
'               SUM(case when debit_credit = ''DR'' THEN income_amount_ytd END) DR_AMOUNT_YTD, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount END) CR_amount, ',
'               SUM(case when debit_credit = ''CR'' THEN income_amount_ytd END) CR_AMOUNT_YTD  ',
'        ,(select id from pa_pmg_payrolldtl where earnings_period_id = :P12001_EARNINGS_PERIOD_ID and emp_id = :P12001_EMP_ID and id =:P12001_PAYSLIPID ) pay_slipno                                            ',
'               from (',
' select  x.*,',
' row_number() over (partition by payslipid,emp_id,unit_name, coa_code, debit_credit,orgdtl_id order by emp_id ) as seqnum',
' from (                                                  ',
'select ',
'payslipid,orgdtl_id, emp_id,COA_CODE,UNIT_NAME, DESCRIPTION, sum(income_amount) income_amount, sum(income_amount_ytd) income_amount_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id,c.id payslipid, c.emp_id,c.orgdtl_id, COA_CODE,UNIT_NAME, initcap(e.DESCRIPTION) DESCRIPTION, a.income_amount income_amount, a.income_amount_ytd income_amount_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl c on b.id = c.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = c.orgdtl_id',
'join PA_PMG_PAYROLLINCOME a on c.id=a.pay_slipno',
'join PA_PCF_INCOMECODE e on e.INCOME_CODE=a.INCOME_CODE',
'JOIN PA_PCF_EARNINGPERIOD ep on ep.id = c.earnings_period_id ',
'where earnings_period_id =:P6002_PAID_EARNINGS_PERIOD',
'and c.org_id=:APP_ORG_ID and e.org_id=:APP_ORG_ID',
'and (c.compute_gross_hist !=''BASIC_PAY'' or earnings_type = ''SUPPL'' or e.id !=6004)',
'',
')',
'group by COA_CODE, UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,payslipid',
'',
'',
'union ',
'--personal rate',
'select k.id payslipid ,k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) DESCRIPTION, sum(time_tax_earnings)+ sum(time_nontax_earnings) - sum(FN_ADHOCPAYMENTSUM_DETAIL(k.earnings_period_id,k.id, :APP_ORG_ID))  time_tax'
||'_earnings,  sum(time_tax_earnings_YTD) time_tax_earnings_ytd, ''DR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join pa_pcf_earningperiod w on w.id = k.earnings_period_id',
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
'and k.compute_gross_hist=''BASIC_PAY''',
'and earnings_type = ''RG''',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME,  cast(''Basic Salary''  as varchar2(100)) ,k.emp_id,k.orgdtl_id,k.id',
'',
'union',
'--employers deductions only',
'',
'select  payslipid,orgdtl_id,emp_id,COA_CODE,UNIT_NAME, DESCRIPTION , sum(amount_deducted) amount_deducted, sum(amount_deducted_ytd) amount_deducted_ytd, ''DR'' Debit_Credit',
'from',
'(select distinct a.id,k.id payslipid,COA_CODE,UNIT_NAME,k.emp_id,k.orgdtl_id, initcap(d.DESCRIPTION||'' ''||DEDUCTION_TYPE) DESCRIPTION , a.amount_deducted amount_deducted, amount_deducted_ytd amount_deducted_ytd, ''DR'' Debit_Credit',
'from  hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join pa_pmg_payrolldeduction a on k.id=a.pay_slipno',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'join Pa_Pcf_Deductioncode d on d.EXPENSE_CODE=a.EXPENSE_CODE',
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
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
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
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
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
'and k.org_id=:APP_ORG_ID and d.org_id=:APP_ORG_ID',
')',
'group by COA_CODE,UNIT_NAME, DESCRIPTION,emp_id,orgdtl_id,',
'payslipid',
'',
'--NETPAY',
'union',
'',
'select k.id payslipid, k.orgdtl_id, k.emp_id,COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100))  DESCRIPTION, sum(net_pay) net_pay,  sum(net_pay_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NETPAY''  as varchar2(100)),k.emp_id,k.orgdtl_id,k.id',
'',
'',
'--PAYE',
'union',
'select k.id payslipid,k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100))  DESCRIPTION, sum(tax_amount) net_pay,  sum(tax_amount_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''PAYE''  as varchar2(100)),k.emp_id,k.orgdtl_id,k.id',
'',
'',
'--NIS',
'union',
'select k.id payslipid,k.orgdtl_id,k.emp_id,COA_CODE,UNIT_NAME, cast(''NIS Employee''  as varchar2(100))  DESCRIPTION, sum(nis_employee) net_pay,  sum(nis_employee_YTD) net_pay_TD, ''CR'' Debit_Credit',
'from hr_rcm_employee b join pa_pmg_payrolldtl K ON b.id=k.emp_id',
'join hr_hcf_orgstructuredtl x on x.id = k.orgdtl_id',
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
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
'where earnings_period_id =:P12001_EARNINGS_PERIOD_ID',
'and k.org_id=:APP_ORG_ID',
'group by COA_CODE,UNIT_NAME, cast(''NIS Employer''  as varchar2(100)) ,k.emp_id,k.orgdtl_id,k.id)',
'',
' x ) ',
'where orgdtl_id = nvl(:P12001_DEPARTMENT_ID,orgdtl_id)',
'AND EMP_ID = :P12001_EMP_ID',
'and payslipid = :P12001_PAYSLIPID',
'group by emp_id, coa_code, unit_name,orgdtl_id,payslipid,',
'seqnum',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12001_EARNINGS_PERIOD_ID,P12001_DEPARTMENT_ID,P12001_EMP_ID,P12001_PAYSLIPID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Journal Summary'
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
 p_id=>wwv_flow_imp.id(3671567355265027213)
,p_name=>'frmmodalemployeejournalsummary'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>204465029854805234
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586273784671507837)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854128695999211366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586274212636507838)
,p_db_column_name=>'COA_CODE'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Coa Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586274542945507838)
,p_db_column_name=>'UNIT_NAME'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Unit Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586274938095507839)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586275342570507840)
,p_db_column_name=>'DR_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Dr Description'
,p_column_html_expression=>'<b>#DR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586275758150507841)
,p_db_column_name=>'CR_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Cr Description'
,p_column_html_expression=>'<b>#CR_DESCRIPTION#</b>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586276141377507841)
,p_db_column_name=>'DR_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Dr Amount'
,p_column_html_expression=>'<b>#DR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586276559324507842)
,p_db_column_name=>'DR_AMOUNT_YTD'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Dr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586276967609507843)
,p_db_column_name=>'CR_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Cr Amount'
,p_column_html_expression=>'<b>#CR_AMOUNT#</b>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586277347107507843)
,p_db_column_name=>'CR_AMOUNT_YTD'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Cr Amount Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586277727641507844)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3586278198749507845)
,p_db_column_name=>'PAYSLIPID'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Payslipid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3671580618859082438)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1191762'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:COA_CODE:UNIT_NAME:DR_DESCRIPTION:DR_AMOUNT:DR_AMOUNT_YTD:CR_DESCRIPTION:CR_AMOUNT:CR_AMOUNT_YTD::PAY_SLIPNO:PAYSLIPID'
,p_sort_column_1=>'DR_DESCRIPTION'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:COA_CODE:UNIT_NAME:PAY_SLIPNO'
,p_break_enabled_on=>'EMP_ID:COA_CODE:UNIT_NAME:PAY_SLIPNO'
,p_sum_columns_on_break=>'DR_AMOUNT:DR_AMOUNT_YTD:CR_AMOUNT:CR_AMOUNT_YTD'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3586279021653507854)
,p_name=>'P12001_EARNINGS_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3671567233337027213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3586279419210507856)
,p_name=>'P12001_DEPARTMENT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3671567233337027213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3586279749264507856)
,p_name=>'P12001_EMP_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3671567233337027213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3586280191427507857)
,p_name=>'P12001_PAYSLIPID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3671567233337027213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3530934315525215753)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2887599063506540259
);
wwv_flow_imp.component_end;
end;
/
