prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_name=>'rpteTimesheetLoad'
,p_alias=>'RPTETIMESHEETLOAD'
,p_step_title=>'rpteTimesheetLoad'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825437065409071696)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3734375144646526783)
,p_plug_name=>'Quick Filter'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3766540244568123394)
,p_plug_name=>'Listing of eTimesheet Data Loaded'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       WORK_LOCATION_NAME,',
'      b.id emp_id,',
'       WORK_DATE,',
'       TIME_IN,',
'       TIME_OUT,',
'       TIME_IN_1,',
'       TIME_OUT_1,',
'       TIME_IN_2,',
'       TIME_OUT_2,',
'       TIME_IN_3,',
'       TIME_OUT_3,',
'       a.WORK_LOCATION_ID,',
'       a.EMP_COMPANY_NO,',
'       TOTAL_HOURS,',
'       TIME_LOST,',
'       a.PAYROLL_HOURS,',
'       a.REMARKS,',
'       LOAD_BY,',
'       LOAD_DATE,',
'       a.LAST_CHANGED_BY,',
'       a.LAST_CHANGED_DATE,',
'       EARNINGS_PERIOD_ID,',
'       EMP_ENTITLE_ID,',
'       NORMAL_TIME,',
'       OVER_TIME,',
'       DOUBLE_TIME,',
'       EMP_ENTITLE_ID_OT,',
'       EMP_ENTITLE_ID_DB,A.STATUS',
'  from HR_ATT_TIMECLOCK_UPLOAD a Join hr_rcm_employee b',
'  on to_char(a.EMP_COMPANY_NO) = to_char(b.EMP_COMPANY_NO)',
'   where UPPER(to_date(work_date)) between :P69_WORK_START and  :P69_WORK_END',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P69_WORK_START,P69_WORK_END,P69_EARNING_PERIOD'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3766540148523123394)
,p_name=>'Listing of Data loaded for etime Sheet'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>362679133742497008
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781695646494473007)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781695250423473006)
,p_db_column_name=>'REMARKS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781694834771473006)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781694468174473005)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781702036166473015)
,p_db_column_name=>'WORK_LOCATION_NAME'
,p_display_order=>25
,p_column_identifier=>'X'
,p_column_label=>'Work Location Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781701659387473015)
,p_db_column_name=>'WORK_LOCATION_ID'
,p_display_order=>55
,p_column_identifier=>'AA'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781701298100473014)
,p_db_column_name=>'TOTAL_HOURS'
,p_display_order=>65
,p_column_identifier=>'AB'
,p_column_label=>'Total Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781700916209473014)
,p_db_column_name=>'PAYROLL_HOURS'
,p_display_order=>85
,p_column_identifier=>'AD'
,p_column_label=>'Payroll Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781700518238473013)
,p_db_column_name=>'LOAD_BY'
,p_display_order=>95
,p_column_identifier=>'AE'
,p_column_label=>'Load By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781700111214473012)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>105
,p_column_identifier=>'AF'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781699727920473012)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>115
,p_column_identifier=>'AG'
,p_column_label=>'Emp Company No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781699282855473011)
,p_db_column_name=>'TIME_LOST'
,p_display_order=>155
,p_column_identifier=>'AK'
,p_column_label=>'Time Lost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781698920478473011)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>165
,p_column_identifier=>'AL'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854133226754211374)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781698511267473010)
,p_db_column_name=>'EMP_ENTITLE_ID'
,p_display_order=>175
,p_column_identifier=>'AM'
,p_column_label=>'Emp Entitle Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781698060272473010)
,p_db_column_name=>'NORMAL_TIME'
,p_display_order=>185
,p_column_identifier=>'AN'
,p_column_label=>'Normal Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781697718739473009)
,p_db_column_name=>'OVER_TIME'
,p_display_order=>195
,p_column_identifier=>'AO'
,p_column_label=>'Over Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781697252651473009)
,p_db_column_name=>'DOUBLE_TIME'
,p_display_order=>205
,p_column_identifier=>'AP'
,p_column_label=>'Double Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781696921060473008)
,p_db_column_name=>'EMP_ENTITLE_ID_OT'
,p_display_order=>215
,p_column_identifier=>'AQ'
,p_column_label=>'Emp Entitle Id Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781696531436473008)
,p_db_column_name=>'EMP_ENTITLE_ID_DB'
,p_display_order=>225
,p_column_identifier=>'AR'
,p_column_label=>'Emp Entitle Id Db'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781696075226473007)
,p_db_column_name=>'STATUS'
,p_display_order=>235
,p_column_identifier=>'AS'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781702449883473016)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>245
,p_column_identifier=>'AT'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781706129953473020)
,p_db_column_name=>'TIME_IN'
,p_display_order=>325
,p_column_identifier=>'BB'
,p_column_label=>'Time In'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781705660102473020)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>335
,p_column_identifier=>'BC'
,p_column_label=>'Time Out'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781705231900473019)
,p_db_column_name=>'TIME_IN_1'
,p_display_order=>345
,p_column_identifier=>'BD'
,p_column_label=>'Time In 1'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781704894552473019)
,p_db_column_name=>'TIME_OUT_1'
,p_display_order=>355
,p_column_identifier=>'BE'
,p_column_label=>'Time Out 1'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781704458615473018)
,p_db_column_name=>'TIME_IN_2'
,p_display_order=>365
,p_column_identifier=>'BF'
,p_column_label=>'Time In 2'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781704108320473018)
,p_db_column_name=>'TIME_OUT_2'
,p_display_order=>375
,p_column_identifier=>'BG'
,p_column_label=>'Time Out 2'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781703722517473017)
,p_db_column_name=>'TIME_IN_3'
,p_display_order=>385
,p_column_identifier=>'BH'
,p_column_label=>'Time In 3'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781703275792473017)
,p_db_column_name=>'TIME_OUT_3'
,p_display_order=>395
,p_column_identifier=>'BI'
,p_column_label=>'Time Out 3'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781702877819473016)
,p_db_column_name=>'EMP_ID'
,p_display_order=>405
,p_column_identifier=>'BJ'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854128962961211367)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3766537647416105354)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28715'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EARNINGS_PERIOD_ID:WORK_LOCATION_NAME:LOAD_DATE:WORK_DATE_1_1_2_2_3_3:WORK_LOCATION_ID:NORMAL_TIME:OVER_TIME:DOUBLE_TIME:TOTAL_HOURS:PAYROLL_HOURS:TIME_LOST:EMP_ID'
,p_break_on=>'EARNINGS_PERIOD_ID:WORK_LOCATION_NAME:EMP_ID:0:0:0'
,p_break_enabled_on=>'EARNINGS_PERIOD_ID:WORK_LOCATION_NAME:EMP_ID:0:0:0'
,p_sum_columns_on_break=>'NORMAL_TIME:OVER_TIME:DOUBLE_TIME:TOTAL_HOURS:PAYROLL_HOURS:TIME_LOST'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781693697221473001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3766540244568123394)
,p_button_name=>'START_DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Start Upload'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:112::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781693244522473001)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3766540244568123394)
,p_button_name=>'PROCESS_DATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process by Dates'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781710041019473032)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3734375144646526783)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781692833575473000)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3766540244568123394)
,p_button_name=>'PURGE_TRANSFER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Transfer by Earning Period or  Dates'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781692487078473000)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3766540244568123394)
,p_button_name=>'ARCHIVE_TIMECLOCK_PERIOD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Archive Timeclock Paid Period'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3781706800544473026)
,p_button_sequence=>10
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3781707484195473028)
,p_name=>'P69_WORK_END'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3734375144646526783)
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
 p_id=>wwv_flow_imp.id(3781707871093473029)
,p_name=>'P69_WORK_START'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3734375144646526783)
,p_prompt=>'Work Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(3781708787798473030)
,p_name=>'P69_WORK_LOCATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3734375144646526783)
,p_prompt=>'Work Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  initcap(work_location_name) a, upper(trim(work_location_name))',
'from HR_ATT_TIMECLOCK_UPLOAD'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please note you must select start and end dates when using work locations'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3781709695651473031)
,p_name=>'P69_EARNING_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3734375144646526783)
,p_prompt=>'Earning Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'from VW_EARNall a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'/*and exists(select 1',
'           from hr_att_timeclock_upload x',
'           where x.earnings_period_id = a.id)*/',
'order by start_date desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select earnings period only no need for the other parameter values.'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3781691351471472994)
,p_validation_name=>'test_process_parameters'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P69_WORK_START is null or :P69_WORK_END IS NULL then',
'     return ''You must select both start and end dates to process the time sheets.'';',
'    else',
'      return '''';',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3781693244522473001)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3781690950305472993)
,p_validation_name=>'test_search_parameter'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P69_WORK_START is  not null and  :P69_WORK_END IS not NULL) or :P69_EARNING_PERIOD is not null then ',
'     return '''';',
'    else',
'      return ''You must select both start and end dates or an earning period to search the time sheets.'';',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3781710041019473032)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3781690726227472993)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PURGE_TRANSFER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P69_EARNING_PERIOD IS NOT NULL THEN',
'  PKG_GENERATORS.PURGE_TIMECLOCK(:P69_EARNING_PERIOD);',
'else',
'  PKG_GENERATORS.PURGE_TIMECLOCK(:P69_WORK_LOCATION, :P69_WORK_START, :P69_WORK_END);',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3781692833575473000)
,p_internal_uid=>3138355474208797499
);
wwv_flow_imp.component_end;
end;
/
