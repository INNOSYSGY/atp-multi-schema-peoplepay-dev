prompt --application/pages/page_01249
begin
--   Manifest
--     PAGE: 01249
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
 p_id=>1249
,p_name=>'frmpayrollRecons'
,p_alias=>'FRMPAYROLLRECONS'
,p_step_title=>'Create/Edit Payroll Control'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825436139759062413)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-rds-first {',
'display: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697468277521331095)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3771580522043906584)
,p_plug_name=>'Payroll Compare'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3769353600173858273)
,p_plug_name=>'Deductions Compare'
,p_parent_plug_id=>wwv_flow_imp.id(3771580522043906584)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'13306 sm nov 13319 dec',
'13019 jm nov 13059 dec',
'12839 ss nov 12899 dec',
'13260 js nov 13299 dec',
'*/',
'select nvl(a.emp_no,b.emp_no) as emp_no, ',
'       nvl(a.emp_name,b.emp_name) as emp_name,',
'       nvl(a.pay_code,b.pay_code) as pay_code,',
'       nvl(a.amount_a,0) as amount_a,',
'       nvl(b.amount_b,0) as amount_b,',
'       nvl(b.amount_b,0) - nvl(a.amount_a,0) as amount_diff',
'from',
'(        ',
'    select  pd.pay_slipno,',
'--TO SEPARATE EMPLOYEE FROM EMPLOYER ID, USE THE DEDUCTION_TYPE *100 FOR EMPLOYER',
'            (case when ad.deduction_type = ''EMPLOYER'' THEN dc.id*100 ELSE DC.ID END) as expense_id,',
'            pd.emp_id, ',
'            e.emp_company_no as emp_no,',
'            replace(e.full_name,'':-Unknown'','''')||'' (''||e.emp_company_no||'')'' as emp_name,',
'            dc.description||(case when ad.deduction_type = ''EMPLOYER'' THEN ''(EMPLOYER)'' ELSE '''' END) as pay_code,',
'            pd.amount_deducted as amount_a',
'            --ad.datestart,ad.date_close,ad.period,ad.deduct_status,',
'    from PA_PMG_PAYROLLdeduction pd',
'    join pa_pcf_admindeduction ad on pd.adm_deduction_id = ad.id ',
'    join hr_rcm_employee e on pd.emp_id = e.id',
'    join pa_pcf_deductioncode dc on ad.expense_id = dc.id',
'    where exists(select 1',
'                   from pa_pmg_payrolldtl x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'                   and x.id = pd.pay_slipno',
'                   and x.emp_id = e.id',
'                  )',
'         or exists(select 1',
'                   from pa_pmg_payrolldtlneg x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'                   and x.id = pd.pay_slipno',
'                   and x.emp_id = e.id',
'                  )                              ',
') a',
'full join',
'(    select  pd.pay_slipno,',
'--TO SEPARATE EMPLOYEE FROM EMPLOYER ID, USE THE DEDUCTION_TYPE *100 FOR EMPLOYER',
'            (case when ad.deduction_type = ''EMPLOYER'' THEN dc.id*100 ELSE DC.ID END) as expense_id,',
'            pd.emp_id, ',
'            e.emp_company_no as emp_no,',
'            replace(e.full_name,'':-Unknown'','''')||'' (''||e.emp_company_no||'')'' as emp_name,',
'            dc.description||(case when ad.deduction_type = ''EMPLOYER'' THEN ''(EMPLOYER)'' ELSE '''' END) as pay_code,',
'            pd.amount_deducted as amount_b',
'            --ad.datestart,ad.date_close,ad.period,ad.deduct_status,',
'    from PA_PMG_PAYROLLdeduction pd',
'    join pa_pcf_admindeduction ad on pd.adm_deduction_id = ad.id ',
'    join hr_rcm_employee e on pd.emp_id = e.id',
'    join pa_pcf_deductioncode dc on ad.expense_id = dc.id',
'    where exists(select 1',
'                   from pa_pmg_payrolldtl x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'                   and x.id = pd.pay_slipno',
'                   and x.emp_id = e.id',
'                  )',
'         or exists(select 1',
'                   from pa_pmg_payrolldtlneg x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'                   and x.id = pd.pay_slipno',
'                   and x.emp_id = e.id',
'                  )                              ',
') b on a.emp_id = b.emp_id and a.expense_id = b.expense_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1249_EARNINGS_PERIOD_A,P1249_EARNINGS_PERIOD_B'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptpayrollcompare'
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
 p_id=>wwv_flow_imp.id(3769353548224858272)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>23820703672684550
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769278025908784021)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769277878982784020)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769277830360784019)
,p_db_column_name=>'PAY_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pay Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769277695182784018)
,p_db_column_name=>'AMOUNT_A'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769277597878784017)
,p_db_column_name=>'AMOUNT_B'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769277491464784016)
,p_db_column_name=>'AMOUNT_DIFF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Amount Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3769267490070781948)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239068'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:PAY_CODE:AMOUNT_A:AMOUNT_B:AMOUNT_DIFF'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT_A:AMOUNT_B:AMOUNT_DIFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768442216663310037)
,p_report_id=>wwv_flow_imp.id(3769267490070781948)
,p_name=>'Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AMOUNT_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AMOUNT_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768442585646310038)
,p_report_id=>wwv_flow_imp.id(3769267490070781948)
,p_name=>'Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AMOUNT_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AMOUNT_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#F44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3769355494325858292)
,p_plug_name=>'Allowances Compare'
,p_parent_plug_id=>wwv_flow_imp.id(3771580522043906584)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'13306 sm nov 13319 dec',
'13019 jm nov 13059 dec',
'12839 ss nov 12899 dec',
'13260 js nov 13299 dec',
'*/',
'select nvl(a.emp_no,b.emp_no) as emp_no, ',
'       nvl(a.emp_name,b.emp_name) as emp_name,',
'       nvl(a.pay_code,b.pay_code) as pay_code,',
'       nvl(a.amount_a,0) as amount_a,',
'       nvl(b.amount_b,0) as amount_b,',
'       nvl(b.amount_b,0) - nvl(a.amount_a,0) as amount_diff',
'from',
'(select pi.pay_slipno,',
'        ee.income_code_id,',
'        pi.emp_id, ',
'        e.emp_company_no as emp_no,',
'        replace(e.full_name,'':-Unknown'','''')||'' (''||e.emp_company_no||'')'' as emp_name,',
'        ic.description||''-''||ee.admin_status as pay_code,',
'        pi.income_amount as amount_a',
'    from PA_PMG_PAYROLLINCOME pi ',
'    join hr_rcm_empentitle ee on pi.empent_id = ee.id ',
'    join pa_pcf_incomecode ic on ee.income_code_id = ic.id',
'    join hr_rcm_employee e on pi.emp_id = e.id',
'    where exists  (select *',
'                   from pa_pmg_payrolldtl x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'                   and x.id = pi.pay_slipno',
'                  )',
'        or exists (select 1',
'                   from pa_pmg_payrolldtlneg x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'                   and x.id = pi.pay_slipno',
'                  )',
') a',
'full join',
'(select pi.pay_slipno,',
'        ee.income_code_id,',
'        pi.emp_id, ',
'        e.emp_company_no as emp_no,',
'        replace(e.full_name,'':-Unknown'','''')||'' (''||e.emp_company_no||'')'' as emp_name,',
'        ic.description||''-''||ee.admin_status as pay_code,',
'        pi.income_amount as amount_b',
'    from PA_PMG_PAYROLLINCOME pi ',
'    join hr_rcm_empentitle ee on pi.empent_id = ee.id ',
'    join pa_pcf_incomecode ic on ee.income_code_id = ic.id',
'    join hr_rcm_employee e on pi.emp_id = e.id',
'    where exists  (select *',
'                   from pa_pmg_payrolldtl x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'                   and x.id = pi.pay_slipno',
'                  )',
'        or exists (select 1',
'                   from pa_pmg_payrolldtlneg x',
'                   where earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'                   and x.id = pi.pay_slipno',
'                  )',
') b on a.emp_id = b.emp_id and a.income_code_id = b.income_code_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1249_EARNINGS_PERIOD_A,P1249_EARNINGS_PERIOD_B'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptpayrollcompare'
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
 p_id=>wwv_flow_imp.id(3769355421181858291)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>23818830715684531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769355299480858290)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769355237114858289)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769355073198858288)
,p_db_column_name=>'PAY_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pay Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769354998443858287)
,p_db_column_name=>'AMOUNT_A'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769354859671858286)
,p_db_column_name=>'AMOUNT_B'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769354846322858285)
,p_db_column_name=>'AMOUNT_DIFF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Amount Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3769309002904357466)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'238653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMP_NAME:PAY_CODE:AMOUNT_A:AMOUNT_B:AMOUNT_DIFF'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT_A:AMOUNT_B:AMOUNT_DIFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768441100916306952)
,p_report_id=>wwv_flow_imp.id(3769309002904357466)
,p_name=>'Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AMOUNT_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AMOUNT_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768441528782306953)
,p_report_id=>wwv_flow_imp.id(3769309002904357466)
,p_name=>'Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AMOUNT_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AMOUNT_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#F44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3769696673414419787)
,p_plug_name=>'Employee Compare (H)'
,p_parent_plug_id=>wwv_flow_imp.id(3771580522043906584)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'13306 sm nov 13319 dec',
'13019 jm nov 13059 dec',
'12839 ss nov 12899 dec',
'13260 js nov 13299 dec',
'*/',
'---overall compare --- ',
'select  ',
'        nvl(a.emp_no,b.emp_no) as emp_no,',
'        nvl(a.emp_name,b.emp_name) as emp_name,',
'',
'        nvl(a.department_name,'''') as department_name_a,',
'        nvl(b.department_name,'''') as department_name_b,',
'        nvl(a.position_name,'''') as position_name_a,',
'        nvl(b.position_name,'''') as position_name_b,',
'        nvl(a.employment_type,'''') as employment_type_a,',
'        nvl(b.employment_type,'''') as employment_type_b,',
'',
'        nvl(a.net_pay,0) as net_pay_a,',
'        nvl(b.net_pay,0) as net_pay_b,',
'        nvl(b.net_pay,0) - nvl(a.net_pay,0) as netpay_diff,',
'        nvl(a.basic_pay,0) as basic_pay_a,',
'        nvl(b.basic_pay,0) as basic_pay_b,',
'        nvl(b.basic_pay,0) - nvl(a.basic_pay,0) as basicpay_diff,',
'        nvl(a.hourly_rate,0) as hourly_rate_a,',
'        nvl(b.hourly_rate,0) as hourly_rate_b,',
'        nvl(b.hourly_rate,0) - nvl(a.hourly_rate,0) as hrlyrate_diff,',
'        nvl(a.gross_taxable,0) as gross_taxable_a,',
'        nvl(b.gross_taxable,0) as gross_taxable_b,',
'        nvl(b.gross_taxable,0) - nvl(a.gross_taxable,0) as grosstaxable_diff,',
'        nvl(a.gross_nontaxable,0)  as gross_nontaxable_a,',
'        nvl(b.gross_nontaxable,0) as gross_nontaxable_b,',
'        nvl(b.gross_nontaxable,0) - nvl(a.gross_nontaxable,0) as grossnontaxable_diff,',
'        nvl(a.nis_employee,0) as nis_employee_a,',
'        nvl(b.nis_employee,0) as nis_employee_b,',
'        nvl(b.nis_employee,0) - nvl(a.nis_employee,0) as nis_employee_diff,',
'        nvl(a.nis_employer,0) as nis_employer_a,',
'        nvl(b.nis_employer,0) as nis_employer_b,',
'        nvl(b.nis_employer,0) - nvl(a.nis_employer,0) as nis_employer_diff,',
'   nvl(a.total_deduction,0) as total_deduction_a,',
'        nvl(b.total_deduction,0) as total_deduction_b,',
'        nvl(b.total_deduction,0) - nvl(a.total_deduction,0) as totaldeduction_diff',
'    from ',
'            (',
'            select d.emp_id,',
'            d.emp_company_no_hist as emp_no,',
'            d.surname_hist||'', ''||d.first_name_hist||'' ''||d.middle_name||'' (''||d.emp_company_no_hist||'')'' as emp_name,',
'',
'            d.department_name_hist department_name,',
'            d.position_name_hist position_name,',
'            d.employment_type_hist employment_type,',
'',
'            d.basic_personal_rate basic_pay,',
'            round(d.hourly_rate,2) hourly_rate,',
'            d.gross_taxable, ',
'            d.gross_nontaxable,',
'            (d.gross_taxable + d.gross_nontaxable) as gross,',
'            d.total_deduction,',
'            d.tax_amount, ',
'            d.nis_employee,',
'            d.nis_employer,',
'            d.net_pay',
'            from pa_pmg_payrolldtl d ',
'            join pa_pmg_payrollhd h on d.pay_batch_id = h.id',
'             where d.earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'        ) A',
'full join ',
'            (',
'            select d.emp_id,',
'            d.emp_company_no_hist as emp_no,',
'            d.surname_hist||'', ''||d.first_name_hist||'' ''||d.middle_name||'' (''||d.emp_company_no_hist||'')'' as emp_name,',
'',
'            d.department_name_hist department_name,',
'            d.position_name_hist position_name,',
'            d.employment_type_hist employment_type,',
'            ',
'            d.basic_personal_rate basic_pay,',
'            round(d.hourly_rate,2) hourly_rate,',
'            d.gross_taxable, ',
'            d.gross_nontaxable,',
'            (d.gross_taxable + d.gross_nontaxable) as gross,',
'            d.total_deduction,',
'            d.tax_amount, ',
'            d.nis_employee,',
'            d.nis_employer,',
'            d.net_pay',
'            from pa_pmg_payrolldtl d ',
'            join pa_pmg_payrollhd h on d.pay_batch_id = h.id',
'            join hr_rcm_employee e on d.emp_id = e.id',
'            where d.earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'        ) B ON A.emp_id = b.emp_id',
'',
'--where pp.basic_pay != gp.fixpayrate',
'--where pp.hourly_rate <> gp.hrlpayrate',
'--WHERE  abs((pp.gross_taxable + pp.gross_nontaxable) - gp.grosspay) >1',
'--WHERE abs(nvl(PP.net_PAY,0) - nvl(gp.netpay,0) ) > 1',
'--WHERE abs(PP.net_PAY - gp.netpay) > 2',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1249_EARNINGS_PERIOD_A,P1249_EARNINGS_PERIOD_B'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptpayrollcompare'
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
 p_id=>wwv_flow_imp.id(3769696613228419786)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>23477638669123036
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696453678419785)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696386276419784)
,p_db_column_name=>'NET_PAY_A'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Net Pay A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696258191419783)
,p_db_column_name=>'NET_PAY_B'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Net Pay B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696174992419782)
,p_db_column_name=>'NETPAY_DIFF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Netpay Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696116482419781)
,p_db_column_name=>'BASIC_PAY_A'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Basic Pay A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769696020174419780)
,p_db_column_name=>'BASIC_PAY_B'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Basic Pay B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695903502419779)
,p_db_column_name=>'BASICPAY_DIFF'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Basicpay Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695833873419778)
,p_db_column_name=>'HOURLY_RATE_A'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Hrly Rate A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695747670419777)
,p_db_column_name=>'HOURLY_RATE_B'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hrly Rate B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695623759419776)
,p_db_column_name=>'HRLYRATE_DIFF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Hrlyrate Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695477826419775)
,p_db_column_name=>'GROSS_TAXABLE_A'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Gross Tax A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695399216419774)
,p_db_column_name=>'GROSS_TAXABLE_B'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Gross Tax B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695263237419773)
,p_db_column_name=>'GROSSTAXABLE_DIFF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Gross Tax Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769695190907419772)
,p_db_column_name=>'GROSS_NONTAXABLE_A'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Gross Non Tax A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769358380526858321)
,p_db_column_name=>'GROSS_NONTAXABLE_B'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Gross Non Tax B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769358288135858320)
,p_db_column_name=>'GROSSNONTAXABLE_DIFF'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Gross Non Tax Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769358172014858319)
,p_db_column_name=>'TOTAL_DEDUCTION_A'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Total Deduct A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769358058939858318)
,p_db_column_name=>'TOTAL_DEDUCTION_B'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Total Deduct B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769358044935858317)
,p_db_column_name=>'TOTALDEDUCTION_DIFF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Total Deduct Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769357914899858316)
,p_db_column_name=>'EMP_NO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767080344484972221)
,p_db_column_name=>'NIS_EMPLOYEE_A'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'NIB/SS Employee A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767080223931972220)
,p_db_column_name=>'NIS_EMPLOYEE_B'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'NIB/SS Employee B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767080091853972219)
,p_db_column_name=>'NIS_EMPLOYEE_DIFF'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'NIB/SS Employee Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767080043245972218)
,p_db_column_name=>'NIS_EMPLOYER_A'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'NIB/SS Employer A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767079908040972217)
,p_db_column_name=>'NIS_EMPLOYER_B'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'NIB/SS Employer B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3767079810725972216)
,p_db_column_name=>'NIS_EMPLOYER_DIFF'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'NIB/SS Employer Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663594743816226296)
,p_db_column_name=>'DEPARTMENT_NAME_A'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Department Name A'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663594836475226297)
,p_db_column_name=>'DEPARTMENT_NAME_B'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Department Name B'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663594934857226298)
,p_db_column_name=>'POSITION_NAME_A'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Position Name A'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663595051109226299)
,p_db_column_name=>'POSITION_NAME_B'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Position Name B'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663595148411226300)
,p_db_column_name=>'EMPLOYMENT_TYPE_A'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Employment Type A'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3663595306640226301)
,p_db_column_name=>'EMPLOYMENT_TYPE_B'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Employment Type B'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3769338030192848247)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'238363'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_NAME:NET_PAY_A:NET_PAY_B:NETPAY_DIFF:BASIC_PAY_A:BASIC_PAY_B:BASICPAY_DIFF:HOURLY_RATE_A:HOURLY_RATE_B:HRLYRATE_DIFF:GROSS_TAXABLE_A:GROSS_TAXABLE_B:GROSSTAXABLE_DIFF:GROSS_NONTAXABLE_A:GROSS_NONTAXABLE_B:GROSSNONTAXABLE_DIFF:NIS_EMPLOYEE_A:NIS_E'
||'MPLOYEE_B:NIS_EMPLOYEE_DIFF:NIS_EMPLOYER_A:NIS_EMPLOYER_B:NIS_EMPLOYER_DIFF:TOTAL_DEDUCTION_A:TOTAL_DEDUCTION_B:TOTALDEDUCTION_DIFF::DEPARTMENT_NAME_A:DEPARTMENT_NAME_B:POSITION_NAME_A:POSITION_NAME_B:EMPLOYMENT_TYPE_A:EMPLOYMENT_TYPE_B'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792235177368477496)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Total Deduct Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTALDEDUCTION_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("TOTALDEDUCTION_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792235645901477496)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Total Deduct Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TOTALDEDUCTION_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("TOTALDEDUCTION_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792235970601477496)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Net Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NETPAY_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("NETPAY_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792236420954477497)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Net Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NETPAY_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("NETPAY_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792236801121477497)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Hrly Rate Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'HRLYRATE_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("HRLYRATE_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792237226074477497)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Hrly Rate Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'HRLYRATE_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("HRLYRATE_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792237590950477497)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Gross Tax Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GROSSTAXABLE_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("GROSSTAXABLE_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792238055537477498)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Gross Tax Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GROSSTAXABLE_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("GROSSTAXABLE_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792238370249477498)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Gross Non Tax Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GROSSNONTAXABLE_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("GROSSNONTAXABLE_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792238779108477499)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Gross Non Tax Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GROSSNONTAXABLE_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("GROSSNONTAXABLE_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792239172501477499)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Basic Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'BASICPAY_DIFF'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ("BASICPAY_DIFF" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792239631871477499)
,p_report_id=>wwv_flow_imp.id(3769338030192848247)
,p_name=>'Basic Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'BASICPAY_DIFF'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("BASICPAY_DIFF" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFFFFF'
,p_column_font_color=>'#F44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3771579483684906574)
,p_plug_name=>'Overall Compare'
,p_parent_plug_id=>wwv_flow_imp.id(3771580522043906584)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'13306 sm nov 13319 dec',
'13019 jm nov 13059 dec',
'12839 ss nov 12899 dec',
'13260 js nov 13299 dec',
'*/',
'select pay_status_a, payroll_date_a, a.pay_code,amount_a,amount_b,payroll_date_b,pay_status_b',
'from',
'(',
'    (SELECT',
'    h.pay_status as pay_status_a,',
'    trunc(h.payroll_date) as payroll_date_a,',
'    h.earnings_period_id,',
'    count(d.id) as emp_count,',
'    sum(  d.basic_personal_rate ) as  basic_personal_rate,',
'    sum(  d.basic_pay_hours ) as  basic_pay_hours,',
'    sum(  d.no_pay_hours ) as  no_pay_hours,',
'    sum(  d.time_tax_earnings ) as  time_tax_earnings,',
'    sum(  d.time_nontax_earnings ) as  time_nontax_earnings,',
'    sum(  d.piece_tax_earnings ) as  piece_tax_earnings,',
'    sum(  d.piece_nontax_earnings ) as  piece_nontax_earnings,',
'    sum(  d.allowance_taxable ) as  allowance_taxable,',
'    sum(  d.allowance_nontaxable ) as  allowance_nontaxable,',
'    sum(  d.incentives_taxable ) as  incentives_taxable,',
'    sum(  d.incentives_nontaxable ) as  incentives_nontaxable,',
'    sum(  d.benefit_taxable ) as  benefit_taxable,',
'    sum(  d.benefit_nontaxable ) as  benefit_nontaxable,',
'    sum(  d.misc_tax_payment ) as  misc_tax_payment,',
'    sum(  d.misc_nontax_payment ) as  misc_nontax_payment,',
'    sum(  d.total_tax_earnings ) as  total_tax_earnings,',
'    sum(  d.total_nontax_earnings ) as  total_nontax_earnings,',
'    sum(  d.gross_taxable ) as  gross_taxable,',
'    sum(  d.gross_nontaxable ) as  gross_nontaxable,',
'    sum(  d.nis_employee ) as  nis_employee,',
'    sum(  d.nis_employer ) as  nis_employer,',
'    sum(  d.tax_amount ) as  tax_amount,',
'    sum(  d.medical_sum ) as  medical_sum,',
'    sum(  d.employer_medical_sum ) as  employer_medical_sum,',
'    sum(  d.union_dues ) as  union_dues,',
'    sum(  d.misc_deduction_sum ) as  misc_deduction_sum,',
'    sum(  d.total_deduction ) as  total_deduction,',
'    sum(  d.net_pay ) as  net_pay,',
'    sum(  d.retro_taxes ) as  retro_taxes,',
'    sum(  d.gross_nis ) as  gross_nis,',
'    sum(  d.freepay ) as  freepay,',
'    sum(  d.nis_contribution ) as  nis_contribution,',
'    sum(  d.no_pay_earnings ) as  no_pay_earnings,',
'    sum(  d.tax_adjustments ) as  tax_adjustments,',
'    sum(  d.tax_adj_earnings_prd ) as  tax_adj_earnings_prd,',
'    sum(  d.tax_adjustments_diff ) as  tax_adjustments_diff,',
'    sum(  d.no_of_periods_worked ) as  no_of_periods_worked,',
'    sum(  d.reduce_taxes ) as  reduce_taxes,',
'    sum(  d.nis_government ) as  nis_government,',
'    sum(  d.education_levy ) as  education_levy,',
'    sum(  d.reduce_nis ) as  reduce_nis,',
'    sum(  d.adj_freepay ) as  adj_freepay,',
'    sum(  d.nis_employee_bkpay ) as  nis_employee_bkpay,',
'    sum(  d.nis_employer_bkpay ) as  nis_employer_bkpay,',
'    sum(  d.gross_nis_bkpay ) as  gross_nis_bkpay,',
'    sum(  d.add_freepay ) as  add_freepay,',
'    sum(  d.freepay_mid ) as  freepay_mid,',
'    sum(  d.freepay_upper ) as  freepay_upper,',
'    sum(  d.lower_tax_ceiling ) as  lower_tax_ceiling,',
'    sum(  d.tax_amount_bkpay ) as  tax_amount_bkpay',
'    from pa_pmg_payrolldtl d ',
'    join pa_pmg_payrollhd h on d.pay_batch_id = h.id',
'    where h.earnings_period_id = :P1249_EARNINGS_PERIOD_A',
'    group by h.pay_status, h.payroll_date, h.earnings_period_id',
'    ) aa',
'    unpivot',
'    (',
'    amount_a',
'    FOR pay_code ',
'    IN ',
'      (',
'        emp_count as ''emp_count'',',
'        basic_personal_rate as  ''basic_personal_rate'',',
'        basic_pay_hours as  ''basic_pay_hours'',',
'        no_pay_hours as  ''no_pay_hours'',',
'        time_tax_earnings as  ''time_tax_earnings'',',
'        time_nontax_earnings as  ''time_nontax_earnings'',',
'        piece_tax_earnings as  ''piece_tax_earnings'',',
'        piece_nontax_earnings as  ''piece_nontax_earnings'',',
'        allowance_taxable as  ''allowance_taxable'',',
'        allowance_nontaxable as  ''allowance_nontaxable'',',
'        incentives_taxable as  ''incentives_taxable'',',
'        incentives_nontaxable as  ''incentives_nontaxable'',',
'        benefit_taxable as  ''benefit_taxable'',',
'        benefit_nontaxable as  ''benefit_nontaxable'',',
'        misc_tax_payment as  ''misc_tax_payment'',',
'        misc_nontax_payment as  ''misc_nontax_payment'',',
'        total_tax_earnings as  ''total_tax_earnings'',',
'        total_nontax_earnings as  ''total_nontax_earnings'',',
'        gross_taxable as  ''gross_taxable'',',
'        gross_nontaxable as  ''gross_nontaxable'',',
'        nis_employee as  ''nis_employee'',',
'        nis_employer as  ''nis_employer'',',
'        tax_amount as  ''tax_amount'',',
'        medical_sum as  ''medical_sum'',',
'        employer_medical_sum as  ''employer_medical_sum'',',
'        union_dues as  ''union_dues'',',
'        misc_deduction_sum as  ''misc_deduction_sum'',',
'        total_deduction as  ''total_deduction'',',
'        net_pay as  ''net_pay'',',
'        retro_taxes as  ''retro_taxes'',',
'        gross_nis as  ''gross_nis'',',
'        freepay as  ''freepay'',',
'        nis_contribution as  ''nis_contribution'',',
'        no_pay_earnings as  ''no_pay_earnings'',',
'        tax_adjustments as  ''tax_adjustments'',',
'        tax_adj_earnings_prd as  ''tax_adj_earnings_prd'',',
'        tax_adjustments_diff as  ''tax_adjustments_diff'',',
'        no_of_periods_worked as  ''no_of_periods_worked'',',
'        reduce_taxes as  ''reduce_taxes'',',
'        nis_government as  ''nis_government'',',
'        education_levy as  ''education_levy'',',
'        reduce_nis as  ''reduce_nis'',',
'        adj_freepay as  ''adj_freepay'',',
'        nis_employee_bkpay as  ''nis_employee_bkpay'',',
'        nis_employer_bkpay as  ''nis_employer_bkpay'',',
'        gross_nis_bkpay as  ''gross_nis_bkpay'',',
'        add_freepay as  ''add_freepay'',',
'        freepay_mid as  ''freepay_mid'',',
'        freepay_upper as  ''freepay_upper'',',
'        lower_tax_ceiling as  ''lower_tax_ceiling'',',
'        tax_amount_bkpay as  ''tax_amount_bkpay''',
'        ) ',
'    ) ',
') a',
'JOIN',
'(',
'    (SELECT',
'    h.pay_status as pay_status_b,',
'    trunc(h.payroll_date) as payroll_date_b,',
'    h.earnings_period_id,',
'    count(d.id) as emp_count,',
'    sum(  d.basic_personal_rate ) as  basic_personal_rate,',
'    sum(  d.basic_pay_hours ) as  basic_pay_hours,',
'    sum(  d.no_pay_hours ) as  no_pay_hours,',
'    sum(  d.time_tax_earnings ) as  time_tax_earnings,',
'    sum(  d.time_nontax_earnings ) as  time_nontax_earnings,',
'    sum(  d.piece_tax_earnings ) as  piece_tax_earnings,',
'    sum(  d.piece_nontax_earnings ) as  piece_nontax_earnings,',
'    sum(  d.allowance_taxable ) as  allowance_taxable,',
'    sum(  d.allowance_nontaxable ) as  allowance_nontaxable,',
'    sum(  d.incentives_taxable ) as  incentives_taxable,',
'    sum(  d.incentives_nontaxable ) as  incentives_nontaxable,',
'    sum(  d.benefit_taxable ) as  benefit_taxable,',
'    sum(  d.benefit_nontaxable ) as  benefit_nontaxable,',
'    sum(  d.misc_tax_payment ) as  misc_tax_payment,',
'    sum(  d.misc_nontax_payment ) as  misc_nontax_payment,',
'    sum(  d.total_tax_earnings ) as  total_tax_earnings,',
'    sum(  d.total_nontax_earnings ) as  total_nontax_earnings,',
'    sum(  d.gross_taxable ) as  gross_taxable,',
'    sum(  d.gross_nontaxable ) as  gross_nontaxable,',
'    sum(  d.nis_employee ) as  nis_employee,',
'    sum(  d.nis_employer ) as  nis_employer,',
'    sum(  d.tax_amount ) as  tax_amount,',
'    sum(  d.medical_sum ) as  medical_sum,',
'    sum(  d.employer_medical_sum ) as  employer_medical_sum,',
'    sum(  d.union_dues ) as  union_dues,',
'    sum(  d.misc_deduction_sum ) as  misc_deduction_sum,',
'    sum(  d.total_deduction ) as  total_deduction,',
'    sum(  d.net_pay ) as  net_pay,',
'    sum(  d.retro_taxes ) as  retro_taxes,',
'    sum(  d.gross_nis ) as  gross_nis,',
'    sum(  d.freepay ) as  freepay,',
'    sum(  d.nis_contribution ) as  nis_contribution,',
'    sum(  d.no_pay_earnings ) as  no_pay_earnings,',
'    sum(  d.tax_adjustments ) as  tax_adjustments,',
'    sum(  d.tax_adj_earnings_prd ) as  tax_adj_earnings_prd,',
'    sum(  d.tax_adjustments_diff ) as  tax_adjustments_diff,',
'    sum(  d.no_of_periods_worked ) as  no_of_periods_worked,',
'    sum(  d.reduce_taxes ) as  reduce_taxes,',
'    sum(  d.nis_government ) as  nis_government,',
'    sum(  d.education_levy ) as  education_levy,',
'    sum(  d.reduce_nis ) as  reduce_nis,',
'    sum(  d.adj_freepay ) as  adj_freepay,',
'    sum(  d.nis_employee_bkpay ) as  nis_employee_bkpay,',
'    sum(  d.nis_employer_bkpay ) as  nis_employer_bkpay,',
'    sum(  d.gross_nis_bkpay ) as  gross_nis_bkpay,',
'    sum(  d.add_freepay ) as  add_freepay,',
'    sum(  d.freepay_mid ) as  freepay_mid,',
'    sum(  d.freepay_upper ) as  freepay_upper,',
'    sum(  d.lower_tax_ceiling ) as  lower_tax_ceiling,',
'    sum(  d.tax_amount_bkpay ) as  tax_amount_bkpay',
'    from pa_pmg_payrolldtl d ',
'    join pa_pmg_payrollhd h on d.pay_batch_id = h.id',
'    where h.earnings_period_id = :P1249_EARNINGS_PERIOD_B',
'    group by h.pay_status, h.payroll_date, h.earnings_period_id',
'    ) aa',
'    unpivot',
'    (',
'    amount_b',
'    FOR pay_code ',
'    IN ',
'      (',
'        emp_count as ''emp_count'',',
'        basic_personal_rate as  ''basic_personal_rate'',',
'        basic_pay_hours as  ''basic_pay_hours'',',
'        no_pay_hours as  ''no_pay_hours'',',
'        time_tax_earnings as  ''time_tax_earnings'',',
'        time_nontax_earnings as  ''time_nontax_earnings'',',
'        piece_tax_earnings as  ''piece_tax_earnings'',',
'        piece_nontax_earnings as  ''piece_nontax_earnings'',',
'        allowance_taxable as  ''allowance_taxable'',',
'        allowance_nontaxable as  ''allowance_nontaxable'',',
'        incentives_taxable as  ''incentives_taxable'',',
'        incentives_nontaxable as  ''incentives_nontaxable'',',
'        benefit_taxable as  ''benefit_taxable'',',
'        benefit_nontaxable as  ''benefit_nontaxable'',',
'        misc_tax_payment as  ''misc_tax_payment'',',
'        misc_nontax_payment as  ''misc_nontax_payment'',',
'        total_tax_earnings as  ''total_tax_earnings'',',
'        total_nontax_earnings as  ''total_nontax_earnings'',',
'        gross_taxable as  ''gross_taxable'',',
'        gross_nontaxable as  ''gross_nontaxable'',',
'        nis_employee as  ''nis_employee'',',
'        nis_employer as  ''nis_employer'',',
'        tax_amount as  ''tax_amount'',',
'        medical_sum as  ''medical_sum'',',
'        employer_medical_sum as  ''employer_medical_sum'',',
'        union_dues as  ''union_dues'',',
'        misc_deduction_sum as  ''misc_deduction_sum'',',
'        total_deduction as  ''total_deduction'',',
'        net_pay as  ''net_pay'',',
'        retro_taxes as  ''retro_taxes'',',
'        gross_nis as  ''gross_nis'',',
'        freepay as  ''freepay'',',
'        nis_contribution as  ''nis_contribution'',',
'        no_pay_earnings as  ''no_pay_earnings'',',
'        tax_adjustments as  ''tax_adjustments'',',
'        tax_adj_earnings_prd as  ''tax_adj_earnings_prd'',',
'        tax_adjustments_diff as  ''tax_adjustments_diff'',',
'        no_of_periods_worked as  ''no_of_periods_worked'',',
'        reduce_taxes as  ''reduce_taxes'',',
'        nis_government as  ''nis_government'',',
'        education_levy as  ''education_levy'',',
'        reduce_nis as  ''reduce_nis'',',
'        adj_freepay as  ''adj_freepay'',',
'        nis_employee_bkpay as  ''nis_employee_bkpay'',',
'        nis_employer_bkpay as  ''nis_employer_bkpay'',',
'        gross_nis_bkpay as  ''gross_nis_bkpay'',',
'        add_freepay as  ''add_freepay'',',
'        freepay_mid as  ''freepay_mid'',',
'        freepay_upper as  ''freepay_upper'',',
'        lower_tax_ceiling as  ''lower_tax_ceiling'',',
'        tax_amount_bkpay as  ''tax_amount_bkpay''',
'        ) ',
'    ) ',
') b on a.pay_code = b.pay_code'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1249_EARNINGS_PERIOD_A,P1249_EARNINGS_PERIOD_B'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Overall Compare'
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
 p_id=>wwv_flow_imp.id(3771579375270906573)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>21594876626636249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771579291443906572)
,p_db_column_name=>'PAY_STATUS_A'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pay Status A'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769700099833419821)
,p_db_column_name=>'PAYROLL_DATE_A'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Payroll Date A'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769700036979419820)
,p_db_column_name=>'PAY_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pay Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769699900498419819)
,p_db_column_name=>'AMOUNT_A'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount A'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769699752658419818)
,p_db_column_name=>'AMOUNT_B'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount B'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769699655891419817)
,p_db_column_name=>'PAYROLL_DATE_B'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payroll Date B'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3769699640623419816)
,p_db_column_name=>'PAY_STATUS_B'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pay Status B'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3769688953707413573)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'234853'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'PAYROLL_DATE_A:PAYROLL_DATE_B:PAY_CODE:AMOUNT_A:AMOUNT_B:APXWS_CC_001:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768409907559808512)
,p_report_id=>wwv_flow_imp.id(3769688953707413573)
,p_name=>'Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768410266292808513)
,p_report_id=>wwv_flow_imp.id(3769688953707413573)
,p_name=>'Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3768409501733808509)
,p_report_id=>wwv_flow_imp.id(3769688953707413573)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'E - D'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Difference'
,p_report_label=>'Difference'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3771582060326906600)
,p_plug_name=>'Employee Compare (V)'
,p_parent_plug_id=>wwv_flow_imp.id(3771580522043906584)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--this script compares two peoplepay payrolls',
'select -- a.emp_company_no_a,a.employee_name_a,a.paytype_a,a.paycode_a,a.paycodedesc_a,a.amount_paid_a',
'',
'nvl(a.emp_company_no_a,b.emp_company_no_b) emp_no,',
'nvl(a.employee_name_a,b.employee_name_b) employee_name, ',
'nvl(a.paytype_a,b.paytype_b) paytype,',
'--nvl(a.paycode_a,b.paycode_b) paycode,',
'nvl(a.paycodedesc_a,b.paycodedesc_b) paycodedesc,',
'nvl(a.amount_paid_a,0) amount_paid_a,',
'nvl(b.amount_paid_b,0) amount_paid_b',
'',
'from ',
' ',
'   (--up3',
'        select pay_slip_no_a,emp_id_a,emp_company_no_a,employee_name_a,',
'               paytype_a,paycodedesc_a paycode_a,upper(paycodedesc_a) paycodedesc_a,',
'               amount_paid_a ',
'        from ',
'            (--up0',
'                select',
'                ---labels are here',
'                pa.id pay_slip_no_a,',
'                pa.emp_id emp_id_a,',
'                pa.emp_company_no_hist emp_company_no_a,',
'            --    TRUNC(ep.date_employed) DATE_EMPLOYED_a,',
'            --    pa.payroll_effective payroll_effective_a,',
'                NVL(PA.SURNAME_HIST,'''')||NVL('', ''||PA.FIRST_NAME_HIST,'''')||'' (''||pa.emp_company_no_hist||'') - ''||P.POSITION_NAME  EMPLOYEE_NAME_A,',
'                ''PY'' paytype_a,',
'                ----comparable amounts start here',
'                case',
'                when pa.compute_gross_HIST=''BASIC_PAY'' then pa.BASIC_PERSONAL_RATE ',
'                else nvl((select sum(pi.INCOME_AMOUNT) from PA_PMG_PAYROLLINCOME pi where pi.PAY_SLIPNO=pa.id and  pi.INCOME_CODE=''NR''),0)',
'                end personal_rate,',
'                PA.HOURLY_RATE,',
'                pa.allowance_taxable,',
'                pa.allowance_nontaxable,',
'                pa.misc_tax_payment,',
'                pa.misc_nontax_payment,',
'                pa.total_tax_earnings ,',
'                pa.total_nontax_earnings,',
'                pa.misc_deduction_sum ,',
'                pa.total_deduction ,',
'                pa.gross_taxable,',
'                pa.gross_nontaxable ,',
'                pa.gross_taxable + pa.gross_nontaxable gross,',
'                pa.medical_sum,',
'                pa.union_dues,',
'                pa.time_tax_earnings,',
'                pa.no_pay_earnings,',
'                pa.reduce_taxes,',
'                pa.reduce_nis,',
'                pa.nis_employee,',
'                pa.nis_employer,',
'                pa.tax_amount,',
'                pa.net_pay',
'                from pa_pmg_payrolldtl pa',
'                join PA_PMG_PAYROLLHD ph on pa.pay_batch_id=ph.id',
'                join HR_RCM_EMPLOYEE ep on pa.emp_id=ep.id',
'                left join HR_HCF_POSITION P on P.id=ep.position_id',
'                left outer join HR_HCF_ORGSTRUCTUREDTL v on pa.orgdtl_id=v.id',
'                WHERE pa.EARNINGS_PERIOD_ID=:P1249_EARNINGS_PERIOD_A',
'             ) --up0',
'            unpivot',
'            (--up1',
'            amount_paid_a',
'            FOR paycodedesc_a',
'            in',
'                (--up2',
'                personal_rate	as	''personal_rate'',',
'                hourly_rate	as	''hourly_rate'',',
'                allowance_taxable	as	''allowance_taxable'',',
'                allowance_nontaxable	as	''allowance_nontaxable'',',
'                time_tax_earnings	as	''time_tax_earnings'',',
'                total_tax_earnings	as	''total_tax_earnings'',',
'                no_pay_earnings as ''no_pay_earnings'',',
'                reduce_taxes as ''reduce_taxes'',',
'                reduce_nis as ''reduce_nis'',',
'                total_nontax_earnings	as	''total_nontax_earnings'',',
'                misc_tax_payment	as	''misc_tax_payment'',',
'                misc_nontax_payment	as	''misc_nontax_payment'',',
'                misc_deduction_sum	as	''misc_deduction_sum'',',
'                total_deduction	as	''total_deduction'',',
'                gross_taxable	as	''gross_taxable'',',
'                gross_nontaxable	as	''gross_nontaxable'',',
'                gross	as	''gross'',',
'                medical_sum as ''medical_sum'',',
'                union_dues as ''union_dues'',',
'                nis_employee as	''nis_employee'',',
'                nis_employer as ''nis_employer'', ',
'                tax_amount	as	''tax_amount'',',
'                net_pay	as	''net_pay''',
'                ) --up2',
'            ) --up1',
') a --up3',
'FULL JOIN',
'(--up4',
'        select pay_slip_no_b,emp_id_b,emp_company_no_b,employee_name_b,',
'               paytype_b,paycodedesc_b paycode_b,upper(paycodedesc_b) paycodedesc_b,',
'               amount_paid_b ',
'        from ',
'        (--up0',
'',
'        select',
'        ---labels are here',
'        pa.id pay_slip_no_b,',
'        pa.emp_id emp_id_b,',
'        pa.emp_company_no_hist emp_company_no_b,',
'    --    TRUNC(ep.date_employed) DATE_EMPLOYED_b,',
'    --    pa.payroll_effective payroll_effective_b,',
'        NVL(PA.SURNAME_HIST,'''')||NVL('', ''||PA.FIRST_NAME_HIST,'''')||'' (''||pa.emp_company_no_hist||'') - ''||P.POSITION_NAME  EMPLOYEE_NAME_B,',
'        ''PY'' paytype_b,',
'        ----comparable amounts start here',
'        case',
'        when pa.compute_gross_HIST=''BASIC_PAY'' then pa.BASIC_PERSONAL_RATE ',
'        else nvl((select sum(pi.INCOME_AMOUNT) from PA_PMG_PAYROLLINCOME pi where pi.PAY_SLIPNO=pa.id and  pi.INCOME_CODE=''NR''),0)',
'        end personal_rate,',
'        PA.HOURLY_RATE,',
'        pa.allowance_taxable,',
'        pa.allowance_nontaxable,',
'        pa.misc_tax_payment,',
'        pa.misc_nontax_payment,',
'        pa.total_tax_earnings ,',
'        pa.total_nontax_earnings,',
'        pa.misc_deduction_sum ,',
'        pa.total_deduction ,',
'        pa.gross_taxable,',
'        pa.gross_nontaxable ,',
'        pa.gross_taxable + pa.gross_nontaxable gross,',
'        pa.medical_sum,',
'        pa.union_dues,',
'        pa.time_tax_earnings,',
'        pa.no_pay_earnings,',
'        pa.reduce_taxes,',
'        pa.reduce_nis,',
'        pa.nis_employee,',
'        pa.nis_employer,',
'        pa.tax_amount,',
'        pa.net_pay',
'        from pa_pmg_payrolldtl pa',
'        join PA_PMG_PAYROLLHD ph on pa.pay_batch_id=ph.id',
'        join HR_RCM_EMPLOYEE ep on pa.emp_id=ep.id',
'        left join HR_HCF_POSITION P on P.id=ep.position_id',
'        left outer join HR_HCF_ORGSTRUCTUREDTL v on pa.orgdtl_id=v.id',
'        WHERE pa.EARNINGS_PERIOD_ID=:P1249_EARNINGS_PERIOD_B',
'        ) --up0',
'        unpivot',
'        (--up1',
'        amount_paid_b',
'        FOR paycodedesc_b',
'        in',
'            (--up2',
'                    personal_rate	as	''personal_rate'',',
'                    hourly_rate	as	''hourly_rate'',',
'                    allowance_taxable	as	''allowance_taxable'',',
'                    allowance_nontaxable	as	''allowance_nontaxable'',',
'                    time_tax_earnings	as	''time_tax_earnings'',',
'                    total_tax_earnings	as	''total_tax_earnings'',',
'                    no_pay_earnings as ''no_pay_earnings'',',
'                    reduce_taxes as ''reduce_taxes'',',
'                    reduce_nis as ''reduce_nis'',',
'                    total_nontax_earnings	as	''total_nontax_earnings'',',
'                    misc_tax_payment	as	''misc_tax_payment'',',
'                    misc_nontax_payment	as	''misc_nontax_payment'',',
'                    misc_deduction_sum	as	''misc_deduction_sum'',',
'                    total_deduction	as	''total_deduction'',',
'                    gross_taxable	as	''gross_taxable'',',
'                    gross_nontaxable	as	''gross_nontaxable'',',
'                    gross	as	''gross'',',
'                    medical_sum as ''medical_sum'',',
'                    union_dues as ''union_dues'',',
'                    nis_employee as	''nis_employee'',',
'                    nis_employer as ''nis_employer'',',
'                    tax_amount	as	''tax_amount'',',
'                    net_pay	as	''net_pay''',
'            ) --up2',
'        ) --up1',
') b --up4',
'on a.emp_id_a = b.emp_id_b and a.paycode_a = b.paycode_b'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1249_EARNINGS_PERIOD_A,P1249_EARNINGS_PERIOD_B'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rptpayrollcompare'
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
 p_id=>wwv_flow_imp.id(3771582027363906599)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>21592224533636223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581889422906598)
,p_db_column_name=>'EMP_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581831373906597)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581656577906596)
,p_db_column_name=>'PAYTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Paytype'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581636268906595)
,p_db_column_name=>'PAYCODEDESC'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Paycodedesc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581541278906594)
,p_db_column_name=>'AMOUNT_PAID_A'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Prev Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3771581443257906593)
,p_db_column_name=>'AMOUNT_PAID_B'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curr Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3770016732141266036)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'231576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_NO:EMPLOYEE_NAME:PAYTYPE:PAYCODEDESC:AMOUNT_PAID_A:AMOUNT_PAID_B:APXWS_CC_001'
,p_break_on=>'PAYTYPE:0:0:0:0:0'
,p_break_enabled_on=>'PAYTYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768447920648347058)
,p_report_id=>wwv_flow_imp.id(3770016732141266036)
,p_name=>'Increase'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#3BAA2C'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3768448302125347063)
,p_report_id=>wwv_flow_imp.id(3770016732141266036)
,p_name=>'Decrease'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFFFF'
,p_row_font_color=>'#F44336'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3768447492285347053)
,p_report_id=>wwv_flow_imp.id(3770016732141266036)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'F - E'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Difference'
,p_report_label=>'Difference'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3771583447065906613)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3770641277551675095)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1248:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3769276926629784010)
,p_name=>'P1249_COMPUTE_GROSS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_prompt=>'Compute Gross'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct INITCAP(REPLACE(compute_gross,''_'','' '')) a, compute_gross b',
'from hr_rcm_employee',
'where payment_type = :P1249_PAYMENT_TYPE_A',
'and employment_class_id = :P1249_EMPLOYMENT_CLASS'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1249_PAYMENT_TYPE_A,P1249_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3769277018833784011)
,p_name=>'P1249_PAYMENT_TYPE_A'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct INITCAP(payment_type) x, payment_type y ',
'from vw_useraccess a ',
'where user_name=:APP_USER',
'and exists (select 1',
'            from pa_pcf_earningperiod x',
'            where x.payment_type = a.payment_type',
'            AND TO_CHAR(EMPLOYMENT_CLASS_ID)= :P1249_EMPLOYMENT_CLASS',
'            )'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1249_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3771582972435906609)
,p_name=>'P1249_EARNINGS_PERIOD_B'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_prompt=>'Earnings Period B'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'and TO_CHAR(employment_class_id) = :P1249_EMPLOYMENT_CLASS',
'and a.compute_gross = :P1249_COMPUTE_GROSS',
'and a.payment_type = :P1249_PAYMENT_TYPE_A',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_cascade_parent_items=>'P1249_EMPLOYMENT_CLASS,P1249_COMPUTE_GROSS,P1249_PAYMENT_TYPE_A'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3771583148830906610)
,p_name=>'P1249_EARNINGS_PERIOD_A'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_prompt=>'Earnings Period A'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'and TO_CHAR(employment_class_id) = :P1249_EMPLOYMENT_CLASS',
'and a.compute_gross = :P1249_COMPUTE_GROSS',
'and a.payment_type = :P1249_PAYMENT_TYPE_A',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_cascade_parent_items=>'P1249_EMPLOYMENT_CLASS,P1249_COMPUTE_GROSS,P1249_PAYMENT_TYPE_A'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3771583263493906612)
,p_name=>'P1249_EMPLOYMENT_CLASS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct b.value_description, employment_class_id',
'from vw_useraccess a join table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) b',
'on a.employment_class_id = b.id',
'where user_name=:APP_USER',
'and exists (select 1',
'            from pa_pcf_earningperiod x',
'            where x.employment_class_id=a.employment_class_id',
'            )'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774745509493540392)
,p_name=>'P1249_EARNINGS_PERIOD_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774745596505540393)
,p_name=>'P1249_EARNINGS_PERIOD_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3771583447065906613)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3770643739150675097)
,p_name=>'set_current_date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_PRV_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3770643189562675096)
,p_event_id=>wwv_flow_imp.id(3770643739150675097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1249_CURRENT_MONTH_YEAR,P1249_EMPLOYMENT_CLASS_ID,P1249_PAYMENT_TYPE_A'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when payment_type = ''MONTHLY'' then add_months(start_date,1) else start_date+14 end set_value, EMPLOYMENT_CLASS_ID, PAYMENT_TYPE',
'from pa_pcf_earningperiod',
'where id = :P1249_PRV_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1249_PRV_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769699483097419815)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769699450143419814)
,p_event_id=>wwv_flow_imp.id(3769699483097419815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771579483684906574)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769697131098419791)
,p_name=>'refresh_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769357815925858315)
,p_event_id=>wwv_flow_imp.id(3769697131098419791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769696673414419787)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769356843313858305)
,p_name=>'refresh_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769356722520858304)
,p_event_id=>wwv_flow_imp.id(3769356843313858305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771582060326906600)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769355941790858296)
,p_name=>'refresh_3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769354581570858283)
,p_event_id=>wwv_flow_imp.id(3769355941790858296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769355494325858292)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769354009037858277)
,p_name=>'refresh_4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769277409021784015)
,p_event_id=>wwv_flow_imp.id(3769354009037858277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769353600173858273)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769699330056419813)
,p_name=>'refresh1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769699201408419812)
,p_event_id=>wwv_flow_imp.id(3769699330056419813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771579483684906574)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769696854297419789)
,p_name=>'refresh1_2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769357716221858314)
,p_event_id=>wwv_flow_imp.id(3769696854297419789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769696673414419787)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769356614985858303)
,p_name=>'refresh1_3'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769356486451858302)
,p_event_id=>wwv_flow_imp.id(3769356614985858303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771582060326906600)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769355723588858294)
,p_name=>'refresh1_4'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769354683393858284)
,p_event_id=>wwv_flow_imp.id(3769355723588858294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769355494325858292)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3769353800222858275)
,p_name=>'refresh1_5'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3769277348344784014)
,p_event_id=>wwv_flow_imp.id(3769353800222858275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3769353600173858273)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774745442635540391)
,p_name=>'set_earn'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_A'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774745309576540390)
,p_event_id=>wwv_flow_imp.id(3774745442635540391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1249_EARNINGS_PERIOD_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.id = :P1249_EARNINGS_PERIOD_A'))
,p_attribute_07=>'P1249_EARNINGS_PERIOD_A'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774745035102540387)
,p_event_id=>wwv_flow_imp.id(3774745442635540391)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771583447065906613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774745203204540389)
,p_name=>'set_earn_b'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1249_EARNINGS_PERIOD_B'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774745076032540388)
,p_event_id=>wwv_flow_imp.id(3774745203204540389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1249_EARNINGS_PERIOD_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.id = :P1249_EARNINGS_PERIOD_B'))
,p_attribute_07=>'P1249_EARNINGS_PERIOD_B'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774744950421540386)
,p_event_id=>wwv_flow_imp.id(3774745203204540389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3771583447065906613)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
