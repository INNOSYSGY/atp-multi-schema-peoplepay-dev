prompt --application/pages/page_03011
begin
--   Manifest
--     PAGE: 03011
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
 p_id=>3011
,p_name=>'rptViewbfExport'
,p_alias=>'RPTVIEWBFEXPORT'
,p_step_title=>'rptViewbfExport'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'// Attach the function to the page submission event',
'$(document).on(''apexafterrefresh'', function() {',
'    handleProcessError();',
'});',
'</script> '))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function disableButtonOnLoad() {',
'    apex.widget.button.disable(''IMPORT'');',
'}',
'',
'// Define a function to handle process errors',
'function handleProcessError() {',
'    // Check if there are any error messages on the page',
'    if (apex.message.getErrorMessages().length > 0) {',
'        // Display the error message',
'        apex.message.showErrors(apex.message.getErrorMessages());',
'',
'        // Reset page items to their original values (if needed)',
'        apex.item(''P3011_FORM_5_PERIODS'').setValue('''');',
'    }',
'}',
'',
'// Attach the function to the page submission event',
'$(document).on(''apexafterrefresh'', function() {',
'    handleProcessError();',
'});',
''))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(724984451034880252)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
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
'                     nvl(TOTAL_INCOME,'''') TOTAL_INCOME,',
'',
'             nvl(VALUE_7C_TAXABLE,'''') VALUE_7C_TAXABLE,',
'             nvl(VALUE_7C_NON_TAXABLE,'''') VALUE_7C_NON_TAXABLE,',
'             nvl(VALUE_MEDICAL,'''') VALUE_MEDICAL, last_changed_by, last_changed_date            ',
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
'          nvl(TOTAL_VALUE_MEDICAL,'''') TOTAL_VALUE_MEDICAL, last_changed_by, last_changed_date ',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(724984363170880252)
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
,p_internal_uid=>503441104350201332
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617425043976550592)
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
 p_id=>wwv_flow_imp.id(617425467871550593)
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
 p_id=>wwv_flow_imp.id(617425827667550594)
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
 p_id=>wwv_flow_imp.id(617426213605550595)
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
 p_id=>wwv_flow_imp.id(617426663113550597)
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
 p_id=>wwv_flow_imp.id(617427029192550598)
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
 p_id=>wwv_flow_imp.id(617427430127550599)
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
 p_id=>wwv_flow_imp.id(617427811246550600)
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
 p_id=>wwv_flow_imp.id(617428249975550606)
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
 p_id=>wwv_flow_imp.id(617428636707550607)
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
 p_id=>wwv_flow_imp.id(617429074794550608)
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
 p_id=>wwv_flow_imp.id(617429419252550609)
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
 p_id=>wwv_flow_imp.id(617429876022550610)
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
 p_id=>wwv_flow_imp.id(617430181538550611)
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
 p_id=>wwv_flow_imp.id(617430633823550611)
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
 p_id=>wwv_flow_imp.id(617431065737550613)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617431430006550614)
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
 p_id=>wwv_flow_imp.id(617431874588550615)
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
 p_id=>wwv_flow_imp.id(617432208350550616)
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
 p_id=>wwv_flow_imp.id(617432613671550617)
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
 p_id=>wwv_flow_imp.id(617433013768550618)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>36
,p_column_identifier=>'AA'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617424613672550591)
,p_db_column_name=>'DOB'
,p_display_order=>76
,p_column_identifier=>'AE'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617421866569550583)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>86
,p_column_identifier=>'AF'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617422225689550585)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>96
,p_column_identifier=>'AG'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617422619434550586)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>106
,p_column_identifier=>'AH'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617423065980550587)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>116
,p_column_identifier=>'AK'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(617423417293550588)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>126
,p_column_identifier=>'AL'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815620836207663029)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>136
,p_column_identifier=>'AO'
,p_column_label=>'Value 7b'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815620733384663028)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>146
,p_column_identifier=>'AP'
,p_column_label=>'Value 7c'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2408954977308471535)
,p_db_column_name=>'VALUE_MEDICAL'
,p_display_order=>156
,p_column_identifier=>'AQ'
,p_column_label=>'Value Medical'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2138084420821087068)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>166
,p_column_identifier=>'AR'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2138084341031087067)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>176
,p_column_identifier=>'AS'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(724982058019876111)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'252078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'TIN:EMPLOYEE_NUMBER:FIRST_NAME:LAST_NAME:OTHER_NAME:ADDRESS:PAY_FREQUENCY:MONTHS_EMPLOYED:EMPLOYEE_TYPE:PREVIOUS_EMPLOYER_TIN:PREVIOUS_EMPLOYER_NAME:PREVIOUS_EMPLOYER_ADDRESS:NEW_EMPLOYER_TIN:NEW_EMPLOYER_NAME:VALUE_7A:VALUE_7B:VALUE_7C_NON_TAXABLE:V'
||'ALUE_7C_TAXABLE:TOTAL_INCOME:STATUTORY_DEDUCTION:VALUE_MEDICAL:EMPLOYEE_NIS:TOTAL_DEDUCTION:TAX_DEDUCTED:DOB:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(815687509136383422)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(815623902370663059)
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
,p_internal_uid=>594080643549984139
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623784207663058)
,p_db_column_name=>'TIN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_static_id=>'TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623645096663057)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623592280663056)
,p_db_column_name=>'DOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623450725663055)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623332866663054)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623285347663053)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623167738663052)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815623108505663051)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622983406663050)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Value 7b'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622910626663049)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Value 7c'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622830074663048)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622682642663047)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622574721663046)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_static_id=>'LAST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622437886663045)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_static_id=>'OTHER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622393675663044)
,p_db_column_name=>'ADDRESS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622314836663043)
,p_db_column_name=>'MONTHS_EMPLOYED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Months Employed'
,p_column_type=>'STRING'
,p_static_id=>'MONTHS_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622200854663042)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815622095488663041)
,p_db_column_name=>'PREVIOUS_EMPLOYER_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Previous Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621985121663040)
,p_db_column_name=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Previous Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621902750663039)
,p_db_column_name=>'NEW_EMPLOYER_TIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Employer Tin'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621796920663038)
,p_db_column_name=>'NEW_EMPLOYER_NAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621720895663037)
,p_db_column_name=>'NEW_EMPLOYER_ADDRESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621565619663036)
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
 p_id=>wwv_flow_imp.id(815621464703663035)
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
 p_id=>wwv_flow_imp.id(815621409687663034)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621268764663033)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621132259663032)
,p_db_column_name=>'EMPLOYEE_NIS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Employee Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815621073475663031)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815620981182663030)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(815712602093624242)
,p_plug_name=>'Listing of Remittances for GRA Form2/5'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(815711259213624229)
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
,p_internal_uid=>594168000392945309
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815711176794624228)
,p_db_column_name=>'TIN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_static_id=>'TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815711115714624227)
,p_db_column_name=>'PREVIOUS_EMPLOYER_TIN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Previous employer tin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710997692624226)
,p_db_column_name=>'VALUE_7B'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Value 7b'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710924457624225)
,p_db_column_name=>'VALUE_7C'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Value 7c'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710803578624224)
,p_db_column_name=>'DOB'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dob'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710727354624223)
,p_db_column_name=>'VALUE_7A'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value 7a'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710556134624222)
,p_db_column_name=>'TOTAL_INCOME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Income'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710433218624221)
,p_db_column_name=>'VALUE_7A_WAGES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Value 7a Wages'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710375920624220)
,p_db_column_name=>'VALUE_7C_TAXABLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Value 7c Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710275612624219)
,p_db_column_name=>'VALUE_7C_NON_TAXABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Value 7c Non Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710223020624218)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710049952624217)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815710018490624216)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_static_id=>'LAST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709891263624215)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_static_id=>'OTHER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709818469624214)
,p_db_column_name=>'ADDRESS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709670568624213)
,p_db_column_name=>'MONTHS_EMPLOYED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Months Employed'
,p_column_type=>'STRING'
,p_static_id=>'MONTHS_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709611443624212)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709486637624211)
,p_db_column_name=>'PREVIOUS_EMPLOYER_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Previous Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815709394549624210)
,p_db_column_name=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Previous Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'PREVIOUS_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815691218110383459)
,p_db_column_name=>'NEW_EMPLOYER_TIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Employer Tin'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_TIN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815691072701383458)
,p_db_column_name=>'NEW_EMPLOYER_NAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Employer Name'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690938140383457)
,p_db_column_name=>'NEW_EMPLOYER_ADDRESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Employer Address'
,p_column_type=>'STRING'
,p_static_id=>'NEW_EMPLOYER_ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690839153383456)
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
 p_id=>wwv_flow_imp.id(815690735600383455)
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
 p_id=>wwv_flow_imp.id(815690641908383454)
,p_db_column_name=>'PAY_FREQUENCY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Pay Frequency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690565190383453)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690475272383452)
,p_db_column_name=>'EMPLOYEE_NIS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Employee Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690389297383451)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(815690292702383450)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(815670601656381895)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1872318'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIN:PREVIOUS_EMPLOYER_TIN:VALUE_7B:VALUE_7C:DOB:VALUE_7A:TOTAL_INCOME:VALUE_7A_WAGES:VALUE_7C_TAXABLE:VALUE_7C_NON_TAXABLE:EMPLOYEE_NUMBER:FIRST_NAME:LAST_NAME:OTHER_NAME:ADDRESS:MONTHS_EMPLOYED:EMPLOYEE_TYPE:PREVIOUS_EMPLOYER_NAME:PREVIOUS_EMPLOYER_'
||'ADDRESS:NEW_EMPLOYER_TIN:NEW_EMPLOYER_NAME:NEW_EMPLOYER_ADDRESS:VALUE_7A_SALARIES:AMOUNT_PAID:PAY_FREQUENCY:STATUTORY_DEDUCTION:EMPLOYEE_NIS:TOTAL_DEDUCTION:TAX_DEDUCTED'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422570634776952408)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
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
 p_id=>wwv_flow_imp.id(422584496103952460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
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
 p_id=>wwv_flow_imp.id(422571019098952409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
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
 p_id=>wwv_flow_imp.id(422584879723952461)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
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
 p_id=>wwv_flow_imp.id(422571396145952410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_button_name=>'PURGE_2'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422585320833952462)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_button_name=>'PURGE_1'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422571824421952411)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_button_name=>'IMPORT_2'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422585730311952463)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_button_name=>'IMPORT_1'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422572192469952411)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_button_name=>'DonwloadCSV_2'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Donwload CSV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422586083437952463)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_button_name=>'DonwloadCSV_1'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Donwload CSV'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422572612521952412)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
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
 p_id=>wwv_flow_imp.id(422586523175952464)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
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
 p_id=>wwv_flow_imp.id(422572996379952413)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(815687509136383422)
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
 p_id=>wwv_flow_imp.id(422586875085952465)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(815712602093624242)
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
 p_id=>wwv_flow_imp.id(422556334456952348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1403_RETURN_NAME.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422556682294952350)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'BULKIIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Bulk IIT Gen'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3021:&SESSION.::&DEBUG.:RP,3021::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422557071248952351)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'PURGE'
,p_button_static_id=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422557531779952352)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'IMPORT'
,p_button_static_id=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM GRA_FORM2_HD',
'where org_id=:P3011_EMPLOYER  ',
'and year_of_income= :P3011_YEAR_OF_INCOME',
'and nvl(EXTRACT(month FROM start_period),13)= :P3011_FORM_5_PERIODS'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422557941675952353)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'DownloadCSV'
,p_button_static_id=>'DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download CSV'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9121:&SESSION.::&DEBUG.:CR,9121:P9121_EMPLOYER,P9121_MONTHS,P9121_YEAR_OF_INCOME:&P3011_EMPLOYER.,&P3011_FORM_5_PERIODS.,&P3011_YEAR_OF_INCOME.'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422558336330952354)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'SUBMIT_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(422558715651952355)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_button_name=>'GRA_INFO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'GRA Info'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:var x=window.open(''https://www.gra.gov.gy/forms/employers-companies/employers-submission-forms'',''_blank'');'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617491530441551015)
,p_name=>'P3011_RETURN_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617491887676551017)
,p_name=>'P3011_EMPLOYER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and id = :APP_ORG_ID',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617492208933551018)
,p_name=>'P3011_YEAR_OF_INCOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617492702993551018)
,p_name=>'P3011_FORM_5_PERIODS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
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
'      and  EXTRACT(year FROM START_DATE) in (:P3011_YEAR_OF_INCOME ,-1)',
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
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '250')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617493040768551019)
,p_name=>'P3011_BUTTON_CTL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815741442969383779)
,p_name=>'P3011_BUTTON_CTL_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(815687509136383422)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815741481927383780)
,p_name=>'P3011_FORM_5_PERIODS_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
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
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '250')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815741636751383781)
,p_name=>'P3011_YEAR_OF_INCOME_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(815687509136383422)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815741670930383782)
,p_name=>'P3011_EMPLOYER_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and  exists (select 1',
'              FROM VW_USERACCESS A',
'              where x.ID=a.org_id',
'              )',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815741757239383783)
,p_name=>'P3011_RETURN_NAME_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(815687509136383422)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815766822029624564)
,p_name=>'P3011_BUTTON_CTL_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(815712602093624242)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815766851739624565)
,p_name=>'P3011_FORM_5_PERIODS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_prompt=>'Form 5 Periods'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
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
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '250')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815766987081624566)
,p_name=>'P3011_YEAR_OF_INCOME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(815712602093624242)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815767047984624567)
,p_name=>'P3011_EMPLOYER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and  exists (select 1',
'              FROM VW_USERACCESS A',
'              where x.ID=a.org_id',
'              )',
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(815767145503624568)
,p_name=>'P3011_RETURN_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(815712602093624242)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1206312697364333423)
,p_name=>'P3011_TAXRATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_item_default=>'''WRONG'''
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1295623224268431244)
,p_name=>'P3011_SELECTOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(724984451034880252)
,p_prompt=>'Selector'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where ',
'/*exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and */',
'a.org_id=:APP_ORG_ID ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P3011_YEAR_OF_INCOME',
'and extract(month from a.end_date)=:P3011_FORM_5_PERIODS',
'ORDER BY a.org_id, a.payment_type, a.end_date DESC'))
,p_lov_cascade_parent_items=>'P3011_FORM_5_PERIODS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_display_when=>'P3011_FORM_5_PERIODS'
,p_display_when2=>'13'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(422589074603952478)
,p_validation_name=>'YearMonthlyTaxRate'
,p_validation_sequence=>5
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'exists (select',
'    1',
'from hr_hcf_taxrate',
'where PAYMENT_TYPE=''MONTHLY''',
'and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID)',
'and extract(year from DATE_EFFECTIVE) = :P3011_YEAR_OF_INCOME',
'and :P3011_YEAR_OF_INCOME is not null)'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'No tax rate configured for selected year &P3011_YEAR_OF_INCOME.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(422557531779952352)
,p_associated_item=>wwv_flow_imp.id(617492208933551018)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422590649649952482)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3011_FORM_5_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422591115093952485)
,p_event_id=>wwv_flow_imp.id(422590649649952482)
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
 p_id=>wwv_flow_imp.id(422591646125952486)
,p_event_id=>wwv_flow_imp.id(422590649649952482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(724984451034880252)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422592143799952488)
,p_event_id=>wwv_flow_imp.id(422590649649952482)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#P3011_BUTTON_CTL'').val()==''0''){',
'$(''#PURGE'').hide();',
'$(''#DOWNLOAD'').hide();',
'$(''#IMPORT'').show();',
'$(''#P3011_SELECTOR'').show();',
'',
'}',
'//else ($(''#P3011_BUTTON_CTL'').val()==''1'') {',
'else {    ',
'$(''#PURGE'').show();',
'$(''#DOWNLOAD'').show();',
'$(''#IMPORT'').hide();',
'$(''#P3011_SELECTOR'').hide();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422592605953952489)
,p_event_id=>wwv_flow_imp.id(422590649649952482)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422593020026952490)
,p_name=>'shuttle_init'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422593461988952491)
,p_event_id=>wwv_flow_imp.id(422593020026952490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3011_SELECTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422593917116952491)
,p_name=>'HideImport'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422594451184952493)
,p_event_id=>wwv_flow_imp.id(422593917116952491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(422557531779952352)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422594796316952494)
,p_name=>'DisableButton'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422595356181952496)
,p_event_id=>wwv_flow_imp.id(422594796316952494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''IMPORT'').disabled = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422595743942952496)
,p_name=>'EnableButton'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3011_SELECTOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422596236234952497)
,p_event_id=>wwv_flow_imp.id(422595743942952496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item(''P3011_SELECTOR'').getValue().length > 0) {',
'    document.getElementById(''IMPORT'').disabled = false;',
'} else {',
'    document.getElementById(''IMPORT'').disabled = true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(422596610324952498)
,p_name=>'EnableForFORM2'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3011_FORM_5_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(422597073342952499)
,p_event_id=>wwv_flow_imp.id(422596610324952498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item(''P3011_FORM_5_PERIODS'').getValue() == ''13'') {',
'    document.getElementById(''IMPORT'').disabled = false;',
'} else {',
'    document.getElementById(''IMPORT'').disabled = true;',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(422589842757952480)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'extract_form2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'    if :P3011_FORM_5_PERIODS = ''13'' then ',
'    --for form 2 ',
'    --pkg_generators.gra_etaxes ( :P3011_EMPLOYER, :P3011_YEAR_OF_INCOME, :P3011_FORM_5_PERIODS);',
'    PKG_GRA_FORM2.gra_etaxes(p_employer         => :P3011_EMPLOYER , ',
'                            p_year_of_income    => :P3011_YEAR_OF_INCOME, ',
'                            p_start_period      => :P3011_FORM_5_PERIODS , ',
'                            p_periods           => :P3011_FORM_5_PERIODS);',
'    else',
'    --for form 5',
'         if :P3011_YEAR_OF_INCOME<2025 then',
'           PKG_GRA_FORM2.calculate_form5_N( :P3011_EMPLOYER, :P3011_YEAR_OF_INCOME, :P3011_FORM_5_PERIODS, :P3011_SELECTOR);',
'         else  ',
'            PKG_GRA_FORM2.calculate_form5_N_2025( :P3011_EMPLOYER, :P3011_YEAR_OF_INCOME, :P3011_FORM_5_PERIODS, :P3011_SELECTOR);',
'         end if;',
'',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(422557531779952352)
,p_process_success_message=>'Successful Importation!'
,p_internal_uid=>201046583937273560
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(422590247133952481)
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
,p_process_when_button_id=>wwv_flow_imp.id(422557071248952351)
,p_process_success_message=>'Successful Importation!'
,p_internal_uid=>201046988313273561
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(422589386527952478)
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
,p_process_when_button_id=>wwv_flow_imp.id(422557531779952352)
,p_internal_uid=>201046127707273558
);
wwv_flow_imp.component_end;
end;
/
