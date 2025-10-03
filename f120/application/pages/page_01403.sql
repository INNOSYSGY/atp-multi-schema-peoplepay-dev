prompt --application/pages/page_01403
begin
--   Manifest
--     PAGE: 01403
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1403
,p_name=>'frmeNis'
,p_step_title=>'eNIB'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475513006659216016)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3389579459793111402)
,p_plug_name=>'eNIB/SS  Output'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO,REMMIT_YEAR,REMMIT_MONTH,FREQUENCY,SSN,SURNAME,FIRST_NAME,DATE_OF_PERIOD1,DATE_OF_PERIOD2,DATE_OF_PERIOD3,DATE_OF_PERIOD4,DATE_OF_PERIOD5,WAGES_PERIOD1,',
'    WAGES_PERIOD2,WAGES_PERIOD3,WAGES_PERIOD4,WAGES_PERIOD5, EMPLOYEE_CONT_AMOUNT,EMPLOYER_CONT_AMOUNT ,lbl_REG_NO,lbl_MONTH',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME',
'  union all',
'SELECT '''','''','''','''','''',''Total'','''','''','''','''','''','''',cast(sum(WAGES_PERIOD1_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD2_N) as varchar2(500)),cast(sum(WAGES_PERIOD3_N) as varchar2(500)),cast(sum(WAGES_PERIOD4_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD5_N) as varchar2(500)), cast(sum(EMPLOYEE_CONT_AMOUNT_N) as VARCHAR2(500)),cast(sum(EMPLOYER_CONT_AMOUNT_N) as VARCHAR2(500)) ,'''',''''',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1403_PERIOD_START,P1403_PERIOD_END,P1403_PAYMENT_FREQUENCY,P1403_EYEAR,P1403_MONTH'
,p_plug_display_condition_type=>'NEVER'
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
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3389579631703111404)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>144020565113568345
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389579729936111405)
,p_db_column_name=>'REGNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'1'
,p_column_type=>'STRING'
,p_static_id=>'REGNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389579813405111406)
,p_db_column_name=>'REMMIT_YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'2'
,p_column_type=>'STRING'
,p_static_id=>'REMMIT_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389579866895111407)
,p_db_column_name=>'REMMIT_MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'3'
,p_column_type=>'STRING'
,p_static_id=>'REMMIT_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389579970328111408)
,p_db_column_name=>'FREQUENCY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'4'
,p_column_type=>'STRING'
,p_static_id=>'FREQUENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3389580161048111409)
,p_db_column_name=>'SSN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'5'
,p_column_type=>'STRING'
,p_static_id=>'SSN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747083728594360)
,p_db_column_name=>'SURNAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'6'
,p_column_type=>'STRING'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747241827594361)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'7'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747346636594362)
,p_db_column_name=>'DATE_OF_PERIOD1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'8'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747443295594363)
,p_db_column_name=>'DATE_OF_PERIOD2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'9'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747501804594364)
,p_db_column_name=>'DATE_OF_PERIOD3'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'10'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747609619594365)
,p_db_column_name=>'DATE_OF_PERIOD4'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'11'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747731120594366)
,p_db_column_name=>'DATE_OF_PERIOD5'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'12'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747834481594367)
,p_db_column_name=>'WAGES_PERIOD1'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'13'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432747890664594368)
,p_db_column_name=>'WAGES_PERIOD2'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'14'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748061675594369)
,p_db_column_name=>'WAGES_PERIOD3'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'15'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748128626594370)
,p_db_column_name=>'WAGES_PERIOD4'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'16'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748212887594371)
,p_db_column_name=>'WAGES_PERIOD5'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'17'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748289805594372)
,p_db_column_name=>'EMPLOYEE_CONT_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'18'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748465654594373)
,p_db_column_name=>'EMPLOYER_CONT_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'19'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYER_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748556268594374)
,p_db_column_name=>'LBL_REG_NO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'20'
,p_column_type=>'STRING'
,p_static_id=>'LBL_REG_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432748659518594375)
,p_db_column_name=>'LBL_MONTH'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'21'
,p_column_type=>'STRING'
,p_static_id=>'LBL_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3432760407545599092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1872014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REGNO:REMMIT_YEAR:REMMIT_MONTH:FREQUENCY:SSN:SURNAME:FIRST_NAME:DATE_OF_PERIOD1:DATE_OF_PERIOD2:DATE_OF_PERIOD3:DATE_OF_PERIOD4:DATE_OF_PERIOD5:WAGES_PERIOD1:WAGES_PERIOD2:WAGES_PERIOD3:WAGES_PERIOD4:WAGES_PERIOD5:EMPLOYEE_CONT_AMOUNT:EMPLOYER_CONT_A'
||'MOUNT:LBL_REG_NO:LBL_MONTH'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3432771421108835172)
,p_plug_name=>'eNIB/SS  Output'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.* from (select REGNO,REMMIT_YEAR,REMMIT_MONTH,FREQUENCY,SSN,SURNAME,FIRST_NAME,DATE_OF_PERIOD1,DATE_OF_PERIOD2,DATE_OF_PERIOD3,DATE_OF_PERIOD4,DATE_OF_PERIOD5,WAGES_PERIOD1,',
'    WAGES_PERIOD2,WAGES_PERIOD3,WAGES_PERIOD4,WAGES_PERIOD5, EMPLOYEE_CONT_AMOUNT,EMPLOYER_CONT_AMOUNT ,lbl_REG_NO,lbl_MONTH, emp_id',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(''WEEKLY'')=''WEEKLY'' or  upper(''WEEKLY'')=''FORTNIGHTLY'' then ''W'' else ''M'' end',
'-- and trunc(a.Start_Date)=:P1403_PERIOD_START',
'-- and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= 34446',
'  union all',
'SELECT '''','''','''','''','''',''Total'','''','''','''','''','''','''',cast(sum(WAGES_PERIOD1_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD2_N) as varchar2(500)),cast(sum(WAGES_PERIOD3_N) as varchar2(500)),cast(sum(WAGES_PERIOD4_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD5_N) as varchar2(500)), cast(sum(EMPLOYEE_CONT_AMOUNT_N) as varchar2(500)),cast(sum(EMPLOYER_CONT_AMOUNT_N) as varchar2(500)) ,'''','''',',
'    emp_id',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(''WEEKLY'')=''WEEKLY'' or  upper(''WEEKLY'')=''FORTNIGHTLY'' then ''W'' else ''M'' end',
'-- and trunc(a.Start_Date)=:P1403_PERIOD_START',
'-- and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= 34446',
' --and a.regno is null',
' group by emp_id ) a',
' join (select ep.id earning_period_id, emp.id emp_id',
'        from pa_pcf_earningperiod ep',
'        join hr_rcm_employee emp on (ep.payment_type = emp.payment_type and ep.employment_class_id = emp.employment_class_id ',
'        and ep.compute_gross = emp.compute_gross and ep.org_id = emp.org_id)',
'        where ep.org_id = 34446',
'        ) b on b.emp_id = a.emp_id',
'where earning_period_id in (15371,15372,15373,15374,15375)',
'group by a.regno,a.remmit_year,a.remmit_month,a.frequency,a.ssn,a.surname,a.first_name,a.date_of_period1,a.date_of_period2,a.date_of_period3,a.date_of_period4,',
'    a.date_of_period5,a.wages_period1,a.wages_period2,a.wages_period3,a.wages_period4,a.wages_period5, a.employee_cont_amount,a.employer_cont_amount,a.lbl_reg_no,',
'    a.lbl_month, a.emp_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1403_PERIOD_START,P1403_PERIOD_END,P1403_PAYMENT_FREQUENCY,P1403_EYEAR,P1403_MONTH'
,p_plug_display_condition_type=>'NEVER'
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
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3432771594426835174)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_internal_uid=>187212527837292115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432771685839835175)
,p_db_column_name=>'REGNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'1'
,p_column_type=>'STRING'
,p_static_id=>'REGNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432771768248835176)
,p_db_column_name=>'REMMIT_YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'2'
,p_column_type=>'STRING'
,p_static_id=>'REMMIT_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432771906865835177)
,p_db_column_name=>'REMMIT_MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'3'
,p_column_type=>'STRING'
,p_static_id=>'REMMIT_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432771982734835178)
,p_db_column_name=>'FREQUENCY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'4'
,p_column_type=>'STRING'
,p_static_id=>'FREQUENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772156077835179)
,p_db_column_name=>'SSN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'5'
,p_column_type=>'STRING'
,p_static_id=>'SSN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772175365835180)
,p_db_column_name=>'SURNAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'6'
,p_column_type=>'STRING'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772303050835181)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'7'
,p_column_type=>'STRING'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772430259835182)
,p_db_column_name=>'DATE_OF_PERIOD1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'8'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772489217835183)
,p_db_column_name=>'DATE_OF_PERIOD2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'9'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772651464835184)
,p_db_column_name=>'DATE_OF_PERIOD3'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'10'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772765910835185)
,p_db_column_name=>'DATE_OF_PERIOD4'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'11'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772865594835186)
,p_db_column_name=>'DATE_OF_PERIOD5'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'12'
,p_column_type=>'STRING'
,p_static_id=>'DATE_OF_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772871187835187)
,p_db_column_name=>'WAGES_PERIOD1'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'13'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432772993099835188)
,p_db_column_name=>'WAGES_PERIOD2'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'14'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773098211835189)
,p_db_column_name=>'WAGES_PERIOD3'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'15'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773175220835190)
,p_db_column_name=>'WAGES_PERIOD4'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'16'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773353886835191)
,p_db_column_name=>'WAGES_PERIOD5'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'17'
,p_column_type=>'STRING'
,p_static_id=>'WAGES_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773423383835192)
,p_db_column_name=>'EMPLOYEE_CONT_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'18'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYEE_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773487698835193)
,p_db_column_name=>'EMPLOYER_CONT_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'19'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYER_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773595551835194)
,p_db_column_name=>'LBL_REG_NO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'20'
,p_column_type=>'STRING'
,p_static_id=>'LBL_REG_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773714536835195)
,p_db_column_name=>'LBL_MONTH'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'21'
,p_column_type=>'STRING'
,p_static_id=>'LBL_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3432773843105835196)
,p_db_column_name=>'EMP_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633881319561679109)
,p_plug_name=>'eNIB/SS  Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633894927763112625)
,p_plug_name=>'eNIB/SS  Output'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO,REMMIT_YEAR,REMMIT_MONTH,FREQUENCY,SSN,SURNAME,FIRST_NAME,DATE_OF_PERIOD1,DATE_OF_PERIOD2,DATE_OF_PERIOD3,DATE_OF_PERIOD4,DATE_OF_PERIOD5,WAGES_PERIOD1,',
'    WAGES_PERIOD2,WAGES_PERIOD3,WAGES_PERIOD4,WAGES_PERIOD5, EMPLOYEE_CONT_AMOUNT,EMPLOYER_CONT_AMOUNT ,lbl_REG_NO,lbl_MONTH',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME',
'  union all',
'SELECT '''','''','''','''','''',''Total'','''','''','''','''','''','''',cast(sum(WAGES_PERIOD1_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD2_N) as varchar2(500)),cast(sum(WAGES_PERIOD3_N) as varchar2(500)),cast(sum(WAGES_PERIOD4_N) as varchar2(500)),',
'    cast(sum(WAGES_PERIOD5_N) as varchar2(500)), cast(sum(EMPLOYEE_CONT_AMOUNT_N) as varchar2(500)),cast(sum(EMPLOYER_CONT_AMOUNT_N) as varchar2(500)) ,'''',''''',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1403_PERIOD_START,P1403_PERIOD_END,P1403_PAYMENT_FREQUENCY,P1403_EYEAR,P1403_MONTH'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_imp.id(3633895028279112625)
,p_name=>'eNIS Output'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>749816233233292397
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478094367570655409)
,p_db_column_name=>'REGNO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REGNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478094795184655411)
,p_db_column_name=>'REMMIT_YEAR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMMIT_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478095201632655412)
,p_db_column_name=>'REMMIT_MONTH'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'3'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMMIT_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478095577118655412)
,p_db_column_name=>'FREQUENCY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'4'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FREQUENCY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478096029076655412)
,p_db_column_name=>'SSN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'5'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SSN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478096350058655412)
,p_db_column_name=>'SURNAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'6'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478096750324655413)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'7'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478097211144655413)
,p_db_column_name=>'DATE_OF_PERIOD1'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'8'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478097565315655413)
,p_db_column_name=>'DATE_OF_PERIOD2'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'9'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478097959965655414)
,p_db_column_name=>'DATE_OF_PERIOD3'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'10'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478098413020655414)
,p_db_column_name=>'DATE_OF_PERIOD4'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'11'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478098827660655414)
,p_db_column_name=>'DATE_OF_PERIOD5'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'12'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478099215844655415)
,p_db_column_name=>'WAGES_PERIOD1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'13'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WAGES_PERIOD1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478099632895655415)
,p_db_column_name=>'WAGES_PERIOD2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'14'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WAGES_PERIOD2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478100013420655415)
,p_db_column_name=>'WAGES_PERIOD3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'15'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WAGES_PERIOD3'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478100378897655415)
,p_db_column_name=>'WAGES_PERIOD4'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'16'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WAGES_PERIOD4'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478100756298655416)
,p_db_column_name=>'WAGES_PERIOD5'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'17'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WAGES_PERIOD5'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478101239809655416)
,p_db_column_name=>'EMPLOYEE_CONT_AMOUNT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'18'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYEE_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478101550821655416)
,p_db_column_name=>'EMPLOYER_CONT_AMOUNT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'19'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYER_CONT_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478101982842655417)
,p_db_column_name=>'LBL_REG_NO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'20'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LBL_REG_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3478102441011655417)
,p_db_column_name=>'LBL_MONTH'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'21'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LBL_MONTH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3633896011272117308)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'919878'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'REGNO:REMMIT_YEAR:REMMIT_MONTH:FREQUENCY:SSN:SURNAME:FIRST_NAME:DATE_OF_PERIOD1:DATE_OF_PERIOD2:DATE_OF_PERIOD3:DATE_OF_PERIOD4:DATE_OF_PERIOD5:WAGES_PERIOD1:WAGES_PERIOD2:WAGES_PERIOD3:WAGES_PERIOD4:WAGES_PERIOD5:EMPLOYEE_CONT_AMOUNT:EMPLOYER_CONT_A'
||'MOUNT:LBL_REG_NO:LBL_MONTH'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3389579503317111403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3389579459793111402)
,p_button_name=>'CS6_FORM_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cs6 form'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_ORG_ID=1749'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3432771560773835173)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3432771421108835172)
,p_button_name=>'CS6_FORM_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cs6 form'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_ORG_ID=1749'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3478088915432655402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513006659216016)
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
 p_id=>wwv_flow_imp.id(3478089314621655403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513006659216016)
,p_button_name=>'EXECUTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3478089666589655403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513006659216016)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3478090101050655403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513006659216016)
,p_button_name=>'OUTPUT_TEXTFILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Output Textfile'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3478090467787655404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475513006659216016)
,p_button_name=>'NIS_INFO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'NIB/SS Info'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:var x=window.open(''https://www.nib-bahamas.com/home'',''_blank'');'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3478103212981655421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3633894927763112625)
,p_button_name=>'CS6_FORM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cs6 form'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':APP_ORG_ID=1749'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3585334160394360204)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3478105389465655424)
,p_branch_name=>'Go to Download NIB/SS TXT'
,p_branch_action=>'f?p=&APP_ID.:464:&SESSION.::&DEBUG.:464:P464_ID,P464_START_DATE,P464_END_DATE,P464_PARAMETERS:&P1403_COMPANY_NAME.,&P1403_PERIOD_START.,&P1403_PERIOD_END.,&P1403_PAYMENT_FREQUENCY.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3478090101050655403)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330666549752429555)
,p_name=>'P1403_W1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Month or Week 1 '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and a.org_id=:APP_ORG_ID  ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P1403_EYEAR',
'and extract(month from a.end_date) = TO_CHAR(TO_DATE(:P1403_MONTH, ''MON''), ''MM'')',
'ORDER BY a.org_id,  a.end_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1403_EYEAR, P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330666721112429556)
,p_name=>'P1403_W2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Week 2'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and a.org_id=:APP_ORG_ID  ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P1403_EYEAR',
'and extract(month from a.end_date) = TO_CHAR(TO_DATE(:P1403_MONTH, ''MON''), ''MM'')',
'AND a.id NOT IN (',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W1, '':''))  ',
'  )',
'',
'--and a.id in (14514,14515,14516,14517,14552,14572,14592,14699,14738,14800,14801,14836)',
'ORDER BY a.org_id,  a.end_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1403_EYEAR,P1403_W1,P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330666815864429557)
,p_name=>'P1403_W3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Week 3'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and a.org_id=:APP_ORG_ID  ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P1403_EYEAR',
'and extract(month from a.end_date) = TO_CHAR(TO_DATE(:P1403_MONTH, ''MON''), ''MM'')',
'AND a.id NOT IN (',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W1, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W2, '':''))  ',
'  )',
'ORDER BY a.org_id,  a.end_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1403_EYEAR, P1403_W1, P1403_W2,P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330666851017429558)
,p_name=>'P1403_W4'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Week 4'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and a.org_id=:APP_ORG_ID  ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P1403_EYEAR',
'and extract(month from a.end_date) = TO_CHAR(TO_DATE(:P1403_MONTH, ''MON''), ''MM'')',
'AND a.id NOT IN (',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W1, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W2, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W3, '':''))',
'  )',
'ORDER BY a.org_id,  a.end_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1403_EYEAR, P1403_W1, P1403_W2, P1403_W3,P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330667008934429559)
,p_name=>'P1403_W5'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Week 5'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'')||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id=a.org_id',
'join HR_HCF_COMPANYYEAR y on y.id=a.COMPANY_YEAR_ID',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and a.org_id=:APP_ORG_ID  ',
'and a.pay_status=''Y''',
'and extract(year from a.end_date) = :P1403_EYEAR',
'and extract(month from a.end_date) = TO_CHAR(TO_DATE(:P1403_MONTH, ''MON''), ''MM'')',
'AND a.id NOT IN (',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W1, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W2, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W3, '':''))',
'  UNION',
'  SELECT TO_NUMBER(COLUMN_VALUE) AS id',
'  FROM TABLE(APEX_STRING.SPLIT(:P1403_W4, '':''))  ',
'  )',
'ORDER BY a.org_id,  a.end_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1403_EYEAR, P1403_W1, P1403_W2, P1403_W3, P1403_W4,P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REGNO',
'   FROM pa_pmg_NisExport a ',
'   --join pa_pcf_EarningPeriod b on a.Earnings_period_id=b.id',
'  where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P1403_PERIOD_START',
' and trunc(a.End_Date) =:P1403_PERIOD_END',
' and a.org_id= :P1403_COMPANY_NAME'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478090907823655404)
,p_name=>'P1403_RETURN_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478091280955655404)
,p_name=>'P1403_COMPANY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478091688130655404)
,p_name=>'P1403_PAYMENT_FREQUENCY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(payment_type) a, payment_type b',
'from hr_rcm_employee',
'where org_id=:P1403_COMPANY_NAME    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P1403_COMPANY_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478092071126655405)
,p_name=>'P1403_EYEAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct extract(year from start_date) a,  extract(year from start_date) b',
'from pa_pcf_earningperiod',
'where PAYMENT_TYPE=:P1403_PAYMENT_FREQUENCY',
'and org_id=:P1403_COMPANY_NAME',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P1403_COMPANY_NAME,P1403_PAYMENT_FREQUENCY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478092506162655405)
,p_name=>'P1403_MONTH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a,b from',
'(select distinct  to_char(start_date,''MONTH'') a,  to_char(start_date,''MON'') b, start_date',
'from pa_pcf_earningperiod',
'where org_id=:P1403_COMPANY_NAME',
'and payment_type=:P1403_PAYMENT_FREQUENCY',
'and extract(year from start_date)=:P1403_EYEAR',
'order by start_date asc)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P1403_EYEAR'
,p_ajax_items_to_submit=>'P1403_MONTH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478092895555655405)
,p_name=>'P1403_PERIOD_START'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_use_cache_before_default=>'NO'
,p_source=>'select case when ((:P1403_EYEAR is not null) and (:P1403_MONTH is not null)) then to_char(trunc(to_date(''01-''||:P1403_MONTH||''-''||:P1403_EYEAR),''month'')) else '''' end a from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478093272912655405)
,p_name=>'P1403_PERIOD_END'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_use_cache_before_default=>'NO'
,p_source=>'select case when ((:P1403_EYEAR is not null) and (:P1403_MONTH is not null)) then to_char(last_day(to_date(''01-''||:P1403_MONTH||''-''||:P1403_EYEAR))) else '''' end a from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3478093741380655406)
,p_name=>'P1403_PAYROLL_OPTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3633881319561679109)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3478104400054655422)
,p_name=>'CS6 Form'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3478103212981655421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3478104871818655423)
,p_event_id=>wwv_flow_imp.id(3478104400054655422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:EMP_NO=&1403_EMP_ID.,PeoplePay/01_HR/Standard_Letters/NIS_CS6_rev2015'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330666359813429553)
,p_name=>'Clear'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1403_MONTH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330666465305429554)
,p_event_id=>wwv_flow_imp.id(330666359813429553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Clear'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1403_W1,P1403_W2,P1403_W3,P1403_W4,P1403_W5'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3478103590805655422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Execute_enis'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  PKG_GLOBAL_FNTS.POPENIS(0, '''',:P1403_W1 ,:P1403_W2 ,:P1403_W3,:P1403_W4,:P1403_W5, :P1403_EYEAR, :P1403_MONTH);     ',
'',
'  PKG_GENERATORS.sp_ElectricNIS_W ( :P1403_PERIOD_START,',
'                                  :P1403_PERIOD_END,',
'                                  :P1403_PAYMENT_FREQUENCY,',
'                                  :P1403_COMPANY_NAME ) ;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3478089314621655403)
,p_process_success_message=>'Successful execution of eNIS.'
,p_internal_uid=>3056311597607658848
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3478104046208655422)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purge_eNIS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  PKG_GENERATORS.sp_purgeNISTransfer (  :P1403_PERIOD_START,',
'                                        :P1403_PERIOD_END,',
'                                        :P1403_PAYMENT_FREQUENCY,',
'                                        :P1403_COMPANY_NAME); ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3478089666589655403)
,p_process_success_message=>'Successful purge of eNIS.'
,p_internal_uid=>3056312053010658848
);
wwv_flow_imp.component_end;
end;
/
