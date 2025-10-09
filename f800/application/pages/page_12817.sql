prompt --application/pages/page_12817
begin
--   Manifest
--     PAGE: 12817
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
 p_id=>12817
,p_name=>'frmabsenseincome'
,p_alias=>'FRMABSENSEINCOME'
,p_step_title=>'Absence and Income'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437065409071696)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_check_date(){',
'  var lFrom = $("#P12817_WORK_START").datepicker("getDate"),',
'      lTo = $("#P12817_WORK_END").datepicker("getDate");',
'  var diff = 0;',
'  var days = 0;',
'',
'    $("#P12817_WORK_START").datepicker("option","maxDate",lTo);',
'    $("#P12817_WORK_END").datepicker("option","minDate",lFrom);',
'',
'    diff = Math.abs(lTo - lFrom);',
'    days = diff/(1000 * 3600 * 24)',
'',
'    if(days > 35 && lFrom !== null && lTo !== null){',
'        alert(''Sorry, the date range should not be more than 35!'');',
'    } ',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670181379753520624)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(678743716598547212)
,p_plug_name=>'Unbalanced Incomes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.att_validate_hrs, A.emp_id,work_date,listagg(b.description, '','') entitlement,',
'    max(cot_cal)  COT,',
'    max(chw_cal) CHW,',
'    max(cshw_cal) CSHW,',
'    sum(tsi_total) Inc_Hours',
'',
'from fn_get_att_validate_hrs_compare(in_emp_id       => :P12817_EMPLOYEE',
'                                    ,in_org_id       => :APP_ORG_ID',
'                                    ,in_dept         => :P12817_DEPARTMENT',
'                                    ,in_work_start   => :P12817_WORK_START',
'                                    ,in_work_end     => :P12817_WORK_END) a ',
'join pa_pcf_incomecode b on a.income_code = b.income_code',
'join hr_rcm_empentitle c on b.id  = c.income_code_id and c.id = a.empent_id',
'and b.org_id = :APP_ORG_ID',
'group by a.emp_id, work_date,a.att_validate_hrs'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END,P12817_ORG_STRUCTURE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Unbalanced Incomes'
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
 p_id=>wwv_flow_imp.id(678743788840547213)
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
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>35408536821871719
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678744046126547215)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678744704772547222)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746438778547239)
,p_db_column_name=>'ATT_VALIDATE_HRS'
,p_display_order=>100
,p_column_identifier=>'Z'
,p_column_label=>'Att Validate Hrs'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746534225547240)
,p_db_column_name=>'ENTITLEMENT'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Entitlement'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746621670547241)
,p_db_column_name=>'COT'
,p_display_order=>120
,p_column_identifier=>'AB'
,p_column_label=>'COT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746741624547242)
,p_db_column_name=>'CHW'
,p_display_order=>130
,p_column_identifier=>'AC'
,p_column_label=>'CHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746840645547243)
,p_db_column_name=>'CSHW'
,p_display_order=>140
,p_column_identifier=>'AD'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(678746884581547244)
,p_db_column_name=>'INC_HOURS'
,p_display_order=>150
,p_column_identifier=>'AE'
,p_column_label=>'Inc Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(679414844390702086)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'360796'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:WORK_DATE:COT:CHW:CSHW:ENTITLEMENT:INC_HOURS:APXWS_CC_001:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(681853401903799503)
,p_report_id=>wwv_flow_imp.id(679414844390702086)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'>'
,p_expr=>'0'
,p_condition_sql=>'(#APXWS_CC_EXPR#) > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(681853756419799504)
,p_report_id=>wwv_flow_imp.id(679414844390702086)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'  CASE when AB+ AC+ AD < AE then  abs(AB+ AC+ AD - AE) else 0 end'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Variance'
,p_report_label=>'Variance'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(862657506732915419)
,p_plug_name=>'inline_dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(969245856774552959)
,p_plug_name=>'Timesheet Absences'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1102778753110001476)
,p_plug_name=>'View Unbalanced Attendance'
,p_parent_plug_id=>wwv_flow_imp.id(969245856774552959)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rownum,',
'ch.emp_id,',
'emp.emp_company_no,',
'to_char(ch.min_time_in, ''HH:MIPM'') min_time_in,',
'to_char(ch.max_time_out, ''HH:MIPM'') max_time_out,',
'nvl(p.position_name,'''') designation,',
'Initcap(trim(ind.Surname)) || '', '' || Initcap(trim(ind.First_Name)) || '' '' || nvl(Initcap(trim(ind.Middle_Name)),'''') Name,',
'dept.unit_name department,',
'ch.work_date work_date,',
'to_char(ch.work_date,''DD-MON'') short_work_date,',
'to_char( ch.work_date, ''DY'') day_letter,',
'to_char(ch.min_time_in, ''HH:MIPM'') time_in,',
'to_char(ch.max_time_out,''HH:MIPM'') time_out,',
'NVL(H.HOLIDAY_CODE,''-'') holiday,',
'shft.shift_code,',
'nvl(ch.assign_shift_hours,0) assign_shift_hours,',
'nvl(ch.hours_worked,0) calculated_hours_worked,',
'nvl(ch.normal_time,0) calculated_shift_hours_worked,',
'nvl(ch.total_time_lost,0) calculated_total_time_lost,',
'nvl(ch.over_time,0) calculated_over_time,',
'nvl(keyed_absence_hours,0) keyed_absence_hours,',
'nvl(ch.approved_abs,0) approved_abs',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'View Unbalanced Attendance'
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
 p_id=>wwv_flow_imp.id(1102778592239001475)
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
,p_owner=>'RLANGFORD'
,p_internal_uid=>459443340220325981
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199194290205335543)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Full Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199194662307335544)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199195013452335544)
,p_db_column_name=>'MIN_TIME_IN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Min Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199195447950335545)
,p_db_column_name=>'MAX_TIME_OUT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Max Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199195821265335546)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199196306749335546)
,p_db_column_name=>'NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199196649080335546)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199197093913335547)
,p_db_column_name=>'SHORT_WORK_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Short Work Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199197418767335548)
,p_db_column_name=>'DAY_LETTER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Day '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199197893461335548)
,p_db_column_name=>'TIME_IN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199198224252335549)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199198694599335549)
,p_db_column_name=>'HOLIDAY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Holiday'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199199092731335550)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Shift Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199199471282335550)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'SH'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199199899729335551)
,p_db_column_name=>'CALCULATED_HOURS_WORKED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'CHW'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199200286057335551)
,p_db_column_name=>'CALCULATED_SHIFT_HOURS_WORKED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199200711414335552)
,p_db_column_name=>'CALCULATED_TOTAL_TIME_LOST'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'CABS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199201042818335553)
,p_db_column_name=>'CALCULATED_OVER_TIME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Calculated Over Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199201501231335553)
,p_db_column_name=>'KEYED_ABSENCE_HOURS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'KABS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199201850539335554)
,p_db_column_name=>'APPROVED_ABS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Approved Abs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199202213111335554)
,p_db_column_name=>'ROWNUM'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Rownum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199193868330335543)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Work Date'
,p_allow_sorting=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1101676628736604163)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1955421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:DAY_LETTER:SHIFT_CODE:ASSIGN_SHIFT_HOURS:EMP_ID:MAX_TIME_OUT:MIN_TIME_IN:CALCULATED_HOURS_WORKED:CALCULATED_SHIFT_HOURS_WORKED:CALCULATED_TOTAL_TIME_LOST:KEYED_ABSENCE_HOURS:'
,p_sort_column_1=>'ROWNUM'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'WORK_DATE'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1102930077904154462)
,p_plug_name=>'Processed Absences'
,p_parent_plug_id=>wwv_flow_imp.id(969245856774552959)
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,ABSENCE_HOURS,TRANSACTION_TYPE_ID,STATUS,',
'       EMP_ID,',
'       LEAVE_MODE,',
'       LEAVE_DOLLAR_VALUE,',
'       EARNINGS_PERIOD_ID,',
'       ORG_ID,',
'       LEAVE_TYPE,',
'       PAY_STATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       CALENDAR_ID,',
'       LEAVE_HIST_ID,',
'       orgdtl_id,',
'       position_id,',
'       AFFECT_SALARY,',
'       approved_by,',
'       approved_date,',
'       VERIFIED_BY, VERIFIED_DATE',
'  from HR_ATT_TIMESHEETABSENCE ABS',
'  where org_id = :APP_ORG_ID',
'and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
'and emp_id = nvl(:P12817_EMPLOYEE,emp_id)',
'and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
' and upper(pkg_global_fnts.status_descript(status)) IN (''APPROVED'',''VERIFY'',''DISAPPROVED'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Processed Absences'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(969246898359552970)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(969247008282552971)
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
 p_id=>wwv_flow_imp.id(1009332069387171424)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1009332149177171425)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1102779763573001486)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Approved Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1102779803786001487)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1102780068754001489)
,p_name=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECT_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Affect Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(1102780155436001490)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Position Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(1102780220058001491)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orgdtl Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1102780348792001492)
,p_name=>'LEAVE_HIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_HIST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Hist Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(1102780423982001493)
,p_name=>'CALENDAR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALENDAR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calendar Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1102780544487001494)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1102928293250154445)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(1102928450320154446)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1102928535333154447)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(1102928593534154448)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
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
 p_id=>wwv_flow_imp.id(1102928746077154449)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(1102928821321154450)
,p_name=>'LEAVE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854074898031160109)
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
 p_id=>wwv_flow_imp.id(1102928969789154451)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Org Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1102928979579154452)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Earnings Period Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1102929081326154453)
,p_name=>'LEAVE_DOLLAR_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_DOLLAR_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1102929237597154454)
,p_name=>'LEAVE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Leave Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(1102929297395154455)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854128962961211367)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(1102929471829154456)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854529040127313166)
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
 p_id=>wwv_flow_imp.id(1102929498564154457)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806892300086235379)
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
 p_id=>wwv_flow_imp.id(1102929583400154458)
,p_name=>'ABSENCE_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABSENCE_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Absence Hours'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1102929760688154459)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1102929824538154460)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1102929891234154461)
,p_internal_uid=>459594639215478967
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
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
 p_id=>wwv_flow_imp.id(1102774910527998823)
,p_interactive_grid_id=>wwv_flow_imp.id(1102929891234154461)
,p_static_id=>'719027'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1102774688809998823)
,p_report_id=>wwv_flow_imp.id(1102774910527998823)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(980521157335675117)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(969246898359552970)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1032260125774690186)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1009332069387171424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1032261092750690189)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(1009332149177171425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.5999755859375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102718241002910953)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1102779763573001486)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102719176569910955)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1102779803786001487)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102755471270998749)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1102780068754001489)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102756297485998751)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1102780155436001490)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102757279002998753)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1102780220058001491)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102758081632998755)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1102780348792001492)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102759017952998760)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1102780423982001493)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102759937449998762)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1102780544487001494)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102760843195998766)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1102928293250154445)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102761728492998768)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1102928450320154446)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102762593860998778)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1102928535333154447)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102763436817998780)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1102928593534154448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161.0625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102764323493998782)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1102928746077154449)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102765189629998784)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1102928821321154450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149.2
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102766087958998786)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1102928969789154451)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102767010574998789)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1102928979579154452)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102767914291998792)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1102929081326154453)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102768794040998798)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1102929237597154454)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102769698101998803)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1102929297395154455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102770647277998810)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1102929471829154456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.0625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102771509194998812)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1102929498564154457)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102772419268998814)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1102929583400154458)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102773282379998816)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1102929760688154459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1102774220608998819)
,p_view_id=>wwv_flow_imp.id(1102774688809998823)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1102929824538154460)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(1414336833158204857)
,p_report_id=>wwv_flow_imp.id(1102774910527998823)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(1102780068754001489)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>'DEDUCTION'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1194247085012743403)
,p_plug_name=>'Absence Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(969245856774552959)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       WORK_DATE,',
'       WEEK_DAY,',
'       EMP_ID,',
'       LEAVE_MODE,',
'       LEAVE_DOLLAR_VALUE,',
'       LEAVE_TYPE,',
'       LEAVE_STATUS,',
'       AFFECT_SALARY,',
'       PAY_STATUS,',
'       REMARKS,',
'       ABSENCE_HOURS,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       ENTERED_BY_AUD,',
'       ENTERY_DATE_AUD,',
'       AUDIT_OPERATION',
'  from HR_ATT_TIMESHEETABSENCE_AUD abs',
'  where org_id = :APP_ORG_ID',
'-- and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
'and exists (select 1 from hr_rcm_employee emp where emp.id=abs.emp_id and emp.orgdtl_id=nvl(:P12817_DEPARTMENT,abs.orgdtl_id))',
'and emp_id = nvl(:P12817_EMPLOYEE,emp_id)',
'and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = ABS.ORGDTL_ID',
'          and ABS.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, ABS.ORGDTL_ID, w.org_structure_id)         ',
'          ) ',
'										'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Absence Audit Trail'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1200060587760624060)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200060676937624061)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200060802822624062)
,p_name=>'WEEK_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Week Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(1200060853515624063)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3718004859297579194)
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
 p_id=>wwv_flow_imp.id(1200060924003624064)
,p_name=>'LEAVE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Leave Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(1200061065247624065)
,p_name=>'LEAVE_DOLLAR_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_DOLLAR_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Dollar Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(1200061116650624066)
,p_name=>'LEAVE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854074898031160109)
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
 p_id=>wwv_flow_imp.id(1200061298872624067)
,p_name=>'LEAVE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Leave Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(1200061386304624068)
,p_name=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECT_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Affect Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(1200061483442624069)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(1200061568861624070)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(1200061688025624071)
,p_name=>'ABSENCE_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABSENCE_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Absence Hours'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200061811526624072)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3806892300086235379)
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
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1200061843776624073)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854529040127313166)
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
 p_id=>wwv_flow_imp.id(1200061989414624074)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(1200062109117624075)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200062197205624076)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(1200062262647624077)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200062389394624078)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1200062429264624079)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Approved Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200062599284624080)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1200062695944624081)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200062728778624082)
,p_name=>'ENTERED_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Entered By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1200062860854624083)
,p_name=>'ENTERY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entery Date Aud'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200062919984624084)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1200060449161624059)
,p_internal_uid=>556725197142948565
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
 p_id=>wwv_flow_imp.id(1200076385294645056)
,p_interactive_grid_id=>wwv_flow_imp.id(1200060449161624059)
,p_static_id=>'1964159'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1200076569046645056)
,p_report_id=>wwv_flow_imp.id(1200076385294645056)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200077032386645058)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1200060587760624060)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200077973790645061)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1200060676937624061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200078856594645064)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1200060802822624062)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200079727890645067)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1200060853515624063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>215
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200080654536645071)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1200060924003624064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200081579563645074)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1200061065247624065)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200082457960645078)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1200061116650624066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200083388768645081)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1200061298872624067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200084255155645084)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1200061386304624068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200085191931645087)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1200061483442624069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200086034882645091)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1200061568861624070)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>202
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200086969327645094)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1200061688025624071)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200087895963645097)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1200061811526624072)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200088772061645100)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1200061843776624073)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200089667292645103)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1200061989414624074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>239
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200090593846645106)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1200062109117624075)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200091503045645109)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1200062197205624076)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>228.5999755859375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200092320889645113)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1200062262647624077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200093279257645117)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1200062389394624078)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>244.59991455078125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200094182602645121)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1200062429264624079)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200095108791645124)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1200062599284624080)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254.39990234375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200095949351645127)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1200062695944624081)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200096879565645130)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1200062728778624082)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>235.79990234375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200097716572645135)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1200062860854624083)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179.2000732421875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200098660652645139)
,p_view_id=>wwv_flow_imp.id(1200076569046645056)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1200062919984624084)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1234218992384074160)
,p_plug_name=>'Keyed Absences '
,p_region_name=>'emp_abs'
,p_parent_plug_id=>wwv_flow_imp.id(969245856774552959)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent11:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,ABSENCE_HOURS,TRANSACTION_TYPE_ID,STATUS,',
'       EMP_ID,',
'       LEAVE_MODE,',
'       LEAVE_DOLLAR_VALUE,',
'       EARNINGS_PERIOD_ID,',
'       ORG_ID,',
'       LEAVE_TYPE,',
'       PAY_STATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       CALENDAR_ID,',
'       LEAVE_HIST_ID,',
'       orgdtl_id,',
'       position_id,',
'       AFFECT_SALARY',
'  from HR_ATT_TIMESHEETABSENCE ABS',
'  where org_id = :APP_ORG_ID',
'and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
'and emp_id = nvl(:P12817_EMPLOYEE,emp_id)',
'and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = ABS.ORGDTL_ID',
'          and ABS.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, ABS.ORGDTL_ID, w.org_structure_id)         ',
'          ) ',
' and upper(pkg_global_fnts.status_descript(status)) IN (''KEYED'')',
' and exists (select 1 ',
'            from hr_rcm_employee emp ',
'            where emp.id=abs.emp_id ',
'            and emp.org_id=abs.org_id',
'            and (emp.date_separated is null or emp.date_separated >= current_date))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Keyed Absences '
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1227622966005703349)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230029505021382649)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'and upper(Wfl_Status_Description) not like ''VER%'' ',
'and upper(Wfl_Status_Description) not like ''UNVER%''   ',
'and  upper(Wfl_Status_Description) not like ''%SEND%''  ',
'and  upper(Wfl_Status_Description) not like ''%FORW%''',
'and  upper(Wfl_Status_Description) not like ''APPR%''     ',
'And Webpage_Id=94',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'--AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'--AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE_ID'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230029538676382650)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=94)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1231628390384166974)
,p_name=>'LEAVE_HIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_HIST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1231628512787166976)
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
 p_id=>wwv_flow_imp.id(1231628691139166977)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1231628774961166978)
,p_name=>'CALENDAR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALENDAR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1231629589303166986)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1231629667271166987)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1231629741974166988)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1231629818262166989)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1231630167362166992)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(1231630314665166994)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:NO;N,YES;Y'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1231630419700166995)
,p_name=>'LEAVE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854074898031160109)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
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
 p_id=>wwv_flow_imp.id(1234217552188074146)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234217698362074147)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234217792564074148)
,p_name=>'LEAVE_DOLLAR_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_DOLLAR_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234217908404074149)
,p_name=>'LEAVE_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234218576908074156)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and org_id=:APP_ORG_ID',
'--and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')      ',
'and x.id = nvl(:P12817_EMPLOYEE, x.id)',
'and x.orgdtl_id = nvl(:P12817_DEPARTMENT,x.orgdtl_id)',
'and (date_separated is null or date_separated between :P12817_WORK_START and :P12817_WORK_END or date_separated > :P12817_WORK_END)',
'',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P94_DEPARTMENT,P94_EMPLOYEE'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234218643130074157)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P12817_DEFAULT_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1234218780557074158)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1235840517850586184)
,p_name=>'ABSENCE_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABSENCE_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Absence Hours'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1291469311136324818)
,p_name=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECT_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Affect Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:NONE;NONE,DEDUCTION;DEDUCTION'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'NONE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1294048476970003446)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1234218874537074159)
,p_internal_uid=>590883622518398665
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_update_authorization_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3806878643214039124)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_imp.id(1231624816285165135)
,p_interactive_grid_id=>wwv_flow_imp.id(1234218874537074159)
,p_static_id=>'698710'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1231624661236165135)
,p_report_id=>wwv_flow_imp.id(1231624816285165135)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1227552950201352532)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1227622966005703349)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229709938851242601)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1230029505021382649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229710840866242604)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1230029538676382650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1230098342847373202)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1235840517850586184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231575342217135480)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1231628691139166977)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231597178928165082)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1231628774961166978)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231604384387165095)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1231629589303166986)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231605231461165097)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1231629667271166987)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231606121495165098)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1231629741974166988)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231607020055165100)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1231629818262166989)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231609794410165104)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1231630167362166992)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>221
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231611577895165108)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1231630314665166994)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231612467401165110)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1231630419700166995)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231613381126165111)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1234217552188074146)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231614228408165114)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1234217698362074147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231615193560165116)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1234217792564074148)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231616086889165118)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1234217908404074149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231622348429165129)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1234218576908074156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>251
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231623236856165130)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1234218643130074157)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1231624113528165132)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1234218780557074158)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1301482649940208583)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1231628390384166974)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1367080541805130452)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1294048476970003446)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1367529513634873293)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1291469311136324818)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(918782334323747458)
,p_view_id=>wwv_flow_imp.id(1231624661236165135)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1235840517850586184)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1294049518542003456)
,p_plug_name=>'Absence Summary By Department'
,p_parent_plug_id=>wwv_flow_imp.id(969245856774552959)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1237498192418992021)
,p_plug_name=>'Absence Summary By Day'
,p_parent_plug_id=>wwv_flow_imp.id(1294049518542003456)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name AS DEPARTMENT,',
'    p.position_name as POSITION,',
'    e.payment_type,',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc, ',
'    TA.ABS_CODE,',
'    ta.absence_hours',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (select a.*,pkg_global_fnts.get_lookup_col(a.leave_type, ''TABLE_VALUE'') abs_code from hr_att_timesheetabsence a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where ch.work_date between :P12817_WORK_START and :P12817_WORK_END  ',
'       and TA.orgdtl_id = nvl(:P12817_DEPARTMENT,e.orgdtl_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_WORK_START,P12817_WORK_END,P12817_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Absence Summary By Day'
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
 p_id=>wwv_flow_imp.id(1238507241273963725)
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
,p_internal_uid=>595171989255288231
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199231138081335601)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199230722925335601)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199230377128335600)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199229934432335600)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199229514855335599)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837999418033071720)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199229146058335599)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199228776433335599)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199228336837335598)
,p_db_column_name=>'ABS_CODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Abs Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199227953978335598)
,p_db_column_name=>'POSITION'
,p_display_order=>100
,p_column_identifier=>'BW'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199227600464335597)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>110
,p_column_identifier=>'BX'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199227153459335597)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>120
,p_column_identifier=>'BY'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1238951155176962099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1955710'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:EMP_NAME:WKLOCATION_ID:DEPARTMENT:PAYMENT_TYPE:ABS_CODE::POSITION:DAY_NUMBERC:ABSENCE_HOURS'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'ABSENCE_HOURS'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1102333980199337041)
,p_report_id=>wwv_flow_imp.id(1238951155176962099)
,p_pivot_columns=>'DAY_NUMBERC'
,p_row_columns=>'EMP_COMPANY_NO:EMP_NAME:DEPARTMENT'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(674437872237101211)
,p_pivot_id=>wwv_flow_imp.id(1102333980199337041)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'ABSENCE_HOURS'
,p_db_column_name=>'PFC1'
,p_column_label=>'Hrs'
,p_format_mask=>'9990.00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1238909641623965650)
,p_plug_name=>'Absence Summary By Type'
,p_parent_plug_id=>wwv_flow_imp.id(1294049518542003456)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name AS DEPARTMENT,',
'    p.position_name as POSITION,',
'    e.payment_type,',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc, ',
'    TA.ABS_CODE,',
'    ta.absence_hours',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (select a.*,pkg_global_fnts.get_lookup_col(a.leave_type, ''TABLE_VALUE'') abs_code from hr_att_timesheetabsence a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where ch.work_date between :P12817_WORK_START and :P12817_WORK_END  ',
'       and TA.orgdtl_id = nvl(:P12817_DEPARTMENT,e.orgdtl_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_WORK_START,P12817_WORK_END,P12817_DEPARTMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Attendance Summary'
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
 p_id=>wwv_flow_imp.id(1238909775042965651)
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
,p_internal_uid=>595574523024290157
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199237006678335609)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199236603637335608)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199236161683335608)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199235726847335607)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199235382027335607)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837999418033071720)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199234931481335606)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199234579069335606)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199234209927335606)
,p_db_column_name=>'ABS_CODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Abs Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199233784619335605)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>110
,p_column_identifier=>'AP'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199233397233335605)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>120
,p_column_identifier=>'AQ'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199232935616335604)
,p_db_column_name=>'POSITION'
,p_display_order=>130
,p_column_identifier=>'AR'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1239028618929003450)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1955768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:EMP_NAME:WKLOCATION_ID:DEPARTMENT:PAYMENT_TYPE:ABS_CODE::DAY_NUMBERC:ABSENCE_HOURS:POSITION'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1283183537458460300)
,p_report_id=>wwv_flow_imp.id(1239028618929003450)
,p_pivot_columns=>'ABS_CODE'
,p_row_columns=>'EMP_COMPANY_NO:EMP_NAME'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(674433219945101205)
,p_pivot_id=>wwv_flow_imp.id(1283183537458460300)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'ABSENCE_HOURS'
,p_db_column_name=>'PFC1'
,p_column_label=>'Hrs'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1294049405572003455)
,p_plug_name=>'Absences Summary By Department'
,p_parent_plug_id=>wwv_flow_imp.id(1294049518542003456)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(969246267733552963)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(979288170090373681)
,p_plug_name=>'Unbalanced Timesheet'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(979288409243373683)
,p_plug_name=>'All Unbalanced'
,p_parent_plug_id=>wwv_flow_imp.id(979288170090373681)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rownum,',
'                ch.emp_id,',
'                emp.emp_company_no,',
'                to_char(ch.min_time_in, ''HH:MIPM'') min_time_in,',
'                to_char(ch.max_time_out, ''HH:MIPM'') max_time_out,',
'                nvl(p.position_name,'''') designation,',
'                Initcap(trim(ind.Surname)) || '', '' || Initcap(trim(ind.First_Name)) || '' '' || nvl(Initcap(trim(ind.Middle_Name)),'''') Name,',
'                dept.unit_name department,',
'                ch.work_date work_date,',
'                to_char(ch.work_date,''DD-MON'') short_work_date,',
'                to_char( ch.work_date, ''DY'') day_letter,',
'                to_char(ch.min_time_in, ''HH:MIPM'') time_in,',
'                to_char(ch.max_time_out,''HH:MIPM'') time_out,',
'                NVL(H.HOLIDAY_CODE,''-'') holiday,',
'                shft.shift_code,',
'                nvl(ch.assign_shift_hours,0) assign_shift_hours,',
'                nvl(ch.hours_worked,0) calculated_hours_worked,',
'                nvl(ch.normal_time,0) calculated_shift_hours_worked,',
'                nvl(ch.total_time_lost,0) calculated_total_time_lost,',
'                nvl(ch.over_time,0) calculated_over_time,',
'                nvl(keyed_absence_hours,0) keyed_absence_hours,',
'                nvl(ch.approved_abs,0) approved_abs,',
'                nvl(keyed_income_hours,0) keyed_income_hours,',
'                nvl(ch.approved_overtime,0) approved_ot',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where (nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0) or nvl(keyed_income_hours,0) != nvl(ch.approved_overtime,0))',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and dept.org_structure_id = nvl(:P12817_ORG_STRUCTURE,dept.org_structure_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END,P12817_ORG_STRUCTURE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'All Unbalanced'
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
 p_id=>wwv_flow_imp.id(979288519971373684)
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
,p_owner=>'CORREIA'
,p_internal_uid=>335953267952698190
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199248812939335629)
,p_db_column_name=>'ROWNUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rownum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199248476336335629)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199248056692335628)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199247651277335628)
,p_db_column_name=>'MIN_TIME_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Min Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199247287791335627)
,p_db_column_name=>'MAX_TIME_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Max Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199246838437335626)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199246428342335625)
,p_db_column_name=>'NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199246089549335625)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199245694673335624)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199245287351335623)
,p_db_column_name=>'SHORT_WORK_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Short Work Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199244865666335623)
,p_db_column_name=>'DAY_LETTER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Day Letter'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199244499772335622)
,p_db_column_name=>'TIME_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199244074517335621)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199243672420335621)
,p_db_column_name=>'HOLIDAY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Holiday'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199243267470335620)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shift Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199242870072335619)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'SH'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199242505019335618)
,p_db_column_name=>'CALCULATED_HOURS_WORKED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'CHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199242091595335617)
,p_db_column_name=>'CALCULATED_SHIFT_HOURS_WORKED'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199241694528335616)
,p_db_column_name=>'CALCULATED_TOTAL_TIME_LOST'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'CABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199241258504335616)
,p_db_column_name=>'CALCULATED_OVER_TIME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'COT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199240865120335615)
,p_db_column_name=>'KEYED_ABSENCE_HOURS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'KABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199240450955335615)
,p_db_column_name=>'APPROVED_ABS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'AABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199240100638335614)
,p_db_column_name=>'KEYED_INCOME_HOURS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'KOT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199239651289335613)
,p_db_column_name=>'APPROVED_OT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'AOT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(985478079999904890)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1955887'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:WORK_DATE:SHIFT_CODE:MIN_TIME_IN:MAX_TIME_OUT:ASSIGN_SHIFT_HOURS:CALCULATED_HOURS_WORKED:CALCULATED_SHIFT_HOURS_WORKED:CALCULATED_TOTAL_TIME_LOST:KEYED_ABSENCE_HOURS:APPROVED_ABS:CALCULATED_OVER_TIME:KEYED_INCOME_HOURS:APPROVED_OT:'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(985465372342899159)
,p_plug_name=>'Unbalanced Absences '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rownum,',
'                ch.emp_id,',
'                emp.emp_company_no,',
'                to_char(ch.min_time_in, ''HH:MIPM'') min_time_in,',
'                to_char(ch.max_time_out, ''HH:MIPM'') max_time_out,',
'                nvl(p.position_name,'''') designation,',
'                Initcap(trim(ind.Surname)) || '', '' || Initcap(trim(ind.First_Name)) || '' '' || nvl(Initcap(trim(ind.Middle_Name)),'''') Name,',
'                dept.unit_name department,',
'                ch.work_date work_date,',
'                to_char(ch.work_date,''DD-MON'') short_work_date,',
'                to_char( ch.work_date, ''DY'') day_letter,',
'                to_char(ch.min_time_in, ''HH:MIPM'') time_in,',
'                to_char(ch.max_time_out,''HH:MIPM'') time_out,',
'                NVL(H.HOLIDAY_CODE,''-'') holiday,',
'                shft.shift_code,',
'                nvl(ch.assign_shift_hours,0) assign_shift_hours,',
'                nvl(ch.hours_worked,0) calculated_hours_worked,',
'                nvl(ch.normal_time,0) calculated_shift_hours_worked,',
'                nvl(ch.total_time_lost,0) calculated_total_time_lost,',
'                nvl(ch.over_time,0) calculated_over_time,',
'                nvl(keyed_absence_hours,0) keyed_absence_hours,',
'                nvl(ch.approved_abs,0) approved_abs',
'                -- nvl(keyed_income_hours,0) keyed_income_hours,',
'                -- nvl(ch.approved_overtime,0) approved_ot',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and dept.org_structure_id = nvl(:P12817_ORG_STRUCTURE,dept.org_structure_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END,P12817_ORG_STRUCTURE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Unbalanced Absences '
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
 p_id=>wwv_flow_imp.id(985465546336899160)
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
,p_owner=>'CORREIA'
,p_internal_uid=>342130294318223666
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199258368878335647)
,p_db_column_name=>'ROWNUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rownum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199257919752335646)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3831174504132501290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199257517793335646)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199257175863335645)
,p_db_column_name=>'MIN_TIME_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Min Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199256720242335644)
,p_db_column_name=>'MAX_TIME_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Max Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199256315446335644)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199255972576335643)
,p_db_column_name=>'NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199255560599335642)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199255179983335641)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199254808476335641)
,p_db_column_name=>'SHORT_WORK_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Short Work Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199254371162335640)
,p_db_column_name=>'DAY_LETTER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Day Letter'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199253958505335639)
,p_db_column_name=>'TIME_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199253605815335638)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199253200292335638)
,p_db_column_name=>'HOLIDAY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Holiday'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199252739042335637)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shift Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199252350533335637)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'SH'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199251932578335636)
,p_db_column_name=>'CALCULATED_HOURS_WORKED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'CHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199251563618335635)
,p_db_column_name=>'CALCULATED_SHIFT_HOURS_WORKED'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199251179296335635)
,p_db_column_name=>'CALCULATED_TOTAL_TIME_LOST'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'CABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199250781581335634)
,p_db_column_name=>'CALCULATED_OVER_TIME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'COT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199250364276335633)
,p_db_column_name=>'KEYED_ABSENCE_HOURS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'KABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199249975784335632)
,p_db_column_name=>'APPROVED_ABS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'AABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(985499585760934999)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1955982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT:EMP_ID:WORK_DATE:SHIFT_CODE:MIN_TIME_IN:MAX_TIME_OUT:ASSIGN_SHIFT_HOURS:CALCULATED_HOURS_WORKED:CALCULATED_SHIFT_HOURS_WORKED:CALCULATED_TOTAL_TIME_LOST:KEYED_ABSENCE_HOURS:APPROVED_ABS:'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(985468061030899185)
,p_plug_name=>'Unbalanced Incomes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rownum,',
'                ch.emp_id,',
'                emp.emp_company_no,',
'                to_char(ch.min_time_in, ''HH:MIPM'') min_time_in,',
'                to_char(ch.max_time_out, ''HH:MIPM'') max_time_out,',
'                nvl(p.position_name,'''') designation,',
'                Initcap(trim(ind.Surname)) || '', '' || Initcap(trim(ind.First_Name)) || '' '' || nvl(Initcap(trim(ind.Middle_Name)),'''') Name,',
'                dept.unit_name department,',
'                ch.work_date work_date,',
'                to_char(ch.work_date,''DD-MON'') short_work_date,',
'                to_char( ch.work_date, ''DY'') day_letter,',
'                to_char(ch.min_time_in, ''HH:MIPM'') time_in,',
'                to_char(ch.max_time_out,''HH:MIPM'') time_out,',
'                NVL(H.HOLIDAY_CODE,''-'') holiday,',
'                shft.shift_code,',
'                nvl(ch.assign_shift_hours,0) assign_shift_hours,',
'                nvl(ch.hours_worked,0) calculated_hours_worked,',
'                nvl(ch.normal_time,0) calculated_shift_hours_worked,',
'                nvl(ch.total_time_lost,0) calculated_total_time_lost,',
'                nvl(ch.over_time,0) calculated_over_time,',
'                nvl(keyed_ot_hours_holiday,0) keyed_ot_hours_holiday,',
'                nvl(keyed_normal_hours_holiday,0) keyed_normal_hours_holiday,',
'                nvl(keyed_ot_hours,0) keyed_ot_hours,',
'                nvl(keyed_normal_hours,0) keyed_normal_hours,',
'                nvl(ch.approved_overtime,0) approved_ot',
'from hr_att_empcalendar_hd ch',
'    left outer join (select',
'                        sum(nvl(case when income_code in (''HOL1.5'',''HOL2'') then quantity else 0 end,0)) keyed_ot_hours_holiday,',
'                        sum(nvl(case when income_code in (''OTH1.5'',''OTH2'') then quantity else 0 end,0)) keyed_normal_hours_holiday,',
'                        sum(nvl(case when income_code in (''OT'',''OT1'') then quantity else 0 end,0)) keyed_ot_hours,',
'                        sum(nvl(case when income_code in (''6DD'',''ST'',''PREM'',''NR'') then quantity else 0 end,0)) keyed_normal_hours,',
'                        att_validate_hrs,emp_id,work_date',
'                        from hr_att_timesheetincome',
'                        group by att_validate_hrs,emp_id,work_date',
'                    ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join hr_att_shift_rota sr on emp.shift_id = sr.id and sr.org_id =:APP_ORG_ID  ',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where ',
'(',
'    (   H.HOLIDAY_CODE is not null AND ',
'        (',
'        (nvl(keyed_ot_hours_holiday,0) + nvl(keyed_ot_hours,0) > (nvl(ch.over_time,0) + nvl(sr.overtime_overdraft,0))) ',
'        OR',
'        (nvl(keyed_normal_hours_holiday,0) + nvl(keyed_normal_hours,0) > (nvl(ch.normal_time,0) )) ',
'        )',
'    )',
'OR',
'    (   H.HOLIDAY_CODE is null AND ',
'        (',
'        (nvl(keyed_ot_hours,0) > (nvl(ch.over_time,0) + nvl(sr.overtime_overdraft,0))) OR',
'        (nvl(keyed_normal_hours,0) > (nvl(ch.normal_time,0) + nvl(sr.overtime_overdraft,0))) OR',
'        (nvl(keyed_ot_hours_holiday,0) > 0) OR ',
'        (nvl(keyed_normal_hours_holiday,0) > 0)',
'        )',
'    )',
')',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id = nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and att_validate_hrs != ''NO_LIMIT''',
'and dept.org_structure_id = nvl(:P12817_ORG_STRUCTURE,dept.org_structure_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END,P12817_ORG_STRUCTURE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Unbalanced Incomes'
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
 p_id=>wwv_flow_imp.id(985468139761899186)
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
,p_owner=>'CORREIA'
,p_internal_uid=>342132887743223692
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199267890657335665)
,p_db_column_name=>'ROWNUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rownum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199267415699335664)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199267024235335663)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199266689062335663)
,p_db_column_name=>'MIN_TIME_IN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Min Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199266309706335662)
,p_db_column_name=>'MAX_TIME_OUT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Max Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199265895648335662)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199265508163335661)
,p_db_column_name=>'NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199265045727335661)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199264626143335660)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199264283939335660)
,p_db_column_name=>'SHORT_WORK_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Short Work Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199263823113335659)
,p_db_column_name=>'DAY_LETTER'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Day Letter'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199263438105335659)
,p_db_column_name=>'TIME_IN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199263061720335658)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199262681754335657)
,p_db_column_name=>'HOLIDAY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Holiday'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199262295950335656)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shift Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199261886707335655)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'SH'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199261478384335655)
,p_db_column_name=>'CALCULATED_HOURS_WORKED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'CHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199261030055335654)
,p_db_column_name=>'CALCULATED_SHIFT_HOURS_WORKED'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'CSHW'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199260680835335653)
,p_db_column_name=>'CALCULATED_TOTAL_TIME_LOST'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'CABS'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199260296648335652)
,p_db_column_name=>'CALCULATED_OVER_TIME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'COT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199259451288335650)
,p_db_column_name=>'APPROVED_OT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'AOT'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1214496335545075256)
,p_db_column_name=>'KEYED_OT_HOURS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Keyed Ot Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1214496442553075257)
,p_db_column_name=>'KEYED_NORMAL_HOURS'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Keyed Normal Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1214496530742075258)
,p_db_column_name=>'KEYED_OT_HOURS_HOLIDAY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Keyed Ot Hours Holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1214496686139075259)
,p_db_column_name=>'KEYED_NORMAL_HOURS_HOLIDAY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Keyed Normal Hours Holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(985500175136935006)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1956077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:WORK_DATE:SHIFT_CODE:MIN_TIME_IN:MAX_TIME_OUT:ASSIGN_SHIFT_HOURS:CALCULATED_HOURS_WORKED:CALCULATED_SHIFT_HOURS_WORKED:CALCULATED_OVER_TIME:APPROVED_OT:KEYED_OT_HOURS:KEYED_NORMAL_HOURS:KEYED_OT_HOURS_HOLIDAY:KEYED_NORMAL_HOURS_HOLIDAY'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(990066056235478977)
,p_name=>'Unbalanced Incomes alert'
,p_template=>4501440665235496320
,p_display_sequence=>11
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Alert'' as alert_title',
' ,''You have '' || absence || '' unbalanced absence(s) ''|| '' and '' || income || '' unbalanced income(s) ''  as alert_desc',
' ,null as alert_action',
' ,''danger'' alert_type ',
' ,''fa-user-woman'' alert_icon ',
'from (',
'select ',
'(select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and dept.org_structure_id = nvl(:P12817_ORG_STRUCTURE,dept.org_structure_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))) absence,',
'(select nvl(count(1),0) ',
'',
' from (select a.att_validate_hrs, A.emp_id,work_date,listagg(b.description, '','') entitlement,',
'    max(cot_cal)  COT,',
'    max(chw_cal) CHW,',
'    max(cshw_cal) CSHW,',
'    sum(tsi_total) Inc_Hours',
'',
'from fn_get_att_validate_hrs_compare(in_emp_id       => :P12817_EMPLOYEE',
'                                    ,in_org_id       => :APP_ORG_ID',
'                                    ,in_dept         => :P12817_DEPARTMENT',
'                                    ,in_work_start   => :P12817_WORK_START',
'                                    ,in_work_end     => :P12817_WORK_END) a ',
'join pa_pcf_incomecode b on a.income_code = b.income_code',
'join hr_rcm_empentitle c on b.id  = c.income_code_id and c.id = a.empent_id',
'and b.org_id = :APP_ORG_ID',
'group by a.emp_id, work_date,a.att_validate_hrs)',
'where (chw + cshw + cot) < inc_hours) as  income',
'',
'from dual) x',
' ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12817_ORG_STRUCTURE,P12817_EMPLOYEE,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(674400877972101153)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Alert Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(674401309882101155)
,p_query_column_id=>2
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>20
,p_column_heading=>'Alert Desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(674401678729101155)
,p_query_column_id=>3
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>30
,p_column_heading=>'Alert Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(674402057318101155)
,p_query_column_id=>4
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Alert Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(674402501436101156)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ICON'
,p_column_display_sequence=>50
,p_column_heading=>'Alert Icon'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1030348108427611163)
,p_plug_name=>'Timesheet Incomes'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1009438957029231871)
,p_plug_name=>'Work Requested'
,p_region_name=>'workreq'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,',
'       EMP_ID,',
'       START_TIME,',
'       END_TIME,',
'       NATURE_OF_WORK,',
'       REASON_INCOME,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       TRANSACTION_TYPE,',
'       STATUS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,',
'       ORG_ID',
'  from HR_ATT_TIMESHEETINCOME_REQ',
' where org_id = :APP_ORG_ID',
' and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
' and emp_id = nvl(:P12817_EMPLOYEE, emp_id)',
' and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_EARNINGS_PERIOD,P12817_WORK_START,P12817_WORK_END'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Work Requested'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009439226609231873)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009439304970231874)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P12817_DEFAULT_WORK_DATE'
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009439409475231875)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,111) = decode(w.user_name, null, 111, :APP_USER))',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and org_id=:APP_ORG_ID',
'and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')      ',
'and x.id = nvl(:P12817_EMPLOYEE, x.id)',
'and x.orgdtl_id = nvl(:P12817_DEPARTMENT,x.orgdtl_id)',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P162_DEPARTMENT,P162_EMPLOYEE'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009439547536231876)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1009439652116231877)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1009439673978231878)
,p_name=>'NATURE_OF_WORK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NATURE_OF_WORK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nature Of Work'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>16000
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
 p_id=>wwv_flow_imp.id(1009439806466231879)
,p_name=>'REASON_INCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_INCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reason Income'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>500
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from hr_hcf_lookup',
'where upper(table_name)=''TBLREASON''',
'and org_id = :APP_ORG_ID',
'AND pkg_global_fnts.get_lookup_col(LOOKUP_ID, ''TABLE_VALUE'') = ''RTIN''',
'order by 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_value=>'--Select Reason--'
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
 p_id=>wwv_flow_imp.id(1009439994427231881)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(1009440120628231882)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Approved Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1009440167202231883)
,p_name=>'TRANSACTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=162)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(1009440316217231884)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'And Webpage_Id=162',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'-- and upper(Wfl_Status_Description) not like ''VER%''  ',
'-- and upper(Wfl_Status_Description) not like ''UNVER%'' ',
'-- and  upper(Wfl_Status_Description) not like ''%SEND%''  ',
'-- and  upper(Wfl_Status_Description) not like ''%FORW%''    ',
'order by sequence'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009440530566231886)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1009440631834231887)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1009440671367231888)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1009440761582231889)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1009440901934231890)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009441031624231891)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1009441070445231892)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1009439146956231872)
,p_internal_uid=>366103894937556378
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_update_authorization_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3806878643214039124)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(1026536453168871252)
,p_interactive_grid_id=>wwv_flow_imp.id(1009439146956231872)
,p_static_id=>'466527'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1026536738845871252)
,p_report_id=>wwv_flow_imp.id(1026536453168871252)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(979893406397809716)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1009441031624231891)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026537213622871257)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1009439226609231873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026538066641871264)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1009439304970231874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026538890959871269)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1009439409475231875)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>281.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026539829180871272)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1009439547536231876)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128.85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026540674967871275)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1009439652116231877)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026541625204871279)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1009439673978231878)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026542505718871282)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1009439806466231879)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026544337844871288)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1009439994427231881)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026545180654871291)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1009440120628231882)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026546082017871294)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1009440167202231883)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026547005868871298)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1009440316217231884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026548825149871304)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1009440530566231886)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026549749701871308)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1009440631834231887)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026550625788871311)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1009440671367231888)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026551509799871314)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1009440761582231889)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1026552364976871318)
,p_view_id=>wwv_flow_imp.id(1026536738845871252)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1009440901934231890)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1102906773632193715)
,p_plug_name=>'Processed Incomes'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       EMPENT_ID,',
'       INCOME_CODE,',
'       RATE,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       PAYSTATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       REASON_INCOME TASK,',
'       REASON_INCOME,',
'       END_TIME,',
'       START_TIME,',
'       to_char(WORK_DATE,''Day'') WEEK_DAY,',
'       PROJECT_ID',
'',
'  from HR_ATT_TIMESHEETINCOME',
' where org_id = :APP_ORG_ID',
' and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
' and emp_id = nvl(:P12817_EMPLOYEE, emp_id)',
' --and EARNINGS_PERIOD_ID = nvl(:P12817_EARNINGS_PERIOD, EARNINGS_PERIOD_ID)',
' and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
' and upper(pkg_global_fnts.status_descript(status)) in (''APPROVED'', ''VERIFY'',''DISAPPROVED'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_EARNINGS_PERIOD,P12817_WORK_START,P12817_WORK_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Processed Incomes'
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
 p_id=>wwv_flow_imp.id(679495516897022195)
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
,p_owner=>'MKDEVELOPER'
,p_internal_uid=>36160264878346701
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679495614046022196)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679495689782022197)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679495770497022198)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679495872185022199)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dept'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3186724173656028121)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496005329022200)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3565917866190394889)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496126099022201)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496163937022202)
,p_db_column_name=>'RATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496329709022203)
,p_db_column_name=>'QUANTITY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496373081022204)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496531013022205)
,p_db_column_name=>'PAYSTATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'P.Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496577250022206)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496696143022207)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496801922022208)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496920147022209)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679496995294022210)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497128334022211)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497232366022212)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497318100022213)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497375060022214)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497494391022215)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'TT'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497622036022216)
,p_db_column_name=>'STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_html_expression=>'<span class = "u-bold"> #STATUS# </span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854529040127313166)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497829355022218)
,p_db_column_name=>'END_TIME'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'End Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497899388022219)
,p_db_column_name=>'START_TIME'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679497994174022220)
,p_db_column_name=>'WEEK_DAY'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Week Day'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679498103224022221)
,p_db_column_name=>'TASK'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Task'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(676750144658857217)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679498156296022222)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Proj'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(676554915836994396)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(679498346904022223)
,p_db_column_name=>'REASON_INCOME'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Reason Income'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3717723130311608091)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(679530927430026786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'361957'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:EMP_ID:TASK:EMPENT_ID:START_TIME:END_TIME:QUANTITY:APPROVED_BY:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1200059950941624054)
,p_plug_name=>'Income Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       WORK_DATE,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       EMPENT_ID,',
'       INCOME_CODE,',
'       RATE,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       PAYSTATUS,',
'       REMARKS,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       REASON_INCOME,',
'       END_TIME,',
'       START_TIME,',
'       WEEK_DAY,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       ENTERED_BY_AUD,',
'       ENTERY_DATE_AUD,',
'       AUDIT_OPERATION',
'  from HR_ATT_TIMESHEETINCOME_AUD',
' where org_id = :APP_ORG_ID',
' and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
' and emp_id = nvl(:P12817_EMPLOYEE, emp_id)',
' --and EARNINGS_PERIOD_ID = nvl(:P12817_EARNINGS_PERIOD, EARNINGS_PERIOD_ID)',
' and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'	'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_EARNINGS_PERIOD,P12817_WORK_START,P12817_WORK_END'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Income Audit Trail'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1200063189989624086)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200063246126624087)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3718004859297579194)
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
 p_id=>wwv_flow_imp.id(1200063399170624088)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orgdtl Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200063496923624089)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854126472642211364)
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
 p_id=>wwv_flow_imp.id(1200063564552624090)
,p_name=>'INCOME_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>120
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
 p_id=>wwv_flow_imp.id(1200063665511624091)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200063802394624092)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200063885295624093)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1200063998543624094)
,p_name=>'PAYSTATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYSTATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Paystatus'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(1200064052094624095)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(1200064147129624096)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Transaction Type Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1200064299162624097)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854529040127313166)
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
 p_id=>wwv_flow_imp.id(1200064375765624098)
,p_name=>'REASON_INCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_INCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reason Income'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from hr_hcf_lookup',
'where upper(table_name)=''TBLREASON''',
'and org_id = :APP_ORG_ID',
'AND pkg_global_fnts.get_lookup_col(LOOKUP_ID, ''TABLE_VALUE'') = ''RTIN''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1200064482778624099)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200064515229624100)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200064666462624101)
,p_name=>'WEEK_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Week Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(1200064780438624102)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(1200064861976624103)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200151361449688454)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(1200151470514688455)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200151579573688456)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(1200151616438688457)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Approved Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200151760254688458)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(1200151877246688459)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Verified Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200151917888688460)
,p_name=>'ENTERED_BY_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY_AUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Entered By Aud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1200152048411688461)
,p_name=>'ENTERY_DATE_AUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERY_DATE_AUD'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entery Date Aud'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1200152171952688462)
,p_name=>'AUDIT_OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Audit Operation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1200063025970624085)
,p_internal_uid=>556727773951948591
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
 p_id=>wwv_flow_imp.id(1200157307619689662)
,p_interactive_grid_id=>wwv_flow_imp.id(1200063025970624085)
,p_static_id=>'1964968'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1200157457150689662)
,p_report_id=>wwv_flow_imp.id(1200157307619689662)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200158000428689664)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(1200063189989624086)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200158902226689668)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1200063246126624087)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>213
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200159776977689671)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1200063399170624088)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200160623984689675)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1200063496923624089)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200161586164689678)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1200063564552624090)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200162442788689681)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1200063665511624091)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200163376298689685)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1200063802394624092)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200164263142689688)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1200063885295624093)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200165164708689691)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1200063998543624094)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200166066414689695)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1200064052094624095)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200167003516689699)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1200064147129624096)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200167905075689702)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1200064299162624097)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200168734256689705)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1200064375765624098)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200169614406689709)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1200064482778624099)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200170578986689712)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1200064515229624100)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200171475699689715)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1200064666462624101)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200172322795689718)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1200064780438624102)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>210
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200173267728689722)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1200064861976624103)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200174158734689727)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1200151361449688454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200175086706689732)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1200151470514688455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200175994736689735)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1200151579573688456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>214
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200176906006689739)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1200151616438688457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200177728835689742)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1200151760254688458)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>234.79998779296875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200178684795689745)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1200151877246688459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>185.20001220703125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200179542183689748)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1200151917888688460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216.2
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200180465208689751)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(1200152048411688461)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1200181401782689754)
,p_view_id=>wwv_flow_imp.id(1200157457150689662)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(1200152171952688462)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1283169622844573426)
,p_plug_name=>'Keyed Incomes'
,p_region_name=>'emp_time_incomes'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       WORK_DATE,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       EMPENT_ID,',
'       INCOME_CODE,',
'       RATE,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       PAYSTATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       REASON_INCOME,',
'       END_TIME,',
'       START_TIME,',
'       WEEK_DAY,ATT_VALIDATE_HRS',
'  from HR_ATT_TIMESHEETINCOME',
' where org_id = :APP_ORG_ID',
' and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
' and emp_id = nvl(:P12817_EMPLOYEE, emp_id)',
'and project_id is null',
' --and EARNINGS_PERIOD_ID = nvl(:P12817_EARNINGS_PERIOD, EARNINGS_PERIOD_ID)',
' and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
' and upper(pkg_global_fnts.status_descript(status)) IN (''KEYED'')',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_EARNINGS_PERIOD,P12817_WORK_START,P12817_WORK_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Keyed Incomes'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(680446778831974496)
,p_name=>'ATT_VALIDATE_HRS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_VALIDATE_HRS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Att Validate Hrs'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(1181956198864832715)
,p_name=>'WEEK_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Week Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(1283051098708082549)
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
 p_id=>wwv_flow_imp.id(1283051180957082550)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283051352320082552)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'And Webpage_Id=162',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'and upper(Wfl_Status_Description) not like ''VER%''',
'and upper(Wfl_Status_Description) not like ''APPRO%''    ',
'and upper(Wfl_Status_Description) not like ''UNVER%'' ',
'and  upper(Wfl_Status_Description) not like ''%SEND%''  ',
'and  upper(Wfl_Status_Description) not like ''%FORW%''    ',
'order by sequence'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE_ID'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283051507699082553)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=162)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283051551728082554)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1283051724486082555)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1283051753895082556)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1283051922315082557)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1283052077125082559)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1283052194289082560)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1283052337255082561)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1283052400764082562)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1283168267478573413)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(1283168364157573414)
,p_name=>'PAYSTATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYSTATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844365834078229284)
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283168585979573416)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283168732233573417)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283168841911573418)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283168999805573420)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, a.id',
'from hr_rcm_empentitle a join pa_pcf_incomecode b on a.income_code_id=b.id',
'where a.emp_id=:EMP_ID and upper(a.admin_status) = ''MAN''',
'and upper(b.dept_to_manage) = ''EXT_DEPT''',
'and (A.end_date is null or a.end_date >= trunc(current_date))',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283169115516573421)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283169148508573422)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'       initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'        ',
'        from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID',
'        --and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')      ',
'        and x.id = nvl(:P12817_EMPLOYEE, x.id)',
'        and x.orgdtl_id = nvl(:P12817_DEPARTMENT,x.orgdtl_id)',
'and (date_separated is null or date_separated between :P12817_WORK_START and :P12817_WORK_END or date_separated > :P12817_WORK_END)',
'        order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P162_DEPARTMENT,P162_EMPLOYEE'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283169296802573423)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P12817_DEFAULT_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1283169408866573424)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1372718853143833463)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>490
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1372718869790833464)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>480
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1372720785779833483)
,p_name=>'INCOME_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1380792016524039658)
,p_name=>'REASON_INCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_INCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reason For Income'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from hr_hcf_lookup',
'where upper(table_name)=''TBLREASON''',
'and org_id = :APP_ORG_ID',
'AND pkg_global_fnts.get_lookup_col(LOOKUP_ID, ''TABLE_VALUE'') = ''RTIN''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_value=>'--Select Reason--'
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
 p_id=>wwv_flow_imp.id(1283169501133573425)
,p_internal_uid=>639834249114897931
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_update_authorization_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3806878643214039124)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(1283046757805075556)
,p_interactive_grid_id=>wwv_flow_imp.id(1283169501133573425)
,p_static_id=>'306825'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1283046574103075556)
,p_report_id=>wwv_flow_imp.id(1283046757805075556)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(680453760038984928)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(680446778831974496)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1182808076262568754)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1181956198864832715)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283019930903065128)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1283051180957082550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283026354097075523)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1283051352320082552)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283027330596075524)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1283051507699082553)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283028240161075525)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(1283051551728082554)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283029065938075527)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1283051724486082555)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283030005752075528)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1283051753895082556)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283030934916075530)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1283051922315082557)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283032659091075532)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1283052077125082559)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283033505031075534)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1283052194289082560)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283034416425075535)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1283052337255082561)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283035336091075537)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1283052400764082562)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283036150399075538)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1283168267478573413)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>184
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283037073380075539)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1283168364157573414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283038901244075542)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1283168585979573416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283039768433075544)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1283168732233573417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283040651652075545)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1283168841911573418)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283042498470075548)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1283168999805573420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283043358198075550)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1283169115516573421)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>275
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283044302020075551)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1283169148508573422)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>267
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283045157852075554)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1283169296802573423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1283046079310075555)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1283169408866573424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1367963371934878784)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1372718853143833463)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1367964294879878786)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1372718869790833464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1367981455559878828)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1372720785779833483)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1409230206540305419)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1380792016524039658)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(918782295335747458)
,p_view_id=>wwv_flow_imp.id(1283046574103075556)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1283168732233573417)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1350556671909525561)
,p_plug_name=>'Keyed Tasks'
,p_region_name=>'emp_time_incomess'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ATT_VALIDATE_HRS,',
'       WORK_DATE,',
'       EMP_ID,',
'       ORGDTL_ID,',
'       EMPENT_ID,',
'       INCOME_CODE,',
'       RATE,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       PAYSTATUS,',
'       REMARKS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       VERIFIED_BY,',
'       VERIFIED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS,',
'       REASON_INCOME,',
'       END_TIME,',
'       START_TIME,',
'       WEEK_DAY,',
'       PROJECT_ID',
'  from HR_ATT_TIMESHEETINCOME',
' where org_id = :APP_ORG_ID',
' and orgdtl_id = nvl(:P12817_DEPARTMENT,orgdtl_id)',
' and emp_id = nvl(:P12817_EMPLOYEE, emp_id)',
'and project_id is not null',
' --and EARNINGS_PERIOD_ID = nvl(:P12817_EARNINGS_PERIOD, EARNINGS_PERIOD_ID)',
' and trunc(to_date(work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
' and upper(pkg_global_fnts.status_descript(status)) IN (''KEYED'')',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P12817_PROJECTS,P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_EARNINGS_PERIOD,P12817_WORK_START,P12817_WORK_END'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Keyed Tasks'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(677291771203075195)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>530
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(676554915836994396)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(700400766397710461)
,p_name=>'ATT_VALIDATE_HRS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATT_VALIDATE_HRS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1249343247929784850)
,p_name=>'WEEK_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Week Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(1350438147773034684)
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
 p_id=>wwv_flow_imp.id(1350438230022034685)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350438401385034687)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'And Webpage_Id=162',
'and TRANSACTION_TYPE_ID=:TRANSACTION_TYPE_ID',
'and upper(Wfl_Status_Description) not like ''VER%''',
'and upper(Wfl_Status_Description) not like ''APPRO%''    ',
'and upper(Wfl_Status_Description) not like ''UNVER%'' ',
'and  upper(Wfl_Status_Description) not like ''%SEND%''  ',
'and  upper(Wfl_Status_Description) not like ''%FORW%''    ',
'order by sequence'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'TRANSACTION_TYPE_ID'
,p_ajax_items_to_submit=>'TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350438556764034688)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Transaction Type '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=162)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'110'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350438600793034689)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1350438773551034690)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1350438802960034691)
,p_name=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1350438971380034692)
,p_name=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPROVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Approved By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1350439126190034694)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1350439243354034695)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1350439386320034696)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(1350439449829034697)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(1350555316543525548)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(1350555413222525549)
,p_name=>'PAYSTATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYSTATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844365834078229284)
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350555635044525551)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350555781298525552)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Hours'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0.1',
  'number_alignment', 'left',
  'virtual_keyboard', 'numeric')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350555890976525553)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350556048870525555)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, a.id',
'from hr_rcm_empentitle a join pa_pcf_incomecode b on a.income_code_id=b.id',
'where a.emp_id=:EMP_ID and upper(a.admin_status) = ''MAN''',
'and upper(b.dept_to_manage) = ''EXT_DEPT''',
'--and b.att_validate_hRS = ''NO_LIMIT''',
'and (A.end_date is null or a.end_date >= trunc(current_date))',
'and exists (',
'select * from (select fn_get_dedinc_desc(in_id => description, in_type => ''INCOME'') d ,to_number(description) r ',
'from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => ( ',
'    ',
'    select income_code_id',
'            from hr_hcf_wkactivity_task where id = :REASON_INCOME),in_delimiter => '':''))',
'            ) x where r = b.id)',
'order by 1',
'',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'REASON_INCOME'
,p_ajax_items_to_submit=>'EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
end;
/
begin
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350556164581525556)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350556197573525557)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'       initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(''||EMP_COMPANY_NO||'')'' a,x.ID b',
'        ',
'        from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID',
'        --and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')      ',
'        and x.id = nvl(:P12817_EMPLOYEE, x.id)',
'        and x.orgdtl_id = nvl(:P12817_DEPARTMENT,x.orgdtl_id)',
'and (date_separated is null or date_separated between :P12817_WORK_START and :P12817_WORK_END or date_separated > :P12817_WORK_END)',
'        order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P162_DEPARTMENT,P162_EMPLOYEE'
,p_ajax_items_to_submit=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350556345867525558)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_stretch=>'A'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P12817_DEFAULT_WORK_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1350556457931525559)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1440105902208785598)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1440105918855785599)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1440107834844785618)
,p_name=>'INCOME_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1448179065588991793)
,p_name=>'REASON_INCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_INCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Task Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(677667597149462144)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(1350556550198525560)
,p_internal_uid=>707221298179850066
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_update_authorization_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3806878643214039124)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(1350433806870027691)
,p_interactive_grid_id=>wwv_flow_imp.id(1350556550198525560)
,p_static_id=>'306825'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1350433623168027691)
,p_report_id=>wwv_flow_imp.id(1350433806870027691)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(677297758388075506)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(677291771203075195)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711028866889789041)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(700400766397710461)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1250195125327520889)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1249343247929784850)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350406979968017263)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1350438230022034685)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350413403162027658)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1350438401385034687)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350414379661027659)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1350438556764034688)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350415289226027660)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(1350438600793034689)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350416115003027662)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(1350438773551034690)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350417054817027663)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1350438802960034691)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350417983981027665)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1350438971380034692)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350419708156027667)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1350439126190034694)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350420554096027669)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1350439243354034695)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350421465490027670)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1350439386320034696)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350422385156027672)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1350439449829034697)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350423199464027673)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1350555316543525548)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>184
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350424122445027674)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1350555413222525549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350425950309027677)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1350555635044525551)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350426817498027679)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1350555781298525552)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350427700717027680)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1350555890976525553)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350429547535027683)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1350556048870525555)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350430407263027685)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1350556164581525556)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>275
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350431351085027686)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1350556197573525557)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>258
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350432206917027689)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1350556345867525558)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1350433128375027690)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1350556457931525559)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1435350420999830919)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1440105902208785598)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1435351343944830921)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1440105918855785599)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1435368504624830963)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1440107834844785618)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1476617255605257554)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1448179065588991793)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(986169344400699593)
,p_view_id=>wwv_flow_imp.id(1350433623168027691)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1350555781298525552)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1375297688106512088)
,p_plug_name=>'Income Summary By Department'
,p_parent_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1319682301248149817)
,p_plug_name=>' Employee Income Summary'
,p_region_name=>'abs_sum_day'
,p_parent_plug_id=>wwv_flow_imp.id(1375297688106512088)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name department,',
'    p.position_name as designation,',
'    e.payment_type,',
'',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc,  ',
'  ',
'    ',
'    TA.income_CODE,',
'    ta.quantity,',
'    ta.income_code ||''-''||to_char(quantity) code_qty',
'    ',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    join (   select a.* from hr_att_timesheetincome a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'     where trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))  ',
'    and e.orgdtl_id = nvl(:P12817_DEPARTMENT,e.orgdtl_id)',
'',
'    ',
'    --AND e.orgdtl_id = 2373',
'    /*    and ch.emp_id = (case when  $P{EMP_ID}  = 9999 then ch.emp_id else  $P{EMP_ID}    end)',
'        and e.orgdtl_id = (case when  $P{DEPARTMENT_ID}  = 9999 then e.orgdtl_id else  $P{DEPARTMENT_ID}  end)',
'        and e.wklocation_id = (case when  $P{WKLOCATION_ID}  = 9999 then ch.work_location_id else  $P{WKLOCATION_ID}  end)',
'        and e.payment_type =  $P{PAYMENT_TYPE}',
'        and ch.org_id =  $P{IN_ORG_ID}',
'        */',
'',
' ',
'/*',
')',
'PIVOT',
'(',
'sum(absence_hours) ',
'for day_numberc in (''D1'' D1,',
'                    ''D2'' D2,''D3'' D3,''D4'' D4,''D5'' D5,''D6'' D6,''D7'' D7,''D8'' D8,''D9'' D9,''D10'' D10,',
'                    ''D11'' D11,''D12'' D12, ''D13'' D13,''D14'' D14,''D15'' D15,''D16'' D16,''D17'' D17,''D18'' D18,''D19'' D19,''D20'' D20,',
'                    ''D21'' D21 ,''D22'' D22,''D23'',''D24'' D24,''D25'' D25,''D26'' D26,''D27'' D27,''D28'' D28,''D29'' D29,''D30'' D30,''D31'' D31',
'                   )',
'',
' ',
'',
')',
'*/',
'',
'',
'',
'',
'',
'/*',
'SELECT *--EMP_NAME,D1,D2,D3,D4,D,D6,D7,D8,D9,D10,D11,D2,D13,D14,D15,D16,D17,D18,D19,D20,',
'       -- D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31',
'from',
'(',
'    select ch.id,',
'    ch.emp_id,',
'    e.emp_company_no,',
'    Initcap(i.Surname) || '', '' || Initcap(i.First_Name) || '' '' || nvl(Initcap(i.Middle_Name),'''')||''(''||e.emp_company_no||'')'' EMP_Name,',
'    e.wklocation_id,',
'    od.unit_name department,',
'    p.position_name as designation,',
'    e.payment_type,',
'    ',
'    ''D''||lpad(EXTRACT(DAY FROM ch.work_date),2,''0'') day_numberc, ',
'    ',
'    TA.ABS_CODE,',
'    ta.absence_hours',
'    ',
'    from hr_att_empcalendar_hd ch',
'    join hr_rcm_employee e on e.id = ch.emp_id',
'    join hr_rcm_individual i on e.ind_id = i.id',
'    left join (select a.*,pkg_global_fnts.get_lookup_col(a.leave_type, ''TABLE_VALUE'') abs_code from hr_att_timesheetabsence a) ta ',
'        on ch.emp_id = ta.emp_id and trunc(ch.work_date) = trunc(ta.work_date)',
'    left outer join hr_hcf_position p on e.position_id = p.id',
'    left outer join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
'    where trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))  ',
'    and e.orgdtl_id = nvl(:P12817_DEPARTMENT,e.orgdtl_id)',
'    --AND e.orgdtl_id = 2373',
'    --    and ch.emp_id = (case when  $P{EMP_ID}  = 9999 then ch.emp_id else  $P{EMP_ID}    end)',
'    --    and e.orgdtl_id = (case when  $P{DEPARTMENT_ID}  = 9999 then e.orgdtl_id else  $P{DEPARTMENT_ID}  end)',
'    --    and e.wklocation_id = (case when  $P{WKLOCATION_ID}  = 9999 then ch.work_location_id else  $P{WKLOCATION_ID}  end)',
'     --   and e.payment_type =  $P{PAYMENT_TYPE}',
'     --   and ch.org_id =  $P{IN_ORG_ID}',
'       ',
'',
' ',
'',
')',
'PIVOT',
'(',
'sum(absence_hours) ',
'for day_numberc in (''D01'' D01,',
'                    ''D02'' D02,''D03'' D03,''D04'' D04,''D05'' D05,''D06'' D06,''D07'' D07,''D08'' D08,''D09'' D09,''D10'' D10,',
'                    ''D11'' D11,''D12'' D12, ''D13'' D13,''D14'' D14,''D15'' D15,''D16'' D16,''D17'' D17,''D18'' D18,''D19'' D19,''D20'' D20,',
'                    ''D21'' D21 ,''D22'' D22,''D23'' D23,''D24'' D24,''D25'' D25,''D26'' D26,''D27'' D27,''D28'' D28,''D29'' D29,''D30'' D30,''D31'' D31',
'                   )',
'',
' ',
'',
')',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12817_WORK_START,P12817_WORK_END,P12817_DEPARTMENT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' Employee Income Summary'
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
 p_id=>wwv_flow_imp.id(1320248375598783342)
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
,p_internal_uid=>676913123580107848
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199290465404335698)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199290063709335698)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199289682509335697)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199289252148335696)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199288901987335696)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837999418033071720)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199288438401335695)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199288062927335695)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199287697491335694)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199286034436335691)
,p_db_column_name=>'DAY_NUMBERC'
,p_display_order=>90
,p_column_identifier=>'AX'
,p_column_label=>'Day Numberc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199286419866335692)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>100
,p_column_identifier=>'AY'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199286813584335692)
,p_db_column_name=>'QUANTITY'
,p_display_order=>110
,p_column_identifier=>'AZ'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199287254834335693)
,p_db_column_name=>'CODE_QTY'
,p_display_order=>120
,p_column_identifier=>'BA'
,p_column_label=>'Code Qty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1320316260711790157)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1956303'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT:PAYMENT_TYPE:EMP_COMPANY_NO:EMP_NAME:DESIGNATION::DAY_NUMBERC:INCOME_CODE:QUANTITY:CODE_QTY'
,p_break_on=>'DEPARTMENT:PAYMENT_TYPE:0:0:0:0'
,p_break_enabled_on=>'DEPARTMENT:PAYMENT_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1227483054880766767)
,p_plug_name=>'Timesheet Incomes/Absences Filter'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>1
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674342335412101086)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_button_name=>'EXECUTE_PROCESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute Process'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'pkg_global_fnts.chk_approver(:APP_USER)=1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
,p_button_comment=>'prompt warning if unbalance records exist.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674349471946101093)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_button_name=>'TIMESHEET_INCOME_DETAIL_EXTENDED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Timesheet Income Detail Extended'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3806877419215039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674480816891101255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(862657506732915419)
,p_button_name=>'FORWARD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674342733859101087)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_button_name=>'APPLY_ATTENDANCE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send to Summary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674343103538101087)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_button_name=>'TIMESHEET_ABSENCE_DETAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Timesheet Absence Detail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3806877746305039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674343483581101087)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_button_name=>'TIMESHEET_ABSENCE_SUMMARY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Timesheet Absence Summary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3806877746305039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674343870901101087)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'pkg_global_fnts.chk_approver(:APP_USER)=1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674349945644101093)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_button_name=>'TIMESHEET_INCOME_DETAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Timesheet Income Detail'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3806877419215039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(674350331081101093)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(1030348108427611163)
,p_button_name=>'TIMESHEET_INCOME_SUMMARY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Timesheet Income Summary'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_security_scheme=>wwv_flow_imp.id(3806877419215039124)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(677140227099028533)
,p_name=>'P12817_REPORT_URL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(974317846448873664)
,p_name=>'P12817_OVERLAP_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(974318131594878009)
,p_name=>'P12817_L_URL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(974456897911889669)
,p_name=>'P12817_FORWARD_LIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(862657506732915419)
,p_prompt=>'Forward List'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_NAME A, USER_NAME B',
'from tbluser',
'where can_forward = ''Y''',
'and can_verify = ''Y''',
'and UPPER(user_name) <> upper(:APP_USER)',
'-- AND user_name not like ''%@INNOSYSGY.COM''',
'-- and upper(user_name)  like ''%@%''',
'',
'',
'',
'-- select USERS, user_name',
'-- from qry_manual_forward'))
,p_lov_display_null=>'YES'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(974457342549889670)
,p_name=>'P12817_FORWARD_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(862657506732915419)
,p_prompt=>'Forward Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Send for Verification;APPROVED'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199190220471335532)
,p_name=>'P12817_ORG_STRUCTURE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_prompt=>'Org Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where ohd.org_id = :APP_ORG_ID'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1199190643679335534)
,p_name=>'P12817_EARNINGS_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_date(''01''||TO_CHAR(current_date,''MON'')||''-''||extract(year from current_date)) b',
'FROM DUAL'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , to_date(''01-''||TO_CHAR(END_DATE,''MON'')||''-''||company_year) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'      )',
'ORDER BY C DESC, D DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Period--'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199190962224335534)
,p_name=>'P12817_DEPARTMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
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
'and wu.org_structure_id = nvl(:P12817_ORG_STRUCTURE,wu.org_structure_id)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID )',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER, :APP_PAGE_ID), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P12817_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(1199191411714335535)
,p_name=>'P12817_WORK_START'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select current_date-1',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(1199191757118335535)
,p_name=>'P12817_WORK_END'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select current_date-1',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(1199192155082335535)
,p_name=>'P12817_EMPLOYEE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER) and w.WEBpage_id =:APP_PAGE_ID )',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER, :APP_PAGE_ID), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and org_id=:APP_ORG_ID',
'-- and upper(x.EMPLOYMENT_STATUS) = upper(''ACTIVE'')  ',
'and (x.date_employed <= to_date(:P12817_WORK_END, ''DD-MON-YYYY'')',
'and (nvl(x.date_separated,to_date(:P12817_WORK_START, ''DD-MON-YYYY'')) >= to_date(:P12817_WORK_START, ''DD-MON-YYYY'')))    ',
'and x.orgdtl_id = nvl(:P12817_DEPARTMENT, x.orgdtl_id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>6
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199192583133335536)
,p_name=>'P12817_DEFAULT_WORK_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_item_default=>'select to_date(current_date,''DD-MON-YYYY'')-1 FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
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
 p_id=>wwv_flow_imp.id(1199193021470335536)
,p_name=>'P12817_PROCESS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B,A',
'from (',
'        select  ''Approve'' b,''APPROVE'' a',
'        from dual',
'        union',
'        select   ''Unapprove'' b,''DISAPPROVE'' a',
'        from dual',
'    )',
'where pkg_global_fnts.chk_approver(:APP_USER) > 0'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when=>'pkg_global_fnts.chk_approver(:APP_USER)=1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199193357793335537)
,p_name=>'P12817_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199193783576335537)
,p_name=>'P12817_MASTER_WORK_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199194195707335537)
,p_name=>'P12817_MASTER_EMP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199194620105335538)
,p_name=>'P12817_URL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199194967330335538)
,p_name=>'P12817_REPORT_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_item_default=>'6131'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199195412997335539)
,p_name=>'P12817_TOTAL_UNBALANCED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1227483054880766767)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199332220759335743)
,p_name=>'P12817_UNBALANCED_ASB'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(990066056235478977)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199332527466335743)
,p_name=>'P12817_UNBALANCED_INCOME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(990066056235478977)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(674482064114101257)
,p_validation_name=>'chk_31_days'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare ',
'    v_count number(10):= 0;',
'',
'begin',
'',
'select to_number(to_date(:P12817_WORK_END)-to_date(:P12817_WORK_START)) into v_count',
'from dual;',
'',
'if v_count > 35 then',
'',
'return False;',
'',
'else',
'',
'return True;',
'',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the work start and end date span should not exceed 35 days.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674500514626101269)
,p_name=>'dy_sum_exclude_day'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORKDAYS'
,p_condition_element=>'P12817_WORKDAYS'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674500982829101270)
,p_event_id=>wwv_flow_imp.id(674500514626101269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'HOLIDAYS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P12817_HOLIDAY_FIRST + :P12817_WORKDAYS',
'from dual'))
,p_attribute_07=>'P12817_HOLIDAY_FIRST,P12817_WORKDAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674501365955101270)
,p_name=>'dy_refresh_all_absence_regions'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674501931131101270)
,p_event_id=>wwv_flow_imp.id(674501365955101270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674502358556101270)
,p_event_id=>wwv_flow_imp.id(674501365955101270)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102930077904154462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674502914584101271)
,p_event_id=>wwv_flow_imp.id(674501365955101270)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102778753110001476)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674503409247101271)
,p_event_id=>wwv_flow_imp.id(674501365955101270)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_L_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  APEX_PAGE.GET_URL (',
'            p_application => :APP_ID,',
'            p_session => :APP_SESSION,',
'            p_page   => :APP_PAGE_ID,',
'            p_items  => ''P12817_ORG_STRUCTURE,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_EMPLOYEE'',',
'            p_values => :P12817_ORG_STRUCTURE || '','' ||  ',
'                        :P12817_DEPARTMENT || '','' || ',
'                        :P12817_WORK_START || '','' || ',
'                        :P12817_WORK_END || '','' || ',
'                        :P12817_EMPLOYEE   ) A',
'                        from dual'))
,p_attribute_07=>'P12817_ORG_STRUCTURE ,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_EMPLOYEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674503893512101271)
,p_event_id=>wwv_flow_imp.id(674501365955101270)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_OVERLAP_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_count number(5) := 0;',
'BEGIN',
'',
'select count(1) into l_count',
'from VW_ATT_BADTIMERECS br',
'JOIN HR_RCM_EMPLOYEE E ON E.ID=br.EMP_ID',
'left outer join hr_hcf_orgstructuredtl od on br.orgdtl_id = od.id',
'left outer join hr_hcf_position p on e.position_id = p.id',
'where br.WORK_DATE BETWEEN :P12817_WORK_START AND :P12817_WORK_END',
'AND br.EMP_ID = NVL(:P12817_EMPLOYEE,br.EMP_ID)',
'AND br.ORGDTL_ID = NVL(:P12817_DEPARTMENT,br.ORGDTL_ID)',
'AND br.ORG_ID = :APP_ORG_ID',
'and exists',
'(',
'    select 1',
'    from HR_HCF_ORGSTRUCTUREDTL T ',
'    left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'    where  t.id= br.ORGDTL_ID',
'    and br.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, br.ORGDTL_ID, w.org_structure_id)         ',
')',
'AND upper(br.REMARKS) = ''TIME RECORD OVERLAPS WITH ANOTHER TIME RECORD'';',
'',
'',
'return l_count;',
'',
'end;'))
,p_attribute_07=>'P12817_WORK_START,P12817_WORK_END,P12817_EMPLOYEE,P12817_DEPARTMENT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674504343988101272)
,p_name=>'dy_refresh_absence_pivots'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674504805104101272)
,p_event_id=>wwv_flow_imp.id(674504343988101272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1237498192418992021)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674505289958101272)
,p_event_id=>wwv_flow_imp.id(674504343988101272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1238909641623965650)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674505697562101272)
,p_name=>'dy_set_period'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674506164266101273)
,p_event_id=>wwv_flow_imp.id(674505697562101272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_WORK_START,P12817_WORK_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_DAY(ADD_MONTHS(:P12817_EARNINGS_PERIOD,-1))+1, LAST_DAY(:P12817_EARNINGS_PERIOD)',
'FROM DUAL;'))
,p_attribute_07=>'P12817_EARNINGS_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674506574033101273)
,p_name=>'update_attendance'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674342733859101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674507059631101273)
,p_event_id=>wwv_flow_imp.id(674506574033101273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'     for I in (select emp_id,work_date, sum(ABSENCE_HOURS) total_abs',
'               from hr_att_timesheetabsence b',
'               where  exists (select 1',
'                              from hr_rcm_employee a',
'                              where a.id = b.emp_id',
'                              and a.orgdtl_id = nvl(:P12817_DEPARTMENT, a.orgdtl_id )',
'                              and a.id = nvl(:P12817_EMPLOYEE, a.id)',
'                              )',
'                and WORK_DATE between :P12817_WORK_START and :P12817_WORK_END           ',
'                and pkg_global_fnts.status_descript(STATUS) like ''APPROV%''                   ',
'                group by emp_id,WORK_DATE',
'                ) loop       ',
'         ',
'            UPDATE HR_ATT_EMPCALENDAR_HD',
'            set  TOTAL_TIME_LOST =i.total_abs --should be approved abs',
'            where emp_id = i.emp_id',
'            and WORK_DATE =i.work_date;',
'',
'    end loop;',
'    commit;',
'end;',
''))
,p_attribute_02=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674507587468101274)
,p_event_id=>wwv_flow_imp.id(674506574033101273)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674507966633101274)
,p_name=>'dy_checkDateRange'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_START,P12817_WORK_END'
,p_condition_element=>'P12817_WORK_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674508484811101274)
,p_event_id=>wwv_flow_imp.id(674507966633101274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//on load, set the datepicker range in case a date is already present',
'//when the date changes, call the datecheck function',
'//and set item to readonly',
'$("#P12817_WORK_START")',
'.datepicker("option","maxDate",$("#P12817_WORK_END").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);',
'$("#P12817_WORK_END")',
'.datepicker("option","minDate",$("#P12817_WORK_START").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674508911945101274)
,p_name=>'dy_set_work_date_grid'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEFAULT_WORK_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674509402415101275)
,p_event_id=>wwv_flow_imp.id(674508911945101274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''emp_abs'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P12817_DEFAULT_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674509772459101275)
,p_name=>'dy_hideShowAllTab'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674510277623101275)
,p_event_id=>wwv_flow_imp.id(674509772459101275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''div.apex-rds-container a[href=#SHOW_ALL]'').hide()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674510672478101275)
,p_name=>'dy_refresh_keyed_absence_status'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ABSENCE_HOURS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674511152342101276)
,p_event_id=>wwv_flow_imp.id(674510672478101275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID,STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674511576745101276)
,p_name=>'TIMESHEET_ABSENCES_OnPreme'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343103538101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674512071874101276)
,p_event_id=>wwv_flow_imp.id(674511576745101276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674512514508101276)
,p_name=>'TIMESHEET_ABSENCES_OnPreme_1'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343483581101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674513048064101277)
,p_event_id=>wwv_flow_imp.id(674512514508101276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674513389989101277)
,p_name=>'TIMESHEET_ABSENCES_Cloud'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343103538101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674513916518101277)
,p_event_id=>wwv_flow_imp.id(674513389989101277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Dev_Cloud/01_HR/Job_Description-JOB_ID=&P1307_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,loca'
||'tion=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674514305096101278)
,p_name=>'TIMESHEET_ABSENCES_Cloud_1'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343483581101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674514765477101278)
,p_event_id=>wwv_flow_imp.id(674514305096101278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Dev_Cloud/01_HR/Job_Description-JOB_ID=&P1307_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,loca'
||'tion=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674515247829101278)
,p_name=>'dy_check_overlpapping_work_start_work_end'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674515684753101278)
,p_event_id=>wwv_flow_imp.id(674515247829101278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if (:P12817_WORK_START > :P12817_WORK_END ) or (:P12817_WORK_END < :P12817_WORK_START)',
'   then ',
'  ',
'apex_error.add_error(',
'      p_message => ''Error: Custom error 1 occurred.''',
'    , p_display_location => apex_error.c_inline_in_notification',
'    );',
'end if;',
'end;'))
,p_attribute_02=>'P12817_WORK_START,P12817_WORK_END'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674516150778101279)
,p_name=>'Approve/Disapprove Absences'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674342335412101086)
,p_condition_element=>'P12817_PROCESS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674516650151101280)
,p_event_id=>wwv_flow_imp.id(674516150778101279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_chk_value number:=0;',
'',
'BEGIN',
'',
'    select count(1) into v_chk_value',
'    from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                            from hr_att_timesheetabsence',
'                            group by emp_id,work_date',
'                            ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'    and ch.org_id = :APP_ORG_ID',
'    and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'    and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'    and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END));',
'',
'if :P12817_PROCESS = ''VERIFY'' then',
'',
'   if v_chk_value = 0 then',
'',
'        UPDATE HR_ATT_TIMESHEETABSENCE',
'        SET   transaction_type_id = 110',
'            , STATUS = 2005',
'            ,verified_date = current_date',
'            ,verified_by= :APP_USER',
'        where exists (select 1',
'                    from hr_rcm_employee a join hr_hcf_orgstructuredtl b on b.id = a.orgdtl_id',
'                    join Hr_Hcf_Orgstructurehd c on c.id = b.org_structure_id',
'                    where a.id = HR_ATT_TIMESHEETABSENCE.emp_id',
'                    and c.id = nvl(:P12817_ORG_STRUCTURE, c.id)',
'                    and a.orgdtl_id = nvl(:P12817_DEPARTMENT,  a.orgdtl_id)',
'                    and a.id = nvl(:P12817_EMPLOYEE, a.id)',
'                    )',
'        and WORK_DATE between :P12817_WORK_START and :P12817_WORK_END;   ',
'    end if;',
'    ',
'elsif :P12817_PROCESS = ''UNVERIFY'' then',
'',
'    UPDATE HR_ATT_TIMESHEETABSENCE',
'    SET   transaction_type_id = 110',
'        , STATUS = 2006',
'        , verified_date = null',
'        ,verified_by= null',
'    where exists (select 1',
'                from hr_rcm_employee a join hr_hcf_orgstructuredtl b on b.id = a.orgdtl_id',
'                join Hr_Hcf_Orgstructurehd c on c.id = b.org_structure_id',
'                where a.id = HR_ATT_TIMESHEETABSENCE.emp_id',
'                and c.id = nvl(:P12817_ORG_STRUCTURE, c.id)',
'                and a.orgdtl_id = nvl(:P12817_DEPARTMENT,  a.orgdtl_id)',
'                and a.id = nvl(:P12817_EMPLOYEE, a.id)',
'                )',
'    and WORK_DATE between :P12817_WORK_START and :P12817_WORK_END;   ',
'       ',
'elsif :P12817_PROCESS = ''APPROVE'' then',
'',
'  if v_chk_value = 0 then',
'',
'    UPDATE HR_ATT_TIMESHEETABSENCE',
'    SET   transaction_type_id = 151	',
'        , STATUS = 2009',
'        , approved_by   = :APP_USER',
'        ,approved_date = current_date',
'    where exists (select 1',
'                from hr_rcm_employee a join hr_hcf_orgstructuredtl b on b.id = a.orgdtl_id',
'                join Hr_Hcf_Orgstructurehd c on c.id = b.org_structure_id',
'                where a.id = HR_ATT_TIMESHEETABSENCE.emp_id',
'                and c.id = nvl(:P12817_ORG_STRUCTURE, c.id)',
'                and a.orgdtl_id = nvl(:P12817_DEPARTMENT,  a.orgdtl_id)',
'                and a.id = nvl(:P12817_EMPLOYEE, a.id)',
'                )',
'    and WORK_DATE between :P12817_WORK_START and :P12817_WORK_END;         ',
'',
' end if;    ',
'',
'else',
'',
'    UPDATE HR_ATT_TIMESHEETABSENCE',
'    SET   transaction_type_id = 151	',
'        , STATUS = 2010',
'        , approved_by   = null',
'        ,approved_date = null',
'    where exists (select 1',
'                from hr_rcm_employee a join hr_hcf_orgstructuredtl b on b.id = a.orgdtl_id',
'                join Hr_Hcf_Orgstructurehd c on c.id = b.org_structure_id',
'                where a.id = HR_ATT_TIMESHEETABSENCE.emp_id',
'                and c.id = nvl(:P12817_ORG_STRUCTURE, c.id)',
'                and a.orgdtl_id = nvl(:P12817_DEPARTMENT,  a.orgdtl_id)',
'                and a.id = nvl(:P12817_EMPLOYEE, a.id)',
'                )',
'    and WORK_DATE between :P12817_WORK_START and :P12817_WORK_END;         ',
'     ',
'end if;',
'',
'END;'))
,p_attribute_02=>'P12817_PROCESS,P12817_ORG_STRUCTURE,P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674517079585101280)
,p_event_id=>wwv_flow_imp.id(674516150778101279)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''Selected process executed, review data for intended results'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674517556679101280)
,p_event_id=>wwv_flow_imp.id(674516150778101279)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674518081167101280)
,p_event_id=>wwv_flow_imp.id(674516150778101279)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102930077904154462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674518542888101281)
,p_name=>'Approve/Disapprove Income/Absense'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674342335412101086)
,p_condition_element=>'P12817_PROCESS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674519045398101281)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'PRCD_TIMESHEET_APPROVE ',
'(',
'  IN_WORK_START =>:P12817_WORK_START',
', IN_WORK_END => :P12817_WORK_END',
', IN_DEPARTMENT => :P12817_DEPARTMENT',
', IN_EMP_ID => :P12817_EMPLOYEE',
', in_PROCESS => :P12817_PROCESS',
', in_org_id => :APP_ORG_ID',
');',
'commit;',
'',
':P12817_PROCESS := NULL;',
'end;'))
,p_attribute_02=>'P12817_PROCESS,P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674519480241101281)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess( ''Selected process executed. Any unbalanced records have been ignored. Please review and rectify if necessary.'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674520001679101281)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674520537030101282)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102930077904154462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674520963340101282)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674521532308101282)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102906773632193715)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674521955647101283)
,p_event_id=>wwv_flow_imp.id(674518542888101281)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(990066056235478977)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674522440355101283)
,p_name=>'Preview_Report_Cloud_1'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343483581101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674522875787101283)
,p_event_id=>wwv_flow_imp.id(674522440355101283)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P12817_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674523395453101283)
,p_event_id=>wwv_flow_imp.id(674522440355101283)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'--select replace(report_location,''/reports/'') into v_report_path from report where id= 6292;',
'v_report_path:=''PeoplePay_Multi_Cloud/01_HR/Timesheet_Absence_Summary'';',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''|IN_ORG_ID=''||:p12817_organisation||''|SEARCH_OPTION=''||:p12817_search_option||''|SUPPRESS_DETAILS=''||:p12817_supp'
||'ress_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p12817_parameters:=''&EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''&IN_ORG_ID=''||:p12817_organisation||''&SEARCH_OPTION=''||:p12817_search_option||''&SUPPRESS_DETAILS=''||:p12817_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=:P12817_REPORT_URL||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P12817_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P12817_EMPLOYEE||''-DEPARTMENT_ID=''||:P12817_DEPARTMENT||''-START_DATE=''||replace(:P12817_WORK_START,''-'',''**'')'
||'||''-END_DATE=''||replace(:P12817_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P12817_REPORT_ID,P12817_EARNINGS_PERIOD,P12817_EMPLOYEE,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_REPORT_URL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674523950206101284)
,p_event_id=>wwv_flow_imp.id(674522440355101283)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674524280661101284)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343103538101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674524788293101284)
,p_event_id=>wwv_flow_imp.id(674524280661101284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674525259077101285)
,p_event_id=>wwv_flow_imp.id(674524280661101284)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'--select replace(report_location,''/reports/'') into v_report_path from report where id= :P12817_REPORT_ID;',
'v_report_path:=''PeoplePay_Multi_Cloud/01_HR/Timesheet_Absence_Details'';',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''|IN_ORG_ID=''||:p12817_organisation||''|SEARCH_OPTION=''||:p12817_search_option||''|SUPPRESS_DETAILS=''||:p12817_supp'
||'ress_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p12817_parameters:=''&EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''&IN_ORG_ID=''||:p12817_organisation||''&SEARCH_OPTION=''||:p12817_search_option||''&SUPPRESS_DETAILS=''||:p12817_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=:P12817_REPORT_URL||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P12817_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P12817_EMPLOYEE||''-WKLOCATION_ID=''||:P12817_WORK_LOCATION||''-DEPARTMENT_ID=''||:P12817_DEPARTMENT||''-START_DA'
||'TE=''||replace(:P12817_WORK_START,''-'',''**'')||''-END_DATE=''||replace(:P12817_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P12817_EARNINGS_PERIOD,P12817_ORGANISATION,P12817_EMPLOYEE,P12817_WORK_LOCATION,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_REPORT_ID,P12817_REPORT_URL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674525830036101285)
,p_event_id=>wwv_flow_imp.id(674524280661101284)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P12817_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674526234351101285)
,p_name=>'dy_refresh_unapproved'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674526746539101286)
,p_event_id=>wwv_flow_imp.id(674526234351101285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674527060461101286)
,p_name=>'dy_refresh_approved'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674527630409101286)
,p_event_id=>wwv_flow_imp.id(674527060461101286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1102906773632193715)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674527992310101286)
,p_name=>'dy_refresh_summary'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674528522127101287)
,p_event_id=>wwv_flow_imp.id(674527992310101286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1319682301248149817)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674528928967101287)
,p_name=>'dy_refresh_work_req'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674529425993101287)
,p_event_id=>wwv_flow_imp.id(674528928967101287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1009438957029231871)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674529815642101287)
,p_name=>'dy_refresh_all_unbalanced'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674530274949101288)
,p_event_id=>wwv_flow_imp.id(674529815642101287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(979288409243373683)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674530714865101288)
,p_name=>'dy_refresh_unbalanced_income'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674531215206101288)
,p_event_id=>wwv_flow_imp.id(674530714865101288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(985468061030899185)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674531627912101288)
,p_name=>'dy_refresh_unbalanced_absence'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674532141687101289)
,p_event_id=>wwv_flow_imp.id(674531627912101288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(985465372342899159)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674532459212101289)
,p_name=>'dy_refresh_income_audit'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674532996861101289)
,p_event_id=>wwv_flow_imp.id(674532459212101289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1200059950941624054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674533389888101289)
,p_name=>'dy_refresh_absence_audit'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674533909807101289)
,p_event_id=>wwv_flow_imp.id(674533389888101289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1194247085012743403)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674534348861101290)
,p_name=>'dy_set_work_start_work_end'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674534835937101290)
,p_event_id=>wwv_flow_imp.id(674534348861101290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_WORK_START,P12817_WORK_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_DAY(ADD_MONTHS(:P12817_EARNINGS_PERIOD,-1))+1, LAST_DAY(:P12817_EARNINGS_PERIOD)',
'FROM DUAL;'))
,p_attribute_07=>'P12817_EARNINGS_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674535240157101290)
,p_name=>'dy_checkDate_Range'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674535665109101291)
,p_event_id=>wwv_flow_imp.id(674535240157101290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//on load, set the datepicker range in case a date is already present',
'//when the date changes, call the datecheck function',
'//and set item to readonly',
'$("#P12817_WORK_START")',
'.datepicker("option","maxDate",$("#P12817_WORK_END").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);',
'$("#P12817_WORK_END")',
'.datepicker("option","minDate",$("#P12817_WORK_START").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674536141746101291)
,p_name=>'dy_set_work_date_grid'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_DEFAULT_WORK_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674536573260101291)
,p_event_id=>wwv_flow_imp.id(674536141746101291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''emp_time_incomes'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P12817_DEFAULT_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677292268424075200)
,p_event_id=>wwv_flow_imp.id(674536141746101291)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''emp_time_incomess'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P12817_DEFAULT_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674537074051101291)
,p_event_id=>wwv_flow_imp.id(674536141746101291)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid        = apex.region(''workreq'').call(''getViews'',''grid'');  ',
'var model       = grid.model; ',
'model.getOption("fields").WORK_DATE.defaultValue = $v(''P12817_DEFAULT_WORK_DATE'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674537489828101292)
,p_name=>'dy_calculate_quantity'
,p_event_sequence=>400
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'START_TIME,END_TIME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'((apex.item("START_TIME").getValue() !== "" || apex.item("END_TIME").getValue() !== "") && apex.item("ATT_VALIDATE_HRS").getValue() === "NO_LIMIT")',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674538000349101292)
,p_event_id=>wwv_flow_imp.id(674537489828101292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QUANTITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT round(abs((TO_DATE(:END_TIME, ''DD-MM-YYYY HH:MIPM'') - to_date(:START_TIME, ''DD-MM-YYYY HH:MIPM''))*24),2)',
'FROM DUAL'))
,p_attribute_07=>'END_TIME,START_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674538450099101292)
,p_name=>'dy_set_start_time_unapproved'
,p_event_sequence=>410
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674538882091101292)
,p_event_id=>wwv_flow_imp.id(674538450099101292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(min_time_in,''DD-MON-YYYY HH:MIPM'') time_in',
'from HR_ATT_EMPCALENDAR_HD ',
'where EMP_ID = :EMP_ID',
'and WORK_DATE = :WORK_DATE'))
,p_attribute_07=>'EMP_ID,WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674539317665101293)
,p_name=>'dy_set_start_time_workreq'
,p_event_sequence=>420
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1009438957029231871)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'START_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674539822906101293)
,p_event_id=>wwv_flow_imp.id(674539317665101293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :WORK_DATE|| '' '' || ''12:00 AM''',
'from dual'))
,p_attribute_07=>'WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674540169384101293)
,p_name=>'dy_set_end_time_unapproved'
,p_event_sequence=>430
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674540669619101293)
,p_event_id=>wwv_flow_imp.id(674540169384101293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(max_time_out,''DD-MON-YYYY HH:MIPM'') time_out',
'from HR_ATT_EMPCALENDAR_HD ',
'where EMP_ID = :EMP_ID',
'and WORK_DATE = :WORK_DATE'))
,p_attribute_07=>'EMP_ID,WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674541096718101294)
,p_name=>'dy_set_end_time_workreq'
,p_event_sequence=>440
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1009438957029231871)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'END_TIME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674541560082101294)
,p_event_id=>wwv_flow_imp.id(674541096718101294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'END_TIME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :WORK_DATE|| '' '' || ''12:00 AM''',
'from dual'))
,p_attribute_07=>'WORK_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674541981823101294)
,p_name=>'TIMESHEET_INCOMES_OnPreme_1'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674350331081101093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674542468066101294)
,p_event_id=>wwv_flow_imp.id(674541981823101294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674542924610101295)
,p_name=>'TIMESHEET_INCOMES_Cloud_1'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674350331081101093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674543379607101295)
,p_event_id=>wwv_flow_imp.id(674542924610101295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay/01_HR/Standard_Letters/JOB_SPEC'', "popupWindow", "scrollbars=yes");',
'//var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_GPL/01_HR/Standard_Letters/JOB_SPEC-ID=&P1307_ID.'', "popupWindow", "height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,'
||'location=yes,directories=no, status=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1307_ID.,PeoplePay_GPL/01_HR/Job_Description'', "popupWindow", "scrollbars=yes");',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Dev_Cloud/01_HR/Job_Description-JOB_ID=&P1307_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,loca'
||'tion=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674543784419101295)
,p_name=>'Preview_Report_Cloud2'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674349471946101093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674544275799101296)
,p_event_id=>wwv_flow_imp.id(674543784419101295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674544833278101296)
,p_event_id=>wwv_flow_imp.id(674543784419101295)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= 6191;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p162_earnings_period||''|IN_ORG_ID=''||:p162_organisation||''|SEARCH_OPTION=''||:p162_search_option||''|SUPPRESS_DETAILS=''||:p162_suppress_det'
||'ails||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p162_parameters:=''&EARNINGS_PERIOD_ID=''||:p162_earnings_period||''&IN_ORG_ID=''||:p162_organisation||''&SEARCH_OPTION=''||:p162_search_option||''&SUPPRESS_DETAILS=''||:p162_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=''http://172.16.3.227:8082/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P162_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P162_EMPLOYEE||''-DEPARTMENT_ID=''||:P162_DEPARTMENT||''-START_DATE=''||replace(:P162_WORK_STAR'
||'T,''-'',''**'')||''-END_DATE=''||replace(:P162_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P162_REPORT_ID,P162_EARNINGS_PERIOD,P162_EMPLOYEE,P162_DEPARTMENT,P162_WORK_START,P162_WORK_END'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674545351278101296)
,p_event_id=>wwv_flow_imp.id(674543784419101295)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P162_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674545655645101296)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674349945644101093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%PEOPLEPAY%'' or upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%150.136.100.215%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674546203679101297)
,p_event_id=>wwv_flow_imp.id(674545655645101296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674546726271101297)
,p_event_id=>wwv_flow_imp.id(674545655645101296)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= 6111;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''|IN_ORG_ID=''||:p12817_organisation||''|SEARCH_OPTION=''||:p12817_search_option||''|SUPPRESS_DETAILS=''||:p12817_supp'
||'ress_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p12817_parameters:=''&EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''&IN_ORG_ID=''||:p12817_organisation||''&SEARCH_OPTION=''||:p12817_search_option||''&SUPPRESS_DETAILS=''||:p12817_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P12817_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P12817_EMPLOYEE||''-WKLOCATION_ID=''||:P12817_WORK_LOCATION||''-DEPARTMENT_ID=''||:P12'
||'817_DEPARTMENT||''-START_DATE=''||replace(:P12817_WORK_START,''-'',''**'')||''-END_DATE=''||replace(:P12817_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P12817_EARNINGS_PERIOD,P12817_ORGANISATION,P12817_EMPLOYEE,P12817_WORK_LOCATION,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_REPORT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674547163703101297)
,p_event_id=>wwv_flow_imp.id(674545655645101296)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P12817_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674484042319101258)
,p_name=>'Preview_Report_Cloud_2'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674350331081101093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%PEOPLEPAY%'' or upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%150.136.100.215%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674484504267101259)
,p_event_id=>wwv_flow_imp.id(674484042319101258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674485028470101260)
,p_event_id=>wwv_flow_imp.id(674484042319101258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= 6293;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''|IN_ORG_ID=''||:p12817_organisation||''|SEARCH_OPTION=''||:p12817_search_option||''|SUPPRESS_DETAILS=''||:p12817_supp'
||'ress_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':p12817_parameters:=''&EARNINGS_PERIOD_ID=''||:p12817_earnings_period||''&IN_ORG_ID=''||:p12817_organisation||''&SEARCH_OPTION=''||:p12817_search_option||''&SUPPRESS_DETAILS=''||:p12817_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P12817_EARNINGS_PERIOD||''-IN_ORG_ID=''||:APP_ORG_ID||''-EMP_ID=''||:P12817_EMPLOYEE||''-WKLOCATION_ID=''||:P12817_WORK_LOCATION||''-DEPARTMENT_ID=''||:P12'
||'817_DEPARTMENT||''-START_DATE=''||replace(:P12817_WORK_START,''-'',''**'')||''-END_DATE=''||replace(:P12817_WORK_END,''-'',''**'')||''-SESSION_ID=''||:APP_SESSION;',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P12817_EARNINGS_PERIOD,P12817_ORGANISATION,P12817_EMPLOYEE,P12817_WORK_LOCATION,P12817_DEPARTMENT,P12817_WORK_START,P12817_WORK_END,P12817_REPORT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674485532220101260)
,p_event_id=>wwv_flow_imp.id(674484042319101258)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P12817_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674485872897101260)
,p_name=>'dy_refresh_eid'
,p_event_sequence=>500
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMPENT_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674486444609101260)
,p_event_id=>wwv_flow_imp.id(674485872897101260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID,STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677292425929075201)
,p_name=>'dy_refresh_eid_1'
,p_event_sequence=>510
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1350556671909525561)
,p_triggering_element=>'WORK_DATE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMPENT_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677292517025075202)
,p_event_id=>wwv_flow_imp.id(677292425929075201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID,STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674486808085101261)
,p_name=>'NOT A VALID MONTH FIX'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674487337175101261)
,p_event_id=>wwv_flow_imp.id(674486808085101261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674487737187101261)
,p_name=>'dy_set_count_unbalacned_abs'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_STARTP12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674488223807101261)
,p_event_id=>wwv_flow_imp.id(674487737187101261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_ASB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_attribute_07=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674488566426101262)
,p_name=>'dy_set_count_unbalacned_abs_1'
,p_event_sequence=>540
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674489141001101262)
,p_event_id=>wwv_flow_imp.id(674488566426101262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_ASB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_attribute_07=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674489526956101263)
,p_name=>'dy_set_count_unbalacned_income'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_STARTP12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674490027753101263)
,p_event_id=>wwv_flow_imp.id(674489526956101263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_INCOME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_income_hours,0) != nvl(ch.over_time,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_attribute_07=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674490448367101263)
,p_name=>'Dy_set_count_unbalacned_income_1'
,p_event_sequence=>560
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674490893685101263)
,p_event_id=>wwv_flow_imp.id(674490448367101263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_INCOME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_income_hours,0) != nvl(ch.approved_overtime,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_attribute_07=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674491346764101264)
,p_name=>'Dy_set_count_total_unbalacned'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_WORK_STARTP12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674491761858101264)
,p_event_id=>wwv_flow_imp.id(674491346764101264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_TOTAL_UNBALANCED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct count(1)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join (select sum(nvl(quantity,0))  keyed_income_hours,emp_id,work_date',
'                                from hr_att_timesheetincome',
'                                group by emp_id,work_date',
'                                ) tsi on tsi.emp_id =ch.emp_id and tsi.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where (nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0) or nvl(keyed_income_hours,0) != nvl(ch.approved_overtime,0))',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))'))
,p_attribute_07=>'P12817_DEPARTMENT,P12817_EMPLOYEE,P12817_WORK_START,P12817_WORK_END'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674492245773101264)
,p_name=>'dy_refresh_unbalanced_count'
,p_event_sequence=>580
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674492721973101265)
,p_event_id=>wwv_flow_imp.id(674492245773101264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P12817_UNBALANCED_ASB").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674493131938101265)
,p_name=>'dy_refresh_all_unbalanced_onsave'
,p_event_sequence=>590
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674493651424101265)
,p_event_id=>wwv_flow_imp.id(674493131938101265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(979288409243373683)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674494126396101265)
,p_event_id=>wwv_flow_imp.id(674493131938101265)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_ASB,P12817_UNBALANCED_INCOME,P12817_TOTAL_UNBALANCED'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674494458291101266)
,p_name=>'dy_refresh_all_unbalanced_onsave_2'
,p_event_sequence=>600
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674495022386101266)
,p_event_id=>wwv_flow_imp.id(674494458291101266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(979288409243373683)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674495520309101266)
,p_event_id=>wwv_flow_imp.id(674494458291101266)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12817_UNBALANCED_ASB,P12817_UNBALANCED_INCOME,P12817_TOTAL_UNBALANCED'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674495898256101266)
,p_name=>'dy_refresh_abs_unbalanced_onsave'
,p_event_sequence=>610
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674496434150101267)
,p_event_id=>wwv_flow_imp.id(674495898256101266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(985465372342899159)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674496791082101267)
,p_name=>'dy_refresh_inc_unbalanced_onsave_1'
,p_event_sequence=>620
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674497283567101267)
,p_event_id=>wwv_flow_imp.id(674496791082101267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(985468061030899185)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674497660161101268)
,p_name=>'dy_show_hide_alert_region'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12817_TOTAL_UNBALANCED'
,p_condition_element=>'P12817_TOTAL_UNBALANCED'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674498154713101268)
,p_event_id=>wwv_flow_imp.id(674497660161101268)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(990066056235478977)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674498662591101268)
,p_event_id=>wwv_flow_imp.id(674497660161101268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(990066056235478977)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674499191311101268)
,p_event_id=>wwv_flow_imp.id(674497660161101268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(990066056235478977)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(674499603048101269)
,p_name=>'dy_open'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(674343870901101087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(674500061818101269)
,p_event_id=>wwv_flow_imp.id(674499603048101269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(862657506732915419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666459199898349135)
,p_name=>'dy_set_validate_hrs'
,p_event_sequence=>650
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'EMPENT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMPENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666459273380349136)
,p_event_id=>wwv_flow_imp.id(666459199898349135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ATT_VALIDATE_HRS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select att_validate_hrs',
'from pa_pcf_incomecode a ',
'join hr_rcm_empentitle b on a.id = b.income_code_id',
'where b.id = :EMPENT_ID'))
,p_attribute_07=>'EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677309592089182287)
,p_name=>'dy_set_validate_hrs'
,p_event_sequence=>660
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1350556671909525561)
,p_triggering_element=>'EMPENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677309986989182289)
,p_event_id=>wwv_flow_imp.id(677309592089182287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ATT_VALIDATE_HRS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select att_validate_hrs',
'from pa_pcf_incomecode a ',
'join hr_rcm_empentitle b on a.id = b.income_code_id',
'where b.id = :EMPENT_ID'))
,p_attribute_07=>'EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(679500404539022244)
,p_name=>'enable_qty'
,p_event_sequence=>680
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_triggering_element=>'ATT_VALIDATE_HRS'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ATT_VALIDATE_HRS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NO_LIMIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(680447262135974501)
,p_event_id=>wwv_flow_imp.id(679500404539022244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QUANTITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(680447826734974506)
,p_event_id=>wwv_flow_imp.id(679500404539022244)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_TIME,END_TIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(680447382552974502)
,p_event_id=>wwv_flow_imp.id(679500404539022244)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QUANTITY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(680447697817974505)
,p_event_id=>wwv_flow_imp.id(679500404539022244)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'START_TIME,END_TIME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674449125467101221)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1234218992384074160)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'KEYED ABSENCES - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31113873448425727
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674367416988101117)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1283169622844573426)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'KEYED INCOMES- Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31032164969425623
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677292559057075203)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1350556671909525561)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'KEYED TASKS- Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33957307038399709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674400213939101150)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1009438957029231871)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'WORK REQUESTED - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31064961920425656
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674472924463101243)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1102930077904154462)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Processed Absences - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31137672444425749
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674482385650101257)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_error_message_overlap'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P12817_OVERLAP_COUNT > 0 then ',
'  raise_application_error(-20000,''You have '' || :P12817_OVERLAP_COUNT || '' overlapping times. Please check for the overlapping records under the ''''Time Records to Fix'''' tab'');',
'end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674480816891101255)
,p_internal_uid=>31147133631425763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674483602993101258)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_error_message_income_and_absence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count_abs number(5) := 0;',
'l_count_inc number(5) := 0;',
'begin',
'',
'select  ',
' absence, income  into l_count_abs,l_count_inc',
'from (',
'select ',
'(select distinct nvl(count(1),0)',
'from hr_att_empcalendar_hd ch',
'    left outer join (select sum(nvl(absence_hours,0))  keyed_absence_hours,emp_id,work_date',
'                                from hr_att_timesheetabsence',
'                                group by emp_id,work_date',
'                                ) tsa on tsa.emp_id =ch.emp_id and tsa.work_date = ch.work_date',
'    left outer join hr_rcm_employee emp on emp.id = ch.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join hr_att_shift shft on ch.assigned_shift = shft.id and shft.org_id =:APP_ORG_ID',
'    left outer join HR_HCF_HOLIDAY H ON ch.WORK_DATE = H.HOLIDAY_DATE and h.org_id =:APP_ORG_ID',
'    left outer join Hr_Hcf_Orgstructuredtl dept on ch.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on ch.position_id = p.id',
'where nvl(keyed_absence_hours,0) != nvl(ch.total_time_lost,0)',
'and ch.org_id = :APP_ORG_ID',
'and ch.orgdtl_id =nvl(:P12817_DEPARTMENT, ch.orgdtl_id)',
'and ch.emp_id = nvl(:P12817_EMPLOYEE, ch.emp_id)',
'and trunc(to_date(ch.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))) absence,',
'(select nvl(count(1),0) ',
'',
' from (select a.att_validate_hrs, A.emp_id,work_date,listagg(b.description, '','') entitlement,',
'    max(cot_cal)  COT,',
'    max(chw_cal) CHW,',
'    max(cshw_cal) CSHW,',
'    sum(tsi_total) Inc_Hours',
'',
'from fn_get_att_validate_hrs_compare(in_emp_id       => :P12817_EMPLOYEE',
'                                    ,in_org_id       => :APP_ORG_ID',
'                                    ,in_dept         => :P12817_DEPARTMENT',
'                                    ,in_work_start   => :P12817_WORK_START',
'                                    ,in_work_end     => :P12817_WORK_END) a ',
'join pa_pcf_incomecode b on a.income_code = b.income_code',
'join hr_rcm_empentitle c on b.id  = c.income_code_id and c.id = a.empent_id',
'and b.org_id = :APP_ORG_ID',
'group by a.emp_id, work_date,a.att_validate_hrs)',
'where  (chw + cshw + cot) < inc_hours',
') as  income',
'',
'from dual) x;',
'',
'if l_count_abs > 0  or l_count_inc > 0 then ',
'  raise_application_error(-20003,''You have '' || l_count_abs || '' unbalanced absence(s) ''|| '' and '' || l_count_inc || '' unbalanced income(s) '');',
'end if;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674480816891101255)
,p_internal_uid=>31148350974425764
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674483203749101257)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dy_check_recs_not_approved'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count_abs number(5):= 0;',
'l_count_inc number(5) := 0;',
'l_count_app number(5) := 0;',
'begin',
'',
'',
'-- select count(1) a into l_count_abs',
'-- from hr_att_timesheetabsence tsa ',
'-- left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'--     left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'--     left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'--     left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'-- where tsa.org_id = :APP_ORG_ID',
'-- and tsa.orgdtl_id =nvl(:P12817_DEPARTMENT, tsa.orgdtl_id)',
'-- and tsa.emp_id = nvl(:P12817_EMPLOYEE, tsa.emp_id)',
'-- and trunc(to_date(tsa.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'-- and upper(pkg_global_fnts.status_descript(tsa.status)) <> ''APPROVED'';',
'',
'',
'',
'-- select count(1) a into l_count_inc',
'-- from hr_att_timesheetincome tsa',
' ',
'-- left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'--     left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'--     left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'--     left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'-- where tsa.org_id = :APP_ORG_ID',
'-- and tsa.orgdtl_id =nvl(:P12817_DEPARTMENT, tsa.orgdtl_id)',
'-- and tsa.emp_id = nvl(:P12817_EMPLOYEE, tsa.emp_id)',
'-- and trunc(to_date(tsa.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'-- and upper(pkg_global_fnts.status_descript(tsa.status)) <> ''APPROVED'';',
'',
'select count(1) a into l_count_abs',
'from HR_ATT_EMPCALENDAR_HD tsa ',
'left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'    left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'    left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'    left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'where tsa.org_id = :APP_ORG_ID',
'and tsa.orgdtl_id =nvl(:P12817_DEPARTMENT, tsa.orgdtl_id)',
'and tsa.emp_id = nvl(:P12817_EMPLOYEE, tsa.emp_id)',
'and trunc(to_date(tsa.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'and upper(pkg_global_fnts.status_descript(tsa.status)) = ''KEYED'';',
'',
'-- select count(1) a into l_count_app',
'-- from HR_ATT_EMPCALENDAR_HD tsa ',
'-- left outer join hr_rcm_employee emp on emp.id = tsa.emp_id',
'--     left outer join hr_rcm_individual ind on emp.ind_id = ind.id',
'--     left outer join Hr_Hcf_Orgstructuredtl dept on tsa.orgdtl_id = dept.id',
'--     left outer join Hr_Hcf_position p on tsa.position_id = p.id',
'-- where tsa.org_id = :APP_ORG_ID',
'-- and tsa.orgdtl_id =nvl(:P12817_DEPARTMENT, tsa.orgdtl_id)',
'-- and tsa.emp_id = nvl(:P12817_EMPLOYEE, tsa.emp_id)',
'-- and trunc(to_date(tsa.work_date)) between trunc(to_date(:P12817_WORK_START)) and trunc(to_date(:P12817_WORK_END))',
'-- and upper(pkg_global_fnts.status_descript(tsa.status)) = ''APPROVED'';',
'',
'if l_count_abs > 0   then ',
'  raise_application_error (-20002, ''You have '' || l_count_abs || ''unapproved  records for the selected period. Please correct the unbalanced records before forwarding the workflow for verification'' );',
'-- elsif l_count_app > 0 and l_count_abs = 0  then ',
'--   raise_application_error (-20002, ''Did not find any keyed records for the selected period. All records has been Approved'' );',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674480816891101255)
,p_internal_uid=>31147951730425763
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(674482798200101257)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'manual_forward'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'     l_workflow_desc varchar2(3000);',
'     l_status varchar2(250);',
'     l_department varchar2(3000);',
'     l_name varchar2(5000);',
'',
'',
'	 ',
'begin',
'',
'begin',
'select unit_name into l_department',
'from hr_hcf_orgstructuredtl',
'where id = :P12817_DEPARTMENT;',
'',
'exception',
'when others then null;',
'end;',
'',
'',
'begin',
'select initcap(Surname || '', '' || nvl(z.First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a into l_name',
'from vw_employee x ',
'join hr_rcm_individual z on z.id=x.ind_id',
'whEre x.org_id=:APP_ORG_ID',
'and x.id = :P138_EMPLOYEE',
'order by 1;',
'',
'exception',
'when others then null;',
'end;',
'',
'  select   case when :P12817_FORWARD_STATUS  = ''APPROVED'' then',
'                       ''Approved Records sent for Verification for period '' || :P12817_WORK_START || '' - '' || :P12817_WORK_END || '' for department: '' || nvl(l_department,''ALL'') || '' for employee: '' || nvl(l_name,''ALL'')',
'               end x,',
'            case when :P12817_FORWARD_STATUS  = ''APPROVED'' then',
'                       ''Approved''',
'               end into l_workflow_desc,l_status',
'        from dual ;',
'',
'',
'	-- select WFL_STATUS_DESCRIPTION into v_description',
'	-- from tblworkflowstatus',
'	-- where WFL_STATUS_ID=:P37_STATUS_M;',
'',
'',
'-- Convert the colon separated string of values into',
'-- a PL/SQL array',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P12817_FORWARD_LIST || '':'' || UPPER(:APP_USER));',
'--',
'-- Loop over array to insert department numbers and current_date',
'--',
'FOR i IN 1..l_selected.count LOOP',
'begin',
'	pop_manual_notification',
'                        (',
'                            l_workflow_desc ,',
'                            l_selected(i),',
'                            l_status,',
'                            current_date,',
'                            :P12817_L_URL,',
'                            l_status,',
'                           1,',
'                           ''1'',',
'                            ''HR_ATT_TIMESHEET_INCOME,HR_ATT_TIMESHEET_ABSENCE'',',
'                            ''1''',
'                        );',
'exception',
'when others then null;',
'end;	',
'END LOOP;',
'  :P12817_FORWARD_LIST :=null;',
'  ',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(674480816891101255)
,p_process_success_message=>'Sent Successfully'
,p_internal_uid=>31147546181425763
);
wwv_flow_imp.component_end;
end;
/
