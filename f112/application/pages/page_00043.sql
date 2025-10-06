prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'rptBudget'
,p_step_title=>'Listing of Budget Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3322201540441132494)
,p_plug_name=>'Listing of Budget based on most recent records'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    payslip_no,',
'    org_id,',
'    emp_id,',
'    employee_name,',
'    position_name,',
'    work_location,',
'    address, ',
'    orgdtl_id,',
'    department_name,',
'    surname,',
'    first_name,',
'    salary,',
'    annual_salary,',
'    nis_employer,',
'    annual_nis_employer,',
'    overtime,',
'    annual_overtime,     ',
'    leavepass,',
'    gratuity, ',
'    organisation_name',
'from',
'    vw_budget',
'where org_id=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3322201462088132494)
,p_name=>'rptBudget'
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>24629844717172206
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322201025286132477)
,p_db_column_name=>'PAYSLIP_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Payslip No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322200617754132469)
,p_db_column_name=>'ORG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322200240825132469)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322199823159132468)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322199495173132468)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322199011163132468)
,p_db_column_name=>'WORK_LOCATION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Work Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322198623635132466)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322198293955132466)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322197891458132465)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322197503083132465)
,p_db_column_name=>'SURNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322197067169132465)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322196691686132465)
,p_db_column_name=>'SALARY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322196228070132465)
,p_db_column_name=>'ANNUAL_SALARY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Annual Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322195821101132465)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'NIB/SS Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322195419467132465)
,p_db_column_name=>'ANNUAL_NIS_EMPLOYER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Annual NIB/SS Employer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322195052127132464)
,p_db_column_name=>'OVERTIME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Overtime'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322194690319132464)
,p_db_column_name=>'ANNUAL_OVERTIME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Annual Overtime'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322194209136132464)
,p_db_column_name=>'LEAVEPASS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Leavepass'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322193822866132464)
,p_db_column_name=>'GRATUITY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Gratuity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3322193492606132464)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3322192375733126140)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'246390'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1
,p_report_columns=>'EMPLOYEE_NAME:POSITION_NAME:WORK_LOCATION:DEPARTMENT_NAME:SALARY:ANNUAL_SALARY:NIS_EMPLOYER:ANNUAL_NIS_EMPLOYER:OVERTIME:ANNUAL_OVERTIME:LEAVEPASS:GRATUITY:'
,p_break_on=>'DEPARTMENT_NAME:0:0:0:0:0'
,p_break_enabled_on=>'DEPARTMENT_NAME:0:0:0:0:0'
);
wwv_flow_imp.component_end;
end;
/
