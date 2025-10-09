prompt --application/pages/page_12822
begin
--   Manifest
--     PAGE: 12822
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
 p_id=>12822
,p_name=>'rptgetapidata'
,p_alias=>'RPTGETAPIDATA1'
,p_step_title=>'GetApiData'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825296363170004470)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670040951211453401)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2586423416399498757)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(678562398498576972)
,p_plug_name=>'<strong>QUICKBASE</strong> Timeclock Work Activity Data'
,p_parent_plug_id=>wwv_flow_imp.id(2586423416399498757)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       apis.WORK_DATE,',
'       apis.TASK_CODE,',
'       apis.CODE_DESC,',
'       apis.PROJECT_NAME,',
'       apis.EMP_ID,',
'       apis.EMPNO,',
'       apis.EMP_COMPANY_NO,',
'       apis.RECORD_ID,',
'       apis.FULL_NAME,',
'       apis.TIMESHEET_ID,',
'       apis.ORG_ID,',
'       apis.HOURS_WORKED,',
'       apis.CREATED,',
'       apis.CREATED_BY,',
'       apis.UPDATED,',
'       apis.UPDATED_BY,',
'       apis.PROJECT_ACCOUNT_CODE',
'  from HR_ATT_WORK_ACTIVITY_STAGE apis',
'join hr_rcm_employee emp on trim(apis.empno) = trim( leading ''0'' from emp.emp_company_no)',
'where emp.org_id  = :APP_ORG_ID',
'and ( emp.id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P12822_EMPLOYEE,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
') or emp.id  = (case when :P12822_EMPLOYEE is null then  emp.id end))',
'and to_date(work_date) between :P12822_START_DATE and :P12822_END_DATE',
'and (emp.date_separated is null or emp.date_separated >= current_date)',
'and emp.orgdtl_id = nvl(:P12822_DEPARTMENT,emp.orgdtl_id)',
'and apis.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emp.orgdtl_id',
'          and emp.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emp.orgdtl_id, w.org_structure_id)         ',
'          ) ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12822_START_DATE,P12822_END_DATE,P12822_EMPLOYEE,P12822_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<strong>QUICKBASE</strong> Timeclock Work Activity Data'
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
 p_id=>wwv_flow_imp.id(678562455883576973)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>35367906103968705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678562643499576974)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678562706453576975)
,p_db_column_name=>'EMPNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empno'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678562809884576976)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988535409144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563202812576980)
,p_db_column_name=>'ORG_ID'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563581281576984)
,p_db_column_name=>'TASK_CODE'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Task Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563680146576985)
,p_db_column_name=>'CODE_DESC'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Code Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563804943576986)
,p_db_column_name=>'PROJECT_NAME'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Project Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563899531576987)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678563954236576988)
,p_db_column_name=>'RECORD_ID'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'Record Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564068761576989)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564207593576990)
,p_db_column_name=>'TIMESHEET_ID'
,p_display_order=>150
,p_column_identifier=>'K'
,p_column_label=>'Timesheet Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564287470576991)
,p_db_column_name=>'HOURS_WORKED'
,p_display_order=>160
,p_column_identifier=>'L'
,p_column_label=>'Hours Worked'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564368136576992)
,p_db_column_name=>'CREATED'
,p_display_order=>170
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564451732576993)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>180
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564639661576994)
,p_db_column_name=>'UPDATED'
,p_display_order=>190
,p_column_identifier=>'O'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564748803576995)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>200
,p_column_identifier=>'P'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678564826923576996)
,p_db_column_name=>'PROJECT_ACCOUNT_CODE'
,p_display_order=>210
,p_column_identifier=>'Q'
,p_column_label=>'Project Account Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(678574839830614059)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'353803'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_NAME:WORK_DATE:EMP_ID:PROJECT_ACCOUNT_CODE:TASK_CODE:CODE_DESC:HOURS_WORKED:CREATED:CREATED_BY:'
,p_break_on=>'PROJECT_NAME'
,p_break_enabled_on=>'PROJECT_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(678564983006576998)
,p_plug_name=>'<strong>PEOPLEPAY</strong> Work Activity Incomes'
,p_parent_plug_id=>wwv_flow_imp.id(2586423416399498757)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id, work_date,project_id,reason_income,quantity hours',
'from hr_att_timesheetincome emp',
'join hr_rcm_employee emply on trim(emp.emp_id) = trim(emply.id)',
'where emply .org_id  = :APP_ORG_ID',
'and work_date between :P12822_START_DATE  and :P12822_END_DATE',
'and ( emp.emp_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P12822_EMPLOYEE,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
') or emp.emp_id  = (case when :P12822_EMPLOYEE is null then  emp.emp_id end))',
'and emply.orgdtl_id = nvl(:P12822_DEPARTMENT,emply.orgdtl_id)',
'and emp.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emply.orgdtl_id',
'          and emply.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emply.orgdtl_id, w.org_structure_id)         ',
'          ) ',
'and project_id is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12822_START_DATE,P12822_END_DATE,P12822_EMPLOYEE,P12822_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<strong>PEOPLEPAY</strong> Work Activity Incomes'
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
 p_id=>wwv_flow_imp.id(678565134960576999)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>35370585180968731
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678565167919577000)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987993760144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678565310959577001)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678565603807577004)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(676414213597927170)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678565729635577005)
,p_db_column_name=>'REASON_INCOME'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Task Codes'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(676609442419789991)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(680306901927907278)
,p_db_column_name=>'HOURS'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(678580128799075949)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'353856'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:WORK_DATE:REASON_INCOME:PROJECT_ID:HOURS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559521073472814153)
,p_plug_name=>'<strong>QUICKBASE</strong> Timeclock Data'
,p_parent_plug_id=>wwv_flow_imp.id(2586423416399498757)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent9:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        apis.work_date, ',
'        apis.empno, ',
'        emp.id emp_id , ',
'        time_in time_in, ',
'         case when  to_date(TO_CHAR(time_out,''DD-MON-YYYY HH:MIAM''),''DD-MON-YYYY HH:MIAM'') = to_date(TO_CHAR(work_date,''DD-MON-YYYY'') || '' 12:00 AM'', ''DD-MON-YYYY HH:MIAM'') THEN NULL else time_out end time_out, ',
'        att_in, att_out,',
'        apis.remarks, ',
'        apis.org_id',
'from hr_att_timeclock_apidata_stage apis',
'join hr_rcm_employee emp on trim(apis.empno) = trim(emp.emp_company_no)',
'where emp.org_id  = :APP_ORG_ID',
'and ( emp.id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P12822_EMPLOYEE,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
') or emp.id  = (case when :P12822_EMPLOYEE is null then  emp.id end))',
'and to_date(work_date) between :P12822_START_DATE and :P12822_END_DATE',
'and (emp.date_separated is null or emp.date_separated >= current_date)',
'and emp.orgdtl_id = nvl(:P12822_DEPARTMENT,emp.orgdtl_id)',
'and apis.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emp.orgdtl_id',
'          and emp.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emp.orgdtl_id, w.org_structure_id)         ',
'          ) ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12822_START_DATE,P12822_END_DATE,P12822_EMPLOYEE,P12822_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<strong>QUICKBASE</strong> Timeclock Data'
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
 p_id=>wwv_flow_imp.id(2559521027174814152)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BASU'
,p_internal_uid=>1916326477395205884
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014217165755078056)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014216703312078055)
,p_db_column_name=>'EMPNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empno'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014216313488078055)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988535409144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014215976616078055)
,p_db_column_name=>'TIME_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Time In'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014215502804078054)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Time Out'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014215127271078054)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014214763428078053)
,p_db_column_name=>'ORG_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014214332354078053)
,p_db_column_name=>'ATT_IN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Actual Clock In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014213929036078053)
,p_db_column_name=>'ATT_OUT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Actual Clock Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2547868113164024641)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3312921'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TIME_IN:TIME_OUT:REMARKS:ATT_IN:ATT_OUT'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2724018677088336982)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Perfect Punches'
,p_report_seq=>10
,p_report_alias=>'3312913'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TIME_IN:TIME_OUT:REMARKS:ATT_IN:ATT_OUT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(677655764844833552)
,p_report_id=>wwv_flow_imp.id(2724018677088336982)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'REMARKS'
,p_operator=>'='
,p_expr=>'PERFECT TIME RECORD'
,p_condition_sql=>'"REMARKS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''PERFECT TIME RECORD''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2724019749633340296)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'No Time Out'
,p_report_seq=>10
,p_report_alias=>'3312905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TIME_IN:TIME_OUT:REMARKS:ATT_IN:ATT_OUT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(677656514102833553)
,p_report_id=>wwv_flow_imp.id(2724019749633340296)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'REMARKS'
,p_operator=>'='
,p_expr=>'NO TIME OUT'
,p_condition_sql=>'"REMARKS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''NO TIME OUT''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2724020845705342443)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Blank Times'
,p_report_seq=>10
,p_report_alias=>'3312897'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TIME_IN:TIME_OUT:REMARKS:ATT_IN:ATT_OUT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(677657153759833553)
,p_report_id=>wwv_flow_imp.id(2724020845705342443)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'REMARKS'
,p_operator=>'='
,p_expr=>'BLANK TIMES'
,p_condition_sql=>'"REMARKS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''BLANK TIMES''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2724022890323351111)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Highlighted Rows Based on Punches'
,p_report_seq=>10
,p_report_alias=>'3312885'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TIME_IN:TIME_OUT:REMARKS:ATT_IN:ATT_OUT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(677657772367833554)
,p_report_id=>wwv_flow_imp.id(2724022890323351111)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'REMARKS'
,p_operator=>'='
,p_expr=>'BLANK TIMES'
,p_condition_sql=>' (case when ("REMARKS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''BLANK TIMES''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#EB464E'
,p_row_font_color=>'#FFFFFF'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(677658234611833555)
,p_report_id=>wwv_flow_imp.id(2724022890323351111)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'REMARKS'
,p_operator=>'='
,p_expr=>'NO TIME OUT'
,p_condition_sql=>' (case when ("REMARKS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NO TIME OUT''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFD6D2'
,p_row_font_color=>'#F44336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2586424052829498764)
,p_plug_name=>'<strong>PEOPLEPAY</strong> Timeclock Details'
,p_parent_plug_id=>wwv_flow_imp.id(2586423416399498757)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id, work_date, time_in, time_out ',
'from hr_att_timeclock_dtl emp',
'join hr_rcm_employee emply on trim(emp.emp_id) = trim(emply.id)',
'where emply .org_id  = :APP_ORG_ID',
'and work_date between :P12822_START_DATE  and :P12822_END_DATE',
'and ( emp.emp_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P12822_EMPLOYEE,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
') or emp.emp_id  = (case when :P12822_EMPLOYEE is null then  emp.emp_id end))',
'and emply.orgdtl_id = nvl(:P12822_DEPARTMENT,emply.orgdtl_id)',
'and emp.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emply.orgdtl_id',
'          and emply.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emply.orgdtl_id, w.org_structure_id)         ',
'          ) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12822_START_DATE,P12822_END_DATE,P12822_EMPLOYEE,P12822_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<strong>PEOPLEPAY</strong> Timeclock Details'
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
 p_id=>wwv_flow_imp.id(2586423955113498763)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAY.KHAN'
,p_internal_uid=>1943229405333890495
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014212834872078051)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987993760144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014212400771078050)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014212015657078050)
,p_db_column_name=>'TIME_IN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Time In'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014211591961078049)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Time Out'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2543270917507655846)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3312842'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:WORK_DATE:TIME_IN:TIME_OUT:'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2724370505541439077)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2729267826970298067)
,p_plug_name=>'timeclock_load'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'            select to_date(substr(work_date,1,10),''YYYY-MM-DD'') work_date,',
'                json_output.gname company_name,',
'                json_output.att_in time_in,',
'                json_output.att_out time_out,',
'                json_output.userid empno,',
'                case when upper(json_output.gname) = ''TGA'' then 34446',
'										when upper(json_output.gname) = ''CAMS'' then 28007',
'					END as org_id',
'            from hr_att_timeclockapijson a,',
'            json_table(time_records, ''$[*]''',
'            columns (row_number for ordinality,',
'                     userid varchar2(100) path ''$.userid'',',
'                     gname varchar2(200) path ''$.gname'',',
'                     work_date varchar2 path ''$.date'',',
'                     att_in varchar2(200) path ''$.att_in'',',
'                     att_out varchar2(200) path ''$.att_out''',
'                     )',
'                     ) as json_output;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'timeclock_load'
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
 p_id=>wwv_flow_imp.id(2729267268640298061)
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>2086072718860689793
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014206334568078038)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014205877514078038)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014205518121078038)
,p_db_column_name=>'TIME_IN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014205161194078037)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014204726980078037)
,p_db_column_name=>'EMPNO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Empno'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2014204282481078036)
,p_db_column_name=>'ORG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2724310020804119710)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3312777'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:COMPANY_NAME:TIME_IN:TIME_OUT:EMPNO:ORG_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677660857084833559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'REQUEST_TIME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Pull Times from QuickBase'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677661278855833560)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'SPLIT_JSON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Split JSON'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677661722661833560)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'FIX_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Format Times for PeoplePay'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677662077398833561)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'PUSH_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load To Attendance (Timeclock Detail)'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(678566011627577008)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'PUSH_WORKACTIVITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load To Timesheet Income (Work Activity)'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(677662507442833561)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_button_name=>'DELETE_API_STAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete API Stage'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2014220769222078109)
,p_name=>'P12822_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_item_default=>'trunc(current_date)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2014221223255078111)
,p_name=>'P12822_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_item_default=>'trunc(current_date)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2014221581404078111)
,p_name=>'P12822_DEPARTMENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(level)||'': ''||UNIT_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title,',
'       wu.ID',
'from',
'(',
'select',
'od.id',
',od.unit_name',
',od.unit_parent',
',od.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(nvl(p.no_filled,0)) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl',
'      where trunc(start_date) <= trunc(current_date)',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) od',
'left join hr_hcf_position p on od.id = p.orgdtl_id',
'group by od.id, od.unit_name,od.unit_parent,od.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd oh on oh.id = wu.org_structure_id',
'where oh.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID )',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER,:APP_PAGE_ID), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL DEPARTMENTS--'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(2014221986347078112)
,p_name=>'P12822_EMPLOYEE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2724370505541439077)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'      distinct emp.full_name||'' (''||emp.emp_company_no||'')'' a, emp.id b',
'from hr_att_timeclock_apidata_stage apis',
'join hr_rcm_employee emp on trim(apis.emp_id) = trim(emp.id)',
'where emp.org_id  = :APP_ORG_ID',
'and to_date(work_date) between :P12822_START_DATE and :P12822_END_DATE',
'AND emp.orgdtl_id = nvl(:P12822_DEPARTMENT,emp.orgdtl_id)',
'and (emp.date_separated is null or emp.date_separated >= current_date)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID )',
'          where  t.id = emp.orgdtl_id',
'          and emp.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER, :APP_PAGE_ID), 0, emp.orgdtl_id, w.org_structure_id)         ',
'          ) ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL EMPLOYEES--'
,p_lov_cascade_parent_items=>'P12822_START_DATE,P12822_END_DATE,P12822_DEPARTMENT'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(677667570462833590)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12822_DEPARTMENT,P12822_WORK_START,P12822_WORK_END,P12822_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677668080975833593)
,p_event_id=>wwv_flow_imp.id(677667570462833590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677668482573833594)
,p_name=>'dy_refresh_report'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12822_START_DATE,P12822_END_DATE,P12822_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677668993676833594)
,p_event_id=>wwv_flow_imp.id(677668482573833594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677669494642833594)
,p_event_id=>wwv_flow_imp.id(677668482573833594)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677670028076833595)
,p_event_id=>wwv_flow_imp.id(677668482573833594)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677670437074833595)
,p_name=>'Fix Data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677661722661833560)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677670875084833596)
,p_event_id=>wwv_flow_imp.id(677670437074833595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'begin',
'PKG_TIMELOADING.paramfixapi_stagetime(:P12822_START_DATE, :P12822_END_DATE);',
'end;',
'',
'commit;',
'end;'))
,p_attribute_02=>'P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677671432140833596)
,p_event_id=>wwv_flow_imp.id(677670437074833595)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677671862433833596)
,p_event_id=>wwv_flow_imp.id(677670437074833595)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677672286322833596)
,p_name=>'execute_load'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677660857084833559)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677672769696833597)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_end_date date := to_date(:P12822_END_DATE) + 1;',
'begin',
' ',
'for i in (',
'select to_date(column_value,''DD-MON-YYYY'')  start_date',
'    from  pkg_timeclock.fn_generate_dates_between(',
'                            in_start_date => :P12822_START_DATE,',
'                            in_end_date => l_end_date',
')',
'',
')loop',
'',
'DELETE FROM HR_ATT_TIMECLOCK_APIDATA_STAGE',
'WHERE WORK_DATE = i.start_date;',
'',
'if sql%rowcount>=0 then',
'COMMIT;',
'end if;',
'',
'',
'begin',
'pkg_timeloading_quickbase.prcd_process_quickbase_request(i.start_date,i.start_date,:APP_ORG_ID);',
'pkg_timeloading_quickbase.prcd_inserttimeclockjsondata;',
'pkg_timeloading_quickbase.prcd_fixapi_stagetime(i.start_date);',
'end;',
'',
'end loop;',
'',
'end;'))
,p_attribute_02=>'P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678562321457576971)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'executeLoadWkActivity'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_end_date date := to_date(:P12822_END_DATE) + 1;',
'begin',
' ',
'for i in (',
'select to_date(column_value,''DD-MON-YYYY'')  start_date',
'    from  pkg_timeclock.fn_generate_dates_between(',
'                            in_start_date => :P12822_START_DATE,',
'                            in_end_date => l_end_date',
')',
'',
')loop',
'',
'DELETE FROM HR_ATT_work_activity_STAGE',
'WHERE WORK_DATE = i.start_date;',
'',
'if sql%rowcount>=0 then',
'COMMIT;',
'end if;',
'',
'',
'begin',
'PKG_WKACTIVITYLOADING_QUICKBASE.prcd_process_quickbase_request(i.start_date,i.start_date,:APP_ORG_ID);',
'PKG_WKACTIVITYLOADING_QUICKBASE.prcd_insertwkactivityjsondata;',
'PKG_WKACTIVITYLOADING_QUICKBASE.prcd_fixapi_stagewkactivity(i.start_date);',
'end;',
'end loop;',
'end;'))
,p_attribute_02=>'P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677673295004833597)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677673842388833598)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677674332222833598)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12822_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678564902220576997)
,p_event_id=>wwv_flow_imp.id(677672286322833596)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(678562398498576972)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677674659963833598)
,p_name=>'execute_load_1'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677661278855833560)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677675166278833598)
,p_event_id=>wwv_flow_imp.id(677674659963833598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin',
'      insert into HR_ATT_TIMECLOCK_APIDATA_STAGE(',
'                                                work_date,company_name,att_in,',
'                                                att_out,empno,org_id',
'                              )',
'',
'            select to_date(substr(work_date,1,10),''YYYY-MM-DD'') work_date,',
'                json_output.gname company_name,',
'																json_output.att_in att_in,',
'																json_output.att_out att_out,',
'                json_output.userid empno,',
'                case when upper(json_output.gname) = ''TGA'' then 34446 when upper(json_output.gname) = ''CAMS'' then 28007',
'					END as org_id',
'            from hr_att_timeclockapijson a,',
'            json_table(time_records, ''$[*]''',
'            columns (row_number for ordinality,',
'                     userid varchar2(100) path ''$.userid'',',
'                     gname varchar2(200) path ''$.gname'',',
'                     work_date varchar2 path ''$.date'',',
'                     att_in varchar2(200) path ''$.att_in'',',
'                     att_out varchar2(200) path ''$.att_out''',
'                     )',
'                     ) as json_output;',
'         commit;',
'									end;',
'commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677675684598833599)
,p_event_id=>wwv_flow_imp.id(677674659963833598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12822_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677676164979833599)
,p_event_id=>wwv_flow_imp.id(677674659963833598)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677676732277833599)
,p_event_id=>wwv_flow_imp.id(677674659963833598)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677677133978833599)
,p_name=>'DELETE FROM API STAGE'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677662507442833561)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677677578106833600)
,p_event_id=>wwv_flow_imp.id(677677133978833599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'DELETE FROM HR_ATT_TIMECLOCK_APIDATA_STAGE',
'WHERE WORK_DATE BETWEEN :P12822_START_DATE AND :P12822_END_DATE;',
'COMMIT;',
'END;'))
,p_attribute_02=>'P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677678147462833600)
,p_event_id=>wwv_flow_imp.id(677677133978833599)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677678544457833600)
,p_name=>'PUSH DATA'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(677662077398833561)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677678980958833600)
,p_event_id=>wwv_flow_imp.id(677678544457833600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	in_employee   VARCHAR2 (200);',
'	in_start_date DATE;',
'	in_end_date   DATE;',
'	in_org_id     NUMBER;',
'	in_app_user   VARCHAR2 (200);',
'    in_department number;',
'BEGIN',
'    in_department := :P12822_DEPARTMENT;',
'    in_employee   := :P12822_EMPLOYEE;',
'	in_start_date := :P12822_START_DATE;',
'	in_end_date   := :P12822_END_DATE;',
'	in_org_id     := :APP_ORG_ID;',
'	in_app_user   := UPPER(:APP_USER);',
'    ',
'',
'',
'     pkg_timeloading_quickbase.prcd_loadstage_to_timeclockdetail(in_start_date,in_end_date);',
'',
'	-- pkg_timeloading.load_timedetail (in_department  => in_department',
'    --                                 ,in_employee => in_employee',
'	-- 								,in_start_date => in_start_date',
'	--                                 ,in_end_date => in_end_date',
'	-- 								,in_org_id => in_org_id',
'	--                                 ,in_app_user => in_app_user);',
'',
'    -- pkg_timeclock.prcd_process_details (in_work_start => :P12822_START_DATE,',
'    --                                     in_work_end => :P12822_END_DATE,',
'    --                                     in_org_id => :APP_ORG_ID,',
'    --                                     in_emp_id => :P12822_EMPLOYEE,',
'    --                                     in_orgdtl_id => :P12822_DEPARTMENT);',
'END;'))
,p_attribute_02=>'P12822_EMPLOYEE,P12822_DEPARTMENT,P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677679500140833601)
,p_event_id=>wwv_flow_imp.id(677678544457833600)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678565866460577007)
,p_event_id=>wwv_flow_imp.id(677678544457833600)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(678562398498576972)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677680032069833601)
,p_event_id=>wwv_flow_imp.id(677678544457833600)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(678566117581577009)
,p_name=>'PUSH DATA_1'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(678566011627577008)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678566347747577011)
,p_event_id=>wwv_flow_imp.id(678566117581577009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	in_employee   VARCHAR2 (200);',
'	in_start_date DATE;',
'	in_end_date   DATE;',
'	in_org_id     NUMBER;',
'	in_app_user   VARCHAR2 (200);',
'    in_department number;',
'BEGIN',
'    in_department := :P12822_DEPARTMENT;',
'    in_employee   := :P12822_EMPLOYEE;',
'	in_start_date := :P12822_START_DATE;',
'	in_end_date   := :P12822_END_DATE;',
'	in_org_id     := :APP_ORG_ID;',
'	in_app_user   := UPPER(:APP_USER);',
'    ',
'',
'',
'     PKG_WKACTIVITYLOADING_QUICKBASE.prcd_loadstage_to_timesheetincome(in_start_date,in_end_date);',
'',
'	-- pkg_timeloading.load_timedetail (in_department  => in_department',
'    --                                 ,in_employee => in_employee',
'	-- 								,in_start_date => in_start_date',
'	--                                 ,in_end_date => in_end_date',
'	-- 								,in_org_id => in_org_id',
'	--                                 ,in_app_user => in_app_user);',
'',
'    -- pkg_timeclock.prcd_process_details (in_work_start => :P12822_START_DATE,',
'    --                                     in_work_end => :P12822_END_DATE,',
'    --                                     in_org_id => :APP_ORG_ID,',
'    --                                     in_emp_id => :P12822_EMPLOYEE,',
'    --                                     in_orgdtl_id => :P12822_DEPARTMENT);',
'END;'))
,p_attribute_02=>'P12822_EMPLOYEE,P12822_DEPARTMENT,P12822_START_DATE,P12822_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678566444626577012)
,p_event_id=>wwv_flow_imp.id(678566117581577009)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2559521073472814153)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678566505743577013)
,p_event_id=>wwv_flow_imp.id(678566117581577009)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(678562398498576972)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678566613024577014)
,p_event_id=>wwv_flow_imp.id(678566117581577009)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2586424052829498764)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677667169020833584)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'push_data_proc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_page_items_arr  apex_t_varchar2;    v_sqlcode varchar2(50);  v_sqlerrm varchar2(500);',
'',
'begin  ',
'  l_page_items_arr := apex_string.split(p_str => :P12822_EMPLOYEE, p_sep => '':'');',
'',
'  IF :P12822_EMPLOYEE IS NOT NULL THEN for i in 1..l_page_items_arr.count loop',
'',
'INSERT INTO hr_att_timeclock_dtl (work_location_name,emp_id,work_date,time_in,time_out,emp_company_no,full_name,clock_emp_id,remarks,calendar_id,time_source,load_by,load_date',
')SELECT',
'    (select location_description from hr_hcf_worklocation where id = emp.wklocation_id) work_location, ',
'    emp_id, work_date,time_in a, case when  to_date(TO_CHAR(time_out,''DD-MON-YYYY HH:MIAM''),''DD-MON-YYYY HH:MIAM'') = to_date(TO_CHAR(work_date,''DD-MON-YYYY'') || '' 12:00 AM'', ''DD-MON-YYYY HH:MIAM'') THEN NULL else time_out end time_out,',
'    emp.emp_company_no, ',
'    UPPER((ind.Surname || '', '' || nvl(ind.First_Name, '''')) ||'' ''||nvl(ind.Middle_Name,'''')) full_name,',
'    apis.empno clock_emp_id,',
'    ''Timeclock records loaded by manual override'' remarks, ',
'    (select id from hr_att_empcalendar_hd where emp_id = emp.id and work_date  = apis.work_date) calendar_id ,',
'    ''IMPORTED'' time_source, v(''APP_USER'') load_by, current_date load_date',
'from hr_att_timeclock_apidata_stage apis',
'join hr_rcm_employee emp on trim(apis.empno) = trim(emp.emp_company_no)',
'join hr_rcm_individual ind on emp.ind_id = ind.id',
'where emp.id = nvl(l_page_items_arr(i),emp.id)',
'and emp.org_id  = :APP_ORG_ID',
'and to_date(work_date) between :P12822_START_DATE and :P12822_END_DATE',
'and (emp.date_separated is null or emp.date_separated >= current_date)',
'and time_in is not null and trim(upper(apis.remarks)) <> ''BLANK TIMES''',
'and not exists (select 1 from hr_att_timeclock_dtl where emp_id = emp.id and work_date = apis.work_date and time_in = apis.time_in)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emp.orgdtl_id',
'          and emp.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emp.orgdtl_id, w.org_structure_id)         ',
'          );',
' ',
' end loop;',
'',
'ELSE ',
'	INSERT INTO hr_att_timeclock_dtl (work_location_name,emp_id,work_date,time_in,time_out,emp_company_no,full_name,clock_emp_id,remarks,calendar_id,time_source,load_by,load_date',
'        )SELECT',
'    (select location_description from hr_hcf_worklocation where id = emp.wklocation_id) work_location, ',
'    emp_id,  work_date,  time_in a,',
'   case when  to_date(TO_CHAR(time_out,''DD-MON-YYYY HH:MIAM''),''DD-MON-YYYY HH:MIAM'') = to_date(TO_CHAR(work_date,''DD-MON-YYYY'') || '' 12:00 AM'', ''DD-MON-YYYY HH:MIAM'') THEN NULL else time_out end time_out,',
'    emp.emp_company_no,  UPPER((ind.Surname || '', '' || nvl(ind.First_Name, '''')) ||'' ''||nvl(ind.Middle_Name,'''')) full_name,',
'    apis.empno clock_emp_id,',
'    ''Timeclock records loaded by manual override'' remarks, ',
'    (select id from hr_att_empcalendar_hd where emp_id = emp.id and work_date  = apis.work_date) calendar_id ,',
'    ''IMPORTED'' time_source, ',
'    v(''APP_USER'') load_by, ',
'    current_date load_date',
'from hr_att_timeclock_apidata_stage apis',
'join hr_rcm_employee emp on trim(apis.empno) = trim(emp.emp_company_no)',
'join hr_rcm_individual ind on emp.ind_id = ind.id',
'where emp.org_id  = :APP_ORG_ID',
'and to_date(work_date) between :P12822_START_DATE and :P12822_END_DATE',
'and (emp.date_separated is null or emp.date_separated >= current_date)',
'and time_in is not null and trim(upper(apis.remarks)) <> ''BLANK TIMES''',
'and not exists (select 1 from hr_att_timeclock_dtl where emp_id = emp.id and work_date = apis.work_date and time_in = apis.time_in)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w ',
'          on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = emp.orgdtl_id',
'          and emp.orgdtl_id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emp.orgdtl_id, w.org_structure_id)         ',
'          ) ;',
'END IF;',
'',
'    commit;',
' exception',
'      when others then ',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;        ',
'        PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while executing timeclock import'' ,''Load To Attendance (Timeclock Detail)'');           ',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(677662077398833561)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Data successfully loaded.'
,p_internal_uid=>34472619241225316
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677666835262833583)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'sync_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_parameters apex_exec.t_parameters;',
'begin',
'    apex_rest_source_sync.dynamic_synchronize_data(',
'        p_module_static_id => ''TimeclockAPI'',',
'        p_sync_static_id   => ''TimeclockAPI'',',
'        p_sync_parameters  => l_parameters );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34472285483225315
);
wwv_flow_imp.component_end;
end;
/
