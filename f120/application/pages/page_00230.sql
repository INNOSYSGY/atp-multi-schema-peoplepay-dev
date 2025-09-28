prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>230
,p_name=>'frmCourseCompletion'
,p_alias=>'FRMCOURSECOMPLETION'
,p_step_title=>'View/Update Course Structure Grades'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3333610600362108708)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Need to include ',
'Course ',
'Schedule',
'Module/Structure',
'And this will show all employees that are enrolled '))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(448639856852841721)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7112700345147548331)
,p_plug_name=>'Tabs Container'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7112700409991548332)
,p_plug_name=>'View Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(7112700345147548331)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7112700519172548333)
,p_plug_name=>'Course Structure Filter for Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(7112700409991548332)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7132092530555805987)
,p_plug_name=>'View Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(7112700409991548332)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    A.COURSE_STRUCTURE_ID,',
'    A.ENROLLMENT_ID,',
'    A.ID,',
'    A.GRADE_ATTAINED,',
'    A.PERCENTAGE_ATTAINED,',
'    A.QUALIFICATION_LEVEL,',
'    A.REMARKS,',
'    A.EMP_ID,',
'    A.COURSE_STRUCTURE_NAME,',
'    A.CREATED,',
'    A.CREATED_BY,',
'    A.UPDATED, A.CLASS_ID,',
'    A.UPDATED_BY, ',
'    B.COURSE_ID, B.COURSE_SCHEDULE_ID',
'from ',
'    HR_TRN_ENROLLMENT_GRADE A',
'    JOIN HR_TRN_ENROLLMENT B ON A.ENROLLMENT_ID = B.ID',
'WHERE',
'    pkg_global_fnts.fn_sharereforg(B.ORG_ID)=:APP_ORG_SHR_DED',
'    and b.course_id = nvl(:P230_COURSE, b.course_id)',
'    and b.course_schedule_id = nvl(:P230_COURSE_SCHEDULE, b.course_schedule_id)',
'    and a.course_structure_id = nvl(:P230_COURSE_STRUCTURE, a.course_structure_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P230_COURSE,P230_COURSE_SCHEDULE,P230_COURSE_STRUCTURE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'View Course Structure Grades'
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
 p_id=>wwv_flow_imp.id(7132092615786805988)
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
,p_owner=>'ICARTER'
,p_internal_uid=>6710300622588809414
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458104591799813019)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458103804984813018)
,p_db_column_name=>'COURSE_STRUCTURE_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Course Structure/Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(445022865830880635)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458104127390813018)
,p_db_column_name=>'ENROLLMENT_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Enrollment No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(445025607705880644)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458104969022813019)
,p_db_column_name=>'GRADE_ATTAINED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Grade Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458105322562813019)
,p_db_column_name=>'PERCENTAGE_ATTAINED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Percentage Attained'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458105781666813020)
,p_db_column_name=>'QUALIFICATION_LEVEL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Qualification Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458106162421813020)
,p_db_column_name=>'REMARKS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458106577983813021)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(445023859894880642)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458106948554813021)
,p_db_column_name=>'COURSE_STRUCTURE_NAME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Course Structure Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458107327544813021)
,p_db_column_name=>'CREATED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458107767677813022)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458108127684813022)
,p_db_column_name=>'UPDATED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458108607384813023)
,p_db_column_name=>'CLASS_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(445030284161880648)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458108957299813023)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458109342416813023)
,p_db_column_name=>'COURSE_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Course'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1458109709152813024)
,p_db_column_name=>'COURSE_SCHEDULE_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Schedule'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7132136284547237648)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9901259'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_STRUCTURE_ID:ENROLLMENT_ID:EMP_ID:GRADE_ATTAINED:PERCENTAGE_ATTAINED:QUALIFICATION_LEVEL'
,p_break_on=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_STRUCTURE_ID'
,p_break_enabled_on=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_STRUCTURE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7132094569734806007)
,p_plug_name=>'Update Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(7112700345147548331)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7132094718541806009)
,p_plug_name=>'Course Structure Filter for Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(7132094569734806007)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8879574360480011075)
,p_plug_name=>'Enrollment Grades'
,p_parent_plug_id=>wwv_flow_imp.id(7132094569734806007)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent12:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    A.COURSE_STRUCTURE_ID,',
'    A.ENROLLMENT_ID,',
'    A.ID,',
'    A.GRADE_ATTAINED,',
'    A.PERCENTAGE_ATTAINED,',
'    A.QUALIFICATION_LEVEL,',
'    A.REMARKS,',
'    A.EMP_ID,',
'    A.COURSE_STRUCTURE_NAME,',
'    A.CREATED,',
'    A.CREATED_BY,',
'    A.UPDATED, A.CLASS_ID,',
'    A.UPDATED_BY, ',
'    B.COURSE_ID, B.COURSE_SCHEDULE_ID',
'from ',
'    HR_TRN_ENROLLMENT_GRADE A',
'    JOIN HR_TRN_ENROLLMENT B ON A.ENROLLMENT_ID = B.ID',
'    -- JOIN HR_TRN_COURSE_CLASS B ON A.CLASS_ID = B.ID',
'    -- JOIN HR_TRN_COURSE_SCHEDULE D ON B.COURSE_SCHEDULE_ID = D.ID',
'WHERE',
'    pkg_global_fnts.fn_sharereforg(B.ORG_ID)=:APP_ORG_SHR_DED',
'    and b.course_id = nvl(:P230_COURSE_1, b.course_id)',
'    and b.course_schedule_id = nvl(:P230_COURSE_SCHEDULE_1, b.course_schedule_id)',
'    -- and exists(',
'    --     select',
'    --         1',
'    --     from ',
'    --         hr_trn_course_schedule sch ',
'    --     where ',
'    --         sch.id = b.course_schedule_id ',
'    --         and sch.course_id = nvl(:P230_COURSE_1, sch.course_id)',
'    --         and sch.id = nvl(:P230_COURSE_SCHEDULE_1, sch.id))',
'    and a.course_structure_id = nvl(:P230_COURSE_STRUCTURE_1, a.course_structure_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P230_COURSE_1,P230_COURSE_SCHEDULE_1,P230_COURSE_STRUCTURE_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Enrollment Grades'
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
 p_id=>wwv_flow_imp.id(7135556088524498886)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Course'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'FIRST_ROWSET',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'POPUP',
  'subtype', 'N',
  'trim_spaces', 'N')).to_clob
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7135556157528498887)
,p_name=>'COURSE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Schedule'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'FIRST_ROWSET',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'POPUP',
  'subtype', 'N',
  'trim_spaces', 'N')).to_clob
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8876146746427951122)
,p_name=>'QUALIFICATION_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_LEVEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Level'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3505273200184694974)
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
 p_id=>wwv_flow_imp.id(8876146859267951123)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(8876147011910951124)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
 p_id=>wwv_flow_imp.id(8876147045487951125)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(8876147192750951126)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
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
 p_id=>wwv_flow_imp.id(8876147327793951127)
,p_name=>'CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Class'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445030284161880648)
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
 p_id=>wwv_flow_imp.id(8879575738410011077)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879576186140011078)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879577210447011083)
,p_name=>'COURSE_STRUCTURE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_STRUCTURE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Course Structure'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445022865830880635)
,p_lov_display_extra=>false
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879578159176011085)
,p_name=>'ENROLLMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENROLLMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Enrollment '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445025607705880644)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879579153209011086)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879580189974011087)
,p_name=>'GRADE_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_ATTAINED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    value_description display, table_value return',
'from',
'    hr_hcf_lookup l1',
'where ',
'    table_name = ''TBLTRAININGGRADERANGES''',
'    and org_id = :APP_ORG_SHR_DED',
'    and (end_period is null or end_period > trunc(current_date))',
'    and verified_by is not null',
'    and exists(',
'        select 1 ',
'        from hr_hcf_lookup l2 ',
'        where l1.lookup_id = l2.id ',
'        and l2.table_name = ''TBLEVALUATIONTYPES''',
'        and l2.table_value = :P230_EVALUATED)'))
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879582221023011088)
,p_name=>'PERCENTAGE_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE_ATTAINED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879584214929011090)
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
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879585216443011091)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445023859894880642)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8879586187737011092)
,p_name=>'COURSE_STRUCTURE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_STRUCTURE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8879574909745011076)
,p_internal_uid=>8457782916547014502
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_update_authorization_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3585335384393360204)
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8879575287037011076)
,p_interactive_grid_id=>wwv_flow_imp.id(8879574909745011076)
,p_static_id=>'5397582'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8879575503673011076)
,p_report_id=>wwv_flow_imp.id(8879575287037011076)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7135565966488530044)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7135556088524498886)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7135566886794530051)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7135556157528498887)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339820848549804299)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8876146746427951122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339826362435812642)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(8876146859267951123)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339828185400812647)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8876147011910951124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339830098099812653)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8876147045487951125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339832023062812657)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8876147192750951126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8339841746547884760)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8876147327793951127)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>278
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879576551823011079)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8879576186140011078)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879577613142011084)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8879577210447011083)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>122
,p_break_order=>3
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879578610429011085)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8879578159176011085)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879579557636011086)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8879579153209011086)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879580546868011087)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8879580189974011087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879582610392011089)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8879582221023011088)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879584634124011090)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8879584214929011090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879585587972011091)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8879585216443011091)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8879586607922011092)
,p_view_id=>wwv_flow_imp.id(8879575503673011076)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(8879586187737011092)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7207446044254403577)
,p_plug_name=>'Update Course Completion'
,p_parent_plug_id=>wwv_flow_imp.id(7112700345147548331)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7207446137088403578)
,p_plug_name=>'Course Completion Filter For Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(7207446044254403577)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7207446247787403579)
,p_plug_name=>'Course Completion Updating'
,p_parent_plug_id=>wwv_flow_imp.id(7207446137088403578)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7221257693879809281)
,p_plug_name=>'Status Region'
,p_parent_plug_id=>wwv_flow_imp.id(7207446137088403578)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7888564251079579856)
,p_plug_name=>'Training Enrolment Listing'
,p_parent_plug_id=>wwv_flow_imp.id(7207446044254403577)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hte.ID,',
'       hte.ORGDTL_ID,',
'       hte.POSITION_ID,',
'       hte.COURSE_ID,',
'       hte.PROPOSED_TRAIN_START PROPOSED_START,',
'       hte.PROPOSED_TRAIN_END PROPOSED_END,',
'       hte.REASON_ID,',
'       hte.REASON_DETAILS,',
'       hte.REMARKS,',
'       hte.CREATED,',
'       hte.CREATED_BY,',
'       hte.UPDATED,',
'       hte.UPDATED_BY,',
'       hte.ORG_ID,',
'       hte.EMP_ID,',
'       hte.COURSE_NAME,',
'       hte.COURSE_DESCRIPTION,',
'       hte.SCHEDULE_STATUS,',
'       hte.GRADE_ATTAINED,',
'       hte.GRADE_STATUS_ATTAINED,',
'       hte.PERCENTAGE_ATTAINED,',
'       hte.QUAL_LEVEL_ID,',
'       hte.TRANSACTION_TYPE_ID,',
'       hte.STATUS,',
'       hte.REQUEST_TYPE,',
'       hte.ENROLLMENT_NO,',
'       hte.COURSE_SCHEDULE_ID,',
'       hte.APPRAISAL_ID,',
'       hte.EMPLOYMENT_TYPE_ID,',
'       hte.EMP_GRADE_ID,',
'       hte.REQUESTOR,',
'       hte.ENROLLMENT_STATUS,',
'       htcs.start_date SCHEDULE_START,',
'       htcs.end_date SCHEDULE_END',
'  from HR_TRN_ENROLLMENT hte',
'    left join hr_trn_course_schedule htcs on hte.course_schedule_id = htcs.id ',
' where hte.COURSE_ID = NVL(:P230_COURSE_1_1, hte.COURSE_ID)',
' AND nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P230_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P230_END_DATE_1, ''DD-MON-YYYY'')',
'AND (NVL(hte.COURSE_SCHEDULE_ID, 1) = NVL(NVL(:P230_COURSE_SCHEDULE_1_1, hte.COURSE_SCHEDULE_ID), 1) ',
'or (hte.course_schedule_id is null and nvl(trunc(hte.proposed_train_start), trunc(htcs.start_date))  BETWEEN TO_DATE(:P230_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P230_END_DATE_1, ''DD-MON-YYYY'')))',
'AND pkg_global_fnts.fn_sharereforg(hte.org_ID)=NVL(:P230_ORGANISATION_1, :APP_ORG_SHR_DED)',
'and exists(',
'    select 1 ',
'    from hr_trn_enrollment_grade hteg ',
'    where hteg.enrollment_id = hte.id)',
'-- AND hte.ORG_ID = NVL(:P230_ORGANISATION_1, hte.ORG_ID)',
'-- AND hte.ORGDTL_ID = NVL(:P230_DEPARTMENT, hte.ORGDTL_ID)',
'-- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P230_JOB, JOB_ID) AND POS.ID = hte.position_id)',
'-- AND hte.EMP_GRADE_ID = NVL(:P230_EMP_GRADE, hte.EMP_GRADE_ID)',
'-- AND hte.EMP_ID = NVL(:P230_EMPLOYEE, hte.EMP_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P230_START_DATE_1,P230_END_DATE_1,P230_COURSE_1_1,P230_COURSE_SCHEDULE_1_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Training Enrolment Listing'
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
 p_id=>wwv_flow_imp.id(7090814739954102597)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445028491485880646)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090814826121102598)
,p_name=>'POSITION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445029181743880647)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090814917684102599)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME, A.id',
'from  HR_TRN_COURSE a join hr_hcf_organisation x on x.id = a.org_id',
'where pkg_global_fnts.fn_sharereforg(A.org_ID)=:APP_ORG_SHR_DED',
'and exists(',
'    select 1',
'    from hr_trn_course_structure b ',
'    where a.id = b.course_id ',
')',
'and exists(',
'    select 1',
'    from hr_trn_course_facilitator c',
'    where a.id = c.course_id',
')',
'ORDER BY 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090815251757102602)
,p_name=>'REASON_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reason Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090815314488102603)
,p_name=>'REASON_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090815464914102604)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
 p_id=>wwv_flow_imp.id(7090815552576102605)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(7090815639188102606)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(7090815700693102607)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(7090815872270102608)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
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
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445023859894880642)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090815936016102609)
,p_name=>'COURSE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Course Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816031223102610)
,p_name=>'COURSE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Course Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816174953102611)
,p_name=>'SCHEDULE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816181067102612)
,p_name=>'GRADE_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_ATTAINED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Grade Attained'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_is_required=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816319251102613)
,p_name=>'GRADE_STATUS_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_STATUS_ATTAINED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Grade Status Attained'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445826705612832880)
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
,p_readonly_condition_type=>'ITEM_IS_NOT_NULL'
,p_readonly_condition=>'GRADE_STATUS_ATTAINED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816396960102614)
,p_name=>'PERCENTAGE_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE_ATTAINED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage Attained'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816556268102615)
,p_name=>'QUAL_LEVEL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUAL_LEVEL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qual Level Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816676505102616)
,p_name=>'REQUEST_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Request Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM ',
'(SELECT ''AUTOMATIC TARGET'' DISPLAY, ''AUTOMATIC TARGET'' RETURN',
'FROM DUAL',
'UNION',
'SELECT ''OFFICER'' DISPLAY, ''OFFICER'' RETURN',
'FROM DUAL',
'UNION',
'SELECT ''APPRAISAL'' DISPLAY, ''APPRAISAL'' RETURN',
'FROM DUAL',
'UNION',
'SELECT ''SELF SERVE'' DISPLAY, ''SELF SERVE'' RETURN',
'FROM DUAL)',
'ORDER BY DISPLAY'))
,p_lov_display_extra=>true
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
,p_default_type=>'STATIC'
,p_default_expression=>'OFFICER'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816750250102617)
,p_name=>'REQUESTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUESTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Requestor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816813686102618)
,p_name=>'ENROLLMENT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENROLLMENT_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Enrollment No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(7090816884391102619)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Appraisal Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090816990528102620)
,p_name=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employment Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3508177309009370904)
,p_lov_display_extra=>true
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7090817175482102621)
,p_name=>'EMP_GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_GRADE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Grade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632558643709481228)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7091545775680576897)
,p_name=>'ENROLLMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENROLLMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445026599110880644)
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
,p_default_expression=>'KEYED'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7109725647283844102)
,p_name=>'SCHEDULE_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_START'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Schedule Start'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7109725773074844103)
,p_name=>'SCHEDULE_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_END'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Schedule End'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7109725818405844104)
,p_name=>'PROPOSED_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROPOSED_START'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Proposed Start'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7109725917071844105)
,p_name=>'PROPOSED_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROPOSED_END'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Proposed End'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7888564495130579858)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7888564534777579859)
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
 p_id=>wwv_flow_imp.id(7888564795143579861)
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
 p_id=>wwv_flow_imp.id(7888564816292579862)
,p_name=>'COURSE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course Schedule'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'      to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') ',
'        || case when nvl(venue, to_char(location_description)) is not null then '' at ''',
'        || nvl(venue, to_char(location_description)) else null end',
'        display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
' join hr_hcf_organisation x on x.id = b.org_id',
' left join hr_hcf_worklocation wk on wk.id = a.wklocation_id',
'where pkg_global_fnts.fn_sharereforg(A.org_ID)=:APP_ORG_SHR_DED',
'and b.id = nvl(:COURSE_ID, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COURSE_ID'
,p_ajax_items_to_submit=>'COURSE_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7888565247707579866)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7888565440160579868)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(445027701823880646)
,p_lov_display_extra=>true
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
,p_default_type=>'ITEM'
,p_default_expression=>'APP_ORG_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7888565961659579873)
,p_name=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(7888566023691579874)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7888564365624579857)
,p_internal_uid=>7466772372426583283
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(7888595078735856477)
,p_interactive_grid_id=>wwv_flow_imp.id(7888564365624579857)
,p_static_id=>'7976768'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7888595285647856477)
,p_report_id=>wwv_flow_imp.id(7888595078735856477)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091127445354409882)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7090814739954102597)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>319
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091128312798409887)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7090814826121102598)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091129246275409892)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7090814917684102599)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>233
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091131952274409905)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7090815251757102602)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091132861902409908)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(7090815314488102603)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091133735647409913)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(7090815464914102604)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091134614196409916)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(7090815552576102605)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091135579727409920)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(7090815639188102606)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091136402152409924)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(7090815700693102607)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091137337876409929)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7090815872270102608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>233
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091138216595409935)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(7090815936016102609)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091139111914409940)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(7090816031223102610)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091140050105409943)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(7090816174953102611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091140951349409947)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(7090816181067102612)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091141880466409951)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(7090816319251102613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091142700547409954)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(7090816396960102614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091143505049409958)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(7090816556268102615)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091144437158409962)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7090816676505102616)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091145361865409966)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(7090816750250102617)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091146185877409970)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7090816813686102618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091147144180409973)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(7090816884391102619)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091148078914409977)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7090816990528102620)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7091148974309409981)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7090817175482102621)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7093099565893362092)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(7091545775680576897)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7109987660618595293)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7109725647283844102)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7109988501819595298)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7109725773074844103)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7110073403250664059)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7109725818405844104)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7110074309702664063)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(7109725917071844105)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888595755222856479)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7888564495130579858)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888597082962856487)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7888564795143579861)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888597947316856491)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7888564816292579862)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>233
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888601571701856508)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7888565247707579866)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888603400133856517)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7888565440160579868)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888607805011856538)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7888565961659579873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7888608628267856542)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7888566023691579874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(6291921949461448373)
,p_view_id=>wwv_flow_imp.id(7888595285647856477)
,p_execution_seq=>5
,p_name=>'No Schedule'
,p_background_color=>'#FCEC77'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(7888564816292579862)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(444990754123880595)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(7221257693879809281)
,p_button_name=>'EXECUTE_UPDATE_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Grade Status'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(444976976982880578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Structure Grades'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(444988304172880593)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(7207446137088403578)
,p_button_name=>'REPROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reprocess'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458103632806813033)
,p_name=>'P230_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7112700519172548333)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',a.id',
'from ',
'    HR_TRN_COURSE a',
'    join hr_hcf_organisation x on a.org_id = x.id',
'where ',
'    pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'    and exists(',
'        select 1',
'        from hr_trn_course_structure b ',
'        where a.id = b.course_id ',
'    )',
'    and exists(',
'        select 1',
'        from hr_trn_course_facilitator c',
'        where a.id = c.course_id',
'    )',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458104076487813035)
,p_name=>'P230_COURSE_SCHEDULE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7112700519172548333)
,p_prompt=>'Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME',
'        ||'' at ''',
'        || case when venue is null then (select to_char(location_description) from hr_hcf_worklocation c where c.id = a.wklocation_id) else  venue end',
'        ||'' from ''',
'        ||to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'join hr_hcf_organisation x on x.id = b.org_id',
'where     pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'and b.id = nvl(:P230_COURSE, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P230_COURSE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458104395070813036)
,p_name=>'P230_COURSE_STRUCTURE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7112700519172548333)
,p_prompt=>'Structure/Module'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     ',
'    a.structure_name ',
'    ||'' :- ''',
'    ||a.structure_type',
'    ||'' No. ''',
'    || structure_no display, ',
'    A.ID return',
'FROM  ',
'    hr_trn_course_structure A ',
'    join hr_trn_course b on b.id = a.course_id',
'where ',
'    exists(select 1 from hr_hcf_organisation org where org.id = b.org_id and (org.id = :APP_ORG_SHR_DED or org.parent_org_id = :APP_ORG_SHR_DED))',
'    and exists (',
'        select 1',
'        from HR_TRN_COURSE_SCHEDULE sch',
'        where b.id = sch.COURSE_ID',
'        and sch.course_id = NVL(:P230_COURSE, sch.course_id)',
'        and sch.id= nvl(:P230_COURSE_SCHEDULE, sch.id)',
'        )',
'order by   a.structure_no,a.structure_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P230_COURSE,P230_COURSE_SCHEDULE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458120578747813061)
,p_name=>'P230_COURSE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',a.id',
'from ',
'    HR_TRN_COURSE a',
'    join hr_hcf_organisation x on a.org_id = x.id',
'where ',
'    pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'    and exists(',
'        select 1',
'        from hr_trn_course_structure b ',
'        where a.id = b.course_id ',
'    )',
'    and exists(',
'        select 1',
'        from hr_trn_course_facilitator c',
'        where a.id = c.course_id',
'    )',
'ORDER BY 1',
''))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458120951108813062)
,p_name=>'P230_COURSE_SCHEDULE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_prompt=>'Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME',
'        ||'' at ''',
'        || case when venue is null then (select to_char(location_description) from hr_hcf_worklocation c where c.id = a.wklocation_id) else  venue end',
'        ||'' from ''',
'        ||to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'join hr_hcf_organisation x on x.id = b.org_id',
'where     pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'and b.id = nvl(:P230_COURSE_1, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P230_COURSE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458121421699813062)
,p_name=>'P230_COURSE_STRUCTURE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_prompt=>'Structure/Module'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     ',
'    a.structure_name ',
'    ||'' :- ''',
'    ||a.structure_type',
'    ||'' No. ''',
'    || structure_no display, ',
'    A.ID return',
'FROM  ',
'    hr_trn_course_structure A ',
'    join hr_trn_course b on b.id = a.course_id',
'where ',
'    exists(select 1 from hr_hcf_organisation org where org.id = b.org_id and (org.id = :APP_ORG_SHR_DED or org.parent_org_id = :APP_ORG_SHR_DED))',
'    and exists (',
'        select 1',
'        from HR_TRN_COURSE_SCHEDULE sch',
'        where b.id = sch.COURSE_ID',
'        and sch.course_id = nvl(:P230_COURSE_1, sch.course_id)',
'        and sch.id= nvl(:P230_COURSE_SCHEDULE_1, sch.id)',
'        )',
'order by   a.structure_no,a.structure_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P230_COURSE_1,P230_COURSE_SCHEDULE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1458121790855813063)
,p_name=>'P230_PERCENTAGE_ATTAIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_item_default=>'100'
,p_prompt=>'% Attained'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P230_EVALUATED = 1 THEN RETURN',
'    ''select level -1 display, level -1 return',
'    from dual ',
'    connect by level-1 <= 100'';',
'ELSE RETURN',
'    ''select level -3 display, level -3 return',
'    from dual ',
'    connect by level -3 < 0'';',
'END IF;'))
,p_lov_cascade_parent_items=>'P230_COURSE_1'
,p_ajax_items_to_submit=>'P230_EVALUATED'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458122146107813063)
,p_name=>'P230_EVALUATED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7132094718541806009)
,p_use_cache_before_default=>'NO'
,p_source=>'select evaluated from hr_trn_course where id = :P230_COURSE_1'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458144243495813098)
,p_name=>'P230_COURSE_1_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7207446247787403579)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',a.id',
'from ',
'    HR_TRN_COURSE a',
'    join hr_hcf_organisation x on a.org_id = x.id',
'where ',
'    pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'    and a.org_id = nvl(:P230_ORGANISATION_1, a.org_id)',
'    and exists(',
'        select 1',
'        from hr_trn_course_structure b ',
'        where a.id = b.course_id ',
'    )',
'    and exists(',
'        select 1',
'        from hr_trn_course_facilitator c',
'        where a.id = c.course_id',
'    )',
'ORDER BY 1'))
,p_cSize=>30
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(1458144652660813099)
,p_name=>'P230_COURSE_SCHEDULE_1_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7207446247787403579)
,p_prompt=>'Course Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME',
'        ||'' from ''',
'        ||to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') ',
'        || case when nvl(venue, to_char(location_description)) is not null then '' at ''',
'        || nvl(venue, to_char(location_description)) else null end',
'        display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'join hr_hcf_organisation x on x.id = b.org_id',
'left join hr_hcf_worklocation wk on wk.id = a.wklocation_id',
'where pkg_global_fnts.fn_sharereforg(A.ORG_ID)=:APP_ORG_SHR_DED',
'and b.id = NVL(:P230_COURSE_1_1, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P230_COURSE_1_1'
,p_ajax_items_to_submit=>'P230_COURSE_1_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(1458145059715813099)
,p_name=>'P230_START_DATE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7207446247787403579)
,p_item_default=>'''01-JAN-''  || TO_CHAR(current_date, ''YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458145476824813100)
,p_name=>'P230_END_DATE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7207446247787403579)
,p_item_default=>'''31-DEC-''  || TO_CHAR(current_date, ''YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458148583292813103)
,p_name=>'P230_STATUS_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7221257693879809281)
,p_prompt=>'Grade Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TRAINING_GRADE_STATUSES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    value_description display, table_value return',
'from',
'    hr_hcf_lookup',
'where ',
'    table_name = ''TBLGRADESTATUS''',
'    and org_id = :APP_ORG_SHR_DED',
'    and (end_period is null or end_period > trunc(current_date))',
'    and verified_by is not null'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1458180120882813156)
,p_name=>'P230_MASTER_ENROLLMENT_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7888564251079579856)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445008208904880622)
,p_name=>'set_employee'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(8879574360480011075)
,p_triggering_element=>'ENROLLMENT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ENROLLMENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445008723134880623)
,p_event_id=>wwv_flow_imp.id(445008208904880622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMP_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id',
'from HR_TRN_ENROLLMENT',
'where id = :ENROLLMENT_ID'))
,p_attribute_07=>'ENROLLMENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445009165601880623)
,p_name=>'dy_refresh_course_completion_ir'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE,P230_COURSE_SCHEDULE,P230_COURSE_STRUCTURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445009634418880623)
,p_event_id=>wwv_flow_imp.id(445009165601880623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7132092530555805987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445010088192880624)
,p_name=>'dy_refresh_course_completion_ir_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1,P230_COURSE_SCHEDULE_1,P230_COURSE_STRUCTURE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445010586578880624)
,p_event_id=>wwv_flow_imp.id(445010088192880624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8879574360480011075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445010949875880624)
,p_name=>'dy_show_hide_enrollments'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_ALL_ENROLLMENTS'
,p_condition_element=>'P230_ALL_ENROLLMENTS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445011453884880624)
,p_event_id=>wwv_flow_imp.id(445010949875880624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_ENROLLMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445011942488880625)
,p_event_id=>wwv_flow_imp.id(445010949875880624)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_ENROLLMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445012340335880625)
,p_name=>'dy_set_grade_IG'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(8879574360480011075)
,p_triggering_element=>'PERCENTAGE_ATTAINED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445012829929880625)
,p_event_id=>wwv_flow_imp.id(445012340335880625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'GRADE_ATTAINED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    grade',
'from ',
'    hr_trn_grade_ranges',
'where ',
'    course_id = :COURSE_ID',
'    and :PERCENTAGE_ATTAINED between lower_limit and upper_limit'))
,p_attribute_07=>'COURSE_ID,PERCENTAGE_ATTAINED'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445013214229880625)
,p_name=>'dy_show_hide_generate'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1,P230_COURSE_SCHEDULE_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P230_COURSE_1").getValue() != ''''',
'&& apex.item("P230_COURSE_SCHEDULE_1").getValue() != '''''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445013763139880625)
,p_event_id=>wwv_flow_imp.id(445013214229880625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444976976982880578)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445014232309880626)
,p_event_id=>wwv_flow_imp.id(445013214229880625)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444976976982880578)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445014621095880626)
,p_name=>'refresh_items_below_org_1_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445015168351880626)
,p_event_id=>wwv_flow_imp.id(445014621095880626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_COURSE_SCHEDULE_1_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445015415272880626)
,p_name=>'refresh_enroll_employees_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1_1,P230_COURSE_SCHEDULE_1_1,P230_START_DATE_1,P230_END_DATE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445015929317880627)
,p_event_id=>wwv_flow_imp.id(445015415272880626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7888564251079579856)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445016328183880627)
,p_name=>'show_hide_generate_button'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1_1,P230_END_DATE_1,P230_START_DATE_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P230_COURSE_1_1").getValue() != ''''',
'&& apex.item("P230_START_DATE_1").getValue() != ''''',
'&& apex.item("P230_END_DATE_1").getValue() != '''''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445016840164880627)
,p_event_id=>wwv_flow_imp.id(445016328183880627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444988304172880593)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445017293322880627)
,p_event_id=>wwv_flow_imp.id(445016328183880627)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444988304172880593)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445017777120880627)
,p_name=>'set_time_1_1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_SCHEDULE_1_1'
,p_condition_element=>'P230_COURSE_SCHEDULE_1_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445018228488880628)
,p_event_id=>wwv_flow_imp.id(445017777120880627)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_START_DATE_1,P230_END_DATE_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''01-JAN-''|| TO_CHAR(current_date, ''YYYY''), ''31-DEC-''|| TO_CHAR(current_date, ''YYYY'')',
'from',
'    dual'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445018715163880628)
,p_event_id=>wwv_flow_imp.id(445017777120880627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_START_DATE_1,P230_END_DATE_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(start_date, ''DD-MON-YYYY''), to_char(end_date, ''DD-MON-YYYY'')',
'from',
'    hr_trn_course_schedule',
'where ',
'    id = :P230_COURSE_SCHEDULE_1_1'))
,p_attribute_07=>'P230_COURSE_SCHEDULE_1_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445019192746880628)
,p_name=>'show_hide_update_status'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_STATUS_1'
,p_condition_element=>'P230_STATUS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445019689618880628)
,p_event_id=>wwv_flow_imp.id(445019192746880628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444990754123880595)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445020141116880629)
,p_event_id=>wwv_flow_imp.id(445019192746880628)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(444990754123880595)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445020566834880629)
,p_name=>'update_status'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(444990754123880595)
,p_condition_element=>'P230_STATUS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445021045297880629)
,p_event_id=>wwv_flow_imp.id(445020566834880629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update ',
'    hr_trn_enrollment',
'set ',
'    grade_status_attained = :P230_STATUS_1',
'where ',
'    id in (',
'        select ',
'            hte.id ',
'        from ',
'            HR_TRN_ENROLLMENT hte',
'            left join hr_trn_course_schedule htcs on hte.course_schedule_id = htcs.id ',
'        where ',
'            hte.COURSE_ID = NVL(:P230_COURSE_1_1, hte.COURSE_ID)',
'            AND nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P230_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P230_END_DATE_1, ''DD-MON-YYYY'')',
'            AND (NVL(hte.COURSE_SCHEDULE_ID, 1) = NVL(NVL(:P230_COURSE_SCHEDULE_1_1, hte.COURSE_SCHEDULE_ID), 1) OR nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P230_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P230_END'
||'_DATE_1, ''DD-MON-YYYY''))',
'            -- AND hte.ORG_ID = NVL(:P230_ORGANISATION_1_1, hte.ORG_ID)',
'            AND hte.id in  ( ',
'                SELECT ',
'                    a_field ',
'                FROM ',
'                    XMLTABLE ( ''/root/e/text()'' PASSING xmltype(''<root><e>'' || replace(  substr(:P230_MASTER_ENROLLMENT_IDS, 2, length(:P230_MASTER_ENROLLMENT_IDS) - 2)',
'                                                                                        , '':'', ''</e><e>'') || ''</e></root>'') ',
'                                                                            COLUMNS a_field VARCHAR2(1000) PATH ''/'' ) ',
'                )',
'            -- AND hte.ORGDTL_ID = NVL(:P230_DEPARTMENT, hte.ORGDTL_ID)',
'            -- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P230_JOB, JOB_ID) AND POS.ID = hte.position_id) ',
'            -- AND hte.EMP_GRADE_ID = NVL(:P230_EMP_GRADE, hte.EMP_GRADE_ID)',
'            -- AND hte.EMP_ID = NVL(:P230_EMPLOYEE, hte.EMP_ID)',
'    )',
'    and grade_attained is not null;',
'end;'))
,p_attribute_02=>'P230_COURSE_1_1,P230_COURSE_SCHEDULE_1_1,P230_START_DATE_1,P230_END_DATE_1,P230_STATUS_1,P230_MASTER_ENROLLMENT_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445021515208880630)
,p_event_id=>wwv_flow_imp.id(445020566834880629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7888564251079579856)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445021895732880630)
,p_name=>'dy_get_enrollment_ids'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7888564251079579856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445022479867880630)
,p_event_id=>wwv_flow_imp.id(445021895732880630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,  linkID ="", EnrollmentIds = ":", Id = "", ',
'    model = this.data.model;  ',
'  ',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {  ',
'',
'     Id   = model.getValue( this.data.selectedRecords[i], "ID");',
'     EnrollmentIds += model.getValue( this.data.selectedRecords[i], "ID") + ":";  ',
'',
'console.log(Id);',
'console.log(EnrollmentIds);',
'',
'}  ',
'  ',
'$s("P230_MASTER_ENROLLMENT_IDS", EnrollmentIds); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(445810915308501376)
,p_name=>'dy_set_evaluated'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445811049493501377)
,p_event_id=>wwv_flow_imp.id(445810915308501376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_EVALUATED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select evaluated from hr_trn_course where id = :P230_COURSE_1'
,p_attribute_07=>'P230_COURSE_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(445811298450501380)
,p_event_id=>wwv_flow_imp.id(445810915308501376)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_PERCENTAGE_ATTAIN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(444987263161880592)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8879574360480011075)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'frmCourseGrades - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23195269963884018
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(445007458967880621)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_completion_grades'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        pkg_training.prcd_generate_course_completion(',
'            in_course_id => :P230_COURSE_1, ',
'            in_course_schedule_id => :P230_COURSE_SCHEDULE_1, ',
'            in_structure_id => :P230_COURSE_STRUCTURE_1, ',
'            in_percentage => :P230_PERCENTAGE_ATTAIN',
'        );    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'An error occurred when generating the grades. Please check the error log for further details.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(444976976982880578)
,p_process_success_message=>'System successfully generated grade for all the attendee of the specific classes.'
,p_internal_uid=>23215465769884047
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(445007795820880621)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reprocess_grades'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_training.prcd_reprocess_overall_grade',
'        (',
'            in_course_id => :P230_COURSE_1_1, ',
'            in_course_schedule_id => :P230_COURSE_SCHEDULE_1_1, ',
'            in_start_date => to_date(:P230_START_DATE_1, ''DD-MON-YYYY''), ',
'            in_end_date => to_date(:P230_END_DATE_1, ''DD-MON-YYYY'')',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(444988304172880593)
,p_process_when=>'P230_COURSE_1_1'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>23215802622884047
);
wwv_flow_imp.component_end;
end;
/
