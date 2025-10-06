prompt --application/pages/page_01465
begin
--   Manifest
--     PAGE: 01465
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
 p_id=>1465
,p_name=>'rptExcelposting'
,p_alias=>'RPTEXCELPOSTING'
,p_step_title=>'Excel Posting Uploads'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409693523249097464)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3934118474594679521)
,p_plug_name=>'Step 2. Process Loaded Excel Data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEEID ,',
'       EMPLOYEENAME ,',
'       DEPARTMENT,',
'       PAYROLL_ID ,',
'       lpad(PAYCODE,2,''0'') PAYCODE,',
'       (select legacyDESCRIPTION from pa_pcf_allow_mapping where legacycode =lpad(PAYCODE,2,''0'') and org_id=:App_org_id) Pay_desc,',
'       HOURS,',
'       DOLLARS,',
'       ID,',
'       INCOME_CODE,',
'       EMPENT_ID ,',
'       EMP_ID, emp_id Link_id,',
'       PAYROLL_END_DATE,',
'       PAYROLL_START_DATE,',
'       PROCESS_STATUS,',
'       ORG_ID,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       PAY_STATUS,',
'       ORGDTL_ID, pkg_global_fnts.fn_hourlyrate(emp_id, :P1465_END_DATE) hourly_rate, ORGDTL_ID ORGDTL_NUM',
'       ,Multiplier * pkg_global_fnts.fn_hourlyrate(emp_id, :P1465_END_DATE) IncomeCode_rate',
'  from PA_PCF_POSTING_LOAD',
' WHERE ORG_ID = :APP_ORG_ID',
'--  and orgdtl_id = case when to_number(:P1465_WORK_UNIT) is null then orgdtl_id else to_number(:P1465_WORK_UNIT) end',
' --and SHEET_NO =:P1465_SHEET_NO',
' and SHEET_NO  in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P1465_SHEET_NO,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
' AND ( PAYROLL_END_DATE = NVL(:P1465_END_DATE,PAYROLL_END_DATE) ',
'        AND PAYROLL_START_DATE = NVL(:P1465_START_DATE,PAYROLL_START_DATE ))',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1465_START_DATE,P1465_END_DATE,P1465_SHEET_NO,P1465_WORK_UNIT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Step 2. Process Loaded Excel Data'
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
 p_id=>wwv_flow_imp.id(3934118661435679521)
,p_name=>'rptgttposting'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>3745223393325054887
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898907738431762092)
,p_db_column_name=>'EMPLOYEENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Leg Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898908531974762092)
,p_db_column_name=>'HOURS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Leg Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898908881498762093)
,p_db_column_name=>'DOLLARS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Leg Dollars'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898909308057762093)
,p_db_column_name=>'ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898909701067762094)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898910096853762094)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Allowances'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632583213821532444)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898910525183762095)
,p_db_column_name=>'EMP_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898910942320762095)
,p_db_column_name=>'PAYROLL_END_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Payroll End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898911300153762096)
,p_db_column_name=>'PAYROLL_START_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Payroll Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898911747266762096)
,p_db_column_name=>'PROCESS_STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Process Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898912140184762097)
,p_db_column_name=>'ORG_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898912475496762097)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898912872059762098)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898913321323762098)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898913664642762099)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898906478665762090)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3622822575257550364)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898906902274762091)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Unit Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632491032568373420)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898907324402762091)
,p_db_column_name=>'EMPLOYEEID'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Employeeid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898914099073762099)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898914518113762100)
,p_db_column_name=>'INCOMECODE_RATE'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Incomecode Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898914929368762100)
,p_db_column_name=>'PAYCODE'
,p_display_order=>89
,p_column_identifier=>'Z'
,p_column_label=>'Leg Paycode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898915249973762101)
,p_db_column_name=>'LINK_ID'
,p_display_order=>99
,p_column_identifier=>'AA'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR:#LINK_ID#,1465'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898915679233762101)
,p_db_column_name=>'PAY_DESC'
,p_display_order=>109
,p_column_identifier=>'AB'
,p_column_label=>'Leg Pay Desc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898916487528762102)
,p_db_column_name=>'ORGDTL_NUM'
,p_display_order=>129
,p_column_identifier=>'AD'
,p_column_label=>'Orgdtl Num'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(885476839637330192)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>139
,p_column_identifier=>'AF'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(885476854102330193)
,p_db_column_name=>'PAYROLL_ID'
,p_display_order=>149
,p_column_identifier=>'AG'
,p_column_label=>'Payroll Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3934126581526682370)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1000038'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'LINK_ID:ORGDTL_ID:EMPLOYEENAME:DOLLARS:EMP_ID:INCOME_CODE:HOURS:HOURLY_RATE:INCOMECODE_RATE:PROCESS_STATUS:PAY_STATUS:ORGDTL_NUM'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'DOLLARS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3937545321996863536)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'UnMatched Employees'
,p_report_seq=>10
,p_report_alias=>'1000030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'LINK_ID:ORGDTL_ID:EMPLOYEENAME:EMP_ID:EMPENT_ID:HOURS:HOURLY_RATE:INCOMECODE_RATE:DOLLARS:INCOME_CODE:PAYROLL_END_DATE:PAYROLL_START_DATE:PROCESS_STATUS:PAY_STATUS:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTRY_DATE:ENTERED_BY'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'DOLLARS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(353830320394774542)
,p_report_id=>wwv_flow_imp.id(3937545321996863536)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'is null'
,p_condition_sql=>'"EMP_ID" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3937546467482872780)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'UnMatched allowances'
,p_report_seq=>10
,p_report_alias=>'1000018'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'LINK_ID:ORGDTL_ID:EMP_ID:EMPENT_ID:HOURS:HOURLY_RATE:INCOMECODE_RATE:DOLLARS:INCOME_CODE:PAYROLL_END_DATE:PAYROLL_START_DATE:PROCESS_STATUS:PAY_STATUS:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTRY_DATE:ENTERED_BY:PAYCODE'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'DOLLARS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(353831288657774535)
,p_report_id=>wwv_flow_imp.id(3937546467482872780)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMPENT_ID'
,p_operator=>'is null'
,p_condition_sql=>'"EMPENT_ID" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(353831685513774534)
,p_report_id=>wwv_flow_imp.id(3937546467482872780)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'is not null'
,p_condition_sql=>'"EMP_ID" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3975226198193496297)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Summary'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'1000042'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'LINK_ID:ORGDTL_ID:EMPLOYEENAME:DOLLARS:EMP_ID:PAY_DESC:HOURS:HOURLY_RATE:INCOMECODE_RATE:PROCESS_STATUS:PAY_STATUS::ORGDTL_NUM'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'DOLLARS'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(353832371992774529)
,p_report_id=>wwv_flow_imp.id(3975226198193496297)
,p_group_by_columns=>'PAY_DESC'
,p_function_01=>'SUM'
,p_function_column_01=>'DOLLARS'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3964934606476134591)
,p_plug_name=>'Note'
,p_parent_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_region_template_options=>'#DEFAULT#:t-Region--accent15:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Key requirements for processing are:</strong>',
'<ol>',
'<li>Correctly registered income code mapping</li>',
'<li>Correct employee number</li>',
'<li>Compatible earnings period meaning employee profile must match employment class, organisation, payment frequency and compute gross.</li>',
'<li>Start and End date must match earnings period date.</li>',
'<li>Excel spreadsheet must feature quantity(sometimes this means hours) and rate amount to support quantity * rate = amount paid </li>',
'</ol>',
'',
'<strong>Expected format of file:</strong>',
'<ol>',
'<li>Employeeid - Empty</li>',
'<li>EmployeeName - Required</li>',
'<li>Department - Empty</li>',
'<li>Payroll_ID - Required - (Employee Company Number)</li>',
'<li>Paycode - Required - (The code for the Income)</li>',
'<li>Hours - Required -  (The quantity of units of the Income)</li>',
'<li>Dollars - Required -  (The rate of units of the Income)</li>',
'<li>*NB either Pay_hours or Pay_dollars</li>',
'</ol>',
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3937568129780448870)
,p_plug_name=>'Records that Should be Investigated NOT Processed To Payroll'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with NOTIMP as (select A.emp_id, :P1465_EARNINGSPERIOD_ID Earnings_Period_Id, a.income_code_id ',
'                ,nvl(sum(hours),1) quantity, round(sum(dollars)/nvl(sum(hours),1) ,2)  rate, sum(dollars) amount_paid',
'                , :P1465_START_ERN v_period_start, :P1465_END_ERN v_period_end, ''TIME'' pay_option, ''system computed data send by departments loaded via excel.''  Remarks',
'                from pa_pcf_posting_load a join hr_rcm_employee j on j.id = a.emp_id',
'                join pa_pcf_earningperiod m on (j.compute_gross =m.compute_gross and j.payment_type = m.payment_type',
'                and j.employment_class_id = m.employment_class_id and j.org_id =m.org_id) ',
'                where a.payroll_start_date =  :P1465_START_DATE_1',
'                and a.payroll_end_date =:P1465_END_DATE_1',
'              --  and a.sheet_no= :P1465_SHEET_NO_1',
'                and a.sheet_no in (SELECT a_field',
'                                    FROM ',
'                                        xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                                        || REPLACE(:P1465_SHEET_NO_1,'':'',''</e><e>'')',
'                                        || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
'                                            )',
'                and m.id = :P1465_EARNINGSPERIOD_ID              ',
'                AND J.ORGDTL_ID = NVL(:P1465_WORK_UNIT, J.ORGDTL_ID)',
'                group by A.emp_id, A.income_code_id,M.ID',
'                )',
'select *',
'from NOTIMP',
'where not exists( select 1',
'                from pa_pcf_adhocpayment c',
'                where c.emp_id = NOTIMP.emp_id         ',
'                and c.adhoc_inc_code_id = NOTIMP.income_code_id                ',
'                and c.earnings_period_id = :P1465_EARNINGSPERIOD_ID',
'                and round(c.amount_paid) =  round(NOTIMP.amount_paid)              ',
'              )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1465_START_DATE_1,P1465_END_DATE_1,P1465_SHEET_NO_1,P1465_EARNINGSPERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Records that Should be Investigated NOT Processed To Payroll'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3937570013959448889)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632585704140532447)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958677615884462697)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958677700858462698)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958677791080462699)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958677907374462700)
,p_name=>'V_PERIOD_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_PERIOD_START'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'V Period Start'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958678004208462701)
,p_name=>'V_PERIOD_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_PERIOD_END'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'V Period End'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958678074972462702)
,p_name=>'PAY_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958678237113462703)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>58
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958678542935462706)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Earnings Period Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3958678584803462707)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632556208618481225)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3937568189154448871)
,p_internal_uid=>3748672921043824237
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3937804500878335598)
,p_interactive_grid_id=>wwv_flow_imp.id(3937568189154448871)
,p_static_id=>'389002'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3937804759136335598)
,p_report_id=>wwv_flow_imp.id(3937804500878335598)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3937814239252335636)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3937570013959448889)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>277
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963699745765591896)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3958677615884462697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963701144843591900)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3958677700858462698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963702539458591903)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3958677791080462699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963703921105591908)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3958677907374462700)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963705329304591912)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3958678004208462701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963706682948591916)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3958678074972462702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963708165034591920)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3958678237113462703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963742241358762839)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3958678542935462706)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3963743603087762842)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3958678584803462707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3898904779269762068)
,p_view_id=>wwv_flow_imp.id(3937804759136335598)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3958677791080462699)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3937571391854448903)
,p_plug_name=>'REGION_SEP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3938055539022656517)
,p_plug_name=>'Old Payroll to PeoplePay Mapping Codes'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'PA_PCF_ALLOW_MAPPING'
,p_query_where=>'org_id=:APP_ORG_SHR_DED'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Old Payroll to PeoplePay Mapping Codes'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3894592693604826867)
,p_name=>'LEGACYCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEGACYCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Excel Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3894592839941826868)
,p_name=>'LEGACYDESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEGACYDESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Excel Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3905740381488501854)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_ORG_SHR_DED'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3939886091611395469)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3939886176733395470)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3939886694688395475)
,p_name=>'INNOCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INNOCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'PeoplePay PayCode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>20
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select income_code A, income_code B',
'from pa_pcf_incomecode',
'where org_id=:APP_ORG_SHR_DED',
'and upper(description) = upper(:INNO_DESCRIPTION)'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'INNO_DESCRIPTION'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3939886804586395476)
,p_name=>'INNO_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INNO_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'PeoplePay Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>500
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description A, description B',
'from pa_pcf_incomecode',
'where org_id=:APP_ORG_SHR_DED',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3939886882531395477)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3939885975435395468)
,p_internal_uid=>3750990707324770834
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3939892175606401666)
,p_interactive_grid_id=>wwv_flow_imp.id(3939885975435395468)
,p_static_id=>'409879'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3939892455916401666)
,p_report_id=>wwv_flow_imp.id(3939892175606401666)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3899012058065783738)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3894592693604826867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3899012984829783742)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3894592839941826868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3915146346167686453)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3905740381488501854)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3939892875726401668)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3939886091611395469)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3939896843132401681)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3939886694688395475)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3939897715466401684)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3939886804586395476)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3939898586724401686)
,p_view_id=>wwv_flow_imp.id(3939892455916401666)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3939886882531395477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4331273033541696980)
,p_plug_name=>'Step 3 Import Department Data'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_ADHOCPAYMENT.ID as ID,',
'    PA_PCF_ADHOCPAYMENT.EMP_ID as EMP_ID,',
'    PA_PCF_ADHOCPAYMENT.EMPENT_ID as EMPENT_ID,',
'    PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    PA_PCF_ADHOCPAYMENT.QUANTITY as QUANTITY,',
'    PA_PCF_ADHOCPAYMENT.RATE as RATE,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID as AMOUNT_PAID,',
'    PA_PCF_ADHOCPAYMENT.START_PERIOD_PAID as START_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.END_PERIOD_PAID as END_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.PAY_STATUS as PAY_STATUS,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID_INC as AMOUNT_PAID_INC,',
'    PA_PCF_ADHOCPAYMENT.INCREASE_ID as INCREASE_ID,',
'    PA_PCF_ADHOCPAYMENT.BACKUP_EARN_PRD as BACKUP_EARN_PRD,',
'    PA_PCF_ADHOCPAYMENT.PAY_OPTION as PAY_OPTION,',
'    PA_PCF_ADHOCPAYMENT.IS_SUPPLEMENTAL as IS_SUPPLEMENTAL,',
'    PA_PCF_ADHOCPAYMENT.ENTERED_BY as ENTERED_BY,',
'    PA_PCF_ADHOCPAYMENT.ENTRY_DATE as ENTRY_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    PA_PCF_ADHOCPAYMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    BY_PASS_COMPUTATION, REMARKS, PA_PCF_ADHOCPAYMENT.EMPENT_ID ENT_LINK, PA_PCF_ADHOCPAYMENT.EMP_ID EMP_LINK',
'from PA_PCF_ADHOCPAYMENT PA_PCF_ADHOCPAYMENT join PA_PCF_EARNINGPERIOD V ON V.ID=PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID',
'where PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID= :P1465_EARNINGSPERIOD_PAY',
'and HR_IMPORT_DATA_CODE=''ATTENDANCE''',
'AND ORGDTL_ID =NVL(:P1465_WORK_UNIT, ORGDTL_ID)',
'--and adhoc_sheet_no =:P1465_SHEET_NO_3',
' and adhoc_sheet_no  in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P1465_SHEET_NO_3,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
'                        )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1465_EARNINGSPERIOD_PAY,P1465_SHEET_NO_3,P1465_WORK_UNIT'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4331273124733696980)
,p_name=>'Listing of Payroll entries'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>4142377856623072346
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898938257288762147)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898938742126762148)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898939098467762148)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Additional Income'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMPENT_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3344374607369715969)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898939530028762149)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898939891955762150)
,p_db_column_name=>'QUANTITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUANTITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898940274467762151)
,p_db_column_name=>'RATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898940664076762152)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898941068233762152)
,p_db_column_name=>'START_PERIOD_PAID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Start Period Paid'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_PERIOD_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898941484388762153)
,p_db_column_name=>'END_PERIOD_PAID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Period Paid'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_PERIOD_PAID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898941915243762154)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898942339667762155)
,p_db_column_name=>'AMOUNT_PAID_INC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Amount Paid Inc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_PAID_INC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898942652918762156)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCREASE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898943094947762156)
,p_db_column_name=>'BACKUP_EARN_PRD'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Backup Earn Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BACKUP_EARN_PRD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898943535794762157)
,p_db_column_name=>'PAY_OPTION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Pay Option'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_OPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898943851657762158)
,p_db_column_name=>'IS_SUPPLEMENTAL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Is Supplemental'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IS_SUPPLEMENTAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898944301550762158)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898944689281762159)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898945051138762159)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898945504015762160)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898945932259762161)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898937517065762146)
,p_db_column_name=>'BY_PASS_COMPUTATION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'By Pass'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BY_PASS_COMPUTATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898937938602762147)
,p_db_column_name=>'REMARKS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898936748828762145)
,p_db_column_name=>'ENT_LINK'
,p_display_order=>52
,p_column_identifier=>'Y'
,p_column_label=>'Entitlement'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID,P1285_RETURN_VALUE:#ENT_LINK#,1298'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1285',
'AND CAN_VIEW=''Y'''))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3898937096043762146)
,p_db_column_name=>'EMP_LINK'
,p_display_order=>62
,p_column_identifier=>'Z'
,p_column_label=>'Employee'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:#EMP_LINK#,1298'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1281',
'AND CAN_VIEW=''Y'''))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4331275334580697241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1000312'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID:EMP_ID:EMPENT_ID:QUANTITY:RATE:AMOUNT_PAID:START_PERIOD_PAID:END_PERIOD_PAID:PAY_STATUS:BY_PASS_COMPUTATION:REMARKS:ENT_LINK:EMP_LINK'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT_PAID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8978466120751415446)
,p_plug_name=>'Errors'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id  as ERROR_ID,',
'     ERROR_CODE as ORA_ERROR_CODE,',
'     ERROR_message as ORA_DESCRIPTION,',
'     ERROR_MESSAGE_DEV as APP_DESCRIPTION,',
'     CREATED_BY as CREATED_BY,',
'     CREATED_ON as CREATION_DATE,',
'     MODULE as MODULE_NAME,',
'    PROCEDURE_NAME,',
'    PACKAGE_NAME,',
'    EARNINGS_PERIOD_ID,',
'    ip_address, CLIENT_MACHINE,',
'    BACKTRACE',
' from ERROR_LOG ',
' where  org_id=:APP_ORG_ID',
' AND  upper(PACKAGE_NAME) LIKE ''%SP_POSTINGLOAD%''',
' and trunc(CREATED_on) =trunc(sysdate)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8978466412590415449)
,p_max_row_count=>'1000000'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD'
,p_internal_uid=>8789571144479790815
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731571853215482155)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ern Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731572283749482156)
,p_db_column_name=>'ERROR_ID'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Error Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731572613701482157)
,p_db_column_name=>'ORA_ERROR_CODE'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Ora Error Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731573065512482158)
,p_db_column_name=>'ORA_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Ora Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731573462180482158)
,p_db_column_name=>'APP_DESCRIPTION'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'App Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731573894098482158)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'Y'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731574200998482159)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>90
,p_column_identifier=>'Z'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731574672640482159)
,p_db_column_name=>'MODULE_NAME'
,p_display_order=>100
,p_column_identifier=>'AA'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731575051908482160)
,p_db_column_name=>'PROCEDURE_NAME'
,p_display_order=>110
,p_column_identifier=>'AB'
,p_column_label=>'Procedure Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731575401664482160)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>120
,p_column_identifier=>'AC'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731575812376482161)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>130
,p_column_identifier=>'AD'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731576202797482161)
,p_db_column_name=>'CLIENT_MACHINE'
,p_display_order=>140
,p_column_identifier=>'AE'
,p_column_label=>'Client Machine'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2731576636426482162)
,p_db_column_name=>'BACKTRACE'
,p_display_order=>150
,p_column_identifier=>'AF'
,p_column_label=>'Backtrace'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8980630941817146923)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16863430'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EARNINGS_PERIOD_ID:ERROR_ID:ORA_ERROR_CODE:ORA_DESCRIPTION:APP_DESCRIPTION:CREATED_BY:CREATION_DATE:MODULE_NAME:PROCEDURE_NAME:PACKAGE_NAME:IP_ADDRESS:CLIENT_MACHINE:BACKTRACE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353832854071774527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_button_name=>'PROCESS_LOADED_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--hoverIconSpin'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Step 2. Process Loaded Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-spinner'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353840385463774488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_button_name=>'RESET_PROCESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset Process'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353864596017774362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8978466120751415446)
,p_button_name=>'SEARCH_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353833232724774525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_button_name=>'DELETE_PAYROLL_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Purge Payroll Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353841576625774482)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_button_name=>'GENERATE_MISS_ENTITLEMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Missing Entitlement'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353865065831774361)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8978466120751415446)
,p_button_name=>'PURGE_LOGS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Logs'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353840771126774485)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_button_name=>'ADD_MISSING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Values'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353841168899774484)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_button_name=>'VIEW_PAYROLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:1298:P1298_EARNINGS_PERIOD_ID:&P1465_EARNINGSPERIOD_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353857191365774404)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_button_name=>'IMPORT_DEPARTMENT_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Step 3 Import Department Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353857632807774403)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_button_name=>'DELETE_DEPARTMENT_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Department Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pcf_adhocpayment',
'where earnings_period_id=:P1465_EARNINGSPERIOD_PAY',
'and hr_import_data_code=''ATTENDANCE''',
'AND pay_status=''N'''))
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353819899158774595)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(409693523249097464)
,p_button_name=>'UPLOAD_PAYROLL_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Step 1. Upload Payroll Data'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12445:&SESSION.::&DEBUG.:12445:P1461_PAYROLL_START_DATE,P1461_PAYROLL_END_DATE,P1461_SHEET_NO:&P1465_START_DATE.,&P1465_END_DATE.,&P1465_SHEET_NO.'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353820277658774593)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(409693523249097464)
,p_button_name=>'FIX_PAYROLL_EMP_NO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fix Paroll/Employee No'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-exchange'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353820678827774592)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(409693523249097464)
,p_button_name=>'FIX_PAYROLL_ALLOWANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fix Paroll/Allowance'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-arrows-h'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(353821149539774591)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(409693523249097464)
,p_button_name=>'UPLOAD_FILE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download Upload Template'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:window.open("#APP_IMAGES#image/allowance_upload.csv","myWindow");'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(353890040774774255)
,p_branch_name=>'OPEN_191'
,p_branch_action=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:191:P191_SHEET_NO,P191_START_DATE,P191_END_DATE:&P1465_SHEET_NO.,&P1465_START_DATE.,&P1465_END_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(353820678827774592)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(353890407835774253)
,p_branch_name=>'OPEN_189'
,p_branch_action=>'f?p=&APP_ID.:189:&SESSION.::&DEBUG.:189:P189_SHEET_NO,P189_START_DATE,P189_END_DATE:&P1465_SHEET_NO.,&P1465_START_DATE.,&P1465_END_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(353820277658774593)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(886400566472137719)
,p_name=>'P1465_WORK_UNIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3937571391854448903)
,p_prompt=>'Work Unit'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'ORGANISATION_STRUCTURE_WITHSEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description||',
'(select '' (Emp Cnt: ''||count(1)||'')'' from hr_rcm_employee x where x.orgdtl_id = m.id and (x.date_Separated is null or x.date_separated > current_date) ) A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id ',
'join hr_hcf_orgstructurehd oh on oh.id = m.org_structure_id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and pkg_global_fnts.fn_sharereforg(n.org_id) = :APP_ORG_SHR_DED',
'and exists(select 1',
'            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'            where  t.id = m.id',
'            and m.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, m.id, k.org_structure_id)       ',
'        ) ',
'and exists(select 1',
'           from hr_rcm_employee emp join pa_pcf_earningperiod earn on (emp.payment_type = earn.payment_type and emp.employment_class_id = earn.employment_class_id  and emp.org_id = earn.org_id  and emp.compute_gross = earn.compute_gross)',
'           where emp.orgdtl_id = m.id',
'           and earn.org_id= :APP_ORG_ID',
'           AND (date_separated is null or date_separated > trunc(current_date)-30)      ',
'        )        ',
'ORDER BY unit_name        '))
,p_lov_display_null=>'YES'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898961793072762028)
,p_name=>'P1465_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898962162414762030)
,p_name=>'P1465_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898962623629762030)
,p_name=>'P1465_SHEET_NO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3934118474594679521)
,p_prompt=>'Search Sheet No'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct sheet_no a, sheet_no b',
'from PA_PCF_POSTING_LOAD',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use multi select option for viewing only. Do not process multiple sheets.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898995785487762000)
,p_name=>'P1465_START_DATE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898996233956762000)
,p_name=>'P1465_END_DATE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898996582712762001)
,p_name=>'P1465_EARNINGSPERIOD_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_prompt=>'Earnings Period'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'and :P1465_END_DATE_1 between a.start_date and a.end_date',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_cascade_parent_items=>'P1465_END_DATE_1'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3898996986647762002)
,p_name=>'P1465_SHEET_NO_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3937568129780448870)
,p_prompt=>'Sheet No'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct sheet_no a, sheet_no b',
'from PA_PCF_POSTING_LOAD',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Use multi select option for viewing only. Do not process multiple sheets.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3899061643670761918)
,p_name=>'P1465_EARNINGSPERIOD_PAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EARNINGS_PERIOD_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)',
'  ||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>150
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3899062128933761919)
,p_name=>'P1465_SHEET_NO_3'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_prompt=>'Sheet No'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct sheet_no a, sheet_no b',
'from PA_PCF_POSTING_LOAD',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Use multi select option for viewing only. Do not process multiple sheets.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3899062937144761920)
,p_name=>'P1465_START_ERN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3899063384388761920)
,p_name=>'P1465_END_ERN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4331273033541696980)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353867927659774346)
,p_name=>'dy_process_pay_data'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353832854071774527)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353868435281774344)
,p_event_id=>wwv_flow_imp.id(353867927659774346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'pkg_generators.sp_postingLoad (:P1465_START_DATE, :P1465_END_DATE, :APP_ORG_ID, :P1465_SHEET_NO);',
'END;'))
,p_attribute_02=>'P1465_START_DATE,P1465_END_DATE,P1465_SHEET_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353868927180774342)
,p_event_id=>wwv_flow_imp.id(353867927659774346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3934118474594679521)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353869391643774340)
,p_event_id=>wwv_flow_imp.id(353867927659774346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Payroll Department Data Loaded, Verified and Processed'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353869774188774339)
,p_name=>'dy_refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_START_DATE'
,p_condition_element=>'P1465_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353870365304774336)
,p_event_id=>wwv_flow_imp.id(353869774188774339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3934118474594679521)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353870763471774335)
,p_name=>'dy_refresh1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_END_DATE'
,p_condition_element=>'P1465_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353871181139774333)
,p_event_id=>wwv_flow_imp.id(353870763471774335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3934118474594679521)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353871580685774332)
,p_name=>'delete_data'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353833232724774525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353872094163774329)
,p_event_id=>wwv_flow_imp.id(353871580685774332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'delete',
'from pa_pcf_adhocpayment a',
'where remarks like ''%departments loaded%''',
'and hr_import_data_code= ''ATTENDANCE''',
'AND pay_status=''N''',
'and end_period_paid =:P1465_END_DATE',
'and start_period_paid= :P1465_START_DATE',
'And Exists(Select 1 ',
'           from pa_pcf_posting_load b',
'           where a.emp_id = b.emp_id',
'           and process_status=''YES''',
'           and payroll_end_date =:P1465_END_DATE',
'           and PAYROLL_START_DATE= :P1465_START_DATE',
'           and SHEET_NO = :P1465_SHEET_NO',
'           );',
'',
'delete from PA_PCF_POSTING_LOAD',
'where org_id = :APP_ORG_ID',
'--AND  pay_status=''N''',
'and SHEET_NO = :P1465_SHEET_NO',
'AND PAYROLL_START_DATE  = :P1465_START_DATE',
'AND PAYROLL_END_DATE = :P1465_END_DATE;',
'',
'commit;',
'end;'))
,p_attribute_02=>'P1465_START_DATE,P1465_END_DATE,P1465_SHEET_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353872654179774327)
,p_event_id=>wwv_flow_imp.id(353871580685774332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3934118474594679521)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353873088324774325)
,p_event_id=>wwv_flow_imp.id(353871580685774332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Data successfully purged'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353873386668774324)
,p_name=>'reresh3'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_SHEET_NO'
,p_condition_element=>'P1465_SHEET_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353873880371774321)
,p_event_id=>wwv_flow_imp.id(353873386668774324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3934118474594679521)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353874268410774320)
,p_name=>'refresh1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_START_DATE_1'
,p_condition_element=>'P1465_END_DATE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353874784749774318)
,p_event_id=>wwv_flow_imp.id(353874268410774320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3937568129780448870)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353875194918774317)
,p_name=>'refresh2'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_END_DATE_1'
,p_condition_element=>'P1465_START_DATE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353875698909774315)
,p_event_id=>wwv_flow_imp.id(353875194918774317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3937568129780448870)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353876134594774314)
,p_name=>'refresh3'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_EARNINGSPERIOD_ID'
,p_condition_element=>'P1465_SHEET_NO_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353876660222774313)
,p_event_id=>wwv_flow_imp.id(353876134594774314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3937568129780448870)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353877041264774311)
,p_name=>'refresh4'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_SHEET_NO_1'
,p_condition_element=>'P1465_EARNINGSPERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353877480187774309)
,p_event_id=>wwv_flow_imp.id(353877041264774311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3937568129780448870)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353877928503774308)
,p_name=>'RESET_PROCESS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353840385463774488)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353878384320774306)
,p_event_id=>wwv_flow_imp.id(353877928503774308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'        update pa_pcf_posting_load',
'        set empent_id=null',
'            , income_code = null                   ',
'            , process_status= ''NO''',
'            , orgdtl_id = null',
'            , earnings_period_id = null                 ',
'        where exists (select 1',
'                    from hr_rcm_employee j join pa_pcf_earningperiod m on (j.compute_gross =m.compute_gross and j.payment_type = m.payment_type',
'                    and j.employment_class_id = m.employment_class_id and j.org_id =m.org_id)               ',
'                    where m.id = :P1465_EARNINGSPERIOD_ID   ',
'                    and j.id = pa_pcf_posting_load.emp_id',
'                    )',
'        and not exists( select 1',
'                        from pa_pcf_adhocpayment c',
'                        where c.emp_id = pa_pcf_posting_load.emp_id          ',
'                        and c.empent_id = pa_pcf_posting_load.empent_id                 ',
'                        and hr_import_data_code=''ATTENDANCE''                ',
'                        and c.earnings_period_id = :P1465_EARNINGSPERIOD_ID                 ',
'                    )              ',
'        and payroll_start_date = :P1465_START_DATE_1',
'        and payroll_end_date = :P1465_END_DATE_1',
'        and sheet_no= :P1465_SHEET_NO_1;',
'               ',
'commit;',
'',
'end;'))
,p_attribute_02=>'P1465_START_DATE_1,P1465_END_DATE_1,P1465_SHEET_NO_1,P1465_EARNINGSPERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353878882139774304)
,p_event_id=>wwv_flow_imp.id(353877928503774308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3937568129780448870)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353879325545774303)
,p_name=>'GEN_ENTITLE'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353841576625774482)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353879815927774301)
,p_event_id=>wwv_flow_imp.id(353879325545774303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    for I in (  select emp_id,  income_type, D.ID income_code_id, taxable, nis_deduction, 1 quick_entry',
'                from pa_pcf_posting_load a join hr_rcm_employee j on j.id = a.emp_id',
'                join pa_pcf_earningperiod m on (j.compute_gross =m.compute_gross and j.payment_type = m.payment_type',
'                and j.employment_class_id = m.employment_class_id and j.org_id =m.org_id) ',
'                join PA_PCF_ALLOW_MAPPING b on lpad(to_char(A.paycode),2,0) = b.LEGACYCODE',
'                join pa_pcf_incomecode d on d.id = b.innoid',
'                where a.payroll_start_date = :P1465_START_DATE_1',
'                and a.payroll_end_date = :P1465_END_DATE_1',
'                and a.sheet_no= :P1465_SHEET_NO_1',
'                and m.id = :P1465_EARNINGSPERIOD_ID',
'                and not exists( select 1',
'                                from hr_rcm_empentitle c',
'                                where c.emp_id = j.id             ',
'                                and c.income_code_id = d.id              ',
'                                ))loop',
'            begin',
'            ',
'              INSERT INTO hr_rcm_empentitle (emp_id,  income_type, income_code_id, taxable, nis_deduction, quick_entry, start_date, entitlement_currency)',
'              values (i.emp_id, i.income_type ,i.income_code_id, i.taxable, i.nis_deduction, 1, ''01-JAN-2021'', ''GYD'');',
'              ',
'            Exception',
'                When others then null;',
'            end;',
'            ',
'end loop;',
'    COMMIT;',
'end;',
''))
,p_attribute_02=>'P1465_START_DATE_1,P1465_END_DATE_1,P1465_SHEET_NO_1,P1465_EARNINGSPERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353880282754774299)
,p_event_id=>wwv_flow_imp.id(353879325545774303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Data generation of missing entitlement.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353880676418774298)
,p_name=>'refresh_stat1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_START_DATE_2'
,p_condition_element=>'P1465_SHEET_NO_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353881242319774296)
,p_event_id=>wwv_flow_imp.id(353880676418774298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353881632756774295)
,p_name=>'refresh_stat2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_END_DATE_2'
,p_condition_element=>'P1465_START_DATE_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353882163643774292)
,p_event_id=>wwv_flow_imp.id(353881632756774295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353882483901774291)
,p_name=>'refresh_stat3'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_SHEET_NO_2'
,p_condition_element=>'P1465_START_DATE_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353883016597774289)
,p_event_id=>wwv_flow_imp.id(353882483901774291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353883426067774288)
,p_name=>'refresh_adhoc'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_EARNINGSPERIOD_PAY,P1465_SHEET_NO_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353883907094774285)
,p_event_id=>wwv_flow_imp.id(353883426067774288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4331273033541696980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353884334303774283)
,p_name=>'refresh_sum'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_EARNINGSPERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353884773109774281)
,p_event_id=>wwv_flow_imp.id(353884334303774283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353885230428774279)
,p_name=>'import_Dept_Data'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353857191365774404)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353885683708774276)
,p_event_id=>wwv_flow_imp.id(353885230428774279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_compute_gross varchar2(20);',
'',
'begin',
'',
'    for source in (',
'                    select w.emp_id, max(empent_id) empent_id, :P1465_EARNINGSPERIOD_PAY Earnings_Period_Id, W.income_code_id ',
'                        ,nvl(sum(hours),1) quantity, case when sum(dollars) = 0 then 1 else sum(dollars) end / nvl(sum(case when hours = 0 then 1 else hours end),1) rate, sum(dollars) amount_paid',
'                        , :P1465_START_ERN v_period_start, :P1465_END_ERN v_period_end, ''TIME'' pay_option, ''system computed data send by departments loaded via excel.''  Remarks',
'                        From hr_rcm_employee j join pa_pcf_posting_load K on J.id=k.emp_id',
'                        join (SELECT * FROM pa_pcf_earningperiod WHERE ID = :P1465_EARNINGSPERIOD_PAY)  m on (j.compute_gross =m.compute_gross and j.payment_type = m.payment_type',
'                        and j.employment_class_id = m.employment_class_id and j.org_id =m.org_id) ',
'                        join hr_rcm_empentitle w on (w.id=k.empent_id and j.id = w.emp_id)',
'                        where payroll_end_date = :P1465_END_ERN',
'                        and payroll_start_date = :P1465_START_ERN',
'                        and UPPER(process_status)=''YES''',
'                        and k.pay_status =''N''',
'                        and m.id = :P1465_EARNINGSPERIOD_PAY',
'                        AND SHEET_NO = :P1465_SHEET_NO_3',
'                        and j.org_id = :APP_ORG_ID',
'                        and empent_id is not null',
'                        group by w.emp_id, W.income_code_id,M.ID',
'                    ) loop',
'',
'            begin  ',
'                    insert into pa_pcf_adhocpayment (adhoc_sheet_no, by_pass_computation, hr_import_data_code, emp_id, empent_id, earnings_period_id, quantity, rate, amount_paid, start_period_paid, end_period_paid, remarks, adhoc_inc_code_id)',
'                    values (:P1465_SHEET_NO_3, ''Y'', ''ATTENDANCE'', source.emp_id,  source.empent_id, source.earnings_period_id, source.quantity, source.rate,  source.amount_paid, source.v_period_start, source.v_period_end, source.Remarks,  source.Inco'
||'me_Code_id);',
'',
'            exception',
'                when dup_val_on_index then',
'                    update pa_pcf_adhocpayment',
'                    set   quantity    = source.quantity',
'                        , rate  = source.rate',
'                        , amount_paid = source.amount_paid',
'                    where earnings_period_id= source.earnings_period_id',
'                    and adhoc_Inc_Code_id = source.Income_Code_id',
'                    and  empent_id= source.empent_id;',
'            end;  ',
'',
'    end loop;',
'end;        '))
,p_attribute_02=>'P1465_EARNINGSPERIOD_PAY,P1465_START_ERN,P1465_END_ERN,P1465_SHEET_NO_3'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353886243224774273)
,p_event_id=>wwv_flow_imp.id(353885230428774279)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353886695241774270)
,p_event_id=>wwv_flow_imp.id(353885230428774279)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353887166620774269)
,p_name=>'delete_import'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(353857632807774403)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353887639448774266)
,p_event_id=>wwv_flow_imp.id(353887166620774269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete',
'    from pa_pcf_adhocpayment',
'    where earnings_period_id=:P1465_EARNINGSPERIOD_PAY',
'    and hr_import_data_code=''ATTENDANCE''',
'    and pay_status=''N'';',
'    commit;',
'end;'))
,p_attribute_02=>'P1465_EARNINGSPERIOD_PAY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353888163278774264)
,p_event_id=>wwv_flow_imp.id(353887166620774269)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353888579381774262)
,p_event_id=>wwv_flow_imp.id(353887166620774269)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(353889014430774260)
,p_name=>'SET_DATE'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1465_EARNINGSPERIOD_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(353889511145774258)
,p_event_id=>wwv_flow_imp.id(353889014430774260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1465_START_ERN,P1465_END_ERN'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select start_date, end_date ',
'from pa_pcf_earningperiod',
'where id = :P1465_EARNINGSPERIOD_PAY'))
,p_attribute_07=>'P1465_EARNINGSPERIOD_PAY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(353867164899774351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete_payroll_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'delete',
'from pa_pcf_adhocpayment a',
'where remarks like ''%departments loaded%''',
'and hr_import_data_code= ''ATTENDANCE''',
'AND pay_status=''N''',
'and end_period_paid =:P1465_END_DATE',
'and start_period_paid= :P1465_START_DATE',
'And Exists(Select 1 ',
'           from pa_pcf_posting_load b',
'           where a.emp_id = b.emp_id',
'           and process_status=''YES''',
'           and payroll_end_date =:P1465_END_DATE',
'           and PAYROLL_START_DATE= :P1465_START_DATE',
'           and SHEET_NO =:P1465_SHEET_NO',
'           );',
'',
'delete from PA_PCF_POSTING_LOAD',
'where org_id = :APP_ORG_ID',
'AND  pay_status=''N''',
'AND PAYROLL_START_DATE  = :P1465_START_DATE',
'AND PAYROLL_END_DATE = :P1465_END_DATE',
'and SHEET_NO =:P1465_SHEET_NO;',
'',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(353833232724774525)
,p_process_success_message=>'System succcessfully deleted the data.'
,p_internal_uid=>164971896789149717
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(353848838634774449)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3938055539022656517)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'GTT Old Payroll to PeoplePay Mapping Codes - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>164953570524149815
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(353867483250774349)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load_missing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   for source in (',
'                with NOTIMP as (select A.emp_id, :P1465_EARNINGSPERIOD_ID Earnings_Period_Id, a.income_code_id, max(a.empent_id) empent_id',
'                                ,nvl(sum(hours),1) quantity, round(sum(dollars)/nvl(sum(hours),1) ,2)  rate, sum(dollars) amount_paid',
'                                , :P1465_START_ERN v_period_start, :P1465_END_ERN v_period_end, ''TIME'' pay_option, ''system computed data send by departments loaded via excel.''  Remarks',
'                                from pa_pcf_posting_load a join hr_rcm_employee j on j.id = a.emp_id',
'                                join pa_pcf_earningperiod m on (j.compute_gross =m.compute_gross and j.payment_type = m.payment_type',
'                                and j.employment_class_id = m.employment_class_id and j.org_id =m.org_id) ',
'                                where a.payroll_start_date =  :P1465_START_DATE_1',
'                                and a.payroll_end_date = :P1465_END_DATE_1',
'                               -- and a.sheet_no= :P1465_SHEET_NO_1',
'                                and m.id = :P1465_EARNINGSPERIOD_ID                        ',
'                                group by A.emp_id, A.income_code_id, M.ID',
'                                )',
'                select emp_id,empent_id, Earnings_Period_Id, quantity, rate,amount_paid, v_period_start, v_period_end,income_code_id',
'                from NOTIMP',
'                where not exists( select 1',
'                                from pa_pcf_adhocpayment c',
'                                where c.emp_id = NOTIMP.emp_id         ',
'                                and c.adhoc_inc_code_id = NOTIMP.income_code_id                ',
'                                and c.earnings_period_id =  NOTIMP.Earnings_Period_Id ',
'                                and c.amount_paid = NOTIMP.amount_paid',
'                            )) loop',
'',
'        begin',
'    ',
'            insert into  pa_pcf_adhocpayment(adhoc_sheet_no, by_pass_computation, hr_import_data_code, emp_id, empent_id, earnings_period_id, quantity, rate, amount_paid, start_period_paid, end_period_paid, remarks, adhoc_inc_code_id)',
'            values (:P1465_SHEET_NO_1, ''Y'', ''ATTENDANCE'', source.emp_id, source.empent_id, source.Earnings_Period_Id, source.quantity, source.rate, source.amount_paid, source.v_period_start',
'                        , source.v_period_end,''system computed data send by departments loaded via excel.'', source.income_code_id);  ',
'',
'        exception',
'            when dup_val_on_index then',
'                update pa_pcf_adhocpayment',
'                set --  pa_pcf_adhocpayment.quantity = pa_pcf_adhocpayment.quantity + source.quantity',
'                   -- , pa_pcf_adhocpayment.amount_paid = pa_pcf_adhocpayment.amount_paid + source.amount_paid',
'                      pa_pcf_adhocpayment.quantity = source.quantity',
'                    , pa_pcf_adhocpayment.amount_paid =  source.amount_paid',
'                where emp_id = source.emp_id',
'                and Earnings_Period_Id = source.Earnings_Period_Id',
'                and adhoc_inc_code_id = source.income_code_id;',
'        end;',
'    end loop;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(353840771126774485)
,p_internal_uid=>164972215140149715
);
wwv_flow_imp.component_end;
end;
/
