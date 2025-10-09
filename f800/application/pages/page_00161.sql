prompt --application/pages/page_00161
begin
--   Manifest
--     PAGE: 00161
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
 p_id=>161
,p_name=>'frmloadtimesheetsummary'
,p_alias=>'FRMLOADTIMESHEETSUMMARY'
,p_step_title=>'TimeSheet Summary '
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437065409071696)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697516150877385705)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3699016219796638290)
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
 p_id=>wwv_flow_imp.id(3705355914377990067)
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
 p_id=>wwv_flow_imp.id(3705355745488990065)
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
 p_id=>wwv_flow_imp.id(3789447627121077233)
,p_db_column_name=>'EMP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3831174504132501290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789447251576077233)
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
 p_id=>wwv_flow_imp.id(3789446798833077233)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>90
,p_column_identifier=>'AG'
,p_column_label=>'Expense code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854168448338275591)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789446403108077233)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>100
,p_column_identifier=>'AH'
,p_column_label=>'Amount Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789446031291077232)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>110
,p_column_identifier=>'AI'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789445625801077232)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>120
,p_column_identifier=>'AJ'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789445200144077232)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>130
,p_column_identifier=>'AK'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789444792256077232)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>140
,p_column_identifier=>'AL'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3691031399122734074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'697845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:DATESTART:EXPENSE_ID:AMOUNT_OWING:AMOUNT_BORROWED:DEDUCTION_AMOUNT:DEDUCTION_NO:EMPLOYMENT_CLASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705356394515990072)
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
 p_id=>wwv_flow_imp.id(3721445963651148934)
,p_plug_name=>'Purge Summary'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3723419787768675932)
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
 p_id=>wwv_flow_imp.id(3723419937128675933)
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
 p_id=>wwv_flow_imp.id(3789432966816077223)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789432567834077223)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3831174504132501290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789432254576077223)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Empent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789431828061077222)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Earning Period '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854133226754211374)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789431410817077222)
,p_db_column_name=>'QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789431011811077222)
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
 p_id=>wwv_flow_imp.id(3789430575303077222)
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
 p_id=>wwv_flow_imp.id(3789442631645077227)
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
 p_id=>wwv_flow_imp.id(3789442189515077227)
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
 p_id=>wwv_flow_imp.id(3789441809580077227)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789441453963077227)
,p_db_column_name=>'AMOUNT_PAID_INC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Amount Paid Inc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789441020453077226)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789440610536077226)
,p_db_column_name=>'BACKUP_EARN_PRD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Backup Earn Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789440235379077226)
,p_db_column_name=>'PAY_OPTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pay Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789439791345077226)
,p_db_column_name=>'IS_SUPPLEMENTAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Is Supplemental'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789439415912077226)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789438973590077226)
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
 p_id=>wwv_flow_imp.id(3789438601355077225)
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
 p_id=>wwv_flow_imp.id(3789438188053077225)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789437829019077225)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789437407291077225)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789437056921077225)
,p_db_column_name=>'REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789436646722077225)
,p_db_column_name=>'BY_PASS_COMPUTATION'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'By Pass Computation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789436237470077224)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789435856104077224)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789435386683077224)
,p_db_column_name=>'HR_IMPORT_DATA_CODE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Hr Import Data Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789434985941077224)
,p_db_column_name=>'PAYROLL_LAST_CHANGE_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Payroll Last Change By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789434636099077224)
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
 p_id=>wwv_flow_imp.id(3789434260543077224)
,p_db_column_name=>'ADHOC_INC_CODE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Adhoc Inc Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789433774977077223)
,p_db_column_name=>'POST_SEQUENCE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Post Sequence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789433395087077223)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Income Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854099467439160145)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3708795965849797944)
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
 p_id=>wwv_flow_imp.id(3744737081284609228)
,p_plug_name=>'Filter Options'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3744739497526609252)
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
 p_id=>wwv_flow_imp.id(3744739598610609253)
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
 p_id=>wwv_flow_imp.id(3789421970603077216)
,p_db_column_name=>'PERSONNUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Personnumber'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789421598124077216)
,p_db_column_name=>'PERSONNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Personname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789421221152077216)
,p_db_column_name=>'REG'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Reg'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789420780694077216)
,p_db_column_name=>'COMPASSIONATELEAVE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Compassionateleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789420376571077216)
,p_db_column_name=>'OT15'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ot15'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789420041830077215)
,p_db_column_name=>'OT1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ot1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789419572370077215)
,p_db_column_name=>'OT20'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ot20'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789419262127077215)
,p_db_column_name=>'MA1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ma1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789418839001077215)
,p_db_column_name=>'MA2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ma2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789418427811077215)
,p_db_column_name=>'EOS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789417962456077215)
,p_db_column_name=>'AFB'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Afb'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789417652557077214)
,p_db_column_name=>'NSPREMIUM'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nspremium'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789417179471077214)
,p_db_column_name=>'MATERNITY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Maternity'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789416849863077214)
,p_db_column_name=>'INTERD75'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Interd75'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789416431441077214)
,p_db_column_name=>'INTERD50'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Interd50'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789415995886077214)
,p_db_column_name=>'INTERD25'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interd25'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789415660392077214)
,p_db_column_name=>'SICK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sick'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789415238145077213)
,p_db_column_name=>'CERTIFIEDILLNESSDEDUCT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Certifiedillnessdeduct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789414835101077213)
,p_db_column_name=>'CERTIFIEDILLNESSPAY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Certifiedillnesspay'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789414440581077213)
,p_db_column_name=>'CERTIFIEDILLNESSSAT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Certifiedillnesssat'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789413988209077213)
,p_db_column_name=>'CERTIFIEDILLNESSPAYSAT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Certifiedillnesspaysat'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789413566692077213)
,p_db_column_name=>'VACATION'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Vacation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789413193782077213)
,p_db_column_name=>'PRERETIREMENTLEAVE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Preretirementleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789412764477077212)
,p_db_column_name=>'SEMINAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Seminar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789412412533077212)
,p_db_column_name=>'AUTHORISEDABSENCE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Authorisedabsence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789411976487077212)
,p_db_column_name=>'SHIFTEXCHANGE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Shiftexchange'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789411564940077212)
,p_db_column_name=>'UNAUTHORISEDABSENCE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Unauthorisedabsence'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789411173191077212)
,p_db_column_name=>'SICKDEDUCT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sickdeduct'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789410794648077212)
,p_db_column_name=>'SUSPENSION'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Suspension'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789410457273077211)
,p_db_column_name=>'OFFDUTY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Offduty'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789409966029077211)
,p_db_column_name=>'STRIKEACTION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Strikeaction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789409604073077211)
,p_db_column_name=>'FIELDWORK'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fieldwork'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789409202013077211)
,p_db_column_name=>'JURYDUTIES'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Juryduties'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789408854448077211)
,p_db_column_name=>'NOPAYLEAVE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Nopayleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789408396274077210)
,p_db_column_name=>'STPREMIUM'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Stpremium'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789407986778077210)
,p_db_column_name=>'PANDEMICLEAVE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Pandemicleave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789407614747077210)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789407209663077210)
,p_db_column_name=>'SCHEDULE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Schedule'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789406841601077210)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789406406008077210)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789422367217077217)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3789406056117077209)
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
 p_id=>wwv_flow_imp.id(3789405594007077209)
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
 p_id=>wwv_flow_imp.id(3749759909271527073)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'698237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERSONNUMBER:PERSONNAME:EMPLOYMENT_CLASS:COMPUTE_GROSS:COMPASSIONATELEAVE:OT15:OT1:OT20:MA1:MA2:EOS:AFB:NSPREMIUM:MATERNITY:INTERD75:INTERD50:INTERD25:SICK:CERTIFIEDILLNESSDEDUCT:CERTIFIEDILLNESSPAY:CERTIFIEDILLNESSSAT:CERTIFIEDILLNESSPAYSAT:VACATION'
||':PRERETIREMENTLEAVE:SEMINAR:AUTHORISEDABSENCE:SHIFTEXCHANGE:UNAUTHORISEDABSENCE:SICKDEDUCT:SUSPENSION:OFFDUTY:STRIKEACTION:FIELDWORK:JURYDUTIES:NOPAYLEAVE:STPREMIUM:PANDEMICLEAVE::EMPLOYMENT_CLASS_ID:PAYROLL_START_DATE:PAYROLL_END_DATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789404122198077208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3721445963651148934)
,p_button_name=>'PURGE_GPL_APPROVED_HRS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Gpl Approved Hrs'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3821795164635940245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789404533360077209)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3721445963651148934)
,p_button_name=>'PURGE_ABSENCE_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Absence Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789428344982077220)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_button_name=>'PURGE_SUMMARY_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Summary Data'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789428732452077221)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_button_name=>'LOAD_SUMMARY_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'UpLoad Summary File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:202::'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789427893152077220)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_button_name=>'LOAD_SUMMARY_ABSENSE_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'UpLoad Summary Absense File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206::'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789427560127077220)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_button_name=>'LOAD_INCOME_INTO_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Income Into Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789427118944077220)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_button_name=>'LOAD_DEDUCT_INTO_PAYROLL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Deduct Into Payroll'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789429859993077221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3723419787768675932)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Income'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3789443981401077229)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3705355914377990067)
,p_button_name=>'PURGE_DEDUCTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Deduction'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3786854179147559585)
,p_name=>'P161_YEAR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789403355705077208)
,p_name=>'P161_TIMECLOCK_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3721445963651148934)
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
 p_id=>wwv_flow_imp.id(3789403690189077208)
,p_name=>'P161_TIMECLOCK_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3721445963651148934)
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
 p_id=>wwv_flow_imp.id(3789423151187077217)
,p_name=>'P161_COLUMN_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789423523892077217)
,p_name=>'P161_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3789423938738077217)
,p_name=>'P161_EMPLOYEES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789424262147077218)
,p_name=>'P161_DEDUCTION_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789424700369077219)
,p_name=>'P161_INCOME_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789425131024077219)
,p_name=>'P161_OPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789425476352077219)
,p_name=>'P161_TIMECLOCK_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789425897330077219)
,p_name=>'P161_TIMECLOCK_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789426345989077220)
,p_name=>'P161_EARNINGS_PERIODI_D'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789426729714077220)
,p_name=>'P161_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789429403427077221)
,p_name=>'P161_INCOME_CODE_I'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3723419787768675932)
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
 p_id=>wwv_flow_imp.id(3789443626165077229)
,p_name=>'P161_DEDUCT_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3705355914377990067)
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
 p_id=>wwv_flow_imp.id(3789448355493077237)
,p_name=>'P161_LOADED_TO_PAYROLL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3705356394515990072)
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
 p_id=>wwv_flow_imp.id(3789448719487077237)
,p_name=>'P161_MATCHED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3705356394515990072)
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
 p_id=>wwv_flow_imp.id(3789449153678077238)
,p_name=>'P161_TO_BE_LOADED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3705356394515990072)
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
 p_id=>wwv_flow_imp.id(3791221943583199949)
,p_name=>'P161_PAY_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3744737081284609228)
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
 p_id=>wwv_flow_imp.id(3789398766090077201)
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
 p_id=>wwv_flow_imp.id(3786854284835559586)
,p_event_id=>wwv_flow_imp.id(3789398766090077201)
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
 p_id=>wwv_flow_imp.id(3789398196126077176)
,p_event_id=>wwv_flow_imp.id(3789398766090077201)
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
 p_id=>wwv_flow_imp.id(3789397815142077176)
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
 p_id=>wwv_flow_imp.id(3789393825822077174)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_INCOME_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789396317419077175)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427118944077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789395319687077175)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_DEDUCTION_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789397352863077175)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427560127077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789394284068077174)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_DEDUCTION_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789395764106077175)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427560127077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789394789678077174)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_INCOME_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789396827149077175)
,p_event_id=>wwv_flow_imp.id(3789397815142077176)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427118944077220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789393370259077174)
,p_name=>'dy_change_code'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_OPTION,P161_INCOME_CODE,P161_DEDUCTION_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789392897138077173)
,p_event_id=>wwv_flow_imp.id(3789393370259077174)
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
 p_id=>wwv_flow_imp.id(3789392455308077173)
,p_event_id=>wwv_flow_imp.id(3789393370259077174)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3705355914377990067)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789392048592077173)
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
 p_id=>wwv_flow_imp.id(3789390517585077172)
,p_event_id=>wwv_flow_imp.id(3789392048592077173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744739497526609252)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789390060838077172)
,p_event_id=>wwv_flow_imp.id(3789392048592077173)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3723419787768675932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789391553966077173)
,p_event_id=>wwv_flow_imp.id(3789392048592077173)
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
 p_id=>wwv_flow_imp.id(3789391025179077173)
,p_event_id=>wwv_flow_imp.id(3789392048592077173)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_TIMECLOCK_START,P161_TIMECLOCK_END'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789389609860077172)
,p_name=>'dy_refresh_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_INCOME_CODE_I'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789389134682077172)
,p_event_id=>wwv_flow_imp.id(3789389609860077172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3723419787768675932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789388760507077172)
,p_name=>'dy_set_col_name'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789388214579077172)
,p_event_id=>wwv_flow_imp.id(3789388760507077172)
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
 p_id=>wwv_flow_imp.id(3789387704268077171)
,p_event_id=>wwv_flow_imp.id(3789388760507077172)
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
 p_id=>wwv_flow_imp.id(3789387163784077171)
,p_event_id=>wwv_flow_imp.id(3789388760507077172)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3744739497526609252)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789386762748077171)
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
 p_id=>wwv_flow_imp.id(3789386359173077171)
,p_event_id=>wwv_flow_imp.id(3789386762748077171)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P161_EARNINGS_PERIODI_D'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3789399685591077202)
,p_name=>'show inline dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3789428344982077220)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3789399169955077201)
,p_event_id=>wwv_flow_imp.id(3789399685591077202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3721445963651148934)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3791221708405199947)
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
 p_id=>wwv_flow_imp.id(3786854367879559587)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789428344982077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791221613042199946)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427560127077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786854528913559588)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789443981401077229)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791221539380199945)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427118944077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786854655241559589)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789429859993077221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791221256902199942)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789429859993077221)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786854820339559591)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789443981401077229)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791221313392199943)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427118944077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3786854679372559590)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789428344982077220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3791221371494199944)
,p_event_id=>wwv_flow_imp.id(3791221708405199947)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3789427560127077220)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789402100578077204)
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
 p_id=>wwv_flow_imp.id(3789401723734077204)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789429859993077221)
,p_process_when=>'P161_INCOME_CODE_I'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3146066471715401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789400866611077204)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789443981401077229)
,p_internal_uid=>3146065614592401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789401330061077204)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789443981401077229)
,p_internal_uid=>3146066078042401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789400481131077204)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789427560127077220)
,p_process_when=>'P161_EARNINGS_PERIODI_D'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'It worked!'
,p_internal_uid=>3146065229112401710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789400161201077203)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789427118944077220)
,p_process_when=>'P161_EARNINGS_PERIODI_D'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'It worked!'
,p_internal_uid=>3146064909182401709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789402918937077205)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789404122198077208)
,p_process_when=>':P161_TIMECLOCK_START is not null and :P161_TIMECLOCK_END is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>3146067666918401711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3789402517702077205)
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
,p_process_when_button_id=>wwv_flow_imp.id(3789404533360077209)
,p_process_when=>':P161_TIMECLOCK_START is not null and :P161_TIMECLOCK_END is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>3146067265683401711
);
wwv_flow_imp.component_end;
end;
/
