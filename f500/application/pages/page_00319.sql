prompt --application/pages/page_00319
begin
--   Manifest
--     PAGE: 00319
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
 p_id=>319
,p_name=>'rptTrainEnrollmentCalendar'
,p_alias=>'RPTTRAINENROLLMENTCALENDAR'
,p_step_title=>'Listing of Training Schedules'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3555013156943720402)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670042048760453411)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6303581381756194958)
,p_plug_name=>'Course Schedule'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
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
 p_id=>wwv_flow_imp.id(6303657432013842457)
,p_plug_name=>'Course Schedule Listing'
,p_parent_plug_id=>wwv_flow_imp.id(6303581381756194958)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    a.ID,',
'    a.COURSE_ID,',
'    a.START_DATE,',
'    a.FACILITATOR,',
'    a.REMARKS,',
'    a.CREATED,',
'    a.CREATED_BY,',
'    a.UPDATED,',
'    a.UPDATED_BY,',
'    a.END_DATE,',
'    a.VENUE,',
'    a.WKLOCATION_ID,',
'    nvl(b.persons_enrolled, 0) persons_enrolled,',
'    c.course_name,',
'    a.course_days,',
'    nvl(a.course_hours,0) course_hours',
'from ',
'    HR_TRN_COURSE_SCHEDULE a',
'    left join (select course_schedule_id, count(1) persons_enrolled',
'        from ',
'            HR_TRN_ENROLLMENT a ',
'            join HR_RCM_EMPLOYEE b on a.emp_id = b.id',
'            join HR_RCM_INDIVIDUAL c on b.ind_id = c.id ',
'        group by ',
'            course_schedule_id) b on a.id = b.course_schedule_id',
'    join HR_TRN_COURSE c on a.course_id = c.id',
'where ',
'    COURSE_ID = nvl(:P319_COURSE,COURSE_ID) -- /*too many failed test cases */ case when to_number(:P319_COURSE) = 1 or to_number(:P319_COURSE) is null then COURSE_ID else to_number(:P319_COURSE) end',
'    and pkg_global_fnts.fn_sharereforg(c.org_id) = :APP_ORG_SHR_DED',
'    AND TRUNC(A.START_DATE) BETWEEN NVL(TRUNC(TO_DATE(:P319_START_DATE)), TRUNC(C.START_DATE)) AND NVL(TRUNC(TO_DATE(:P319_END_DATE)), TRUNC(current_date))',
'    AND A.FACILITATOR = nvl(:P319_FACILITATOR,a.FACILITATOR) --case when to_number(:P319_FACILITATOR) = 1 or to_number(:P319_FACILITATOR) is null then A.FACILITATOR else to_number(:P319_FACILITATOR) end'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P319_COURSE,P319_START_DATE,P319_END_DATE,P319_FACILITATOR'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Course Schedule Listing'
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
 p_id=>wwv_flow_imp.id(6303659819086842481)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:330:&SESSION.::&DEBUG.:330:P330_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'ICARTER'
,p_internal_uid=>5660465269307234213
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680441446713927531)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680441845309927532)
,p_db_column_name=>'COURSE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Course Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680442156208927532)
,p_db_column_name=>'START_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_html_expression=>'<b>#START_DATE#</b>'
,p_column_type=>'DATE'
,p_format_mask=>'fmDD-MON-YYYY, fmDY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680444991739927536)
,p_db_column_name=>'END_DATE'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_format_mask=>'fmDD-MON-YYYY, fmDY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680442570712927533)
,p_db_column_name=>'FACILITATOR'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Facilitator'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(666864022402666230)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680443044572927534)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680443387649927534)
,p_db_column_name=>'CREATED'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680443842923927535)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680444173559927536)
,p_db_column_name=>'UPDATED'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680444581182927536)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680445420400927537)
,p_db_column_name=>'VENUE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Venue'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680445773071927537)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'S'
,p_column_label=>'Internal Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3186769140219636521)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680446247185927538)
,p_db_column_name=>'PERSONS_ENROLLED'
,p_display_order=>130
,p_column_identifier=>'U'
,p_column_label=>'Persons Enrolled'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680446562286927538)
,p_db_column_name=>'COURSE_NAME'
,p_display_order=>140
,p_column_identifier=>'V'
,p_column_label=>'Course Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680446952845927538)
,p_db_column_name=>'COURSE_DAYS'
,p_display_order=>150
,p_column_identifier=>'X'
,p_column_label=>'Course Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680447380318927539)
,p_db_column_name=>'COURSE_HOURS'
,p_display_order=>160
,p_column_identifier=>'Y'
,p_column_label=>'Course Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6303680037623915781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9905788'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COURSE_NAME:START_DATE:END_DATE:FACILITATOR:WKLOCATION_ID:VENUE:REMARKS:PERSONS_ENROLLED::COURSE_DAYS:COURSE_HOURS'
,p_break_on=>'COURSE_NAME:0:0:0:0:0'
,p_break_enabled_on=>'COURSE_NAME:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8737942119530699398)
,p_plug_name=>'Course Schedule Calendar'
,p_parent_plug_id=>wwv_flow_imp.id(6303581381756194958)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent13:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'   COURSE_NAME,',
'   to_date(a.START_DATE, ''DD-MON-YYYY'') start_date, ',
'   to_date(a.END_DATE, ''DD-MON-YYYY'') end_date, ',
'   a.course_days,',
'   a.course_hours,',
'   Salutation||''''||nvl(first_name,'''') ||'' ''||Surname FACILITATOR,',
'   colour_code css_class     ',
'from  hr_trn_course b ',
'join Hr_Trn_Course_Schedule a  on b.id = a.course_id',
'left outer join hr_rcm_individual c on a.Facilitator = c.id',
'where pkg_global_fnts.fn_sharereforg(a.org_id) =:APP_ORG_SHR_DED'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'create_link', 'f?p=&APP_ID.:330:&SESSION.::&DEBUG.:330:P330_START_DATE:&APEX$NEW_START_DATE.#START_DATE##START_DATE#',
  'css_class', 'CSS_CLASS',
  'display_column', 'COURSE_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', wwv_flow_string.join(wwv_flow_t_varchar2(
    'Facilitators: &FACILITATOR.</br>',
    'Course Days: &COURSE_DAYS.</br>',
    'Course Hours: &COURSE_HOURS.')),
  'view_edit_link', 'f?p=&APP_ID.:330:&SESSION.::&DEBUG.:330:P330_ID:&ID.')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(666859739884666224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670042048760453411)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:330:&SESSION.::&DEBUG.:330:P330_START_DATE:&P319_current_date.'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1680456413149927550)
,p_name=>'P319_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6303657432013842457)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TRAINING_COURSE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COURSE_NAME,id',
'from HR_TRN_COURSE',
'where org_id=:APP_ORG_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>1
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
 p_id=>wwv_flow_imp.id(1680456831092927551)
,p_name=>'P319_FACILITATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6303657432013842457)
,p_prompt=>'Facilitator'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    distinct B.SURNAME || '', '' || B.FIRST_NAME, TO_CHAR(A.IND_ID)',
'FROM',
'    HR_TRN_COURSE_FACILITATOR A',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'WHERE',
'    A.COURSE_ID = NVL(:P319_COURSE, A.COURSE_ID)',
'    AND pkg_global_fnts.fn_sharereforg(b.ind_org_id) = :APP_ORG_SHR_DED'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P319_COURSE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none:margin-right-none'
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
 p_id=>wwv_flow_imp.id(1680457252419927551)
,p_name=>'P319_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6303657432013842457)
,p_item_default=>'TRUNC(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Between'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
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
 p_id=>wwv_flow_imp.id(1680457658244927551)
,p_name=>'P319_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6303657432013842457)
,p_item_default=>'ADD_MONTHS(TRUNC(current_date), 3)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'and'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>10
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
 p_id=>wwv_flow_imp.id(1680460050190927557)
,p_name=>'P319_CURRENT_DATE'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'current_date'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666862232861666228)
,p_name=>'refresh_trn_schedule'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P319_COURSE,P319_START_DATE,P319_END_DATE,P319_FACILITATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666862744501666229)
,p_event_id=>wwv_flow_imp.id(666862232861666228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6303657432013842457)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(666863138679666229)
,p_name=>'refresh_facilitator'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P319_COURSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(666863647190666229)
,p_event_id=>wwv_flow_imp.id(666863138679666229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P319_FACILITATOR'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
