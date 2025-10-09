prompt --application/pages/page_00161
begin
--   Manifest
--     PAGE: 00161
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
 p_id=>161
,p_name=>'frmloadtimesheetsummary'
,p_alias=>'FRMLOADTIMESHEETSUMMARY'
,p_step_title=>'TimeSheet Summary '
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825577735270150707)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697656820738464716)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3699156889657717301)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705496584239069078)
,p_plug_name=>'Loaded Deductions '
,p_region_template_options=>'#DEFAULT#:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.datestart, expense_id, emp_id, a.AMOUNT_OWING, amount_borrowed, deduction_amount, deduction_no,b.employment_class from pa_pcf_admindeduction a join hr_rcm_employee b on a.emp_id = b.id',
'',
'where datestart = (select start_date from pa_pcf_earningperiod where id =:P161_EARNINGS_PERIODI_D ) and a.remarks like ''LOADED FROM TIMECLOCK SUMMA%''',
'and b.employment_class_id = (select employment_class_id from pa_pcf_earningperiod where id =:P161_EARNINGS_PERIODI_D )',
'and A.EXPENSE_ID = nvl(:P161_DEDUCT_CODE,a.expense_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P161_EARNINGS_PERIODI_D,,P161_DEDUCT_CODE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Loaded Deductions '
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
 p_id=>wwv_flow_imp.id(3705496415350069076)
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
,p_internal_uid=>153873216640138227
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789588296982156244)
,p_db_column_name=>'EMP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789587921437156244)
,p_db_column_name=>'DATESTART'
,p_display_order=>80
,p_column_identifier=>'AF'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789587468694156244)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>90
,p_column_identifier=>'AG'
,p_column_label=>'Expense code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854309118199354602)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789587072969156244)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>100
,p_column_identifier=>'AH'
,p_column_label=>'Amount Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789586701152156243)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>110
,p_column_identifier=>'AI'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789586295662156243)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'AJ'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789585870005156243)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>130
,p_column_identifier=>'AK'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789585462117156243)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>140
,p_column_identifier=>'AL'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3691172068983813085)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'697845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:DATESTART:EXPENSE_ID:AMOUNT_OWING:AMOUNT_BORROWED:DEDUCTION_AMOUNT:DEDUCTION_NO:EMPLOYMENT_CLASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705497064377069083)
,p_plug_name=>'Check Summary Per Income Code'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3721586633512227945)
,p_plug_name=>'Purge Summary'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3723560457629754943)
,p_plug_name=>'Loaded Income'
,p_region_template_options=>'#DEFAULT#:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.*,b.income_code_id from pa_pcf_adhocpayment a join hr_rcm_empentitle b on a.empent_id = b.id',
'',
'where earnings_period_id =:P161_EARNINGS_PERIODI_D and a.remarks like ''LOADED FROM TIMECLOCK SUMMA%''',
'and income_code_id = NVL(:P161_INCOME_CODE_I,income_code_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P161_EARNINGS_PERIODI_D,P161_INCOME_CODE_I'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Loaded Income'
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
 p_id=>wwv_flow_imp.id(3723560606989754944)
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
,p_internal_uid=>208844625560120249
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789573636677156234)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789573237695156234)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789572924437156234)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Empent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789572497922156233)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Earning Period '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854273896615290385)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789572080678156233)
,p_db_column_name=>'QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789571681672156233)
,p_db_column_name=>'RATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789571245164156233)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789583301506156238)
,p_db_column_name=>'START_PERIOD_PAID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Start Period Paid'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789582859376156238)
,p_db_column_name=>'END_PERIOD_PAID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'End Period Paid'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789582479441156238)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789582123824156238)
,p_db_column_name=>'AMOUNT_PAID_INC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Amount Paid Inc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789581690314156237)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789581280397156237)
,p_db_column_name=>'BACKUP_EARN_PRD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Backup Earn Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789580905240156237)
,p_db_column_name=>'PAY_OPTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pay Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789580461206156237)
,p_db_column_name=>'IS_SUPPLEMENTAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Is Supplemental'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789580085773156237)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789579643451156237)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789579271216156236)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789578857914156236)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789578498880156236)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789578077152156236)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789577726782156236)
,p_db_column_name=>'REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789577316583156236)
,p_db_column_name=>'BY_PASS_COMPUTATION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'By Pass Computation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789576907331156235)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789576525965156235)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789576056544156235)
,p_db_column_name=>'HR_IMPORT_DATA_CODE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Hr Import Data Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789575655802156235)
,p_db_column_name=>'PAYROLL_LAST_CHANGE_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Payroll Last Change By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789575305960156235)
,p_db_column_name=>'PAYROLL_LAST_CHANGE_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Payroll Last Change Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789574930404156235)
,p_db_column_name=>'ADHOC_INC_CODE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Adhoc Inc Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789574444838156234)
,p_db_column_name=>'POST_SEQUENCE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Post Sequence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789574064948156234)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Income Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854240137300239156)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3708936635710876955)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'697987'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EMP_ID:EARNINGS_PERIOD_ID:INCOME_CODE_ID:QUANTITY:RATE:AMOUNT_PAID:START_PERIOD_PAID:END_PERIOD_PAID:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_DATE:LAST_CHANGED_BY:REMARKS:'
,p_break_on=>'EMP_ID:EARNINGS_PERIOD_ID'
,p_break_enabled_on=>'EMP_ID:EARNINGS_PERIOD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3744877751145688239)
,p_plug_name=>'Filter Options'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3744880167387688263)
,p_plug_name=>'Loaded Summary Sheet'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select * from vw_gplsummarysheet b',
'where exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id =  :P161_EARNINGS_PERIODI_D',
'                and (b.payroll_start_date = x.START_PAID_FOR and b.payroll_end_date = x.END_PAID_FOR)',
'                )   ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P161_EARNINGS_PERIODI_D,P161_COLUMN_NAME'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Loaded Summary Sheet'
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
 p_id=>wwv_flow_imp.id(3744880268471688264)
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
,p_internal_uid=>230164287042053569
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789562640464156227)
,p_db_column_name=>'PERSONNUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Personnumber'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789562267985156227)
,p_db_column_name=>'PERSONNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Personname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789561891013156227)
,p_db_column_name=>'REG'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Reg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789561450555156227)
,p_db_column_name=>'COMPASSIONATELEAVE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Compassionateleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789561046432156227)
,p_db_column_name=>'OT15'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ot15'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789560711691156226)
,p_db_column_name=>'OT1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ot1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789560242231156226)
,p_db_column_name=>'OT20'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ot20'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789559931988156226)
,p_db_column_name=>'MA1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ma1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789559508862156226)
,p_db_column_name=>'MA2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ma2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789559097672156226)
,p_db_column_name=>'EOS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789558632317156226)
,p_db_column_name=>'AFB'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Afb'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789558322418156225)
,p_db_column_name=>'NSPREMIUM'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nspremium'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789557849332156225)
,p_db_column_name=>'MATERNITY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Maternity'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789557519724156225)
,p_db_column_name=>'INTERD75'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Interd75'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789557101302156225)
,p_db_column_name=>'INTERD50'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Interd50'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789556665747156225)
,p_db_column_name=>'INTERD25'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interd25'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789556330253156225)
,p_db_column_name=>'SICK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sick'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789555908006156224)
,p_db_column_name=>'CERTIFIEDILLNESSDEDUCT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Certifiedillnessdeduct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789555504962156224)
,p_db_column_name=>'CERTIFIEDILLNESSPAY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Certifiedillnesspay'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789555110442156224)
,p_db_column_name=>'CERTIFIEDILLNESSSAT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Certifiedillnesssat'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789554658070156224)
,p_db_column_name=>'CERTIFIEDILLNESSPAYSAT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Certifiedillnesspaysat'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789554236553156224)
,p_db_column_name=>'VACATION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Vacation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789553863643156224)
,p_db_column_name=>'PRERETIREMENTLEAVE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Preretirementleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789553434338156223)
,p_db_column_name=>'SEMINAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Seminar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789553082394156223)
,p_db_column_name=>'AUTHORISEDABSENCE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Authorisedabsence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789552646348156223)
,p_db_column_name=>'SHIFTEXCHANGE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Shiftexchange'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789552234801156223)
,p_db_column_name=>'UNAUTHORISEDABSENCE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Unauthorisedabsence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789551843052156223)
,p_db_column_name=>'SICKDEDUCT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sickdeduct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789551464509156223)
,p_db_column_name=>'SUSPENSION'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Suspension'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789551127134156222)
,p_db_column_name=>'OFFDUTY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Offduty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789550635890156222)
,p_db_column_name=>'STRIKEACTION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Strikeaction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789550273934156222)
,p_db_column_name=>'FIELDWORK'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fieldwork'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789549871874156222)
,p_db_column_name=>'JURYDUTIES'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Juryduties'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789549524309156222)
,p_db_column_name=>'NOPAYLEAVE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Nopayleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789549066135156221)
,p_db_column_name=>'STPREMIUM'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Stpremium'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789548656639156221)
,p_db_column_name=>'PANDEMICLEAVE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Pandemicleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789548284608156221)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789547879524156221)
,p_db_column_name=>'SCHEDULE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Schedule'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789547511462156221)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789547075869156221)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789563037078156228)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789546725978156220)
,p_db_column_name=>'PAYROLL_START_DATE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Payroll Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789546263868156220)
,p_db_column_name=>'PAYROLL_END_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Payroll End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3749900579132606084)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'698237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERSONNUMBER:PERSONNAME:EMPLOYMENT_CLASS:COMPUTE_GROSS:COMPASSIONATELEAVE:OT15:OT1:OT20:MA1:MA2:EOS:AFB:NSPREMIUM:MATERNITY:INTERD75:INTERD50:INTERD25:SICK:CERTIFIEDILLNESSDEDUCT:CERTIFIEDILLNESSPAY:CERTIFIEDILLNESSSAT:CERTIFIEDILLNESSPAYSAT:VACATION'
||':PRERETIREMENTLEAVE:SEMINAR:AUTHORISEDABSENCE:SHIFTEXCHANGE:UNAUTHORISEDABSENCE:SICKDEDUCT:SUSPENSION:OFFDUTY:STRIKEACTION:FIELDWORK:JURYDUTIES:NOPAYLEAVE:STPREMIUM:PANDEMICLEAVE::EMPLOYMENT_CLASS_ID:PAYROLL_START_DATE:PAYROLL_END_DATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789544792059156219)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3721586633512227945)
,p_button_name=>'PURGE_GPL_APPROVED_HRS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Gpl Approved Hrs'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3821935834497019256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789545203221156220)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3721586633512227945)
,p_button_name=>'PURGE_ABSENCE_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Absence Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789569014843156231)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'PURGE_SUMMARY_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Summary Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789569402313156232)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'LOAD_SUMMARY_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'UpLoad Summary File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:202::'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789568563013156231)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'LOAD_SUMMARY_ABSENSE_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'UpLoad Summary Absense File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206::'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789568229988156231)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'LOAD_INCOME_INTO_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Income Into Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789567788805156231)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_button_name=>'LOAD_DEDUCT_INTO_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Deduct Into Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3807018709181118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789570529854156232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3723560457629754943)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Income'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789584651262156240)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3705496584239069078)
,p_button_name=>'PURGE_DEDUCTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Deduction'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3786994849008638596)
,p_name=>'P161_YEAR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_item_default=>'select extract(year from current_date) from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'P_YEAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n id,n name',
'from(',
'select level as n from dual connect by level <=to_char(current_date,''YYYY'')+5',
')b where n between to_char(current_date,''YYYY'')-5 and to_char(current_date,''YYYY'')+2',
'ORDER BY N DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Year--'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3789544025566156219)
,p_name=>'P161_TIMECLOCK_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3721586633512227945)
,p_item_default=>'P161_TIMECLOCK_END_DATE'
,p_item_default_type=>'ITEM'
,p_prompt=>'Timeclock End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789544360050156219)
,p_name=>'P161_TIMECLOCK_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3721586633512227945)
,p_item_default=>'P161_TIMECLOCK_START_DATE'
,p_item_default_type=>'ITEM'
,p_prompt=>'Timeclock Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789563821048156228)
,p_name=>'P161_COLUMN_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789564193753156228)
,p_name=>'P161_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789564608599156228)
,p_name=>'P161_EMPLOYEES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3789564932008156229)
,p_name=>'P161_DEDUCTION_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Deduction_Code'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(notall.description) description, to_number(notall.id) id ',
'from  ',
'(select description || '' -- '' ||''[''|| sum(record_amount) || '']'' description,id from (',
'select * from (',
'select',
'count(REG) REG,',
'count(COMPASSIONATELEAVE) COMPASSIONATELEAVE,',
'count(OT15) OT15,',
'count(OT1) OT1,',
'count(OT20) OT20,',
'count(MA1) MA1,',
'count(MA2) MA2,',
'count(EOS) EOS,',
'count(AFB) AFB,',
'count(NSPREMIUM) NSPREMIUM,',
'count(MATERNITY) MATERNITY,',
'count(INTERD75) INTERD75,',
'count(INTERD50) INTERD50,',
'count(INTERD25) INTERD25,',
'count(SICK) SICK,',
'count(CERTIFIEDILLNESSDEDUCT) CERTIFIEDILLNESSDEDUCT,',
'count(CERTIFIEDILLNESSPAY) CERTIFIEDILLNESSPAY,',
'count(CERTIFIEDILLNESSSAT) CERTIFIEDILLNESSSAT,',
'count(CERTIFIEDILLNESSPAYSAT) CERTIFIEDILLNESSPAYSAT,',
'count(VACATION) VACATION,',
'count(PRERETIREMENTLEAVE) PRERETIREMENTLEAVE,',
'count(SEMINAR) SEMINAR,',
'count(AUTHORISEDABSENCE) AUTHORISEDABSENCE,',
'count(SHIFTEXCHANGE) SHIFTEXCHANGE,',
'count(UNAUTHORISEDABSENCE) UNAUTHORISEDABSENCE,',
'count(SICKDEDUCT) SICKDEDUCT,',
'count(SUSPENSION) SUSPENSION,',
'count(OFFDUTY) OFFDUTY,',
'count(STRIKEACTION) STRIKEACTION,',
'count(FIELDWORK) FIELDWORK,',
'count(JURYDUTIES) JURYDUTIES,',
'count(NOPAYLEAVE) NOPAYLEAVE,',
'count(STPREMIUM) STPREMIUM',
'from HR_ATT_CLOCKsumMARY_GPL a',
'  join hr_rcm_employee b on a.PERSONNUMBER = b.emp_company_no',
' and exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'           and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
')',
'    UNPIVOT(',
'',
'        record_amount  -- unpivot_clause',
'',
'        FOR incomesummarycodes --  unpivot_for_clause',
'',
'        IN ( ',
'',
'',
'REG',
',COMPASSIONATELEAVE',
',OT15',
',OT1',
',OT20',
',MA1',
',MA2',
',EOS',
',AFB',
',NSPREMIUM',
',MATERNITY',
',INTERD75',
',INTERD50',
',INTERD25',
',SICK',
',CERTIFIEDILLNESSDEDUCT',
',CERTIFIEDILLNESSPAY',
',CERTIFIEDILLNESSSAT',
',CERTIFIEDILLNESSPAYSAT',
',VACATION',
',PRERETIREMENTLEAVE',
',SEMINAR',
',AUTHORISEDABSENCE',
',SHIFTEXCHANGE',
',UNAUTHORISEDABSENCE',
',SICKDEDUCT',
',SUSPENSION',
',OFFDUTY',
',STRIKEACTION',
',FIELDWORK',
',JURYDUTIES',
',NOPAYLEAVE',
',STPREMIUM',
'',
'        )',
'',
'    )) x join hr_att_map_gplsummary y on x.incomesummarycodes = y.GPL_SUMMARY_CODE ',
'         join (select description,id ,expense_code',
'               from pa_pcf_deductioncode v',
'               where  trunc(start_date) <= trunc(current_date)',
'               and (trunc(end_date) is null or end_date >= trunc(current_date))',
'               and v.org_id = :APP_ORG_ID',
'               order by 1) inc on upper(y.deduction_code) = upper(inc.expense_code)',
'where record_amount <> 0 and  (y.income_code is not null or y.deduction_code is not null)',
'group by description,id,inc.expense_code',
'',
'UNION ALL ',
'',
'  select (SELECT DESCRIPTION FROM PA_PCF_DEDUCTIONCODE WHERE ID = 11878) ',
'                   || '' -- '' || ''['' || count(a.id) || '']'' description ,',
'                   11878 id',
'             ',
'            from hr_att_absense a',
'            join hr_rcm_employee b on to_char(a.empno) = b.emp_company_no',
'            where  exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'           and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
'',
'            group by payroll_start_date, payroll_end_date',
') notall',
'union all select to_char(''ALL'')  description, to_number(-1) as id from dual',
'order by description asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_EARNINGS_PERIODI_D'
,p_ajax_optimize_refresh=>'Y'
,p_display_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '50%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789565370230156230)
,p_name=>'P161_INCOME_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Income Code'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(notall.description) description, to_number(notall.id) id from(',
'select description || '' -- '' || ''[''|| sum(record_amount) || '']'' description,id from (',
'select * from (',
'select',
'count(REG) REG,',
'count(COMPASSIONATELEAVE) COMPASSIONATELEAVE,',
'count(OT15) OT15,',
'count(OT1) OT1,',
'count(OT20) OT20,',
'count(MA1) MA1,',
'count(MA2) MA2,',
'count(EOS) EOS,',
'count(AFB) AFB,',
'count(NSPREMIUM) NSPREMIUM,',
'count(MATERNITY) MATERNITY,',
'count(INTERD75) INTERD75,',
'count(INTERD50) INTERD50,',
'count(INTERD25) INTERD25,',
'count(SICK) SICK,',
'count(CERTIFIEDILLNESSDEDUCT) CERTIFIEDILLNESSDEDUCT,',
'count(CERTIFIEDILLNESSPAY) CERTIFIEDILLNESSPAY,',
'count(CERTIFIEDILLNESSSAT) CERTIFIEDILLNESSSAT,',
'count(CERTIFIEDILLNESSPAYSAT) CERTIFIEDILLNESSPAYSAT,',
'count(VACATION) VACATION,',
'count(PRERETIREMENTLEAVE) PRERETIREMENTLEAVE,',
'count(SEMINAR) SEMINAR,',
'count(AUTHORISEDABSENCE) AUTHORISEDABSENCE,',
'count(SHIFTEXCHANGE) SHIFTEXCHANGE,',
'count(UNAUTHORISEDABSENCE) UNAUTHORISEDABSENCE,',
'count(SICKDEDUCT) SICKDEDUCT,',
'count(SUSPENSION) SUSPENSION,',
'count(OFFDUTY) OFFDUTY,',
'count(STRIKEACTION) STRIKEACTION,',
'count(FIELDWORK) FIELDWORK,',
'count(JURYDUTIES) JURYDUTIES,',
'count(NOPAYLEAVE) NOPAYLEAVE,',
'count(STPREMIUM) STPREMIUM',
'from HR_ATT_CLOCKsumMARY_GPL a',
'  join hr_rcm_employee b on a.PERSONNUMBER = b.emp_company_no',
' and exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
')',
'    UNPIVOT(',
'',
'        record_amount  -- unpivot_clause',
'',
'        FOR incomesummarycodes --  unpivot_for_clause',
'',
'        IN ( ',
'',
'',
'REG',
',COMPASSIONATELEAVE',
',OT15',
',OT1',
',OT20',
',MA1',
',MA2',
',EOS',
',AFB',
',NSPREMIUM',
',MATERNITY',
',INTERD75',
',INTERD50',
',INTERD25',
',SICK',
',CERTIFIEDILLNESSDEDUCT',
',CERTIFIEDILLNESSPAY',
',CERTIFIEDILLNESSSAT',
',CERTIFIEDILLNESSPAYSAT',
',VACATION',
',PRERETIREMENTLEAVE',
',SEMINAR',
',AUTHORISEDABSENCE',
',SHIFTEXCHANGE',
',UNAUTHORISEDABSENCE',
',SICKDEDUCT',
',SUSPENSION',
',OFFDUTY',
',STRIKEACTION',
',FIELDWORK',
',JURYDUTIES',
',NOPAYLEAVE',
',STPREMIUM',
'',
'        )',
'',
'    )) x join hr_att_map_gplsummary y on x.incomesummarycodes = y.GPL_SUMMARY_CODE ',
'         join (select description,id ,income_code',
'               from pa_pcf_incomecode v',
'               where  trunc(start_date) <= trunc(current_date)',
'               and (trunc(end_date) is null or end_date >= trunc(current_date))',
'               and v.org_id = :APP_ORG_ID',
'               order by 1) inc on upper(y.income_code) = upper(inc.income_code)',
'where record_amount <> 0 and  (y.income_code is not null or y.deduction_code is not null)',
'group by description,id,inc.income_code) notall',
'union all select to_char(''ALL'')  description, to_number(-1) as id from dual',
'order by description asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_EARNINGS_PERIODI_D'
,p_ajax_optimize_refresh=>'Y'
,p_display_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '50%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789565800885156230)
,p_name=>'P161_OPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_item_default=>'INCOME'
,p_prompt=>'Code Option'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:INCOME;INCOME,DEDUCTION;DEDUCTION'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789566146213156230)
,p_name=>'P161_TIMECLOCK_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Timeclock End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789566567191156230)
,p_name=>'P161_TIMECLOCK_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Timeclock Start Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789567015850156231)
,p_name=>'P161_EARNINGS_PERIODI_D'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'from VW_EARNALL v',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=v.org_id',
'              and x.employment_class_id=v.employment_class_id',
'              and x.payment_type=v.payment_type)',
'and trim(to_char(start_date,''MONTH'')) = nvl(upper(:P161_MONTH),trim(to_char(start_date,''MONTH'')))',
'and earn_year = :P161_YEAR'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Earning Period--'
,p_lov_cascade_parent_items=>'P161_MONTH,P161_YEAR'
,p_ajax_items_to_submit=>'P161_MONTH,P161_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i style = "color:red;">Displays all earning periods.',
'</i> '))
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
 p_id=>wwv_flow_imp.id(3789567399575156231)
,p_name=>'P161_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'MONTH_CHAR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(to_date(n,''MM''),''MONTH'') name,trim(to_char(to_date(n,''MM''),''MONTH'')) id',
'from(',
'select level as n from dual connect by level <=12',
')b ',
'ORDER BY N asc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(3789570073288156232)
,p_name=>'P161_INCOME_CODE_I'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3723560457629754943)
,p_prompt=>'Income Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select V.description || '' -- ''|| ''['' || count(v.id) || '']'' description, V.id',
'from pa_pcf_incomecode v ',
'join hr_rcm_empentitle x on v.id = x.income_code_id',
'join pa_pcf_adhocpayment z on z.empent_id = x.id',
'where  trunc(v.start_date) <= trunc(current_date)',
'and (trunc(v.end_date) is null or v.end_date >= trunc(current_date))',
'and v.org_id = :APP_ORG_ID',
'and z.earnings_period_id = :P161_EARNINGS_PERIODI_D',
'and UPPER(z.remarks) like ''LOADED FROM TIMECLOCK SUMMARY%''',
'group by v.description, V.id',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_EARNINGS_PERIODI_D'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3789584296026156240)
,p_name=>'P161_DEDUCT_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3705496584239069078)
,p_prompt=>'Deduction Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select V.description || '' -- ''|| ''['' || count(v.id) || '']'' description, V.id',
'from pa_pcf_DEDUCTIONcode v ',
'join pa_pcf_admindeduction x on v.id = x.expense_id',
'where  trunc(v.start_date) <= trunc(current_date)',
'and (trunc(v.end_date) is null or v.end_date >= trunc(current_date))',
'and v.org_id = :APP_ORG_SHR_DED',
'and trunc(x.datestart) = (select trunc(start_date) from PA_PCF_EARNINGPERIOD where id = :P161_EARNINGS_PERIODI_D )',
'and employment_class_id = (select employment_class_id  from PA_PCF_EARNINGPERIOD where id = :P161_EARNINGS_PERIODI_D )',
'and UPPER(x.remarks) like ''LOADED FROM TIMECLOCK SUMMARY%''',
'group by v.description, V.id',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_EARNINGS_PERIODI_D'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3789589025354156248)
,p_name=>'P161_LOADED_TO_PAYROLL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3705497064377069083)
,p_prompt=>'Records Loaded To Payroll'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789589389348156248)
,p_name=>'P161_MATCHED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3705497064377069083)
,p_prompt=>'Total Matched Records'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789589823539156249)
,p_name=>'P161_TO_BE_LOADED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3705497064377069083)
,p_prompt=>'Records to be Loaded'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791362613444278960)
,p_name=>'P161_PAY_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3744877751145688239)
,p_prompt=>'Pay Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'<i style = "color:red;">if pay status = Y - payroll has been processed therefore you are not allowed to load any data until the paystatus = N </i>'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789539435951156212)
,p_name=>'dy_set_nulls'
,p_event_sequence=>1
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_OPTION'
,p_condition_element=>'P161_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'INCOME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786994954696638597)
,p_event_id=>wwv_flow_imp.id(3789539435951156212)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_INCOME_CODE,P161_INCOME_CODE_I,P161_DEDUCT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select null from dual'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789538865987156187)
,p_event_id=>wwv_flow_imp.id(3789539435951156212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_DEDUCTION_CODE,P161_INCOME_CODE_I,P161_DEDUCT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select null from dual'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789538485003156187)
,p_name=>'dy_hideshow'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_OPTION'
,p_condition_element=>'P161_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'INCOME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789534495683156185)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_INCOME_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789536987280156186)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789567788805156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789535989548156186)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_DEDUCTION_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789538022724156186)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789568229988156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789534953929156185)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_DEDUCTION_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789536433967156186)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789568229988156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789535459539156185)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_INCOME_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789537497010156186)
,p_event_id=>wwv_flow_imp.id(3789538485003156187)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789567788805156231)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789534040120156185)
,p_name=>'dy_change_code'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_OPTION,P161_INCOME_CODE,P161_DEDUCTION_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789533566999156184)
,p_event_id=>wwv_flow_imp.id(3789534040120156185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_CODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P161_OPTION = ''INCOME'' and :P161_INCOME_CODE is not null then ',
'        select income_code ',
'            into :P161_CODE',
'        from pa_pcf_incomecode',
'        where id = :P161_INCOME_CODE',
'        and org_id = :APP_ORG_SHR_DED;',
'        ',
'        elsif :P161_OPTION = ''DEDUCTION''  and :P161_DEDUCTION_CODE is not null then ',
'            select expense_code ',
'                into :P161_CODE',
'            from pa_pcf_deductioncode',
'            where id = :P161_DEDUCTION_CODE',
'            and org_id = :APP_ORG_SHR_DED;',
'    end if;',
'exception ',
'when others then null;',
'return :P161_CODE;',
'end;'))
,p_attribute_07=>'P161_OPTION,P161_INCOME_CODE,P161_CODE,P161_DEDUCTION_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789533125169156184)
,p_event_id=>wwv_flow_imp.id(3789534040120156185)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3705496584239069078)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789532718453156184)
,p_name=>'dy_refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_EARNINGS_PERIODI_D'
,p_condition_element=>'P161_EARNINGS_PERIODI_D'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789531187446156183)
,p_event_id=>wwv_flow_imp.id(3789532718453156184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744880167387688263)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789530730699156183)
,p_event_id=>wwv_flow_imp.id(3789532718453156184)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3723560457629754943)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789532223827156184)
,p_event_id=>wwv_flow_imp.id(3789532718453156184)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_TIMECLOCK_START_DATE,P161_TIMECLOCK_END_DATE,P161_PAY_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(start_paid_for,''DD-MON-YYYY''), to_char(end_paid_for,''DD-MON-YYYY''), pay_status',
'from pa_pcf_earningperiod',
'where id = :P161_EARNINGS_PERIODI_D'))
,p_attribute_07=>'P161_EARNINGS_PERIODI_D'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789531695040156184)
,p_event_id=>wwv_flow_imp.id(3789532718453156184)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_TIMECLOCK_START,P161_TIMECLOCK_END'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789530279721156183)
,p_name=>'dy_refresh_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_INCOME_CODE_I'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789529804543156183)
,p_event_id=>wwv_flow_imp.id(3789530279721156183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3723560457629754943)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789529430368156183)
,p_name=>'dy_set_col_name'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789528884440156183)
,p_event_id=>wwv_flow_imp.id(3789529430368156183)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_COLUMN_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GPL_SUMMARY_CODE ',
'from hr_att_map_gplsummary',
'where trim(income_code) = trim(:P161_CODE) or trim(deduction_code) = trim(:P161_CODE)'))
,p_attribute_07=>'P161_INCOME_CODE,P161_DEDUCT_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789528374129156182)
,p_event_id=>wwv_flow_imp.id(3789529430368156183)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  CREATE_VIEW_DY (trim(:P161_COLUMN_NAME)) ;',
'exception',
'when others then null;   ',
'end;',
''))
,p_attribute_02=>'P161_COLUMN_NAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789527833645156182)
,p_event_id=>wwv_flow_imp.id(3789529430368156183)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744880167387688263)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789527432609156182)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_MONTH'
,p_condition_element=>'P161_MONTH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789527029034156182)
,p_event_id=>wwv_flow_imp.id(3789527432609156182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_EARNINGS_PERIODI_D'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789540355452156213)
,p_name=>'show inline dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3789569014843156231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789539839816156212)
,p_event_id=>wwv_flow_imp.id(3789540355452156213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3721586633512227945)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3791362378266278958)
,p_name=>'dy_refresh_pay_button'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_EARNINGS_PERIODI_D,P161_PAY_STATUS'
,p_condition_element=>'P161_PAY_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786995037740638598)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789569014843156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791362282903278957)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789568229988156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786995198774638599)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789584651262156240)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791362209241278956)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789567788805156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786995325102638600)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789570529854156232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791361926763278953)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789570529854156232)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786995490200638602)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789584651262156240)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791361983253278954)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789567788805156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786995349233638601)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789569014843156231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791362041355278955)
,p_event_id=>wwv_flow_imp.id(3791362378266278958)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789568229988156231)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789542770439156215)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'execute_code'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    upload_summary_timesheet_gpl(:P161_EARNINGS_PERIODI_D,:P161_INCOME_CODE,:P161_DEDUCTION_CODE,:APP_ORG_ID);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Loaded Data.'
,p_internal_uid=>3146066848559401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789542393595156215)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_income'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P161_INCOME_CODE_I = -1 then ',
'delete from pa_pcf_adhocpayment where earnings_period_id = :P161_EARNINGS_PERIODI_D and upper(remarks) like ''LOADED FROM TIMECLOCK SUMMA%'' and upper(pay_status) = ''N'';',
'else ',
'delete from pa_pcf_adhocpayment a where earnings_period_id = :P161_EARNINGS_PERIODI_D and upper(remarks) like ''LOADED FROM TIMECLOCK SUMMA%'' and upper(pay_status) = ''N''',
'and exists (select 1 from hr_rcm_empentitle b where b.id = a.empent_id and income_code_id =:P161_INCOME_CODE_I );',
'end if;',
'commit;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789570529854156232)
,p_process_when=>'P161_INCOME_CODE_I'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3146066471715401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789541536472156215)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'unverified_deduct'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update pa_pcf_admindeduction',
'    set verified_by  = null ,verified_date  = null ',
'where upper(remarks) like ''LOADED FROM TIMECLOCK%'' ',
'and datestart = (select start_date from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D )',
'and expense_id = :P161_DEDUCT_CODE ',
'and employment_class_id = (select employment_class_id from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D );',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789584651262156240)
,p_internal_uid=>3146065614592401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789541999922156215)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_deduction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P161_DEDUCT_CODE = -1 then ',
'delete from pa_pcf_admindeduction ',
'where upper(remarks) like ''LOADED FROM TIMECLOCK%'' ',
'and datestart = (select start_date from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D )',
'and employment_class_id = (select employment_class_id from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D )',
'and deduct_status = ''IP'';',
' else',
'delete from pa_pcf_admindeduction ',
'where upper(remarks) like ''LOADED FROM TIMECLOCK%'' ',
'and datestart = (select start_date from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D )',
'and expense_id = :P161_DEDUCT_CODE ',
'and employment_class_id = (select employment_class_id from pa_pcf_earningperiod where id  = :P161_EARNINGS_PERIODI_D )',
'and deduct_status = ''IP'';',
'end if;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789584651262156240)
,p_internal_uid=>3146066078042401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789541150992156215)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PLEASE RECHECK ME INCOMES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P161_INCOME_CODE = -1',
'then',
'for i in (',
'',
'select description || '' -- '' || ''[''|| sum(record_amount) || '']'' description,id from (',
'select * from (',
'select',
'count(REG) REG,',
'count(COMPASSIONATELEAVE) COMPASSIONATELEAVE,',
'count(OT15) OT15,',
'count(OT1) OT1,',
'count(OT20) OT20,',
'count(MA1) MA1,',
'count(MA2) MA2,',
'count(EOS) EOS,',
'count(AFB) AFB,',
'count(NSPREMIUM) NSPREMIUM,',
'count(MATERNITY) MATERNITY,',
'count(INTERD75) INTERD75,',
'count(INTERD50) INTERD50,',
'count(INTERD25) INTERD25,',
'count(SICK) SICK,',
'count(CERTIFIEDILLNESSDEDUCT) CERTIFIEDILLNESSDEDUCT,',
'count(CERTIFIEDILLNESSPAY) CERTIFIEDILLNESSPAY,',
'count(CERTIFIEDILLNESSSAT) CERTIFIEDILLNESSSAT,',
'count(CERTIFIEDILLNESSPAYSAT) CERTIFIEDILLNESSPAYSAT,',
'count(VACATION) VACATION,',
'count(PRERETIREMENTLEAVE) PRERETIREMENTLEAVE,',
'count(SEMINAR) SEMINAR,',
'count(AUTHORISEDABSENCE) AUTHORISEDABSENCE,',
'count(SHIFTEXCHANGE) SHIFTEXCHANGE,',
'count(UNAUTHORISEDABSENCE) UNAUTHORISEDABSENCE,',
'count(SICKDEDUCT) SICKDEDUCT,',
'count(SUSPENSION) SUSPENSION,',
'count(OFFDUTY) OFFDUTY,',
'count(STRIKEACTION) STRIKEACTION,',
'count(FIELDWORK) FIELDWORK,',
'count(JURYDUTIES) JURYDUTIES,',
'count(NOPAYLEAVE) NOPAYLEAVE,',
'count(STPREMIUM) STPREMIUM',
'from HR_ATT_CLOCKsumMARY_GPL a',
'  join hr_rcm_employee b on a.PERSONNUMBER = b.emp_company_no',
' and exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
')',
'    UNPIVOT(',
'',
'        record_amount  -- unpivot_clause',
'',
'        FOR incomesummarycodes --  unpivot_for_clause',
'',
'        IN ( ',
'',
'',
'REG',
',COMPASSIONATELEAVE',
',OT15',
',OT1',
',OT20',
',MA1',
',MA2',
',EOS',
',AFB',
',NSPREMIUM',
',MATERNITY',
',INTERD75',
',INTERD50',
',INTERD25',
',SICK',
',CERTIFIEDILLNESSDEDUCT',
',CERTIFIEDILLNESSPAY',
',CERTIFIEDILLNESSSAT',
',CERTIFIEDILLNESSPAYSAT',
',VACATION',
',PRERETIREMENTLEAVE',
',SEMINAR',
',AUTHORISEDABSENCE',
',SHIFTEXCHANGE',
',UNAUTHORISEDABSENCE',
',SICKDEDUCT',
',SUSPENSION',
',OFFDUTY',
',STRIKEACTION',
',FIELDWORK',
',JURYDUTIES',
',NOPAYLEAVE',
',STPREMIUM',
'',
'        )',
'',
'    )) x join hr_att_map_gplsummary y on x.incomesummarycodes = y.GPL_SUMMARY_CODE ',
'         join (select description,id ,income_code',
'               from pa_pcf_incomecode v',
'               where  trunc(start_date) <= trunc(current_date)',
'               and (trunc(end_date) is null or end_date >= trunc(current_date))',
'               and v.org_id = :APP_ORG_ID',
'               order by 1) inc on upper(y.income_code) = upper(inc.income_code)',
'where record_amount <> 0 and  (y.income_code is not null or y.deduction_code is not null)',
'group by description,id,inc.income_code',
'',
'',
'',
')',
'            loop',
'            ',
'            begin',
'                 upload_summary_timesheet_gpl(:P161_EARNINGS_PERIODI_D,i.id,:P161_DEDUCTION_CODE,:APP_ORG_ID);',
'            end;',
'',
'            ',
'            end loop;',
'else ',
'        upload_summary_timesheet_gpl(:P161_EARNINGS_PERIODI_D,:P161_INCOME_CODE,:P161_DEDUCTION_CODE,:APP_ORG_ID);',
'end if;',
'            end;',
'            '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789568229988156231)
,p_process_when=>'P161_EARNINGS_PERIODI_D'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'It worked!'
,p_internal_uid=>3146065229112401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789540831062156214)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PLEASE RECHECK ME DEDUCTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P161_DEDUCTION_CODE = -1',
'then',
'for i in (',
'',
'select description || '' -- '' ||''[''|| sum(record_amount) || '']'' description,id from (',
'select * from (',
'select',
'count(REG) REG,',
'count(COMPASSIONATELEAVE) COMPASSIONATELEAVE,',
'count(OT15) OT15,',
'count(OT1) OT1,',
'count(OT20) OT20,',
'count(MA1) MA1,',
'count(MA2) MA2,',
'count(EOS) EOS,',
'count(AFB) AFB,',
'count(NSPREMIUM) NSPREMIUM,',
'count(MATERNITY) MATERNITY,',
'count(INTERD75) INTERD75,',
'count(INTERD50) INTERD50,',
'count(INTERD25) INTERD25,',
'count(SICK) SICK,',
'count(CERTIFIEDILLNESSDEDUCT) CERTIFIEDILLNESSDEDUCT,',
'count(CERTIFIEDILLNESSPAY) CERTIFIEDILLNESSPAY,',
'count(CERTIFIEDILLNESSSAT) CERTIFIEDILLNESSSAT,',
'count(CERTIFIEDILLNESSPAYSAT) CERTIFIEDILLNESSPAYSAT,',
'count(VACATION) VACATION,',
'count(PRERETIREMENTLEAVE) PRERETIREMENTLEAVE,',
'count(SEMINAR) SEMINAR,',
'count(AUTHORISEDABSENCE) AUTHORISEDABSENCE,',
'count(SHIFTEXCHANGE) SHIFTEXCHANGE,',
'count(UNAUTHORISEDABSENCE) UNAUTHORISEDABSENCE,',
'count(SICKDEDUCT) SICKDEDUCT,',
'count(SUSPENSION) SUSPENSION,',
'count(OFFDUTY) OFFDUTY,',
'count(STRIKEACTION) STRIKEACTION,',
'count(FIELDWORK) FIELDWORK,',
'count(JURYDUTIES) JURYDUTIES,',
'count(NOPAYLEAVE) NOPAYLEAVE,',
'count(STPREMIUM) STPREMIUM',
'from HR_ATT_CLOCKsumMARY_GPL a',
'  join hr_rcm_employee b on a.PERSONNUMBER = b.emp_company_no',
' and exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'           and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
')',
'    UNPIVOT(',
'',
'        record_amount  -- unpivot_clause',
'',
'        FOR incomesummarycodes --  unpivot_for_clause',
'',
'        IN ( ',
'',
'',
'REG',
',COMPASSIONATELEAVE',
',OT15',
',OT1',
',OT20',
',MA1',
',MA2',
',EOS',
',AFB',
',NSPREMIUM',
',MATERNITY',
',INTERD75',
',INTERD50',
',INTERD25',
',SICK',
',CERTIFIEDILLNESSDEDUCT',
',CERTIFIEDILLNESSPAY',
',CERTIFIEDILLNESSSAT',
',CERTIFIEDILLNESSPAYSAT',
',VACATION',
',PRERETIREMENTLEAVE',
',SEMINAR',
',AUTHORISEDABSENCE',
',SHIFTEXCHANGE',
',UNAUTHORISEDABSENCE',
',SICKDEDUCT',
',SUSPENSION',
',OFFDUTY',
',STRIKEACTION',
',FIELDWORK',
',JURYDUTIES',
',NOPAYLEAVE',
',STPREMIUM',
'',
'        )',
'',
'    )) x join hr_att_map_gplsummary y on x.incomesummarycodes = y.GPL_SUMMARY_CODE ',
'         join (select description,id ,expense_code',
'               from pa_pcf_deductioncode v',
'               where  trunc(start_date) <= trunc(current_date)',
'               and (trunc(end_date) is null or end_date >= trunc(current_date))',
'               and v.org_id = :APP_ORG_ID',
'               order by 1) inc on upper(y.deduction_code) = upper(inc.expense_code)',
'where record_amount <> 0 and  (y.income_code is not null or y.deduction_code is not null)',
'group by description,id,inc.expense_code',
'',
'UNION ALL ',
'',
'  select (SELECT DESCRIPTION FROM PA_PCF_DEDUCTIONCODE WHERE ID = 11878) ',
'                   || '' -- '' || ''['' || count(a.id) || '']'' description ,',
'                   11878 id',
'             ',
'            from hr_att_absense a',
'            join hr_rcm_employee b on to_char(a.empno) = b.emp_company_no',
'            where  exists (',
'                select 1 from pa_pcf_earningperiod x',
'                where (x.employment_class_id = b.employment_class_id and x.compute_gross = b.compute_gross)',
'                and id = :P161_EARNINGS_PERIODI_D',
'           and (a.payroll_start_date = x.START_PAID_FOR and a.payroll_end_date = x.END_PAID_FOR)',
'                )    ',
'',
'            group by payroll_start_date, payroll_end_date',
' ',
'',
'',
'',
')',
'            loop',
'            ',
'            begin',
'                 upload_summary_timesheet_gpl(:P161_EARNINGS_PERIODI_D,'''',i.id,:APP_ORG_ID);',
'            end;',
'',
'            ',
'            end loop;',
'else ',
'        upload_summary_timesheet_gpl(:P161_EARNINGS_PERIODI_D,'''',:P161_DEDUCTION_CODE,:APP_ORG_ID);',
'end if;',
'            end;',
'            '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789567788805156231)
,p_process_when=>'P161_EARNINGS_PERIODI_D'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'It worked!'
,p_internal_uid=>3146064909182401709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789543588798156216)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_summary_sheet'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from hr_att_clocksummary_gpl',
'where payroll_start_date   =:P161_TIMECLOCK_START  and payroll_end_date = :P161_TIMECLOCK_END;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789544792059156219)
,p_process_when=>':P161_TIMECLOCK_START is not null and :P161_TIMECLOCK_END is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>3146067666918401711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789543187563156216)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'purge_absense_sheet'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete  from hr_att_absense',
'where payroll_start_date   =:P161_TIMECLOCK_START  and payroll_end_date = :P161_TIMECLOCK_END;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3789545203221156220)
,p_process_when=>':P161_TIMECLOCK_START is not null and :P161_TIMECLOCK_END is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>3146067265683401711
);
wwv_flow_imp.component_end;
end;
/
