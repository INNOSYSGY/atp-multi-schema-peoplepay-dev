prompt --application/pages/page_00511
begin
--   Manifest
--     PAGE: 00511
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
 p_id=>511
,p_name=>'rptdetailviewinc'
,p_alias=>'RPTDETAILVIEWINC1'
,p_page_mode=>'MODAL'
,p_step_title=>'rptdetailviewinc'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3605068883885190691)
,p_plug_name=>'INC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ch.WORK_DATE,',
'       to_char(ch.work_date,''DY'') week_day,',
'       ch.EMP_ID,',
'       INC.QUANTITY,',
'       INC.RATE,',
'       round(INC.AMOUNT_PAID,2) AMOUNT_PAID,',
'       INC.PAYSTATUS pay_status,',
'       INC.REason_income,',
'       INC.EMPENT_ID,',
'       INC.INCOME_CODE,',
'       i.description Income_Description,',
'       INC.START_TIME,',
'       INC.END_TIME,',
'       pkg_global_fnts.status_descript(ch.STATUS) status',
'  from HR_ATT_TIMESHEETINCOME INC',
'  left join hr_att_empcalendar_hd ch on ch.emp_id = INC.emp_id and ch.work_date = INC.work_date',
'  left join (select d.* from hr_hcf_orgstructuredtl d ',
'             join hr_hcf_orgstructurehd h on h.id = d.org_structure_id and h.org_id = :APP_ORG_ID) od on  ch.orgdtl_id = od.id',
'  left join hr_hcf_position p on ch.position_id = p.id and p.orgdtl_id = od.id',
'  left join ( select * from pa_pcf_incomecode where org_id =  :APP_ORG_ID) i on inc.income_code = i.income_code',
'  where ch.org_id = :APP_ORG_ID',
'and ch.emp_id = :P511_EMP_ID',
'and i.id  = :P511_INCOME_CODE',
'and inc.work_date between (select start_paid_for from pa_pcf_earningperiod where id = :P511_EARNINGS_PERIOD_ID ) ',
'and ((select end_paid_for from pa_pcf_earningperiod where id = :P511_EARNINGS_PERIOD_ID ))',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = INC.ORGDTL_ID',
'          and INC.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, INC.ORGDTL_ID, w.org_structure_id)        ',
'          )',
'and paystatus <> ''N''',
'and pkg_global_fnts.status_descript(ch.STATUS) like ''VERI%'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P511_EMP_ID,P511_INCOME_CODE,P511_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'INC'
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
 p_id=>wwv_flow_imp.id(3605069027283190692)
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
,p_internal_uid=>658430827522691740
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290233648218763306)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290234008667763307)
,p_db_column_name=>'WEEK_DAY'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Week Day'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290234419996763308)
,p_db_column_name=>'EMP_ID'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290234845347763308)
,p_db_column_name=>'QUANTITY'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290235289877763309)
,p_db_column_name=>'RATE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290235673249763309)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290236025803763310)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290236453535763310)
,p_db_column_name=>'REASON_INCOME'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Reason Income'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290236861655763311)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Empent Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290237266068763312)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290237600796763312)
,p_db_column_name=>'INCOME_DESCRIPTION'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Income Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290238096868763313)
,p_db_column_name=>'START_TIME'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290238430964763313)
,p_db_column_name=>'END_TIME'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'End Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290238814996763314)
,p_db_column_name=>'STATUS'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3607777544410809914)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3436010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:WEEK_DAY:EMP_ID:QUANTITY:RATE:AMOUNT_PAID:PAY_STATUS:REASON_INCOME:EMPENT_ID:INCOME_CODE:INCOME_DESCRIPTION:START_TIME:END_TIME:STATUS'
,p_break_on=>'EMP_ID'
,p_break_enabled_on=>'EMP_ID'
,p_sum_columns_on_break=>'QUANTITY:AMOUNT_PAID'
,p_count_columns_on_break=>'WORK_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3605073451685190737)
,p_plug_name=>'DED'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select  distinct k.work_date, k.leave_type, k.emp_id, k.leave_dollar_value, round(k.leave_dollar_value/ k.ABSENCE_HOURS,2) rate, ',
'           k.ABSENCE_HOURS,k.affect_salary, pkg_global_fnts.status_descript(k.STATUS)  status',
'           ',
'            from hr_att_timesheetabsence K join hr_rcm_employee emp on emp.id = k.emp_id',
'            join pa_pcf_earningperiod earn on (emp.org_id = earn.org_id and emp.employment_class_id = earn.employment_class_id ',
'            and emp.payment_type = earn.payment_type and emp.compute_gross = earn.compute_gross)',
'            Where LEAVE_DOLLAR_VALUE > 0',
'            and work_date between (select start_paid_for from pa_pcf_earningperiod where id = :P511_EARNINGS_PERIOD_ID) ',
'and ((select end_paid_for from pa_pcf_earningperiod where id = :P511_EARNINGS_PERIOD_ID))',
'            and emp_id = :P511_EMP_ID',
'            AND earn.ORG_ID = :APP_ORG_ID',
'            and pkg_global_fnts.status_descript(k.STATUS) like  ''VERIF%''    ',
'            and k.pay_status <> ''N''',
'            and affect_salary=''DEDUCTION''',
'            and exists (select 1 from hr_att_empcalendar_hd ch where ch.emp_id = k.emp_id ',
'                                                               and ch.work_date = k.work_date',
'                                                               and  pkg_global_fnts.status_descript(ch.STATUS) like ''VERI%'')',
'                                             ',
'                                             '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P511_EMP_ID,P511_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DED'
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
 p_id=>wwv_flow_imp.id(3612941260164190188)
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
,p_internal_uid=>666303060403691236
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290228941270763291)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290229359597763293)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290229793192763293)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290230101664763294)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290230539539763295)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290230960514763295)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290231340465763296)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290231757906763297)
,p_db_column_name=>'LEAVE_TYPE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632531639210481189)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3612963417532225789)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3435939'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:LEAVE_TYPE:WORK_DATE:LEAVE_DOLLAR_VALUE:RATE:ABSENCE_HOURS:AFFECT_SALARY:STATUS:'
,p_break_on=>'EMP_ID'
,p_break_enabled_on=>'EMP_ID'
,p_sum_columns_on_break=>'RATE:ABSENCE_HOURS:LEAVE_DOLLAR_VALUE'
,p_count_columns_on_break=>'WORK_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3615897035106327818)
,p_plug_name=>'LEAVEPASS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id leave_id,  b.emp_id, (select max(d.id)',
'             from HR_RCM_EMPENTITLE d ',
'             where d.emp_id = a.emp_id',
'             and D.INCOME_CODE_ID IN (select id from PA_PCF_INCOMECODE where income_code in (''LEAVEPASS'') and org_id= :APP_ORG_ID )',
'             and (d.end_date is null or d.end_date >= current_date)) empent_id,',
'            (select id from PA_PCF_INCOMECODE where income_code=''LEAVEPASS'' and org_id = :APP_ORG_ID) income_code_id, b.fromdate , b.todate ,',
'    b.earnings_period_id, 1 quantity, b.va_amount ,  ''AMOUNT PAID'' pay_option,  ''System transfer from HR Leave Payment.'' Remarks',
'    --pkg_global_fnts.fn_daily(b.emp_id, b.fromdate, b.fromdate) rate, ''Y'' bypass',
'    from hr_lv_leavehistory a join hr_lv_leavehistory_va b on a.id = b.leave_id',
'    where b.earnings_period_id = :P511_EARNINGS_PERIOD_ID',
'    and B.approved_date is not null',
'    and B.verified_by is not null ',
'    AND a.EMP_ID = :P511_EMP_ID',
'    and b.va_amount > 0',
'    and  exists (select 1',
'                 from HR_RCM_EMPENTITLE d ',
'                 where d.emp_id = a.emp_id',
'                 and D.INCOME_CODE_ID IN (select id from PA_PCF_INCOMECODE where income_code in (''LEAVEPASS'') and org_id=:APP_ORG_ID))',
'                 '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P511_EARNINGS_PERIOD_ID,P511_EMP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'LEAVEPASS'
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
 p_id=>wwv_flow_imp.id(3615897122518327819)
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
,p_internal_uid=>669258922757828867
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290240707272763318)
,p_db_column_name=>'LEAVE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Leave Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290241129536763319)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290241571046763320)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Empent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290241940839763321)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290242335687763321)
,p_db_column_name=>'FROMDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290242716091763322)
,p_db_column_name=>'TODATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290243114809763323)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290243577775763325)
,p_db_column_name=>'QUANTITY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290243988349763327)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290244348900763329)
,p_db_column_name=>'PAY_OPTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pay Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3290244705179763329)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3626841105599695787)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3436069'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_ID:EMP_ID:EMPENT_ID:INCOME_CODE_ID:FROMDATE:TODATE:EARNINGS_PERIOD_ID:QUANTITY:VA_AMOUNT:PAY_OPTION:REMARKS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3290232531630763301)
,p_name=>'P511_EARNINGS_PERIOD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3605073451685190737)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3290232905566763303)
,p_name=>'P511_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3605073451685190737)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3290239630780763315)
,p_name=>'P511_INCOME_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3605068883885190691)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3290240036095763316)
,p_name=>'P511_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3605068883885190691)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3290245546748763335)
,p_name=>'dy_hide_show'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P511_FLAG'
,p_condition_element=>'P511_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'INC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3290246479805763338)
,p_event_id=>wwv_flow_imp.id(3290245546748763335)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3605073451685190737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3290246982649763338)
,p_event_id=>wwv_flow_imp.id(3290245546748763335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3605068883885190691)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3290247417741763339)
,p_event_id=>wwv_flow_imp.id(3290245546748763335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3605073451685190737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3290247903388763339)
,p_event_id=>wwv_flow_imp.id(3290245546748763335)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3605068883885190691)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3290245943541763337)
,p_event_id=>wwv_flow_imp.id(3290245546748763335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3615897035106327818)
);
wwv_flow_imp.component_end;
end;
/
