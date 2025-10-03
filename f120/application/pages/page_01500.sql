prompt --application/pages/page_01500
begin
--   Manifest
--     PAGE: 01500
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
 p_id=>1500
,p_name=>'rptPayrollTroubleShoot'
,p_alias=>'RPTPAYROLLTROUBLESHOOT'
,p_step_title=>'Payroll Trouble-Shoot'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(423718363227747571)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475925267022652177)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(570168152849055094)
,p_plug_name=>'Non-Statutory Income'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(788996185635413211)
,p_plug_name=>'Manual Payroll Postings'
,p_parent_plug_id=>wwv_flow_imp.id(570168152849055094)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
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
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'           )',
'and PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID=:P1500_ORGANISATION_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(788996276827413211)
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
,p_internal_uid=>367204283629416637
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450347985422822548)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.::P1298_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450347497133822547)
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
 p_id=>wwv_flow_imp.id(450347158662822546)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Additional Income'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMPENT_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632583213821532444)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450346791194822546)
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
 p_id=>wwv_flow_imp.id(450346330152822546)
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
 p_id=>wwv_flow_imp.id(450345966867822545)
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
 p_id=>wwv_flow_imp.id(450345526852822545)
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
 p_id=>wwv_flow_imp.id(450345097618822544)
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
 p_id=>wwv_flow_imp.id(450344773681822544)
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
 p_id=>wwv_flow_imp.id(450344377117822543)
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
 p_id=>wwv_flow_imp.id(450343930120822543)
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
 p_id=>wwv_flow_imp.id(450343571679822543)
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
 p_id=>wwv_flow_imp.id(450343099982822542)
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
 p_id=>wwv_flow_imp.id(450342720322822542)
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
 p_id=>wwv_flow_imp.id(450342309413822541)
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
 p_id=>wwv_flow_imp.id(450341981971822541)
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
 p_id=>wwv_flow_imp.id(450341541298822540)
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
 p_id=>wwv_flow_imp.id(450341142944822539)
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
 p_id=>wwv_flow_imp.id(450340706016822539)
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
 p_id=>wwv_flow_imp.id(450340383885822537)
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
 p_id=>wwv_flow_imp.id(450348770018822549)
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
 p_id=>wwv_flow_imp.id(450348325358822548)
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
 p_id=>wwv_flow_imp.id(450350231777822551)
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
 p_id=>wwv_flow_imp.id(450349858355822550)
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
 p_id=>wwv_flow_imp.id(788998486674413472)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'257730'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID:EMP_ID:EMPENT_ID:QUANTITY:RATE:AMOUNT_PAID:START_PERIOD_PAID:END_PERIOD_PAID:PAY_STATUS:BY_PASS_COMPUTATION:REMARKS:ENT_LINK:EMP_LINK'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT_PAID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(810496395515586574)
,p_plug_name=>'Systematic Payroll Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(570168152849055094)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id empent_id, b.percentage, b.REMARKS, b.QUICK_ENTRY, b.START_DATE, b.END_DATE,',
'entitlement_currency, b.PENSIONABLE, b.INCOME_STATUS, b.PRORATE, b.PRORATION_DAYS,',
'pkg_global_fnts.fn_proratesys( b.Emp_id, amount , d.start_date, d.end_date, b.start_date, b.end_date, b.proration_days) pro_rate_amount,                                    ',
'b.emp_id, b.nis_deduction, b.taxable,b.income_type,c.income_code, b.amount Actual_amount',
'from hr_rcm_empentitle b join pa_pcf_incomecode c on c.id=b.income_code_id ',
'join hr_rcm_employee c on c.id = b.emp_id',
'join hr_rcm_individual a on a.id = c.ind_id',
'join pa_pcf_earningperiod d on (c.org_id = d.org_id and c.payment_type = d.payment_type ',
'                        and c.employment_class_id = d.employment_class_id and c.compute_gross = d.compute_gross)',
'where (d.start_date between trunc(b.start_date) and trunc(b.end_date)',
'    or B.END_DATE is null and  B.start_date <= d.start_date',
'    or B.end_date between d.start_date and d.end_date',
'    or B.END_DATE is null and B.start_date between d.start_date and d.end_date',
'    or B.end_date between d.start_date and d.end_date and B.start_date between d.start_date and d.end_date',
'    )   ',
'and upper(b.admin_status)=''SYS''',
'and d.earnings_type =''RG''',
'and UPPER(income_status)=''IP'' ',
'and not exists (select 1',
'                from pa_pcf_adhocpayment g',
'                where g.empent_id=b.id',
'                and g.Earnings_period_id= d.id',
'                )',
'and b.amount > 0',
'and d.id = :P1500_ORGANISATION_PERIODS',
'and (Upper(c.include_payroll)=''Y'' or Upper(c.include_payroll)=''N'' and Date_Separated Between d.Start_Date And d.End_Date',
'or Upper(c.include_payroll) = ''N'' and Date_Separated >  d.End_Date)',
'and c.payroll_effective <= d.Payroll_CutOff',
'and c.Date_Employed <= d.End_Date',
'and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') in (''ACP'',''ACT'',''OLV'',''SECOND'',''ON-TRAINING'',''SUS'')',
'and c.VERIFIED_BY is not null',
'and (a.dod  Is Null Or a.dod >= d.End_Date Or a.dod  Between d.Start_Date And d.End_Date)',
'And (Date_Separated Is Null Or Date_Separated >= d.End_Date Or Date_Separated Between d.Start_Date And d.End_Date)--used for separated employees',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
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
 p_id=>wwv_flow_imp.id(546748477834610369)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#EMPENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>124956484636613795
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450354086770822558)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450353603850822558)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450353230319822557)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450352807725822557)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450352410992822556)
,p_db_column_name=>'REMARKS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450352040505822556)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450351693048822555)
,p_db_column_name=>'START_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450351211006822555)
,p_db_column_name=>'END_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450358050880822563)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>170
,p_column_identifier=>'X'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632583213821532444)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450357637320822562)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>180
,p_column_identifier=>'Y'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450357206643822562)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>190
,p_column_identifier=>'Z'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450356821019822561)
,p_db_column_name=>'PRORATE'
,p_display_order=>200
,p_column_identifier=>'AA'
,p_column_label=>'Prorate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450356407891822561)
,p_db_column_name=>'PRORATION_DAYS'
,p_display_order=>210
,p_column_identifier=>'AB'
,p_column_label=>'Proration Days'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450356021096822560)
,p_db_column_name=>'PRO_RATE_AMOUNT'
,p_display_order=>220
,p_column_identifier=>'AC'
,p_column_label=>'Pro Rate Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450355662899822560)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>230
,p_column_identifier=>'AD'
,p_column_label=>'Nis Deduction'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450355209864822559)
,p_db_column_name=>'TAXABLE'
,p_display_order=>240
,p_column_identifier=>'AE'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450354809901822559)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>250
,p_column_identifier=>'AF'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450354447440822558)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>260
,p_column_identifier=>'AG'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(547168495583226403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'257924'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCOME_TYPE:EMP_ID:EMPENT_ID:PRO_RATE_AMOUNT:ACTUAL_AMOUNT:ENTITLEMENT_CURRENCY:START_DATE:END_DATE:PENSIONABLE:NIS_DEDUCTION:TAXABLE:INCOME_STATUS:PRORATE:PRORATION_DAYS:PERCENTAGE:'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572031520893526686)
,p_plug_name=>'Non-Statutory Deduction'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572031440464526685)
,p_plug_name=>'Active Periodic Non Statutory Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(572031520893526686)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", ',
'"EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'x."EMP_ID",x."EMP_ID" employee_id,',
'"DATESTART",',
'"DISCIPLINE_ID",',
'"DEDUCT_STATUS",',
'"AMOUNT_BORROWED",',
'"AMOUNT_OWING",',
'"INTEREST_TYPE",',
'"INTEREST_RATE",',
'"PERIOD",',
'"DATE_CLOSE",',
'"CLOSED_BY",',
'"DEDUCTION_AMOUNT",',
'"APPROVED_BY",',
'"APPROVED_DATE",',
'"DEDUCTION_NO",',
'trim(x."REMARKS") REMARKS,',
'"PREVIOUS_START_DATE",',
'"CLOSING_EARNING_PERIOD",',
'"CURRENT_BALANCE",',
'"DEDUCTION_TYPE",',
'x."HOURLY_RATE",',
'"FOR_PRV_YTD_ENTRY",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS"',
'from "PA_PCF_ADMINDEDUCTION" x join pa_pcf_earningperiod w on (w.org_id = x.org_id and w.payment_type = x.payment_type and  w.employment_class_id = x.employment_class_id and x.COMPUTE_GROSS=w.COMPUTE_GROSS)',
'where (UPPER(deduct_status)=''IP'' or  :P1500_START_DATE_1 between datestart and date_close)',
'and deduction_no!=''0''',
'and datestart <= :P1500_END_DATE_1',
'and for_prv_ytd_entry = 0',
'and deduction_amount >0',
'and period >0',
'and x.VERIFIED_BY is not null',
'and w.id = :P1500_ORGANISATION_PERIODS',
'and w.COMPUTE_GROSS =:P1500_COMPUTE_GROSS',
'and (DATE_CLOSE is null or date_close > :P1500_END_DATE_1)',
'            ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ID,P1500_START_DATE_1,P1500_END_DATE_1,P1500_COMPUTE_GROSS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(572031059347526681)
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD:#ID#,1296'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>150239066149530107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450373300897822575)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:RP,1297:P1297_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450372983806822575)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450372545863822574)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450372163893822574)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450371751643822574)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450371374613822574)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3632624875019596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450370939879822573)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450370565872822573)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450370121643822573)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450369708442822572)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450369370216822572)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450368894175822572)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450368501850822572)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450368109897822571)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450367786997822571)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450367295654822571)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450366965666822570)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450366560093822570)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450366157754822570)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450365736551822570)
,p_db_column_name=>'EMP_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450365317274822569)
,p_db_column_name=>'DATESTART'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450364981179822569)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450364548463822569)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450364165156822568)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450363710344822568)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450363325978822568)
,p_db_column_name=>'PERIOD'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450362938668822568)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450362495419822567)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450362160804822567)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450361701450822567)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450361337812822566)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450360905789822566)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450360560312822566)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450360160304822565)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450359706364822565)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450359341694822565)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(570152741372051240)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'257561'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:ID:EMP_ID:DATESTART:AMOUNT_OWING:PERIOD:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DATE_CLOSE:AMOUNT_BORROWED:INTEREST_RATE:INTEREST_TYPE:EMPLOYEE_ID:EXPENSE_LKID:REMARKS:'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1065283605367565532)
,p_plug_name=>'Active Recurring Non Statutory Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(572031520893526686)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", ',
'"EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'x."EMP_ID",x."EMP_ID" employee_id,',
'"DATESTART",',
'"DISCIPLINE_ID",',
'"DEDUCT_STATUS",',
'"AMOUNT_BORROWED",',
'"AMOUNT_OWING",',
'"INTEREST_TYPE",',
'"INTEREST_RATE",',
'"PERIOD",',
'"DATE_CLOSE",',
'"CLOSED_BY",',
'"DEDUCTION_AMOUNT",',
'"APPROVED_BY",',
'"APPROVED_DATE",',
'"DEDUCTION_NO",',
'trim(x."REMARKS") REMARKS,',
'"PREVIOUS_START_DATE",',
'"CLOSING_EARNING_PERIOD",',
'"CURRENT_BALANCE",',
'"DEDUCTION_TYPE",',
'x."HOURLY_RATE",',
'"FOR_PRV_YTD_ENTRY",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS"',
'from "PA_PCF_ADMINDEDUCTION" x join pa_pcf_earningperiod w on (w.org_id = x.org_id and w.payment_type = x.payment_type and  w.employment_class_id = x.employment_class_id and x.COMPUTE_GROSS=w.COMPUTE_GROSS)',
'where (UPPER(deduct_status)=''IP'' or  :P1500_START_DATE between datestart and date_close)',
'and deduction_no!=''0''',
'and datestart <= :P1500_END_DATE',
'and for_prv_ytd_entry = 0',
'and deduction_amount >0',
'and period=0',
'and x.VERIFIED_BY is not null',
'and w.id = :P1500_ORGANISATION_PERIODS',
'and w.COMPUTE_GROSS =:P1500_COMPUTE_GROSS',
'and (DATE_CLOSE is null or date_close > :P1500_END_DATE)',
'            ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ID,P1500_START_DATE,P1500_END_DATE,P1500_COMPUTE_GROSS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1065283827435565534)
,p_name=>'Listing of Employee Non Statutory Deductions'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD:#ID#,1296'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>643491834237568960
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450375977071822580)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:RP,1297:P1297_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450376341939822580)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450376739313822581)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450377119048822581)
,p_db_column_name=>'DATESTART'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450377532316822581)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450377989546822582)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450378330502822582)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450378763646822582)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450379152058822582)
,p_db_column_name=>'PERIOD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450379525292822583)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450379953627822583)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450380330283822583)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450380727376822584)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450381108919822584)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450381526636822584)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450381925537822584)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450382335497822585)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450382712400822585)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450383142882822585)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450383514361822586)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450383910891822586)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450384299236822586)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450384760859822586)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450385137340822587)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3632624875019596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450385550122822587)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450385977129822587)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450386345143822587)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450386757128822588)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450387136765822588)
,p_db_column_name=>'REMARKS'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450387518606822588)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450387959723822589)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450388293806822589)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450388754781822589)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450389147145822590)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450389501274822590)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450375553646822579)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1065287605789566343)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1119504'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:DEDUCTION_NO:DEDUCT_STATUS:EXPENSE_LKID:EMPLOYEE_ID:REMARKS:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_sum_columns_on_break=>'DEDUCTION_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572031624465526687)
,p_plug_name=>'Payroll Anomalies'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(570011428084979762)
,p_plug_name=>' Unverified Deductions with 0 Deduction No.'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", ',
'"EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'x."EMP_ID",x."EMP_ID" employee_id,',
'"DATESTART",',
'"DISCIPLINE_ID",',
'"DEDUCT_STATUS",',
'"AMOUNT_BORROWED",',
'"AMOUNT_OWING",',
'"INTEREST_TYPE",',
'"INTEREST_RATE",',
'"PERIOD",',
'"DATE_CLOSE",',
'"CLOSED_BY",',
'"DEDUCTION_AMOUNT",',
'"APPROVED_BY",',
'"APPROVED_DATE",',
'"DEDUCTION_NO",',
'trim(x."REMARKS") REMARKS,',
'"PREVIOUS_START_DATE",',
'"CLOSING_EARNING_PERIOD",',
'"CURRENT_BALANCE",',
'"DEDUCTION_TYPE",',
'x."HOURLY_RATE",',
'"FOR_PRV_YTD_ENTRY",',
'x."ENTERED_BY",',
'x."ENTRY_DATE",',
'x."VERIFIED_BY",',
'x."VERIFIED_DATE",',
'x."LAST_CHANGED_BY",',
'x."LAST_CHANGED_DATE",',
'x."MACHINE_INSERT",',
'x."MACHINE_UPDATE",',
'x."TRANSACTION_TYPE_ID",',
'x."STATUS"',
'from "PA_PCF_ADMINDEDUCTION" x join pa_pcf_earningperiod w on (w.org_id = x.org_id and w.payment_type = x.payment_type and  w.employment_class_id = x.employment_class_id and x.COMPUTE_GROSS=w.COMPUTE_GROSS)',
'where (UPPER(deduct_status)=''IP'' or  :P1500_START_DATE between datestart and date_close)',
'and (deduction_no=''0''',
'or x.VERIFIED_BY is null)',
'and w.id = :P1500_ORGANISATION_PERIODS',
'and w.COMPUTE_GROSS =:P1500_COMPUTE_GROSS',
'and (DATE_CLOSE is null or date_close > :P1500_END_DATE)',
'            ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ID,P1500_START_DATE,P1500_END_DATE,P1500_COMPUTE_GROSS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(569572293257869009)
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD:#ID#,1296'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>147780300059872435
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450405617456822602)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:RP,1297:P1297_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450405231945822602)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450404881422822602)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450404408400822601)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450404085140822601)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450403668305822601)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3632624875019596671)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450403270199822601)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450402853221822600)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450402478298822600)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450402079399822600)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450401594739822599)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450401210459822599)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450400825702822599)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450400435880822598)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450400052747822598)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450399642802822598)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450399193711822597)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450398869615822597)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450398409401822597)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632625189517596671)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450398043683822597)
,p_db_column_name=>'EMP_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450397613032822596)
,p_db_column_name=>'DATESTART'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450397258097822596)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450396876133822596)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450396479202822595)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450396037141822595)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450395693045822595)
,p_db_column_name=>'PERIOD'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450395277809822594)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450394876363822594)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450394487556822594)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450394045723822594)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450393614949822593)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450393277311822593)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450392852321822593)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450392462626822592)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450392085405822592)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450391664258822592)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(569551331262851971)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'263575'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:VERIFIED_DATE:LAST_CHANGED_DATE:TRANSACTION_TYPE_ID:STATUS:DEDUCT_STATUS:INTEREST_TYPE:CLOSED_BY:APPROVED_BY:DEDUCTION_NO:REMARKS:ENTERED_BY:VERIFIED_BY:LAST_CHANGED_BY:MACHINE_INSERT:MACHINE_UPDATE:EXPENSE_LKID:EMPLOYEE_ID:EXPENSE_ID:EMP_ID:DATES'
||'TART:DISCIPLINE_ID:AMOUNT_BORROWED:AMOUNT_OWING:INTEREST_RATE:PERIOD:DATE_CLOSE:DEDUCTION_AMOUNT:APPROVED_DATE:PREVIOUS_START_DATE:CLOSING_EARNING_PERIOD:CURRENT_BALANCE:DEDUCTION_TYPE:HOURLY_RATE:FOR_PRV_YTD_ENTRY:ENTRY_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(570080300720782109)
,p_plug_name=>'Unpaid Systematic Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id empent_id, b.percentage, b.REMARKS, b.QUICK_ENTRY, b.START_DATE, b.END_DATE,',
'entitlement_currency, b.PENSIONABLE, b.INCOME_STATUS, b.PRORATE, b.PRORATION_DAYS,',
'pkg_global_fnts.fn_proratesys( b.Emp_id, amount , d.start_date, d.end_date, b.start_date, b.end_date, b.proration_days) pro_rate_amount,                                    ',
'b.emp_id, b.nis_deduction, b.taxable,b.income_type,c.income_code, b.amount Actual_amount',
'from hr_rcm_empentitle b join pa_pcf_incomecode c on c.id=b.income_code_id ',
'join hr_rcm_employee c on c.id = b.emp_id',
'join hr_rcm_individual a on a.id = c.ind_id',
'join pa_pcf_earningperiod d on (c.org_id = d.org_id and c.payment_type = d.payment_type ',
'                        and c.employment_class_id = d.employment_class_id and c.compute_gross = d.compute_gross)',
'where (d.start_date between trunc(b.start_date) and trunc(b.end_date)',
'    or B.END_DATE is null and  B.start_date <= d.start_date',
'    or B.end_date between d.start_date and d.end_date',
'    or B.END_DATE is null and B.start_date between d.start_date and d.end_date',
'    or B.end_date between d.start_date and d.end_date and B.start_date between d.start_date and d.end_date',
'    )   ',
'and upper(b.admin_status)=''SYS''',
'and d.earnings_type =''RG''',
'and UPPER(income_status)=''IP'' ',
'and not exists (select 1',
'                from pa_pcf_adhocpayment g',
'                where g.empent_id=b.id',
'                and g.Earnings_period_id= d.id',
'                )',
'and b.amount > 0',
'and (Upper(c.include_payroll)=''Y'' or Upper(c.include_payroll)=''N'' and Date_Separated Between d.Start_Date And d.End_Date',
'or Upper(c.include_payroll) = ''N'' and Date_Separated >  d.End_Date)',
'and c.payroll_effective <= d.Payroll_CutOff',
'and c.Date_Employed <= d.End_Date',
'and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') in (''ACP'',''ACT'',''OLV'',''SECOND'',''ON-TRAINING'',''SUS'')',
'and c.VERIFIED_BY is not null',
'and (a.dod  Is Null Or a.dod >= d.End_Date Or a.dod  Between d.Start_Date And d.End_Date)',
'And (Date_Separated Is Null Or Date_Separated >= d.End_Date Or Date_Separated Between d.Start_Date And d.End_Date)--used for separated employees',
'and d.id = :P1500_ORGANISATION_PERIODS',
'and not exists (select 1',
'                from pa_pmg_payrollincome x join pa_pmg_payrolldtl y on y.id = x.pay_slipno',
'                where x.empent_id = b.id',
'                and y.earnings_period_id =:P1500_ORGANISATION_PERIODS',
'                )',
'                '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
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
 p_id=>wwv_flow_imp.id(570080245452782108)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#EMPENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>148288252254785534
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450414292102822612)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450413840646822611)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450413437007822611)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450413082757822610)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450412603812822610)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450412205550822609)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450411831134822609)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450411481896822608)
,p_db_column_name=>'END_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450411072479822608)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632583213821532444)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450410638077822608)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450410200509822607)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450409857867822607)
,p_db_column_name=>'PRORATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Prorate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450409487500822606)
,p_db_column_name=>'PRORATION_DAYS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Proration Days'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450409059153822606)
,p_db_column_name=>'PRO_RATE_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pro Rate Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450408629625822605)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nis Deduction'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450408199969822605)
,p_db_column_name=>'TAXABLE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450407866604822604)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450407478126822604)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(570060616446737333)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTITLEMENT_CURRENCY:EMP_ID:INCOME_TYPE:PERCENTAGE:REMARKS:QUICK_ENTRY:START_DATE:END_DATE:EMPENT_ID:PENSIONABLE:INCOME_STATUS:PRORATE:PRORATION_DAYS:PRO_RATE_AMOUNT:NIS_DEDUCTION:TAXABLE:INCOME_CODE:ACTUAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(570166610429055079)
,p_plug_name=>'Systematic Entitlements With Zero Amount'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id empent_id, b.percentage, b.REMARKS, b.QUICK_ENTRY, b.START_DATE, b.END_DATE,',
'entitlement_currency, b.PENSIONABLE, b.INCOME_STATUS, b.PRORATE, b.PRORATION_DAYS,',
'pkg_global_fnts.fn_proratesys( b.Emp_id, amount , d.start_date, d.end_date, b.start_date, b.end_date, b.proration_days) pro_rate_amount,                                    ',
'b.emp_id, b.nis_deduction, b.taxable,b.income_type,c.income_code, b.amount Actual_amount',
'from hr_rcm_empentitle b join pa_pcf_incomecode c on c.id=b.income_code_id ',
'join hr_rcm_employee c on c.id = b.emp_id',
'join hr_rcm_individual a on a.id = c.ind_id',
'join pa_pcf_earningperiod d on (c.org_id = d.org_id and c.payment_type = d.payment_type ',
'                        and c.employment_class_id = d.employment_class_id and c.compute_gross = d.compute_gross)',
'where (d.start_date between trunc(b.start_date) and trunc(b.end_date)',
'    or B.END_DATE is null and  B.start_date <= d.start_date',
'    or B.end_date between d.start_date and d.end_date',
'    or B.END_DATE is null and B.start_date between d.start_date and d.end_date',
'    or B.end_date between d.start_date and d.end_date and B.start_date between d.start_date and d.end_date',
'    )   ',
'and upper(b.admin_status)=''SYS''',
'and d.earnings_type =''RG''',
'and UPPER(income_status)=''IP'' ',
'and not exists (select 1',
'                from pa_pcf_adhocpayment g',
'                where g.empent_id=b.id',
'                and g.Earnings_period_id= d.id',
'                )',
'and b.amount = 0',
'and d.id = :P1500_ORGANISATION_PERIODS',
'and (Upper(c.include_payroll)=''Y'' or Upper(c.include_payroll)=''N'' and Date_Separated Between d.Start_Date And d.End_Date',
'or Upper(c.include_payroll) = ''N'' and Date_Separated >  d.End_Date)',
'and c.payroll_effective <= d.Payroll_CutOff',
'and c.Date_Employed <= d.End_Date',
'and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') in (''ACP'',''ACT'',''OLV'',''SECOND'',''ON-TRAINING'',''SUS'')',
'and c.VERIFIED_BY is not null',
'and (a.dod  Is Null Or a.dod >= d.End_Date Or a.dod  Between d.Start_Date And d.End_Date)',
'And (Date_Separated Is Null Or Date_Separated >= d.End_Date Or Date_Separated Between d.Start_Date And d.End_Date)--used for separated employees',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
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
 p_id=>wwv_flow_imp.id(570166511144055078)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#EMPENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>148374517946058504
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450422051496822622)
,p_db_column_name=>'ENTITLEMENT_CURRENCY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450421667843822621)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450421234575822621)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450420794912822621)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450420394957822620)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450420028913822620)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quick Entry'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450419636485822619)
,p_db_column_name=>'START_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450419288374822618)
,p_db_column_name=>'END_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450418891147822618)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632583213821532444)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450418470551822618)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450418041553822617)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450417689125822617)
,p_db_column_name=>'PRORATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Prorate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450417219407822616)
,p_db_column_name=>'PRORATION_DAYS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Proration Days'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450416828504822616)
,p_db_column_name=>'PRO_RATE_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pro Rate Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450416418521822615)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nis Deduction'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450416010407822615)
,p_db_column_name=>'TAXABLE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450415602783822614)
,p_db_column_name=>'INCOME_CODE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Income Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450415227843822614)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(570069658467779032)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258392'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCOME_TYPE:EMP_ID:EMPENT_ID:PRO_RATE_AMOUNT:ACTUAL_AMOUNT:PERCENTAGE:PENSIONABLE:NIS_DEDUCTION:TAXABLE:ENTITLEMENT_CURRENCY:START_DATE:INCOME_STATUS:PRORATE:PRORATION_DAYS:REMARKS:QUICK_ENTRY:END_DATE:'
,p_break_on=>'INCOME_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'INCOME_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(689221861310802461)
,p_plug_name=>'Mismatched Employee/Employer Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) Employee_count, B.description, deduction_type',
'from Pa_Pcf_Admindeduction a join pa_pcf_deductioncode b on b.id = a.expense_id',
'where (UPPER(deduct_status)=''IP'' or  :P1500_START_DATE between datestart and date_close)',
'and deduction_no!=''0''',
'and datestart <= :P1500_END_DATE--:P1500_END_DATE',
'and for_prv_ytd_entry = 0',
'and deduction_amount >0',
'and who_pays = ''BOTH''',
'and A.VERIFIED_BY is not null',
'AND A.org_id =:P1500_ORGANISATION',
'AND A.EMPLOYMENT_CLASS_ID =:P1500_EMPLOYMENT_CLASS_ID',
'AND A.PAYMENT_TYPE =:P1500_PAYMENT_TYPE',
'AND A.COMPUTE_GROSS=:P1500_COMPUTE_GROSS',
'and (DATE_CLOSE is null or date_close > :P1500_END_DATE)',
'group by  B.description, deduction_type'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_START_DATE,P1500_END_DATE,P1500_ORGANISATION,P1500_EMPLOYMENT_CLASS_ID,P1500_PAYMENT_TYPE,P1500_COMPUTE_GROSS'
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
 p_id=>wwv_flow_imp.id(689221927420802462)
,p_max_row_count=>'1000000'
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
,p_internal_uid=>267429934222805888
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450423081285822624)
,p_db_column_name=>'EMPLOYEE_COUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450423397425822624)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450423844541822625)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(689238655327574009)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1118886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_COUNT:DESCRIPTION:DEDUCTION_TYPE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(689259998003138560)
,p_report_id=>wwv_flow_imp.id(689238655327574009)
,p_pivot_columns=>'DEDUCTION_TYPE'
,p_row_columns=>'DESCRIPTION'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(450424859775822626)
,p_pivot_id=>wwv_flow_imp.id(689259998003138560)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'EMPLOYEE_COUNT'
,p_db_column_name=>'PFC1'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(791113368041401777)
,p_plug_name=>'Employee who Will NOT be Paid'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    b.id   link,',
'    b.id   emp_id,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''TAX_NO'', :P1500_START_DATE) tax_no,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''NIS_NO'', :P1500_START_DATE) nis_no,',
'    dob,',
'    upper(sex_code) sex_code,',
'    bank_branch_id,',
'    a.bank_account_no,',
'    confirmed,',
'    employment_status,',
'    b.employment_class_id,',
'    b.payment_type,',
'    date_employed,',
'    pkg_global_fnts.fn_personalrate(b.id, c.start_date) personal_rate, hourly_rate,',
'    include_payroll,',
'    date_separated,',
'    appointment_date,',
'    b.position_id,',
'    payroll_effective,',
'    b.org_id,',
'    primary_tax_job,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_HOURS'', :P1500_START_DATE) stand_hrs,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_DAYS'',:P1500_START_DATE) standard_days,',
'    org_structure',
'FROM',
'    hr_rcm_individual   a',
'    JOIN hr_rcm_employee     b ON a.id = b.ind_id',
'    JOIN (',
'        SELECT',
'            emp_id,',
'            start_date,',
'            end_date,',
'            hourly_rate,',
'            personal_rate',
'        FROM',
'            hr_rcm_salary W',
'        WHERE :P1500_END_DATE BETWEEN TRUNC(W.START_DATE) AND TRUNC(NVL(W.END_DATE, trunc(current_date) +60))  ',
'    ) c ON b.id = c.emp_id',
'WHERE',
'   ( upper(b.include_payroll) = ''N''',
'    or b.payroll_effective > :P1500_PAYROLL_CUTOFF',
'    or b.date_employed > :P1500_END_DATE',
'    or c.personal_rate <= 0',
'    or pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') !=''ACT''',
'    or b.verified_by IS  NULL',
'    or ( a.dod IS not NULL',
'          OR a.dod < :P1500_END_DATE ) )',
'    AND ( date_separated IS NULL',
'          OR date_separated >= :P1500_END_DATE',
'          OR date_separated BETWEEN :P1500_START_DATE AND :P1500_END_DATE ) ',
'    AND b.employment_class_id = to_number(:P1500_EMPLOYMENT_CLASS_ID)',
'    AND b.payment_type = :P1500_PAYMENT_TYPE',
'    AND b.org_id = :P1500_ORGANISATION',
'    AND EXISTS (',
'        SELECT',
'            1',
'        FROM',
'            vw_useraccess      w          ',
'        WHERE',
'            b.org_id = w.org_id',
'            AND b.employment_class_id = w.employment_class_id',
'            AND upper(b.payment_type) = upper(w.payment_type)        ',
'    )',
'    AND compute_gross = :P1500_COMPUTE_GROSS      '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION,P1500_START_DATE,P1500_END_DATE,P1500_PAYROLL_CUTOFF,P1500_EMPLOYMENT_CLASS_ID,P1500_PAYMENT_TYPE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(791113418893401778)
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID:#LINK#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>369321425695405204
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450425559695822627)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450425899072822627)
,p_db_column_name=>'TAX_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tax No'
,p_column_type=>'STRING'
,p_static_id=>'TAX_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450426361263822628)
,p_db_column_name=>'NIS_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nis No'
,p_column_type=>'STRING'
,p_static_id=>'NIS_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450426720797822628)
,p_db_column_name=>'DOB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450427130056822629)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex'
,p_column_type=>'STRING'
,p_static_id=>'SEX_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450427525712822629)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Bank Branch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'BANK_BRANCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450427984938822629)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'BANK_ACCOUNT_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450428388089822630)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450428739733822630)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450429142162822631)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450429509457822631)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450429954592822632)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450430325435822632)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450430786719822633)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450431147827822633)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Include Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450431514878822633)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450431966039822634)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450432302199822634)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450432695719822635)
,p_db_column_name=>'ORG_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450433147264822635)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450433585601822636)
,p_db_column_name=>'STAND_HRS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Stand Hrs'
,p_column_type=>'STRING'
,p_static_id=>'STAND_HRS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450433957861822636)
,p_db_column_name=>'STANDARD_DAYS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Standard Days'
,p_column_type=>'STRING'
,p_static_id=>'STANDARD_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450434387107822637)
,p_db_column_name=>'LINK'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Link'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450434730113822637)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450435170072822637)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(792127389026417732)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1119039'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'LINK:EMP_ID:TAX_NO:NIS_NO:DOB:EMPLOYMENT_STATUS:PERSONAL_RATE:HOURLY_RATE:ORG_STRUCTURE:POSITION_ID:PRIMARY_TAX_JOB:PAYROLL_EFFECTIVE:DATE_SEPARATED:INCLUDE_PAYROLL:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(968974220552246675)
,p_plug_name=>'Duplicate Entitlements For Payment'
,p_parent_plug_id=>wwv_flow_imp.id(572031624465526687)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id, b.emp_company_no, surname,c.first_name,amount_paid,start_period_paid,end_period_paid,DESCRIPTION,d.admin_status',
'from pa_pcf_adhocpayment a join hr_rcm_employee b on a.emp_id=b.id ',
'join hr_rcm_individual c on c.id=b.ind_id',
'join hr_rcm_empentitle d on a.empent_id =d.id',
'join pa_pcf_incomecode e on e.id=d.income_code_id',
'where exists (select 1',
'              from hr_rcm_empentitle c',
'              where a.empent_id =c.id',
'              and admin_status=''SYS''',
'              and (c.end_date is null or c.end_date>START_PERIOD_PAID)',
'              )',
'and a.earnings_period_id =:P1500_ORGANISATION_PERIODS',
'union all',
'select a.id, b.emp_company_no, surname,c.first_name,amount_paid,start_period_paid,end_period_paid,DESCRIPTION,d.admin_status',
'from pa_pcf_adhocpayment a join hr_rcm_employee b on a.emp_id=b.id ',
'join hr_rcm_individual c on c.id=b.ind_id',
'join hr_rcm_empentitle d on a.empent_id =d.id',
'join pa_pcf_incomecode e on e.id=d.income_code_id',
'where exists (select 1',
'              from vw_duplicate_entitlement w',
'              where w.Empent_Id=a.Empent_Id',
'              and w.Earnings_Period_id=a.Earnings_Period_id',
'              )',
'and a.earnings_period_id =:P1500_ORGANISATION_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(968974278169246676)
,p_name=>'Duplicate Entitlements For Payment'
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
,p_owner=>'GTT'
,p_internal_uid=>547182284971250102
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450436113371822639)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.::P1298_ID:#ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450436574992822642)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'EMP_COMPANY_NO'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450436904498822642)
,p_db_column_name=>'SURNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'SURNAME'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450437356236822643)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'FIRST_NAME'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450437770566822643)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'AMOUNT_PAID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450438105258822643)
,p_db_column_name=>'START_PERIOD_PAID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'START_PERIOD_PAID'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450438576158822644)
,p_db_column_name=>'END_PERIOD_PAID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'END_PERIOD_PAID'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450438898283822644)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'DESCRIPTION'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450439334465822644)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'ADMIN_STATUS'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(968980207241253356)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1119081'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_COMPANY_NO:SURNAME:FIRST_NAME:AMOUNT_PAID:START_PERIOD_PAID:END_PERIOD_PAID:DESCRIPTION:ADMIN_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572031726376526688)
,p_plug_name=>'Employee Configurations'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(904457716988056247)
,p_plug_name=>'Wages Employees to be Paid'
,p_parent_plug_id=>wwv_flow_imp.id(572031726376526688)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    b.id link,',
'    b.id emp_id,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''TAX_NO'', :P1500_START_DATE) tax_no,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''NIS_NO'', :P1500_START_DATE) nis_no,',
'    dob,',
'    upper(sex_code) sex_code,',
'    bank_branch_id,',
'    a .bank_account_no,',
'    confirmed,',
'    employment_status,',
'    b.employment_class_id,',
'    b.payment_type,',
'    date_employed,',
'    pkg_global_fnts.fn_personalrate(b.id, c .start_date) personal_rate,',
'    hourly_rate,',
'    include_payroll,',
'    date_separated,',
'    appointment_date,',
'    b.wklocation_id,',
'    payroll_effective,',
'    b.org_id,',
'    primary_tax_job, position_id,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_HOURS'', :P1500_START_DATE) Stand_hrs,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_DAYS'', :P1500_START_DATE) standard_days,',
'    org_structure',
'from',
'    hr_rcm_individual a',
'    join hr_rcm_employee b on a .id = b.ind_id',
'    Join (',
'        select',
'            emp_id,',
'            start_date,',
'            end_date,',
'            hourly_rate,',
'            Personal_Rate',
'        from',
'            Hr_Rcm_Salary W',
'        where :P1500_END_DATE BETWEEN TRUNC(W.START_DATE) AND TRUNC(NVL(W.END_DATE, trunc(current_date) +60))  ',
'    ) C On B.Id = C .Emp_Id',
'where',
'    Upper(b.include_payroll) = ''Y''',
'    and b.payroll_effective <= :P1500_PAYROLL_CUTOFF',
'    and b.Date_Employed <= :P1500_END_DATE',
'    and c .Personal_Rate > 0',
'    and Pkg_Global_Fnts.Get_Lookup_Col(Employment_Status_id, ''TABLE_VALUE'') in (''ACP'', ''IACT'',''ACT'', ''OLV'', ''IACT'', ''SECOND'', ''ON-TRAINING'')',
'    and b.VERIFIED_BY is not null',
'    and (',
'        a .dod Is Null',
'        Or a .dod >= :P1500_END_DATE',
'        Or a .dod Between :P1500_START_DATE',
'        And :P1500_END_DATE',
'    )',
'    And (',
'        Date_Separated Is Null',
'        Or Date_Separated >= :P1500_END_DATE',
'        Or Date_Separated Between :P1500_START_DATE',
'        And :P1500_END_DATE',
'    )',
'    and b.employment_class_id = to_number(:P1500_EMPLOYMENT_CLASS_ID)',
'    and b.payment_type = :P1500_PAYMENT_TYPE',
'    and b.org_id = :P1500_ORGANISATION',
'    and (',
'        (',
'            :P1500_START_DATE between trunc(start_date)',
'            and trunc(end_date)',
'            and end_date is not null',
'        )',
'        or (',
'            trunc(start_date) <= :P1500_START_DATE',
'            and trunc(end_date) is null',
'        )',
'    )',
'    and exists (',
'        select',
'            1',
'        FROM',
'            VW_USERACCESS w          ',
'        where',
'            b.org_id = w.org_id',
'            and b.employment_class_id = w.employment_class_id',
'            AND UPPER(b.PAYMENT_TYPE) = UPPER(w.PAYMENT_TYPE)          ',
'    )',
'    and compute_gross != ''BASIC_PAY''',
'    and exists(',
'        select',
'            1',
'        from',
'            pa_pcf_adhocpayment x',
'            join pa_pcf_earningperiod w on x.earnings_period_id = w.id',
'        where',
'            b.employment_class_id = w.employment_class_id',
'            and b.org_id = w.org_id',
'            and b.payment_type = w.payment_type',
'            and b.compute_gross = w.compute_gross',
'            and w.id = :P1500_ORGANISATION_PERIODS',
'            and w.compute_gross =:P1500_COMPUTE_GROSS',
'    )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION,P1500_START_DATE,P1500_END_DATE,P1500_PAYROLL_CUTOFF,P1500_EMPLOYMENT_CLASS_ID,P1500_PAYMENT_TYPE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(904457837658056248)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID:#LINK#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GTT'
,p_internal_uid=>482665844460059674
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450441032847822649)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450441318080822650)
,p_db_column_name=>'TAX_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tax No'
,p_column_type=>'STRING'
,p_static_id=>'TAX_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450441721097822650)
,p_db_column_name=>'NIS_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nis No'
,p_column_type=>'STRING'
,p_static_id=>'NIS_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450442110864822651)
,p_db_column_name=>'DOB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450442529191822651)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex'
,p_column_type=>'STRING'
,p_static_id=>'SEX_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450442916649822651)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Bank Branch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'BANK_BRANCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450443305694822652)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'BANK_ACCOUNT_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450443724482822652)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450444177223822653)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450444508908822653)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450444987674822654)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450445374030822654)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450445741949822654)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450446166096822655)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450446575428822655)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Include Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450446932244822656)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450447359792822656)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450447726012822657)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450448191519822657)
,p_db_column_name=>'ORG_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450448585778822658)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450448960409822658)
,p_db_column_name=>'STAND_HRS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Stand Hrs'
,p_column_type=>'STRING'
,p_static_id=>'STAND_HRS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450449354901822658)
,p_db_column_name=>'STANDARD_DAYS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Standard Days'
,p_column_type=>'STRING'
,p_static_id=>'STANDARD_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450449740418822659)
,p_db_column_name=>'LINK'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Link'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450450111826822659)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450450521743822660)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3616456159212392800)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450440671784822646)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(907826564800369914)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1118709'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:TAX_NO:NIS_NO:DOB:SEX_CODE:BANK_BRANCH_ID:BANK_ACCOUNT_NO:CONFIRMED:EMPLOYMENT_STATUS:EMPLOYMENT_CLASS_ID:PAYMENT_TYPE:DATE_EMPLOYED:PERSONAL_RATE:HOURLY_RATE:INCLUDE_PAYROLL:DATE_SEPARATED:APPOINTMENT_DATE:PAYROLL_EFFECTIVE:ORG_ID:PRIMARY_TAX'
||'_JOB:STAND_HRS:STANDARD_DAYS:LINK:ORG_STRUCTURE:WKLOCATION_ID:POSITION_ID'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1024427749234168349)
,p_plug_name=>'Salaried Employees to be Paid'
,p_parent_plug_id=>wwv_flow_imp.id(572031726376526688)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    b.id   link,',
'    b.id   emp_id,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''TAX_NO'', :p1500_start_date) tax_no,',
'    pkg_global_fnts.fn_getcurnistaxno(b.id, ''NIS_NO'', :p1500_start_date) nis_no,',
'    dob,',
'    upper(sex_code) sex_code,',
'    bank_branch_id,',
'    a.bank_account_no,',
'    confirmed,',
'    employment_status,',
'    b.employment_class_id,',
'    b.payment_type,',
'    date_employed,',
'    pkg_global_fnts.fn_personalrate(b.id, c.start_date) personal_rate, hourly_rate,',
'    include_payroll,',
'    date_separated,',
'    appointment_date,',
'    b.position_id,',
'    payroll_effective,',
'    b.org_id,',
'    primary_tax_job,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_HOURS'', :p1500_start_date) stand_hrs,',
'    pkg_global_fnts.fn_getemprule(b.id, ''STANDARD_DAYS'',:p1500_start_date) standard_days,',
'    org_structure',
'FROM',
'    hr_rcm_individual   a',
'    JOIN hr_rcm_employee     b ON a.id = b.ind_id',
'    JOIN (',
'        SELECT',
'            emp_id,',
'            start_date,',
'            end_date,',
'            hourly_rate,',
'            personal_rate',
'        FROM',
'            hr_rcm_salary W',
'        WHERE :P1500_END_DATE BETWEEN TRUNC(W.START_DATE) AND TRUNC(NVL(W.END_DATE, trunc(current_date) +60))           ',
'    ) c ON b.id = c.emp_id',
'WHERE',
'    upper(b.include_payroll) = ''Y''',
'    AND b.payroll_effective <= :p1500_payroll_cutoff',
'    AND b.date_employed <= :p1500_end_date',
'    AND c.personal_rate > 0',
'    AND pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') IN (',
'        ''ACP'',',
'        ''ACT'',',
'        ''OLV'',',
'        ''IACT'',',
'        ''SECOND'',',
'        ''ON-TRAINING''',
'    )',
'    AND b.verified_by IS NOT NULL',
'    AND ( a.dod IS NULL',
'          OR a.dod >= :p1500_end_date',
'          OR a.dod BETWEEN :p1500_start_date AND :p1500_end_date )',
'    AND ( date_separated IS NULL',
'          OR date_separated >= :p1500_end_date',
'          OR date_separated BETWEEN :p1500_start_date AND :p1500_end_date )',
'    AND b.employment_class_id = to_number(:p1500_employment_class_id)',
'    AND b.payment_type = :p1500_payment_type',
'    AND b.org_id = :p1500_organisation',
'    AND ( ( :p1500_start_date BETWEEN trunc(start_date) AND trunc(end_date)',
'            AND end_date IS NOT NULL )',
'          OR ( trunc(start_date) <= :p1500_start_date',
'               AND trunc(end_date) IS NULL ) )',
'    AND EXISTS (',
'        SELECT',
'            1',
'        FROM',
'            vw_useraccess      w         ',
'        WHERE',
'            b.org_id = w.org_id',
'            AND b.employment_class_id = w.employment_class_id',
'            AND upper(b.payment_type) = upper(w.payment_type)',
'            )',
'    AND compute_gross = ''BASIC_PAY''        '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1500_ORGANISATION,P1500_START_DATE,P1500_END_DATE,P1500_PAYROLL_CUTOFF,P1500_EMPLOYMENT_CLASS_ID,P1500_PAYMENT_TYPE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1024427840614168349)
,p_name=>'Employees to Pay'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID:#LINK#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLERP'
,p_internal_uid=>602635847416171775
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450451914841822664)
,p_db_column_name=>'EMP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450452329358822665)
,p_db_column_name=>'TAX_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tax No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450452788333822665)
,p_db_column_name=>'NIS_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nis No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NIS_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450453109272822666)
,p_db_column_name=>'DOB'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450453592574822666)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Sex'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEX_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450453967344822666)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Bank Branch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_BRANCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450454392312822667)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_ACCOUNT_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450454738516822667)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450455125130822668)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450455568987822668)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450455930904822669)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450456338859822669)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450456710337822669)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450457165946822670)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450457493716822670)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Include Payroll'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450457931633822671)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450458342607822671)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450458719680822671)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450459166884822672)
,p_db_column_name=>'ORG_ID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450459566568822672)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450459922784822673)
,p_db_column_name=>'STAND_HRS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Stand Hrs'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STAND_HRS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450460309877822673)
,p_db_column_name=>'STANDARD_DAYS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Standard Days'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STANDARD_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450460776556822674)
,p_db_column_name=>'LINK'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Link'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450461124973822674)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(450451519136822663)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>35
,p_column_identifier=>'Z'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632457542671335694)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1024430449926168542)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1118816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMP_ID:DOB:SEX_CODE:DATE_EMPLOYED:PERSONAL_RATE:HOURLY_RATE:PAYROLL_EFFECTIVE:STAND_HRS:ORG_STRUCTURE::POSITION_ID'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(572031964438526690)
,p_plug_name=>'Payroll Rules'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1035144758771401248)
,p_name=>'Payroll Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(572031964438526690)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id earnings_period_id, a.start_date, a.end_date, a.payment_type, Pkg_Global_Fnts.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'') employment_class_id, c.pay_status,	',
'    a.org_id, payment_period_no, epayroll_status, organisation_name, Bank_Account_No, esalary_charges,',
'    charges,esalary_account,psc_retirement_age,employment_age,probation_duration,sick_leave_yrs_service',
'    ,sick_leave_hrs_qualify,nvl(a.tax_method, w.tax_method) tax_method,timesheet_post_method,time_calculation_format',
'    ,nvl(a.Payroll_Type,w.Payroll_Type) Payroll_Type,C.ID Pay_Batch, W.Round_Method      ',
'    , company_year_id , company_year,start_year ,	end_year,start_paid_for,end_paid_for,payroll_cutoff, HAS_Supplemental,b.country, w.id pkey',
'from pa_pcf_earningperiod a join hr_hcf_organisation b on (a.org_id=b.id)',
'join HR_HCF_COMPANYYEAR z on z.id=a.Company_year_Id',
'join pa_pmg_payrollhd c on a.id=c.earnings_period_id',
'join hr_hcf_org_rule w on w.org_id=b.id',
'where b.verified_by is not null',
'and a.VERIFIED_BY is not null',
'and a.id=:P1500_ORGANISATION_PERIODS',
'   AND ((trunc(A.start_date) BETWEEN trunc(w.start_date) AND trunc(w.end_date) AND w.end_date IS NOT NULL)',
'    or  (trunc(w.start_date) <= trunc(a.start_date) and trunc(w.end_date) is null ))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1500_ORGANISATION_PERIODS'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450463184717822678)
,p_query_column_id=>1
,p_column_alias=>'EARNINGS_PERIOD_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Ern Prd'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3632589967933532454)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450463586476822679)
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450463900907822679)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450464388801822679)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450464713758822679)
,p_query_column_id=>5
,p_column_alias=>'EMPLOYMENT_CLASS_ID'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450465188462822680)
,p_query_column_id=>6
,p_column_alias=>'PAY_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Pay Status'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450465549826822680)
,p_query_column_id=>7
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450465978771822680)
,p_query_column_id=>8
,p_column_alias=>'PAYMENT_PERIOD_NO'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450466375753822681)
,p_query_column_id=>9
,p_column_alias=>'EPAYROLL_STATUS'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450466705795822681)
,p_query_column_id=>10
,p_column_alias=>'ORGANISATION_NAME'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450467192263822681)
,p_query_column_id=>11
,p_column_alias=>'BANK_ACCOUNT_NO'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450467541716822681)
,p_query_column_id=>12
,p_column_alias=>'ESALARY_CHARGES'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450467954424822682)
,p_query_column_id=>13
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450468373869822682)
,p_query_column_id=>14
,p_column_alias=>'ESALARY_ACCOUNT'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450468731497822682)
,p_query_column_id=>15
,p_column_alias=>'PSC_RETIREMENT_AGE'
,p_column_display_sequence=>160
,p_column_heading=>'Psc Retire Age'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450469101740822682)
,p_query_column_id=>16
,p_column_alias=>'EMPLOYMENT_AGE'
,p_column_display_sequence=>170
,p_column_heading=>'Emp Age'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450469574882822683)
,p_query_column_id=>17
,p_column_alias=>'PROBATION_DURATION'
,p_column_display_sequence=>180
,p_column_heading=>'Prob. Duration'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450469920056822683)
,p_query_column_id=>18
,p_column_alias=>'SICK_LEAVE_YRS_SERVICE'
,p_column_display_sequence=>190
,p_column_heading=>'Sick Lv Yrs Srv'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450470311826822683)
,p_query_column_id=>19
,p_column_alias=>'SICK_LEAVE_HRS_QUALIFY'
,p_column_display_sequence=>200
,p_column_heading=>'Sick Lv Hrs Qlfy'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450470701972822684)
,p_query_column_id=>20
,p_column_alias=>'TAX_METHOD'
,p_column_display_sequence=>210
,p_column_heading=>'Tax Method'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450471171679822684)
,p_query_column_id=>21
,p_column_alias=>'TIMESHEET_POST_METHOD'
,p_column_display_sequence=>220
,p_column_heading=>'Timesht Post Meth'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450471525877822684)
,p_query_column_id=>22
,p_column_alias=>'TIME_CALCULATION_FORMAT'
,p_column_display_sequence=>230
,p_column_heading=>'Time Calc. Format'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450471925945822684)
,p_query_column_id=>23
,p_column_alias=>'PAYROLL_TYPE'
,p_column_display_sequence=>240
,p_column_heading=>'Payroll Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450472327980822685)
,p_query_column_id=>24
,p_column_alias=>'PAY_BATCH'
,p_column_display_sequence=>250
,p_column_heading=>'Pay Batch'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450472742871822685)
,p_query_column_id=>25
,p_column_alias=>'ROUND_METHOD'
,p_column_display_sequence=>260
,p_column_heading=>'Round Method'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450473105265822685)
,p_query_column_id=>26
,p_column_alias=>'COMPANY_YEAR_ID'
,p_column_display_sequence=>270
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450473551044822686)
,p_query_column_id=>27
,p_column_alias=>'COMPANY_YEAR'
,p_column_display_sequence=>280
,p_column_heading=>'Comp Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450473944980822686)
,p_query_column_id=>28
,p_column_alias=>'START_YEAR'
,p_column_display_sequence=>290
,p_column_heading=>'Start Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450474378910822686)
,p_query_column_id=>29
,p_column_alias=>'END_YEAR'
,p_column_display_sequence=>300
,p_column_heading=>'End Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450474732221822686)
,p_query_column_id=>30
,p_column_alias=>'START_PAID_FOR'
,p_column_display_sequence=>310
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450475170073822687)
,p_query_column_id=>31
,p_column_alias=>'END_PAID_FOR'
,p_column_display_sequence=>320
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450475507277822687)
,p_query_column_id=>32
,p_column_alias=>'PAYROLL_CUTOFF'
,p_column_display_sequence=>330
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450475957144822687)
,p_query_column_id=>33
,p_column_alias=>'HAS_SUPPLEMENTAL'
,p_column_display_sequence=>340
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450476318453822687)
,p_query_column_id=>34
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>350
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(423718634937747573)
,p_query_column_id=>35
,p_column_alias=>'PKEY'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:1312:P1312_ID:#PKEY#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1035149855700442310)
,p_name=>'Tax Rates'
,p_parent_plug_id=>wwv_flow_imp.id(572031964438526690)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tax_Ceiling_Lower,Tax_Percentage_Lower,Tax_Ceiling_Upper,Tax_Percentage_Upper, Consistent Tax_Consistent, s.id pkey',
'            ,ann_tax_ceiling_lower,ann_tax_ceiling_upper,date_effective tax_date_effective,adj_ceiling_lower,adj_ceiling_upper,',
'            Adj_Ann_Tax_Ceiling_Lower,Adj_Ann_Tax_Ceiling_Upper,  Id Taxrate_Key,daily_tax_ceiling_lower, pro_rate_taxfree, tax_ceiling_upper_fraction, tax_ceiling_upper_b',
'       from hr_hcf_taxrate s',
'  where Date_of_Rate=(',
'        select MAX(date_of_rate)',
'        from hr_hcf_taxrate',
'        where date_of_rate<=(select start_date from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS)',
'        and org_id=:P1500_ORGANISATION',
'        and trim(upper(payment_type))=(select trim(upper(payment_type)) from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS) ',
'                 )',
'    and s.org_id=:P1500_ORGANISATION',
'    and s.payment_type=(select payment_type from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS)',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1500_ORGANISATION'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450476996783822688)
,p_query_column_id=>1
,p_column_alias=>'TAX_CEILING_LOWER'
,p_column_display_sequence=>20
,p_column_heading=>'TAX CEILING LOWER'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450477420714822689)
,p_query_column_id=>2
,p_column_alias=>'TAX_PERCENTAGE_LOWER'
,p_column_display_sequence=>30
,p_column_heading=>'TAX PERCENTAGE LOWER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450477805778822689)
,p_query_column_id=>3
,p_column_alias=>'TAX_CEILING_UPPER'
,p_column_display_sequence=>40
,p_column_heading=>'TAX CEILING UPPER'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450478231042822689)
,p_query_column_id=>4
,p_column_alias=>'TAX_PERCENTAGE_UPPER'
,p_column_display_sequence=>50
,p_column_heading=>'TAX PERCENTAGE UPPER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450478612346822689)
,p_query_column_id=>5
,p_column_alias=>'TAX_CONSISTENT'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(423718859228747575)
,p_query_column_id=>6
,p_column_alias=>'PKEY'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:1314:P1314_ID:#PKEY#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450479042213822690)
,p_query_column_id=>7
,p_column_alias=>'ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450479403129822690)
,p_query_column_id=>8
,p_column_alias=>'ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450479864561822690)
,p_query_column_id=>9
,p_column_alias=>'TAX_DATE_EFFECTIVE'
,p_column_display_sequence=>90
,p_column_heading=>'TAX DATE EFFECTIVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450480241846822691)
,p_query_column_id=>10
,p_column_alias=>'ADJ_CEILING_LOWER'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450480607444822691)
,p_query_column_id=>11
,p_column_alias=>'ADJ_CEILING_UPPER'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450481091877822691)
,p_query_column_id=>12
,p_column_alias=>'ADJ_ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450481474978822691)
,p_query_column_id=>13
,p_column_alias=>'ADJ_ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450481864872822692)
,p_query_column_id=>14
,p_column_alias=>'TAXRATE_KEY'
,p_column_display_sequence=>140
,p_column_heading=>'TAXRATE KEY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450482262273822692)
,p_query_column_id=>15
,p_column_alias=>'DAILY_TAX_CEILING_LOWER'
,p_column_display_sequence=>150
,p_column_heading=>'DAILY TAX CEILING_LOWER'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450482644157822692)
,p_query_column_id=>16
,p_column_alias=>'PRO_RATE_TAXFREE'
,p_column_display_sequence=>160
,p_column_heading=>'PRO RATE TAXFREE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450483082041822692)
,p_query_column_id=>17
,p_column_alias=>'TAX_CEILING_UPPER_FRACTION'
,p_column_display_sequence=>170
,p_column_heading=>'Tax Ceiling Upper Fraction'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450483477828822693)
,p_query_column_id=>18
,p_column_alias=>'TAX_CEILING_UPPER_B'
,p_column_display_sequence=>180
,p_column_heading=>'Tax Ceiling Upper B'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1035151671630446903)
,p_name=>'NIB Rates'
,p_parent_plug_id=>wwv_flow_imp.id(572031964438526690)
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nis_ceiling,employer_per,employee_per,lower_age,upper_age,consistent nis_consistent,over_60_under_16,date_effective nis_date_effective, id nis_rate_key,',
'         nis_free_ceiling, government_per, gov_employer_per, gov_employee_per, s.id pkey',
'     from hr_hcf_nisrate s',
'    where Date_of_Rate=(',
'        select MAX(date_of_rate)',
'        from hr_hcf_nisrate',
'        where date_of_rate<=(select start_date from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS)',
'        and	org_id=:P1500_ORGANISATION',
'        and payment_type=(select payment_type from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS) )',
'    and s.org_id=:P1500_ORGANISATION',
'    and s.payment_type=(select payment_type from pa_pcf_earningperiod where id= :P1500_ORGANISATION_PERIODS)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1500_ORGANISATION'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450484139317822694)
,p_query_column_id=>1
,p_column_alias=>'NIS_CEILING'
,p_column_display_sequence=>20
,p_column_heading=>'NIS CEILING'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450484558010822694)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYER_PER'
,p_column_display_sequence=>30
,p_column_heading=>'EMPLOYER%'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450484963824822694)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_PER'
,p_column_display_sequence=>40
,p_column_heading=>'EMPLOYEE%'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450485320626822694)
,p_query_column_id=>4
,p_column_alias=>'LOWER_AGE'
,p_column_display_sequence=>50
,p_column_heading=>'LOWER AGE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450485759845822695)
,p_query_column_id=>5
,p_column_alias=>'UPPER_AGE'
,p_column_display_sequence=>60
,p_column_heading=>'UPPER AGE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450486125862822695)
,p_query_column_id=>6
,p_column_alias=>'NIS_CONSISTENT'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450486532834822695)
,p_query_column_id=>7
,p_column_alias=>'OVER_60_UNDER_16'
,p_column_display_sequence=>80
,p_column_heading=>'OVER 60 UNDER 16'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450486909651822695)
,p_query_column_id=>8
,p_column_alias=>'NIS_DATE_EFFECTIVE'
,p_column_display_sequence=>90
,p_column_heading=>'NIS DATE EFFECTIVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450487344851822696)
,p_query_column_id=>9
,p_column_alias=>'NIS_RATE_KEY'
,p_column_display_sequence=>100
,p_column_heading=>'NIS RATE KEY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450487710333822696)
,p_query_column_id=>10
,p_column_alias=>'NIS_FREE_CEILING'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450488123523822696)
,p_query_column_id=>11
,p_column_alias=>'GOVERNMENT_PER'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450488533384822697)
,p_query_column_id=>12
,p_column_alias=>'GOV_EMPLOYER_PER'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(450488937841822697)
,p_query_column_id=>13
,p_column_alias=>'GOV_EMPLOYEE_PER'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(423718749372747574)
,p_query_column_id=>14
,p_column_alias=>'PKEY'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1313:&SESSION.::&DEBUG.:1313:P1313_ID:#PKEY#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1035160767805706928)
,p_plug_name=>'Trouble Shoot Payroll Execution Issues'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
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
 p_id=>wwv_flow_imp.id(1024514542151279164)
,p_plug_name=>'Reminders'
,p_parent_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450374084566822576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(572031440464526685)
,p_button_name=>'SEARCH_DED_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450489615854822697)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475925267022652177)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1500_RETURN_VALUE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450490050826822698)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475925267022652177)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(450490454932822698)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(475925267022652177)
,p_button_name=>'NEGATIVE_PAY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Negative Pay'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1506:&SESSION.::&DEBUG.::P1506_RETURN_VALUE:1500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450374455464822577)
,p_name=>'P1500_START_PERIOD_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(572031440464526685)
,p_prompt=>'Start Period'
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
 p_id=>wwv_flow_imp.id(450374801758822578)
,p_name=>'P1500_END_PERIOD_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(572031440464526685)
,p_prompt=>'End Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(450390251444822590)
,p_name=>'P1500_START_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1065283605367565532)
,p_prompt=>'Start Period'
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
 p_id=>wwv_flow_imp.id(450390661421822591)
,p_name=>'P1500_END_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1065283605367565532)
,p_prompt=>'End Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(450406354891822603)
,p_name=>'P1500_START_PERIOD_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(570011428084979762)
,p_prompt=>'Start Period'
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
 p_id=>wwv_flow_imp.id(450406740528822603)
,p_name=>'P1500_END_PERIOD_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(570011428084979762)
,p_prompt=>'End Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(450462431756822676)
,p_name=>'P1500_CONDITION_FOR-PAYMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1024514542151279164)
,p_prompt=>'Conditions For Payment'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following conditions must exist before an employee is selected for payment:',
'1. Must be included on the payroll.',
'2. Payroll effective date must be less than or equal to the payroll cut off date.',
'3. Date of employment must be less than or equal to the earnings period end date.',
'4. Salary must be greater than zero.',
'5. Must have one of these employment status of Active',
'6. Must be verified. ',
'7. Must be alive or have died during the earnings period.',
'8. Must not be separated or separated during the earnings period.',
'9. Earnings Period start date must find a valid salary record to use; i.e. earnings period date must be either between start and end dates ',
'   of a closed salary records or greater than and equal to and active record.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450490808230822698)
,p_name=>'P1500_RETURN_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450491243829822699)
,p_name=>'P1500_ORGANISATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_item_default=>'&APP_ORG_ID.'
,p_prompt=>'Search by Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM PA_PCF_EARNINGPERIOD B',
'              where a.id=org_id)',
'and id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450491609758822699)
,p_name=>'P1500_ORGANISATION_PERIODS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a, b',
'from (',
'        SELECT earn_description  A',
'        ,  id b, Earn_year, earn_month',
'        FROM vw_earnall A  ',
'        Where Exists (Select 1',
'                      from PA_PMG_PAYROLLHD B',
'                      where a.id=B.EARNINGS_PERIOD_ID)',
'        And Org_Id=:P1500_ORGANISATION',
'        )',
'order by Earn_year desc, earn_month desc, b desc',
''))
,p_lov_cascade_parent_items=>'P1500_ORGANISATION,P1500_ORGANISATION_MTH_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450492076011822700)
,p_name=>'P1500_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450492475170822700)
,p_name=>'P1500_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450492883291822700)
,p_name=>'P1500_PAYROLL_CUTOFF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Payroll Cutoff'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450493231188822700)
,p_name=>'P1500_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYMENT_CLASS_FULL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  b.value_description, employment_class_id',
'from vw_useraccess a join table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) b',
'on a.employment_class_id = b.id',
'where user_name=:APP_USER',
'and a.org_id = :APP_ORG_SHR_DED',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450493621010822701)
,p_name=>'P1500_PAYMENT_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(450494061999822701)
,p_name=>'P1500_COMPUTE_GROSS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1035160767805706928)
,p_prompt=>'Compute Gross'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTE_GROSS'
,p_lov=>'.'||wwv_flow_imp.id(3628710815723471759)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450494483631822701)
,p_name=>'set_values'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_ORGANISATION_PERIODS'
,p_condition_element=>'P1500_ORGANISATION_PERIODS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450494940100822702)
,p_event_id=>wwv_flow_imp.id(450494483631822701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1500_PAYMENT_TYPE,P1500_START_DATE,P1500_PAYROLL_CUTOFF,P1500_END_DATE,P1500_EMPLOYMENT_CLASS_ID,P1500_COMPUTE_GROSS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>' select payment_type, START_DATE, PAYROLL_CUTOFF, END_DATE, EMPLOYMENT_CLASS_ID, compute_gross from pa_pcf_earningperiod where id =:P1500_ORGANISATION_PERIODS'
,p_attribute_07=>'P1500_ORGANISATION_PERIODS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450495487234822702)
,p_event_id=>wwv_flow_imp.id(450494483631822701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024427749234168349)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450495878489822704)
,p_name=>'refresh_reports'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_COMPUTE_GROSS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450496384043822704)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(689221861310802461)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450496826779822705)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(570166610429055079)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450497334345822705)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(570080300720782109)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450497805682822705)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(791113368041401777)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450498327780822705)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1035144758771401248)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450498796061822706)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1035151671630446903)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450499325637822706)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1035149855700442310)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450499886996822706)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(968974220552246675)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450500373699822706)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(904457716988056247)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450500858126822707)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024427749234168349)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450501299224822707)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1065283605367565532)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450501878548822707)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(788996185635413211)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450502328398822707)
,p_event_id=>wwv_flow_imp.id(450495878489822704)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(810496395515586574)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450502751235822708)
,p_name=>'show_hide_sal_wage'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_COMPUTE_GROSS'
,p_condition_element=>'P1500_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BASIC_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450503288467822708)
,p_event_id=>wwv_flow_imp.id(450502751235822708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024427749234168349)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450503769058822708)
,p_event_id=>wwv_flow_imp.id(450502751235822708)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1024427749234168349)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450504187857822708)
,p_name=>'show_hide_sal_wage_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_COMPUTE_GROSS'
,p_condition_element=>'P1500_COMPUTE_GROSS'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'BASIC_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450504674949822709)
,p_event_id=>wwv_flow_imp.id(450504187857822708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(904457716988056247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450505131450822709)
,p_event_id=>wwv_flow_imp.id(450504187857822708)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(904457716988056247)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450505494621822709)
,p_name=>'refreshstart'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_START_PERIOD'
,p_condition_element=>'P1500_END_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450506006344822709)
,p_event_id=>wwv_flow_imp.id(450505494621822709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1065283605367565532)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450506480739822709)
,p_name=>'refrshend'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1500_END_PERIOD'
,p_condition_element=>'P1500_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450506931644822710)
,p_event_id=>wwv_flow_imp.id(450506480739822709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1065283605367565532)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
