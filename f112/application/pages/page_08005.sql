prompt --application/pages/page_08005
begin
--   Manifest
--     PAGE: 08005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>8005
,p_name=>'rptPensionDeduction'
,p_step_title=>'Listing of Pension Deductions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3318166381754182594)
,p_plug_name=>'Employees Pension Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'a.EMP_COMPANY_NO_HIST "Empl. No.",',
'a. DEPARTMENT_NAME_HIST "DEPT",',
'a.first_name_hist||'' ''||a.surname_hist "Employee Name", ',
'(select c.AMOUNT_DEDUCTED from PA_PMG_PAYROLLDEDUCTION c where c.PAY_SLIPNO=a.id and  c.EXPENSE_CODE=''PENSION'' and c.DEDUCTION_TYPE=''EMPLOYEE'') "Pension Employee",',
'(select c.AMOUNT_DEDUCTED from PA_PMG_PAYROLLDEDUCTION c where c.PAY_SLIPNO=a.id and  c.EXPENSE_CODE=''PENSION'' and c.DEDUCTION_TYPE=''EMPLOYER'') "Pension Employer",',
'(select c.AMOUNT_DEDUCTED from PA_PMG_PAYROLLDEDUCTION c where c.PAY_SLIPNO=a.id and  c.EXPENSE_CODE=''PENSION'' and c.DEDUCTION_TYPE=''EMPLOYEE'') +',
'(select c.AMOUNT_DEDUCTED from PA_PMG_PAYROLLDEDUCTION c where c.PAY_SLIPNO=a.id and  c.EXPENSE_CODE=''PENSION'' and c.DEDUCTION_TYPE=''EMPLOYER'') "Total Pension"',
'from PA_PMG_PAYROLLDTL a  ',
'join PA_PMG_PAYROLLDEDUCTION b on b.PAY_SLIPNO=a.id',
'--where EMPLOYMENT_CLASS_HIST=:P8005_EMPL_CLASS',
'--and PERIOD_START=to_date(:P8005_PERIOD, ''DD/MM/YY'')',
'where a.EARNINGS_PERIOD_ID=DECODE(:P8005_PERIODS_NEW,''1'',EARNINGS_PERIOD_ID,:P8005_PERIODS_NEW)',
'and b.EXPENSE_CODE=''PENSION''',
'and a.org_id=17832'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8005_PERIODS_NEW'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3318166530555182594)
,p_name=>'rptPensionDeduction'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_owner=>'AHERRERA'
,p_internal_uid=>14330365745941869
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318167681131182596)
,p_db_column_name=>'DEPT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dept'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318168138307182596)
,p_db_column_name=>'Employee Name'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318168554833182597)
,p_db_column_name=>'Pension Employee'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pension Employee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318168925429182597)
,p_db_column_name=>'Pension Employer'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pension Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318169359494182597)
,p_db_column_name=>'Total Pension'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Pension'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318174951926219827)
,p_db_column_name=>'Empl. No.'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Empl. No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3318169910663184086)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'143338'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:DEPT:Employee Name:Pension Employee:Pension Employer:Total Pension:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3318216955554480564)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3317671024025640774)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3318216955554480564)
,p_button_name=>'MREPORT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Mreport'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript: window.open(''http://apps4.innosysgy.com:8082/jasperserver/rest_v2/reports/reports/TEST/NIS.html?P_org_id=''+document.getElementById(''P8005_ORG_ID'').value+''&P_earning_period_id=12042'',''popUpWindow'',''height=300,width=900,left=50,top=50,type=''application/pdf'',resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes, '')'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318179041272219868)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3318216955554480564)
,p_button_name=>'Report'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Report'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript: window.open(''http://apps4.innosysgy.com:8082/jasperserver/flow.html?_flowId=viewReportFlow&_flowId=viewReportFlow&ParentFolderUri=%2Freports%2FTEST&decorate=no&reportUnit=%2Freports%2FTEST%2Fpayslip1&standAlone=true&P_ORG_ID=17832&EARNINGS_PERIOD_ID=12042&j_username=jasperadmin&j_password=Inno$y$jasperadmin&output=xls'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'')'
,p_icon_css_classes=>'fa-print'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3317881160851738474)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3318216955554480564)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318176958877219847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3318216955554480564)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318179162014219869)
,p_name=>'P8005_ORG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3318216955554480564)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318431067538250606)
,p_name=>'P8005_PERIODS_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3318166381754182594)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a, b',
'from (',
'        SELECT earn_description  A',
'        ,  id b, Earn_year, earn_month',
'        FROM vw_earnall A  ',
'        Where Exists (Select 1',
'                      from PA_PMG_PAYROLLDTL B',
'                      where a.id=B.EARNINGS_PERIOD_ID)',
'        And Org_Id=:P1355_Organisation',
'        )',
'order by Earn_year desc, earn_month desc, b desc',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P1355_ORGANISATION'
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
wwv_flow_imp.component_end;
end;
/
