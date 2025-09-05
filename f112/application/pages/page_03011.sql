prompt --application/pages/page_03011
begin
--   Manifest
--     PAGE: 03011
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
 p_id=>3011
,p_name=>'rptViewbfExport'
,p_alias=>'RPTVIEWBFEXPORT'
,p_step_title=>'eTAXES'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3126740937336911508)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select     ',
'           tin tin, --col1',
'         (select trim(nvl(emp_company_no,'',''))  from hr_rcm_employee emp where emp.id=EMPNO) EMPLOYEE_NUMBER, --col2',
'            trim(nvl(FIRST_NAME,'','')) FIRST_NAME,--col3       ',
'            trim(nvl(LAST_NAME,'','')) LAST_NAME,--col4',
'            trim(nvl(middle_name,'','')) other_name,--col5',
'            trim(nvl(ADDRESS,'','')) ADDRESS,--col6',
'            trim(NVL(PAY_FREQUENCY,'','')) PAY_FREQUENCY ,--col7',
'            trim(nvl(cast(MONTHS_EMPLOYED as varchar(3)),'','')) MONTHS_EMPLOYED,--col8',
'            trim(nvl(EMPLOYEE_TYPE,'','')) EMPLOYEE_TYPE,--col9',
'            null previous_employer_tin,--col10',
'            nvl(NULL,'''') PREVIOUS_EMPLOYER_NAME,--col11',
'             nvl(NULL,'''') PREVIOUS_EMPLOYER_ADDRESS,--col_12',
'             NULL NEW_EMPLOYER_TIN,--col_13',
'             nvl(NULL,'''')  new_employer_name,--col14',
'             nvl(NULL,'''')  new_employer_address ,--col145',
'           nvl(Value_7A_Salaries,0) Value_7A_Salaries,--col16',
'            nvl(Value_7A_Wages,'''') Value_7A_Wages,--col17',
'            nvl(NULL,'''') Value_7B,--col18',
'             nvl(NULL,'''') Value_7C,--col19',
'            nvl(AMOUNT_PAID,0) AMOUNT_PAID,--col20',
'             nvl(TAX_FREE,0) statutory_deduction,--col21',
'						nvl( NIS_EMPLOYEE,0) Employee_NIS,--col22',
'						nvl(Total_Deduction ,0) Total_Deduction,--col23',
'            nvl(Tax_Deducted,0) Tax_Deducted,--col24',
'						nvl(to_char(DOB,''DD-MM-YYYY''),'''') DOB,--col25',
'                        nvl(Value_7A,'''') Value_7A,',
'                        nvl(TOTAL_INCOME,'''') TOTAL_INCOME,',
'             nvl(VALUE_7C_TAXABLE,'''') VALUE_7C_TAXABLE,',
'             nvl(VALUE_7C_NON_TAXABLE,'''') VALUE_7C_NON_TAXABLE            ',
'from GRA_FORM2 a',
'where exists (select 1',
'			  from gra_form2_hd b ',
'			  where b.ID=a.FORM2_HD',
'			  and Year_of_Income = :P3011_YEAR_OF_INCOME',
'			  and ORG_id = :P3011_EMPLOYER',
'              and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS',
'			  )',
' union all',
'select',
'          ',
'          ''="'' || trim(Employer_TIN) || ''"'' ,--col1',
'          NULL,--col2',
'          NULL ,--col3',
'          trim(Employer_Name) ,--col4',
'          NULL ,--col5',
'          trim(ADDRESS) ,--col6',
'          NULL,--col7',
'          TRIM(NVL(TOTAL_EMPLOYEES_SUBMITTED,0)) ,--col8',
'          trim(to_char(Year_of_Income)),--col9',
'          NULL,--col10',
'          NULL,--col11',
'          NULL,--col_12',
'          NULL,--col_13',
'          NULL,--col14',
'          NULL,--col15',
'          nvl(Total_Value_7A_Salaries,0),--col16',
'           nvl(Total_Value_7A_wages,''''),--col17',
'           nvl(NULL,''''),--col18',
'          nvl(NULL,''''),--col19',
'          nvl(Total_Amount_Paid,0),--col20',
'          nvl(Total_Statutory_Deduction ,0),--col21',
'          nvl(Total_NIS_Contribution,0),--col22',
'          nvl(Total_Deduction,0) ,--col23',
'          nvl(Total_Tax_Deducted ,0),--col24',
'          nvl(NULL,''''), --col25',
'          nvl(TOTAL_VALUE_7A,''''),',
'          nvl(TOTAL_TOTAL_INCOME,''''),',
'          nvl(TOTAL_VALUE_7C_TAXABLE,'''') TOTAL_VALUE_7C_TAXABLE,',
'          nvl(TOTAL_VALUE_7C_NON_TAXABLE,'''') TOTAL_VALUE_7C_NON_TAXABLE',
'FROM GRA_FORM2_HD',
'where Year_of_Income = :P3011_YEAR_OF_INCOME',
'and ORG_id = :P3011_EMPLOYER',
'and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME,P3011_FORM_5_PERIODS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Remittances for GRA Form2/5'
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
 p_id=>wwv_flow_imp.id(3126742280216911521)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>187191072969051331
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742362635911522)
,p_db_column_name=>'TIN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_static_id=>'TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742423715911523)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742541737911524)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Value 7b'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742614972911525)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Value 7c'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742735851911526)
,p_db_column_name=>'DOB'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742812075911527)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126742983295911528)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743106211911529)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743163509911530)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743263817911531)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743316409911532)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743489477911533)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743520939911534)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_static_id=>'LAST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743648166911535)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_static_id=>'OTHER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743720960911536)
,p_db_column_name=>'ADDRESS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743868861911537)
,p_db_column_name=>'MONTHS_EMPLOYED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Months Employed'
,p_column_type=>'STRING'
,p_static_id=>'MONTHS_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126743927986911538)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126744052792911539)
,p_db_column_name=>'PREVIOUS_EMPLOYER_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Previous Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126744144880911540)
,p_db_column_name=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Previous Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762321320152291)
,p_db_column_name=>'NEW_EMPLOYER_TIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Employer Tin'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762466729152292)
,p_db_column_name=>'NEW_EMPLOYER_NAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762601290152293)
,p_db_column_name=>'NEW_EMPLOYER_ADDRESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762700277152294)
,p_db_column_name=>'VALUE_7A_SALARIES'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Value 7a Salaries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'VALUE_7A_SALARIES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762803830152295)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'AMOUNT_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762897522152296)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126762974240152297)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126763064158152298)
,p_db_column_name=>'EMPLOYEE_NIS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Employee Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126763150133152299)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126763246728152300)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3126782937774153855)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1872318'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIN:PREVIOUS_EMPLOYER_TIN:VALUE_7B:VALUE_7C:DOB:VALUE_7A:TOTAL_INCOME:VALUE_7A_WAGES:VALUE_7C_TAXABLE:VALUE_7C_NON_TAXABLE:EMPLOYEE_NUMBER:FIRST_NAME:LAST_NAME:OTHER_NAME:ADDRESS:MONTHS_EMPLOYED:EMPLOYEE_TYPE:PREVIOUS_EMPLOYER_NAME:PREVIOUS_EMPLOYER_'
||'ADDRESS:NEW_EMPLOYER_TIN:NEW_EMPLOYER_NAME:NEW_EMPLOYER_ADDRESS:VALUE_7A_SALARIES:AMOUNT_PAID:PAY_FREQUENCY:STATUTORY_DEDUCTION:EMPLOYEE_NIS:TOTAL_DEDUCTION:TAX_DEDUCTED'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3126766030294152328)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.tin,a.employee_number,a.first_name,a.last_name,a.other_name,a.address,a.pay_frequency,a.months_employed,a.employee_type,a.previous_employer_tin,',
'a.previous_employer_name,a.previous_employer_address,a.new_employer_tin,a.new_employer_name,a.new_employer_address,sum(a.value_7a_salaries) value_7a_salaries,',
'sum(a.value_7a_wages) value_7a_wages, sum(a.value_7B) value_7B, sum(a.value_7C) value_7C, sum(a.amount_paid) amount_paid,sum(a.statutory_deduction) statutory_deduction,sum(a.employee_nis) employee_nis,',
'sum(total_deduction) total_deduction, sum(a.tax_deducted) tax_deducted, dob,sum(a.value_7A) value_7A, sum(a.total_income) total_income, sum(a.value_7c_taxable) value_7c_taxable, sum(a.value_7c_non_taxable) value_7c_non_taxable from ( select   ',
'           tin tin, --col1',
'         (select trim(nvl(emp_company_no,'',''))  from hr_rcm_employee emp where emp.id=EMPNO) EMPLOYEE_NUMBER, --col2',
'            trim(nvl(FIRST_NAME,'','')) FIRST_NAME,--col3       ',
'            trim(nvl(LAST_NAME,'','')) LAST_NAME,--col4',
'            trim(nvl(middle_name,'','')) other_name,--col5',
'            trim(nvl(ADDRESS,'','')) ADDRESS,--col6',
'            trim(NVL(PAY_FREQUENCY,'','')) PAY_FREQUENCY ,--col7',
'            trim(nvl(cast(MONTHS_EMPLOYED as varchar(3)),'','')) MONTHS_EMPLOYED,--col8',
'            trim(nvl(EMPLOYEE_TYPE,'','')) EMPLOYEE_TYPE,--col9',
'            null previous_employer_tin,--col10',
'            nvl(NULL,'''') PREVIOUS_EMPLOYER_NAME,--col11',
'             nvl(NULL,'''') PREVIOUS_EMPLOYER_ADDRESS,--col_12',
'             NULL NEW_EMPLOYER_TIN,--col_13',
'             nvl(NULL,'''')  new_employer_name,--col14',
'             nvl(NULL,'''')  new_employer_address ,--col145',
'           nvl(Value_7A_Salaries,0) Value_7A_Salaries,--col16',
'            nvl(Value_7A_Wages,'''') Value_7A_Wages,--col17',
'            nvl(NULL,'''') Value_7B,--col18',
'             nvl(NULL,'''') Value_7C,--col19',
'            nvl(AMOUNT_PAID,0) AMOUNT_PAID,--col20',
'             nvl(TAX_FREE,0) statutory_deduction,--col21',
'						nvl( NIS_EMPLOYEE,0) Employee_NIS,--col22',
'						nvl(Total_Deduction ,0) Total_Deduction,--col23',
'            nvl(Tax_Deducted,0) Tax_Deducted,--col24',
'						nvl(to_char(DOB,''DD-MM-YYYY''),'''') DOB,--col25',
'                        nvl(Value_7A,'''') Value_7A,',
'                        nvl(TOTAL_INCOME,'''') TOTAL_INCOME,',
'             nvl(VALUE_7C_TAXABLE,'''') VALUE_7C_TAXABLE,',
'             nvl(VALUE_7C_NON_TAXABLE,'''') VALUE_7C_NON_TAXABLE            ',
'from GRA_FORM2 a',
'where exists (select 1',
'			  from gra_form2_hd b ',
'			  where b.ID=a.FORM2_HD',
'			  and Year_of_Income = 2021',
'			  and ORG_id = 34446',
'              --and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS',
'			  )',
' union all',
'select',
'          ',
'          ''="'' || trim(Employer_TIN) || ''"'' ,--col1',
'          NULL,--col2',
'          NULL ,--col3',
'          trim(Employer_Name) ,--col4',
'          NULL ,--col5',
'          trim(ADDRESS) ,--col6',
'          NULL,--col7',
'          TRIM(NVL(TOTAL_EMPLOYEES_SUBMITTED,0)) ,--col8',
'          trim(to_char(Year_of_Income)),--col9',
'          NULL,--col10',
'          NULL,--col11',
'          NULL,--col_12',
'          NULL,--col_13',
'          NULL,--col14',
'          NULL,--col15',
'          nvl(Total_Value_7A_Salaries,0),--col16',
'           nvl(Total_Value_7A_wages,''''),--col17',
'           nvl(NULL,''''),--col18',
'          nvl(NULL,''''),--col19',
'          nvl(Total_Amount_Paid,0),--col20',
'          nvl(Total_Statutory_Deduction ,0),--col21',
'          nvl(Total_NIS_Contribution,0),--col22',
'          nvl(Total_Deduction,0) ,--col23',
'          nvl(Total_Tax_Deducted ,0),--col24',
'          nvl(NULL,''''), --col25',
'          nvl(TOTAL_VALUE_7A,''''),',
'          nvl(TOTAL_TOTAL_INCOME,''''),',
'          nvl(TOTAL_VALUE_7C_TAXABLE,'''') TOTAL_VALUE_7C_TAXABLE,',
'          nvl(TOTAL_VALUE_7C_NON_TAXABLE,'''') TOTAL_VALUE_7C_NON_TAXABLE',
'FROM GRA_FORM2_HD',
'where Year_of_Income = 2021',
'and ORG_id = 34446 ) a',
'--and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS',
' join (select ep.id earning_period_id,ep.start_paid_for,ep.end_paid_for, emp.emp_company_no emp_id',
'        from pa_pcf_earningperiod ep',
'        join hr_rcm_employee emp on (ep.payment_type = emp.payment_type and ep.employment_class_id = emp.employment_class_id ',
'        and ep.compute_gross = emp.compute_gross and ep.org_id = emp.org_id)',
'        where ep.org_id = 34446',
'        ) b on b.emp_id = a.employee_number',
'--where earning_period_id in (15371,15372,15373,15374,15375)',
'where start_paid_for between ''30-AUG-2021'' and ''03-OCT-2021''',
'group by a.tin,a.employee_number,a.first_name,a.last_name,a.other_name,a.address,a.pay_frequency,a.months_employed,a.employee_type,a.previous_employer_tin,',
'a.previous_employer_name,a.previous_employer_address,a.new_employer_tin,a.new_employer_name,a.new_employer_address,a.dob'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME,P3011_FORM_5_PERIODS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Remittances for GRA Form2/5'
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
 p_id=>wwv_flow_imp.id(3126829637059872691)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RSPRINGER'
,p_internal_uid=>187278429812012501
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126829755222872692)
,p_db_column_name=>'TIN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_static_id=>'TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126829894333872693)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126829947149872694)
,p_db_column_name=>'DOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830088704872695)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830206563872696)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830254082872697)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830371691872698)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830430924872699)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830556023872700)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Value 7b'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830628803872701)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Value 7c'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830709355872702)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830856787872703)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126830964708872704)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_static_id=>'LAST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831101543872705)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_static_id=>'OTHER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831145754872706)
,p_db_column_name=>'ADDRESS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831224593872707)
,p_db_column_name=>'MONTHS_EMPLOYED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Months Employed'
,p_column_type=>'STRING'
,p_static_id=>'MONTHS_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831338575872708)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831443941872709)
,p_db_column_name=>'PREVIOUS_EMPLOYER_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Previous Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831554308872710)
,p_db_column_name=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Previous Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831636679872711)
,p_db_column_name=>'NEW_EMPLOYER_TIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Employer Tin'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831742509872712)
,p_db_column_name=>'NEW_EMPLOYER_NAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831818534872713)
,p_db_column_name=>'NEW_EMPLOYER_ADDRESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126831973810872714)
,p_db_column_name=>'VALUE_7A_SALARIES'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Value 7a Salaries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'VALUE_7A_SALARIES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832074726872715)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'AMOUNT_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832129742872716)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832270665872717)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832407170872718)
,p_db_column_name=>'EMPLOYEE_NIS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Employee Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832465954872719)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832558247872720)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3217469088395655498)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select     ',
'           tin tin, --col1',
'         (select trim(nvl(emp_company_no,'',''))  from hr_rcm_employee emp where emp.id=EMPNO) EMPLOYEE_NUMBER, --col2',
'            trim(nvl(FIRST_NAME,'','')) FIRST_NAME,--col3       ',
'            trim(nvl(LAST_NAME,'','')) LAST_NAME,--col4',
'            trim(nvl(middle_name,'','')) other_name,--col5',
'            trim(nvl(ADDRESS,'','')) ADDRESS,--col6',
'            trim(NVL(PAY_FREQUENCY,'','')) PAY_FREQUENCY ,--col7',
'            trim(nvl(cast(MONTHS_EMPLOYED as varchar(3)),'','')) MONTHS_EMPLOYED,--col8',
'            trim(nvl(EMPLOYEE_TYPE,'','')) EMPLOYEE_TYPE,--col9',
'            null previous_employer_tin,--col10',
'            nvl(NULL,'''') PREVIOUS_EMPLOYER_NAME,--col11',
'             nvl(NULL,'''') PREVIOUS_EMPLOYER_ADDRESS,--col_12',
'             NULL NEW_EMPLOYER_TIN,--col_13',
'             nvl(NULL,'''')  new_employer_name,--col14',
'             nvl(NULL,'''')  new_employer_address ,--col145',
'           nvl(Value_7A_Salaries,0) Value_7A_Salaries,--col16',
'            nvl(Value_7A_Wages,'''') Value_7A_Wages,--col17',
'            nvl(NULL,'''') Value_7B,--col18',
'             nvl(NULL,'''') Value_7C,--col19',
'            nvl(AMOUNT_PAID,0) AMOUNT_PAID,--col20',
'             nvl(TAX_FREE,0) statutory_deduction,--col21',
'						nvl( NIS_EMPLOYEE,0) Employee_NIS,--col22',
'						nvl(Total_Deduction ,0) Total_Deduction,--col23',
'            nvl(Tax_Deducted,0) Tax_Deducted,--col24',
'						nvl(to_char(DOB,''DD-MM-YYYY''),'''') DOB,--col25',
'                        nvl(Value_7A,'''') Value_7A,',
'                        nvl(TOTAL_INCOME,'''') TOTAL_INCOME,',
'             nvl(VALUE_7C_TAXABLE,'''') VALUE_7C_TAXABLE,',
'             nvl(VALUE_7C_NON_TAXABLE,'''') VALUE_7C_NON_TAXABLE,',
'              nvl(VALUE_MEDICAL,'''') VALUE_MEDICAL            ',
'from GRA_FORM2 a',
'where exists (select 1',
'			  from gra_form2_hd b ',
'			  where b.ID=a.FORM2_HD',
'			  and Year_of_Income = :P3011_YEAR_OF_INCOME',
'			  and ORG_id = :P3011_EMPLOYER',
'              and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS',
'			  )',
' union all',
'select',
'          ',
'          ''="'' || trim(Employer_TIN) || ''"'' ,--col1',
'          NULL,--col2',
'          NULL ,--col3',
'          trim(Employer_Name) ,--col4',
'          NULL ,--col5',
'          trim(ADDRESS) ,--col6',
'          NULL,--col7',
'          TRIM(NVL(TOTAL_EMPLOYEES_SUBMITTED,0)) ,--col8',
'          trim(to_char(Year_of_Income)),--col9',
'          NULL,--col10',
'          NULL,--col11',
'          NULL,--col_12',
'          NULL,--col_13',
'          NULL,--col14',
'          NULL,--col15',
'          nvl(Total_Value_7A_Salaries,0),--col16',
'           nvl(Total_Value_7A_wages,''''),--col17',
'           nvl(NULL,''''),--col18',
'          nvl(NULL,''''),--col19',
'          nvl(Total_Amount_Paid,0),--col20',
'          nvl(Total_Statutory_Deduction ,0),--col21',
'          nvl(Total_NIS_Contribution,0),--col22',
'          nvl(Total_Deduction,0) ,--col23',
'          nvl(Total_Tax_Deducted ,0),--col24',
'          nvl(NULL,''''), --col25',
'          nvl(TOTAL_VALUE_7A,''''),',
'          nvl(TOTAL_TOTAL_INCOME,''''),',
'          nvl(TOTAL_VALUE_7C_TAXABLE,'''') TOTAL_VALUE_7C_TAXABLE,',
'          nvl(TOTAL_VALUE_7C_NON_TAXABLE,'''') TOTAL_VALUE_7C_NON_TAXABLE,',
'           nvl(TOTAL_VALUE_MEDICAL,'''') TOTAL_VALUE_MEDICAL',
'FROM GRA_FORM2_HD',
'where Year_of_Income = :P3011_YEAR_OF_INCOME',
'and ORG_id = :P3011_EMPLOYER',
'and  nvl(to_number(extract(month from start_period)),13)=:P3011_FORM_5_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME,P3011_FORM_5_PERIODS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Remittances for GRA Form2/5'
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
 p_id=>wwv_flow_imp.id(3217469176259655498)
,p_name=>'Listing of Remittances for GRA Form2'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>406377606202217850
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325028495453985158)
,p_db_column_name=>'TIN'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325028071558985157)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYEE_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325027711762985156)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325027325824985155)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325026876316985153)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OTHER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325026510237985152)
,p_db_column_name=>'ADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325026109302985151)
,p_db_column_name=>'MONTHS_EMPLOYED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Months Employed'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MONTHS_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325025728183985150)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYEE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325025289454985144)
,p_db_column_name=>'PREVIOUS_EMPLOYER_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Previous Employer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325024902722985143)
,p_db_column_name=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Previous Employer Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325024464635985142)
,p_db_column_name=>'NEW_EMPLOYER_TIN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'New Employer Tin'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NEW_EMPLOYER_TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325024120177985141)
,p_db_column_name=>'NEW_EMPLOYER_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'New Employer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NEW_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325023663407985140)
,p_db_column_name=>'NEW_EMPLOYER_ADDRESS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'New Employer Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NEW_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325023357891985139)
,p_db_column_name=>'VALUE_7A_SALARIES'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Value 7a Salaries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_7A_SALARIES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325022905606985139)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325022473692985137)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325022109423985136)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325021664841985135)
,p_db_column_name=>'EMPLOYEE_NIS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Employee Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325021331079985134)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325020925758985133)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325020525661985132)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>36
,p_column_identifier=>'AA'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325028925757985159)
,p_db_column_name=>'DOB'
,p_display_order=>76
,p_column_identifier=>'AE'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325031672860985167)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>86
,p_column_identifier=>'AF'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325031313740985165)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>96
,p_column_identifier=>'AG'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325030919995985164)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>106
,p_column_identifier=>'AH'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325030473449985163)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>116
,p_column_identifier=>'AK'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3325030122136985162)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>126
,p_column_identifier=>'AL'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832703222872721)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>136
,p_column_identifier=>'AO'
,p_column_label=>'Value 7b'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3126832806045872722)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>146
,p_column_identifier=>'AP'
,p_column_label=>'Value 7c'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24659190436746691)
,p_db_column_name=>'VALUE_MEDICAL'
,p_display_order=>156
,p_column_identifier=>'AQ'
,p_column_label=>'Value Medical'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3217471481410659639)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'252078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1
,p_report_columns=>'TIN:EMPLOYEE_NUMBER:FIRST_NAME:LAST_NAME:OTHER_NAME:ADDRESS:PAY_FREQUENCY:MONTHS_EMPLOYED:EMPLOYEE_TYPE:PREVIOUS_EMPLOYER_TIN:PREVIOUS_EMPLOYER_NAME:PREVIOUS_EMPLOYER_ADDRESS:NEW_EMPLOYER_TIN:NEW_EMPLOYER_NAME:TOTAL_INCOME:STATUTORY_DEDUCTION:VALUE_M'
||'EDICAL:EMPLOYEE_NIS:TOTAL_DEDUCTION:TAX_DEDUCTED:DOB:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126741536997911514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1403_RETURN_NAME.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126766676206152334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'RETURN_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1403_RETURN_NAME.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126741686757911515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'BULKIIT_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Bulk IIT Gen'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3021:&SESSION.::&DEBUG.:RP,3021::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126766712801152335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'BULKIIT_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Bulk IIT Gen'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3021:&SESSION.::&DEBUG.:RP,3021::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126741717438911516)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'PURGE_1'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126766849116152336)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'PURGE_2'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126741817798911517)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'IMPORT_1'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126766987547152337)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'IMPORT_2'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126741959723911518)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'DonwloadCSV_1'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Donwload CSV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126767032428152338)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'DonwloadCSV_2'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Donwload CSV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126742068738911519)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'SUBMIT_SEARCH_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Search'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126767156219152339)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'SUBMIT_SEARCH_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Search'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126742119042911520)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_button_name=>'GRA_INFO_1'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'GRA Info'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:var x=window.open(''https://www.gra.gov.gy/forms/employers-companies/employers-submission-forms'',''_blank'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3126767262806152340)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_button_name=>'GRA_INFO_2'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'GRA Info'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:var x=window.open(''https://www.gra.gov.gy/forms/employers-companies/employers-submission-forms'',''_blank'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325019724424985123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1403_RETURN_NAME.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325019345856985122)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'BULKIIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Bulk IIT Gen'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3021:&SESSION.::&DEBUG.:RP,3021::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325018940896985121)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'PURGE'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325018542178985121)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'IMPORT'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325018156857985120)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'DonwloadCSV'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Donwload CSV'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325017668883985119)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'SUBMIT_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Search'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325017305197985119)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_button_name=>'GRA_INFO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'GRA Info'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:var x=window.open(''https://www.gra.gov.gy/forms/employers-companies/employers-submission-forms'',''_blank'');'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126741089568911509)
,p_name=>'P3011_RETURN_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126741187087911510)
,p_name=>'P3011_EMPLOYER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126741247990911511)
,p_name=>'P3011_YEAR_OF_INCOME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_prompt=>'Year Of Income'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:P3011_EMPLOYER',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126741383332911512)
,p_name=>'P3011_FORM_5_PERIODS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  select ''FORM2'' a, 13 b, 3000 c, 12 d from dual',
'        union all',
'        SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , to_number(extract(month from start_date)) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD    ',
'      WHERE ORG_ID =:P3011_EMPLOYER',
'      and  EXTRACT(year FROM START_DATE)=:P3011_YEAR_OF_INCOME',
'     and exists (select 1',
'            from pa_pmg_payrolldtl b',
'            where PA_PCF_EARNINGPERIOD.id=b.earnings_period_id',
'            and org_id =:P3011_EMPLOYER)',
'      )      ',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3126741413042911513)
,p_name=>'P3011_BUTTON_CTL_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3126740937336911508)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(1,0)',
'FROM GRA_FORM2_HD',
'where org_id=:P3011_EMPLOYER  ',
'and year_of_income= :P3011_YEAR_OF_INCOME',
'and nvl(EXTRACT(month FROM start_period),13)= :P3011_FORM_5_PERIODS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126766197624152329)
,p_name=>'P3011_RETURN_NAME_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126766283933152330)
,p_name=>'P3011_EMPLOYER_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126766318112152331)
,p_name=>'P3011_YEAR_OF_INCOME_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_prompt=>'Year Of Income'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:P3011_EMPLOYER',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3126766472936152332)
,p_name=>'P3011_FORM_5_PERIODS_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  select ''FORM2'' a, 13 b, 3000 c, 12 d from dual',
'        union all',
'        SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , to_number(extract(month from start_date)) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD    ',
'      WHERE ORG_ID =:P3011_EMPLOYER',
'      and  EXTRACT(year FROM START_DATE)=:P3011_YEAR_OF_INCOME',
'     and exists (select 1',
'            from pa_pmg_payrolldtl b',
'            where PA_PCF_EARNINGPERIOD.id=b.earnings_period_id',
'            and org_id =:P3011_EMPLOYER)',
'      )      ',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3126766511894152333)
,p_name=>'P3011_BUTTON_CTL_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3126766030294152328)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(1,0)',
'FROM GRA_FORM2_HD',
'where org_id=:P3011_EMPLOYER  ',
'and year_of_income= :P3011_YEAR_OF_INCOME',
'and nvl(EXTRACT(month FROM start_period),13)= :P3011_FORM_5_PERIODS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325015429450985110)
,p_name=>'P3011_BUTTON_CTL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(1,0)',
'FROM GRA_FORM2_HD',
'where org_id=:P3011_EMPLOYER  ',
'and year_of_income= :P3011_YEAR_OF_INCOME',
'and nvl(EXTRACT(month FROM start_period),13)= :P3011_FORM_5_PERIODS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325015767225985111)
,p_name=>'P3011_FORM_5_PERIODS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  select ''FORM2'' a, 13 b, 3000 c, 12 d from dual',
'        union all',
'        SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , to_number(extract(month from start_date)) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD    ',
'      WHERE ORG_ID =:P3011_EMPLOYER',
'      and  EXTRACT(year FROM START_DATE)=:P3011_YEAR_OF_INCOME',
'     and exists (select 1',
'            from pa_pmg_payrolldtl b',
'            where PA_PCF_EARNINGPERIOD.id=b.earnings_period_id',
'            and org_id =:P3011_EMPLOYER)',
'      )      ',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3325016261285985111)
,p_name=>'P3011_YEAR_OF_INCOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_prompt=>'Year Of Income'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:P3011_EMPLOYER',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P3011_EMPLOYER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325016582542985112)
,p_name=>'P3011_EMPLOYER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325016939777985114)
,p_name=>'P3011_RETURN_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3217469088395655498)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3325013781862985100)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3011_FORM_5_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325013336020985098)
,p_event_id=>wwv_flow_imp.id(3325013781862985100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3011_BUTTON_CTL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT count(1)',
'FROM GRA_FORM2_HD',
'where org_id=:P3011_EMPLOYER  ',
'and year_of_income= :P3011_YEAR_OF_INCOME',
'and nvl(EXTRACT(month FROM start_period),13)= :P3011_FORM_5_PERIODS'))
,p_attribute_07=>'P3011_EMPLOYER,P3011_YEAR_OF_INCOME,P3011_FORM_5_PERIODS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325012858462985097)
,p_event_id=>wwv_flow_imp.id(3325013781862985100)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3217469088395655498)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325012345954985096)
,p_event_id=>wwv_flow_imp.id(3325013781862985100)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P3011_BUTTON_CTL'').val()==''0''){',
'$(''#PURGE'').hide();',
'$(''#DOWNLOAD'').hide();',
'$(''#IMPORT'').show();',
'}',
'//else ($(''#P3011_BUTTON_CTL'').val()==''1'') {',
'else {    ',
'$(''#PURGE'').show();',
'$(''#DOWNLOAD'').show();',
'$(''#IMPORT'').hide();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3075684314420752994)
,p_event_id=>wwv_flow_imp.id(3325013781862985100)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325014634320985102)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'extract_form2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'  ',
'    PKG_GENERATORS.gra_etaxes ( :P3011_EMPLOYER, :P3011_YEAR_OF_INCOME, :P3011_FORM_5_PERIODS);  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325018542178985121)
,p_process_success_message=>'Successful Importation!'
,p_internal_uid=>3209230500464671397
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325014199259985101)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_form2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  PKG_GENERATORS.purge_data ( :P3011_EMPLOYER, :P3011_YEAR_OF_INCOME, :P3011_FORM_5_PERIODS);  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325018940896985121)
,p_process_success_message=>'Successful Importation!'
,p_internal_uid=>3209230065403671396
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325014998996985103)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add_seq'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'for I in (',
'            select rownum SEQ_NO, a.id',
'            from GRA_FORM2 a join GRA_FORM2_HD b on b.id = a.form2_hd',
'            where org_id = :P3011_EMPLOYER',
'            and year_of_income =:P3011_YEAR_OF_INCOME',
'            and nvl(to_char(start_period),13) = :P3011_FORM_5_PERIODS',
'            order by decode(first_name,null,last_name,last_name||'' ''||first_name) ASC) loop',
'            ',
'            update gra_form2',
'            set SEQ_NO = i.SEQ_NO',
'            where id = i.id;',
'            ',
'end loop;',
'        commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325018542178985121)
,p_internal_uid=>3209230865140671398
);
wwv_flow_imp.component_end;
end;
/
