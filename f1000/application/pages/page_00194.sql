prompt --application/pages/page_00194
begin
--   Manifest
--     PAGE: 00194
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
 p_id=>194
,p_name=>'rptEndOfYearReports'
,p_alias=>'RPTENDOFYEARREPORTS'
,p_step_title=>'End Of Year Reports'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806580230187387816)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759240822996802690)
,p_plug_name=>'List of employees for Annual Medical Examination'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--List of employees for Annual Medical Examination ',
'select e.employment_class, i.surname||nvl('', ''||i.first_name,'''')||nvl('' ''||i.middle_name,'''') Name, ',
'    p.position_name, od.unit_name as department,upper(j.job_classification) job_class,',
'    get_lookup_valuedesc(e.employment_type_id,''TBLEMPLOYMENTTYPE'') EMPLOYMENT_TYPE, ',
'    i.dob, pkg_global_fnts.fn_calcage(i.dob, current_date) Age,  i.sex_code',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'join hr_hcf_position p on p.id = e.position_id',
'join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'join hr_hcf_job j on j.id = p.job_id',
'where (e.date_separated is null or e.date_separated > current_date)',
'and i.verified_by is not null',
'and (upper(e.employment_class) not in (''PENSIONERS'',''HRMIS CONSULTANTS''))',
'and ',
'(',
' (e.employment_type_id = ''2'') and (upper(j.job_classification) = ''TECHNICAL'' and pkg_global_fnts.fn_calcage(i.dob, ''01-JAN-2021'') >= 25)',
' OR',
' (e.employment_type_id = ''2'') and (pkg_global_fnts.fn_calcage(i.dob, ''01-JAN-2021'') >= 50)',
' OR',
' (upper(e.employment_class) in (''SENIOR MANAGEMENT'',''EXECUTIVE RATED''))',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List of employees for Annual Medical Examination'
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
 p_id=>wwv_flow_imp.id(3759240744378802690)
,p_name=>'rptEndOfYearReports'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>34074177379819143
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759240366430802684)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759239954539802683)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759239551833802682)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759239212474802682)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759238734731802682)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759237978780802681)
,p_db_column_name=>'DOB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759237596695802681)
,p_db_column_name=>'AGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759237162717802681)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758532332639731528)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3759229042873738538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340859'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYMENT_CLASS:NAME:POSITION_NAME:DEPARTMENT:JOB_CLASS:DOB:AGE:SEX_CODE:EMPLOYMENT_TYPE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759241415915802705)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759567011890978986)
,p_plug_name=>'End of Year Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759568169904978998)
,p_plug_name=>'Services Award'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  e.employment_class, i.surname||nvl('', ''||i.first_name,'''')||nvl('' ''||i.middle_name,'''') Name, ',
'        E.date_employed,pkg_global_fnts.fn_calcage(e.date_employed, ''01-jan-2021'') years_of_service, ',
'        p.position_name, od.unit_name as department,',
'        upper(j.job_classification) job_class, ',
'        i.dob, pkg_global_fnts.fn_calcage(i.dob, current_date) Age, i.sex_code',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'join hr_hcf_position p on p.id = e.position_id',
'join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'join hr_hcf_job j on j.id = p.job_id',
'where (e.date_separated is null or e.date_separated > current_date)',
'and i.verified_by is not null',
'and (upper(e.employment_class) not in (''PENSIONERS'',''HRMIS CONSULTANTS''))',
'and (e.employment_type_id = 2)',
'and pkg_global_fnts.fn_calcage(e.date_employed, ''01-jan-2021'') = 25'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Services Award'
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
 p_id=>wwv_flow_imp.id(3759568115044978997)
,p_max_row_count=>'1000000'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>33746806713642836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567955770978996)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567842452978995)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567805329978994)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567660339978993)
,p_db_column_name=>'YEARS_OF_SERVICE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Years Of Service'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567537015978992)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567495879978991)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567373673978990)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567271393978989)
,p_db_column_name=>'DOB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567163583978988)
,p_db_column_name=>'AGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759567044360978987)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3759187762336435226)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'341272'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYMENT_CLASS:NAME:DATE_EMPLOYED:YEARS_OF_SERVICE:POSITION_NAME:DEPARTMENT:JOB_CLASS:DOB:AGE:SEX_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759569464691979011)
,p_plug_name=>'List of Employees Who Will Retire Within Any The Four (4) Years Period'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.sex_code,e.employment_class, i.surname||nvl('', ''||i.first_name,'''')||nvl('' ''||i.middle_name,'''') Name, E.date_employed,',
'    p.position_name, od.unit_name as department,upper(j.job_classification) job_class,',
'    get_lookup_valuedesc(e.employment_type_id,''TBLEMPLOYMENTTYPE'') employment_type, ',
'    i.dob, pkg_global_fnts.fn_calcage(i.dob, current_date) Age,',
'    add_months(i.dob,',
'                12*(case when i.sex_code = ''M'' and upper(e.employment_class) in (''JUNIOR MANAGEMENT'',''SENIOR MANAGEMENT'') then 65',
'                      when i.sex_code = ''F'' and upper(e.employment_class) in (''JUNIOR MANAGEMENT'',''SENIOR MANAGEMENT'') then 60',
'                      when upper(e.employment_class) in (''JUNIOR STAFF'',''SENIOR STAFF'') then 60',
'                 end) ',
'              ) Retirement_Age',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'join hr_hcf_position p on p.id = e.position_id',
'join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'join hr_hcf_job j on j.id = p.job_id',
'where (e.date_separated is null or e.date_separated > current_date)',
'and i.verified_by is not null',
'and e.employment_type_id = ''2''',
'and ',
'(   ',
'    (',
'        i.sex_code = ''M''',
'        and upper(e.employment_class) in (''JUNIOR MANAGEMENT'',''SENIOR MANAGEMENT'')',
'        and pkg_global_fnts.fn_calcage(i.dob, ''01-JAN-2021'') between 62 and 65',
'    )',
'    OR',
'    (',
'        i.sex_code = ''F''',
'        and upper(e.employment_class) in (''JUNIOR MANAGEMENT'',''SENIOR MANAGEMENT'')',
'        and pkg_global_fnts.fn_calcage(i.dob, ''01-JAN-2021'') between 57 and 60',
'    )',
'    OR',
'    (',
'        upper(e.employment_class) in (''JUNIOR STAFF'',''SENIOR STAFF'')',
'        and pkg_global_fnts.fn_calcage(i.dob, ''01-JAN-2021'') between 57 and 60',
'    )',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List of Employees Who Will Retire Within Any The Four (4) Years Period'
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
 p_id=>wwv_flow_imp.id(3759569374171979010)
,p_max_row_count=>'1000000'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>33745547586642823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569244010979009)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569200507979008)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569083424979007)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568961066979006)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568860664979005)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568771783979004)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568692822979003)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568544483979002)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568497749979001)
,p_db_column_name=>'DOB'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568366753979000)
,p_db_column_name=>'AGE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759568304243978999)
,p_db_column_name=>'RETIREMENT_AGE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Retirement Age'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3759188327382435321)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'341266'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEX_CODE:EMPLOYMENT_CLASS:NAME:DATE_EMPLOYED:POSITION_NAME:DEPARTMENT:JOB_CLASS:EMPLOYMENT_TYPE:DOB:AGE:RETIREMENT_AGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3759570663812979023)
,p_plug_name=>'List of All Permanent Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.employment_class, i.surname||nvl('', ''||i.first_name,'''')||nvl('' ''||i.middle_name,'''') Name,   E.date_employed,',
'    p.position_name, od.unit_name as department,upper(j.job_classification) job_class,',
'    get_lookup_valuedesc(e.employment_type_id,''TBLEMPLOYMENTTYPE'') EMPLOYMENT_TYPE, ',
'    i.dob, pkg_global_fnts.fn_calcage(i.dob, current_date) Age,  i.sex_code',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'join hr_hcf_position p on p.id = e.position_id',
'join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'join hr_hcf_job j on j.id = p.job_id',
'where (e.date_separated is null or e.date_separated > current_date)',
'and i.verified_by is not null',
'and (upper(e.employment_class) not in (''PENSIONERS'',''HRMIS CONSULTANTS''))',
'and ',
'(',
' (e.employment_type_id = ''2'')',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List of All Permanent Employees'
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
 p_id=>wwv_flow_imp.id(3759570593510979022)
,p_max_row_count=>'1000000'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>33744328247642811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759570438410979021)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759570407350979020)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759570291815979019)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759570217090979018)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759570031441979017)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569973201979016)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569725173979014)
,p_db_column_name=>'DOB'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569656761979013)
,p_db_column_name=>'AGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3759569547218979012)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3758532246762731527)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3759188944578435416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'341260'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYMENT_CLASS:NAME:DATE_EMPLOYED:POSITION_NAME:DEPARTMENT:JOB_CLASS:DOB:AGE:SEX_CODE:EMPLOYMENT_TYPE'
);
wwv_flow_imp.component_end;
end;
/
