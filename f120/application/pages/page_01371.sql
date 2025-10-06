prompt --application/pages/page_01371
begin
--   Manifest
--     PAGE: 01371
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
 p_id=>1371
,p_name=>'frmeTimesheetLoad'
,p_alias=>'FRMETIMESHEETLOAD'
,p_step_title=>'Timesheet Loading'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893806588392776)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Alert--horizontal .t-Alert-content{',
'    background: antiquewhite;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475437858014140623)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3496906464670453921)
,p_plug_name=>'Results for Detailed Computed Data'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.id,',
'    work_location_name,',
'    emp_id,',
'    work_date,',
'    upper(to_char(work_date,''dy'')) day_week,',
'    EXTRACT(DAY FROM work_date) day,',
'    time_in,',
'    time_out,',
'    a.emp_company_no,',
'    a.remarks,',
'    load_by,',
'    load_date,',
'    a.last_changed_by,',
'    a.last_changed_date,',
'    earnings_period_id,',
'    nvl(a.hours_worked,0) Hours_worked,',
'    nvl(a.lunch_hour, 0) lunch_hour,',
'    a.TIME_SOURCE,',
'    a.ORGDTL_NAME,',
'    calendar_id, DATE_CREATED, CREATED_BY,',
'    '''' AS REPROCESS',
'FROM',
'    hr_att_timeclock_dtl   a',
'',
'WHERE to_date(to_char(work_date, ''DD-MON-YYYY''),''DD-MON-YYYY'') BETWEEN to_date(:P1371_WORK_START, ''DD-MON-YYYY'') and to_date(:P1371_WORK_END, ''DD-MON-YYYY'')',
'        and org_id=:APP_ORG_ID',
'        -- and upper(time_source) = ''IMPORTED''',
'        -- and a.emp_id = nvl(:P1371_EMPLOYEE,a.emp_id)',
'        -- and a.DEPARTMENT_ID = nvl(:P1371_DEPARTMENT, a.DEPARTMENT_ID)',
'        -- and a.earnings_period_id = nvl(:P1371_EARNINGS_PERIOD,a.earnings_period_id)',
'        -- AND A.POSITION_ID = NVL(:P1371_POSITION,A.POSITION_ID)',
'ORDER BY',
'    emp_id,',
'    EXTRACT(DAY FROM work_date) ASC',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1371_WORK_START,P1371_WORK_END'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3496906560715453921)
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>251347494125910862
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357039192061426519)
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
 p_id=>wwv_flow_imp.id(3357038768137426519)
,p_db_column_name=>'EMP_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357038417348426518)
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
 p_id=>wwv_flow_imp.id(3357038022204426518)
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
 p_id=>wwv_flow_imp.id(3357037593824426518)
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
 p_id=>wwv_flow_imp.id(3357041639838426522)
,p_db_column_name=>'WORK_LOCATION_NAME'
,p_display_order=>25
,p_column_identifier=>'X'
,p_column_label=>'Clock Location '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357041184559426521)
,p_db_column_name=>'LOAD_BY'
,p_display_order=>95
,p_column_identifier=>'AE'
,p_column_label=>'Load By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357040791054426521)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>105
,p_column_identifier=>'AF'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357040423094426520)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>165
,p_column_identifier=>'AL'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632589967933532454)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357041985886426522)
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
 p_id=>wwv_flow_imp.id(3357040037704426520)
,p_db_column_name=>'LUNCH_HOUR'
,p_display_order=>325
,p_column_identifier=>'BB'
,p_column_label=>'Lunch Hour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357039593563426520)
,p_db_column_name=>'DAY'
,p_display_order=>345
,p_column_identifier=>'BD'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357036392458426516)
,p_db_column_name=>'TIME_IN'
,p_display_order=>355
,p_column_identifier=>'CN'
,p_column_label=>'Time In'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357042420724426523)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>365
,p_column_identifier=>'BW'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357036864566426517)
,p_db_column_name=>'TIME_OUT'
,p_display_order=>385
,p_column_identifier=>'CO'
,p_column_label=>'Time Out'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357037199318426517)
,p_db_column_name=>'REPROCESS'
,p_display_order=>395
,p_column_identifier=>'CV'
,p_column_label=>'Reprocess'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357042778993426523)
,p_db_column_name=>'CALENDAR_ID'
,p_display_order=>405
,p_column_identifier=>'CW'
,p_column_label=>'Calendar Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357043219123426524)
,p_db_column_name=>'TIME_SOURCE'
,p_display_order=>415
,p_column_identifier=>'CX'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357043600659426524)
,p_db_column_name=>'ORGDTL_NAME'
,p_display_order=>425
,p_column_identifier=>'CY'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357044052469426525)
,p_db_column_name=>'HOURS_WORKED'
,p_display_order=>435
,p_column_identifier=>'CZ'
,p_column_label=>'Hours Worked (No LLH)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357045197898426526)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>445
,p_column_identifier=>'DA'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357044798917426526)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>455
,p_column_identifier=>'DB'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3357044437145426525)
,p_db_column_name=>'DAY_WEEK'
,p_display_order=>465
,p_column_identifier=>'DC'
,p_column_label=>'Day'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3496909061822471961)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1114865'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EMP_ID:ORGDTL_NAME:WORK_LOCATION_NAME:WORK_DATE:DAY_WEEK:TIME_IN:TIME_OUT:HOURS_WORKED:REMARKS:DATE_CREATED:CREATED_BY:'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EMP_ID:0:0:0:ORGDTL_NAME'
,p_break_enabled_on=>'EMP_ID:0:0:0:ORGDTL_NAME'
,p_sum_columns_on_break=>'NORMAL_TIME:OVER_TIME:DOUBLE_TIME:TOTAL_HOURS:PAYROLL_HOURS:TIME_LOST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3523659198919352200)
,p_plug_name=>'<header>Reminder</header>'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p style= ''font-size:15px''>This section shows all records in the detail, records that someone who has access can view and can edit but it is not in the summary</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3576360473323395447)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3576360577704395448)
,p_plug_name=>'TABS'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(3474753904110918345)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3357033458894426513)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3576360473323395447)
,p_button_name=>'REPROCESS_HOURS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reprocess Hours Worked'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3357033772410426513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3576360473323395447)
,p_button_name=>'LOAD_TO_HEAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Move Detail to Summary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-box-arrow-in-ne'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3357034213606426514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3576360473323395447)
,p_button_name=>'GO_TO_MASTER_SUMMARY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Master Summary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.::P138_EARNINGS_PERIOD:&P1371_PERIOD.'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3357034637780426514)
,p_name=>'P1371_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3576360473323395447)
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
 p_id=>wwv_flow_imp.id(3357034997341426514)
,p_name=>'P1371_WORK_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3576360473323395447)
,p_item_default=>'select current_date-1 from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(3357035419722426515)
,p_name=>'P1371_WORK_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3576360473323395447)
,p_item_default=>'select current_date-1 from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3357046511583426528)
,p_validation_name=>'test_process_parameters'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1371_WORK_START is null or :P1371_WORK_END IS NULL then',
'     return ''You must select both start and end dates to process the time sheets.'';',
'    else',
'      return '''';',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3357046104619426528)
,p_validation_name=>'test_search_parameter'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P1371_WORK_START is  not null and  :P1371_WORK_END IS not NULL) or :P1371_EARNING_PERIOD is not null then ',
'     return '''';',
'    else',
'      return ''You must select both start and end dates or an earning period to search the time sheets.'';',
'    end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357054528959426535)
,p_name=>'dy_refresh_ws'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_WORK_START'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357055010251426535)
,p_event_id=>wwv_flow_imp.id(3357054528959426535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357053653851426534)
,p_name=>'du_refresh_we'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357054074371426534)
,p_event_id=>wwv_flow_imp.id(3357053653851426534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357047251245426529)
,p_name=>'refresh_processedreport'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357047696660426529)
,p_event_id=>wwv_flow_imp.id(3357047251245426529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357048077012426529)
,p_name=>'refresh_processedreport2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357048631185426530)
,p_event_id=>wwv_flow_imp.id(3357048077012426529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357049048457426530)
,p_name=>'refresh_processedreport2_2'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_POSITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357049525272426531)
,p_event_id=>wwv_flow_imp.id(3357049048457426530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357049940070426531)
,p_name=>'refresh_processedreport2_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357050371503426531)
,p_event_id=>wwv_flow_imp.id(3357049940070426531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357050779171426532)
,p_name=>'set_start_time'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1371_PERIOD'
,p_condition_element=>'P1371_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357051297136426532)
,p_event_id=>wwv_flow_imp.id(3357050779171426532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1371_WORK_START,P1371_WORK_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_DAY(ADD_MONTHS(:P1371_PERIOD,-1))+1, LAST_DAY(:P1371_PERIOD)',
'FROM DUAL;'))
,p_attribute_07=>'P1371_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3357051752424426532)
,p_name=>'pplpay'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3357033458894426513)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357052234231426533)
,p_event_id=>wwv_flow_imp.id(3357051752424426532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_WORK_START DATE;',
'  IN_WORK_END DATE;',
'  IN_ORG_ID NUMBER;',
'    ',
'BEGIN',
'  IN_WORK_START := :P1371_WORK_START;',
'  IN_WORK_END := :P1371_WORK_END;',
'  IN_ORG_ID := :APP_ORG_ID;',
'',
'  PKG_TIMECLOCK.prcd_reprodtl_hours (  IN_WORK_START => IN_WORK_START,',
'IN_WORK_END => IN_WORK_END,',
'IN_ORG_ID => IN_ORG_ID) ;  ',
'END;',
'',
''))
,p_attribute_02=>'P1371_WORK_START,P1371_WORK_END'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357052689718426533)
,p_event_id=>wwv_flow_imp.id(3357051752424426532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3496906464670453921)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3357053217151426534)
,p_event_id=>wwv_flow_imp.id(3357051752424426532)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( ''Hours Worked for the Timesheet Detail records have been reprocessed!'' );'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3357046860807426528)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD TO CALENDAR HEAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    in_work_start   DATE;',
'    in_work_end     DATE;',
'    in_org_id       NUMBER;',
'BEGIN',
'    IN_WORK_START := :P1371_WORK_START;',
'    IN_WORK_END := :P1371_WORK_END;',
'    IN_ORG_ID := :APP_ORG_ID;',
'',
'    --loads the records with recpect to the work start and end into the calendar head and updates the hours worked',
'     pkg_timeclock.prcd_load_empcalhd(in_work_start => in_work_start, in_work_end => in_work_end, in_org_id => in_org_id);',
'',
'    --after loading the records and calculating the hours worked, it then computes the time in lost, time out lost and the over time',
'    pkg_timeclock.prcd_compute_empcalhdsmry(in_work_start => in_work_start, in_work_end => in_work_end, in_org_id => in_org_id, in_emp_id=>NULL);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3357033772410426513)
,p_process_success_message=>'Detail Records Summarized and Loaded to Master Summary for Period &P1371_WORK_START. to &P1371_WORK_END.'
,p_internal_uid=>2935254867609429954
);
wwv_flow_imp.component_end;
end;
/
