prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>230
,p_name=>'frmCourseCompletion'
,p_alias=>'FRMCOURSECOMPLETION'
,p_step_title=>'View/Update Course Structure Grades'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3027602741020425839)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Need to include ',
'Course ',
'Schedule',
'Module/Structure',
'And this will show all employees that are enrolled '))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142631997511158852)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6806692485805865462)
,p_plug_name=>'Tabs Container'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6806692550649865463)
,p_plug_name=>'View Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(6806692485805865462)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6806692659830865464)
,p_plug_name=>'Course Structure Filter for Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(6806692550649865463)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6826084671214123118)
,p_plug_name=>'View Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(6806692550649865463)
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
 p_id=>wwv_flow_imp.id(6826084756445123119)
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
 p_id=>wwv_flow_imp.id(1152096732458130150)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152095945643130149)
,p_db_column_name=>'COURSE_STRUCTURE_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Course Structure/Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(139015006489197766)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152096268049130149)
,p_db_column_name=>'ENROLLMENT_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Enrollment No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(139017748364197775)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152097109681130150)
,p_db_column_name=>'GRADE_ATTAINED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Grade Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152097463221130150)
,p_db_column_name=>'PERCENTAGE_ATTAINED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Percentage Attained'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152097922325130151)
,p_db_column_name=>'QUALIFICATION_LEVEL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Qualification Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152098303080130151)
,p_db_column_name=>'REMARKS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152098718642130152)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(139016000553197773)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152099089213130152)
,p_db_column_name=>'COURSE_STRUCTURE_NAME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Course Structure Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152099468203130152)
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
 p_id=>wwv_flow_imp.id(1152099908336130153)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152100268343130153)
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
 p_id=>wwv_flow_imp.id(1152100748043130154)
,p_db_column_name=>'CLASS_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(139022424820197779)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152101097958130154)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152101483075130154)
,p_db_column_name=>'COURSE_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Course'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152101849811130155)
,p_db_column_name=>'COURSE_SCHEDULE_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Schedule'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6826128425205554779)
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
 p_id=>wwv_flow_imp.id(6826086710393123138)
,p_plug_name=>'Update Course Structure Grades'
,p_parent_plug_id=>wwv_flow_imp.id(6806692485805865462)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6826086859200123140)
,p_plug_name=>'Course Structure Filter for Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(6826086710393123138)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8573566501138328206)
,p_plug_name=>'Enrollment Grades'
,p_parent_plug_id=>wwv_flow_imp.id(6826086710393123138)
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
 p_id=>wwv_flow_imp.id(6829548229182816017)
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
 p_id=>wwv_flow_imp.id(6829548298186816018)
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
 p_id=>wwv_flow_imp.id(8570138887086268253)
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
,p_lov_id=>wwv_flow_imp.id(3199265340843012105)
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
 p_id=>wwv_flow_imp.id(8570138999926268254)
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
 p_id=>wwv_flow_imp.id(8570139152569268255)
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
 p_id=>wwv_flow_imp.id(8570139186146268256)
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
 p_id=>wwv_flow_imp.id(8570139333409268257)
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
 p_id=>wwv_flow_imp.id(8570139468452268258)
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
,p_lov_id=>wwv_flow_imp.id(139022424820197779)
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
 p_id=>wwv_flow_imp.id(8573567879068328208)
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
 p_id=>wwv_flow_imp.id(8573568326798328209)
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
 p_id=>wwv_flow_imp.id(8573569351105328214)
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
,p_lov_id=>wwv_flow_imp.id(139015006489197766)
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
 p_id=>wwv_flow_imp.id(8573570299834328216)
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
,p_lov_id=>wwv_flow_imp.id(139017748364197775)
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
 p_id=>wwv_flow_imp.id(8573571293867328217)
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
 p_id=>wwv_flow_imp.id(8573572330632328218)
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
 p_id=>wwv_flow_imp.id(8573574361681328219)
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
 p_id=>wwv_flow_imp.id(8573576355587328221)
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
 p_id=>wwv_flow_imp.id(8573577357101328222)
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
,p_lov_id=>wwv_flow_imp.id(139016000553197773)
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
 p_id=>wwv_flow_imp.id(8573578328395328223)
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
 p_id=>wwv_flow_imp.id(8573567050403328207)
,p_internal_uid=>8457782916547014502
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_update_authorization_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_delete_authorization_scheme=>wwv_flow_imp.id(3279327525051677335)
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
 p_id=>wwv_flow_imp.id(8573567427695328207)
,p_interactive_grid_id=>wwv_flow_imp.id(8573567050403328207)
,p_static_id=>'5397582'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8573567644331328207)
,p_report_id=>wwv_flow_imp.id(8573567427695328207)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6829558107146847175)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(6829548229182816017)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6829559027452847182)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(6829548298186816018)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033812989208121430)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8570138887086268253)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033818503094129773)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(8570138999926268254)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033820326059129778)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8570139152569268255)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033822238758129784)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8570139186146268256)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033824163721129788)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8570139333409268257)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8033833887206201891)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8570139468452268258)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>278
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573568692481328210)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8573568326798328209)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573569753800328215)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8573569351105328214)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>122
,p_break_order=>3
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573570751087328216)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8573570299834328216)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573571698294328217)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8573571293867328217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573572687526328218)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8573572330632328218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573574751050328220)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8573574361681328219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573576774782328221)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8573576355587328221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573577728630328222)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8573577357101328222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8573578748580328223)
,p_view_id=>wwv_flow_imp.id(8573567644331328207)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(8573578328395328223)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6901438184912720708)
,p_plug_name=>'Update Course Completion'
,p_parent_plug_id=>wwv_flow_imp.id(6806692485805865462)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6901438277746720709)
,p_plug_name=>'Course Completion Filter For Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(6901438184912720708)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6901438388445720710)
,p_plug_name=>'Course Completion Updating'
,p_parent_plug_id=>wwv_flow_imp.id(6901438277746720709)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6915249834538126412)
,p_plug_name=>'Status Region'
,p_parent_plug_id=>wwv_flow_imp.id(6901438277746720709)
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
 p_id=>wwv_flow_imp.id(7582556391737896987)
,p_plug_name=>'Training Enrolment Listing'
,p_parent_plug_id=>wwv_flow_imp.id(6901438184912720708)
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
 p_id=>wwv_flow_imp.id(6784806880612419728)
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
,p_lov_id=>wwv_flow_imp.id(139020632144197777)
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
 p_id=>wwv_flow_imp.id(6784806966779419729)
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
,p_lov_id=>wwv_flow_imp.id(139021322402197778)
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
 p_id=>wwv_flow_imp.id(6784807058342419730)
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
 p_id=>wwv_flow_imp.id(6784807392415419733)
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
 p_id=>wwv_flow_imp.id(6784807455146419734)
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
 p_id=>wwv_flow_imp.id(6784807605572419735)
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
 p_id=>wwv_flow_imp.id(6784807693234419736)
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
 p_id=>wwv_flow_imp.id(6784807779846419737)
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
 p_id=>wwv_flow_imp.id(6784807841351419738)
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
 p_id=>wwv_flow_imp.id(6784808012928419739)
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
,p_lov_id=>wwv_flow_imp.id(139016000553197773)
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
 p_id=>wwv_flow_imp.id(6784808076674419740)
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
 p_id=>wwv_flow_imp.id(6784808171881419741)
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
 p_id=>wwv_flow_imp.id(6784808315611419742)
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
 p_id=>wwv_flow_imp.id(6784808321725419743)
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
 p_id=>wwv_flow_imp.id(6784808459909419744)
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
,p_lov_id=>wwv_flow_imp.id(139818846271150011)
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
 p_id=>wwv_flow_imp.id(6784808537618419745)
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
 p_id=>wwv_flow_imp.id(6784808696926419746)
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
 p_id=>wwv_flow_imp.id(6784808817163419747)
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
 p_id=>wwv_flow_imp.id(6784808890908419748)
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
 p_id=>wwv_flow_imp.id(6784808954344419749)
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
 p_id=>wwv_flow_imp.id(6784809025049419750)
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
 p_id=>wwv_flow_imp.id(6784809131186419751)
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
,p_lov_id=>wwv_flow_imp.id(3202169449667688035)
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
 p_id=>wwv_flow_imp.id(6784809316140419752)
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
,p_lov_id=>wwv_flow_imp.id(3326550784367798359)
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
 p_id=>wwv_flow_imp.id(6785537916338894028)
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
,p_lov_id=>wwv_flow_imp.id(139018739769197775)
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
 p_id=>wwv_flow_imp.id(6803717787942161233)
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
 p_id=>wwv_flow_imp.id(6803717913733161234)
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
 p_id=>wwv_flow_imp.id(6803717959064161235)
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
 p_id=>wwv_flow_imp.id(6803718057730161236)
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
 p_id=>wwv_flow_imp.id(7582556635788896989)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7582556675435896990)
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
 p_id=>wwv_flow_imp.id(7582556935801896992)
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
 p_id=>wwv_flow_imp.id(7582556956950896993)
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
 p_id=>wwv_flow_imp.id(7582557388365896997)
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
 p_id=>wwv_flow_imp.id(7582557580818896999)
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
,p_lov_id=>wwv_flow_imp.id(139019842482197777)
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
 p_id=>wwv_flow_imp.id(7582558102317897004)
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
 p_id=>wwv_flow_imp.id(7582558164349897005)
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
 p_id=>wwv_flow_imp.id(7582556506282896988)
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
 p_id=>wwv_flow_imp.id(7582587219394173608)
,p_interactive_grid_id=>wwv_flow_imp.id(7582556506282896988)
,p_static_id=>'7976768'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7582587426306173608)
,p_report_id=>wwv_flow_imp.id(7582587219394173608)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785119586012727013)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6784806880612419728)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>319
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785120453456727018)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(6784806966779419729)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785121386933727023)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6784807058342419730)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>233
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785124092932727036)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(6784807392415419733)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785125002560727039)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(6784807455146419734)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785125876305727044)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(6784807605572419735)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>187
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785126754854727047)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(6784807693234419736)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785127720385727051)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(6784807779846419737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785128542810727055)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(6784807841351419738)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785129478534727060)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6784808012928419739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>233
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785130357253727066)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(6784808076674419740)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785131252572727071)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(6784808171881419741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785132190763727074)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(6784808315611419742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785133092007727078)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(6784808321725419743)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785134021124727082)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(6784808459909419744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785134841205727085)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(6784808537618419745)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785135645707727089)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(6784808696926419746)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785136577816727093)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(6784808817163419747)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785137502523727097)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(6784808890908419748)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785138326535727101)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6784808954344419749)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785139284838727104)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(6784809025049419750)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785140219572727108)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(6784809131186419751)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6785141114967727112)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(6784809316140419752)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6787091706551679223)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(6785537916338894028)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6803979801276912424)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6803717787942161233)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6803980642477912429)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6803717913733161234)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6804065543908981190)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6803717959064161235)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6804066450360981194)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(6803718057730161236)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582587895881173610)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7582556635788896989)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582589223621173618)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7582556935801896992)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582590087975173622)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7582556956950896993)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>233
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582593712360173639)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7582557388365896997)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582595540792173648)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7582557580818896999)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582599945670173669)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(7582558102317897004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7582600768926173673)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(7582558164349897005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(5985914090119765504)
,p_view_id=>wwv_flow_imp.id(7582587426306173608)
,p_execution_seq=>5
,p_name=>'No Schedule'
,p_background_color=>'#FCEC77'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(7582556956950896993)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138982894782197726)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(6915249834538126412)
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
 p_id=>wwv_flow_imp.id(138969117641197709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6826086859200123140)
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
 p_id=>wwv_flow_imp.id(138980444831197724)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6901438277746720709)
,p_button_name=>'REPROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reprocess'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152095773465130164)
,p_name=>'P230_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6806692659830865464)
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
 p_id=>wwv_flow_imp.id(1152096217146130166)
,p_name=>'P230_COURSE_SCHEDULE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6806692659830865464)
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
 p_id=>wwv_flow_imp.id(1152096535729130167)
,p_name=>'P230_COURSE_STRUCTURE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6806692659830865464)
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
 p_id=>wwv_flow_imp.id(1152112719406130192)
,p_name=>'P230_COURSE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6826086859200123140)
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
 p_id=>wwv_flow_imp.id(1152113091767130193)
,p_name=>'P230_COURSE_SCHEDULE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6826086859200123140)
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
 p_id=>wwv_flow_imp.id(1152113562358130193)
,p_name=>'P230_COURSE_STRUCTURE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6826086859200123140)
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
 p_id=>wwv_flow_imp.id(1152113931514130194)
,p_name=>'P230_PERCENTAGE_ATTAIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6826086859200123140)
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
 p_id=>wwv_flow_imp.id(1152114286766130194)
,p_name=>'P230_EVALUATED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6826086859200123140)
,p_use_cache_before_default=>'NO'
,p_source=>'select evaluated from hr_trn_course where id = :P230_COURSE_1'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152136384154130229)
,p_name=>'P230_COURSE_1_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6901438388445720710)
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
 p_id=>wwv_flow_imp.id(1152136793319130230)
,p_name=>'P230_COURSE_SCHEDULE_1_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6901438388445720710)
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
 p_id=>wwv_flow_imp.id(1152137200374130230)
,p_name=>'P230_START_DATE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6901438388445720710)
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
 p_id=>wwv_flow_imp.id(1152137617483130231)
,p_name=>'P230_END_DATE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6901438388445720710)
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
 p_id=>wwv_flow_imp.id(1152140723951130234)
,p_name=>'P230_STATUS_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6915249834538126412)
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
 p_id=>wwv_flow_imp.id(1152172261541130287)
,p_name=>'P230_MASTER_ENROLLMENT_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7582556391737896987)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139000349563197753)
,p_name=>'set_employee'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(8573566501138328206)
,p_triggering_element=>'ENROLLMENT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ENROLLMENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139000863793197754)
,p_event_id=>wwv_flow_imp.id(139000349563197753)
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
 p_id=>wwv_flow_imp.id(139001306260197754)
,p_name=>'dy_refresh_course_completion_ir'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE,P230_COURSE_SCHEDULE,P230_COURSE_STRUCTURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139001775077197754)
,p_event_id=>wwv_flow_imp.id(139001306260197754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6826084671214123118)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139002228851197755)
,p_name=>'dy_refresh_course_completion_ir_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1,P230_COURSE_SCHEDULE_1,P230_COURSE_STRUCTURE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139002727237197755)
,p_event_id=>wwv_flow_imp.id(139002228851197755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8573566501138328206)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139003090534197755)
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
 p_id=>wwv_flow_imp.id(139003594543197755)
,p_event_id=>wwv_flow_imp.id(139003090534197755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_ENROLLMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139004083147197756)
,p_event_id=>wwv_flow_imp.id(139003090534197755)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_ENROLLMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139004480994197756)
,p_name=>'dy_set_grade_IG'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(8573566501138328206)
,p_triggering_element=>'PERCENTAGE_ATTAINED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139004970588197756)
,p_event_id=>wwv_flow_imp.id(139004480994197756)
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
 p_id=>wwv_flow_imp.id(139005354888197756)
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
 p_id=>wwv_flow_imp.id(139005903798197756)
,p_event_id=>wwv_flow_imp.id(139005354888197756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138969117641197709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139006372968197757)
,p_event_id=>wwv_flow_imp.id(139005354888197756)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138969117641197709)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139006761754197757)
,p_name=>'refresh_items_below_org_1_1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139007309010197757)
,p_event_id=>wwv_flow_imp.id(139006761754197757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_COURSE_SCHEDULE_1_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139007555931197757)
,p_name=>'refresh_enroll_employees_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1_1,P230_COURSE_SCHEDULE_1_1,P230_START_DATE_1,P230_END_DATE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139008069976197758)
,p_event_id=>wwv_flow_imp.id(139007555931197757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7582556391737896987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139008468842197758)
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
 p_id=>wwv_flow_imp.id(139008980823197758)
,p_event_id=>wwv_flow_imp.id(139008468842197758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138980444831197724)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139009433981197758)
,p_event_id=>wwv_flow_imp.id(139008468842197758)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138980444831197724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139009917779197758)
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
 p_id=>wwv_flow_imp.id(139010369147197759)
,p_event_id=>wwv_flow_imp.id(139009917779197758)
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
 p_id=>wwv_flow_imp.id(139010855822197759)
,p_event_id=>wwv_flow_imp.id(139009917779197758)
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
 p_id=>wwv_flow_imp.id(139011333405197759)
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
 p_id=>wwv_flow_imp.id(139011830277197759)
,p_event_id=>wwv_flow_imp.id(139011333405197759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138982894782197726)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139012281775197760)
,p_event_id=>wwv_flow_imp.id(139011333405197759)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(138982894782197726)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139012707493197760)
,p_name=>'update_status'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(138982894782197726)
,p_condition_element=>'P230_STATUS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139013185956197760)
,p_event_id=>wwv_flow_imp.id(139012707493197760)
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
 p_id=>wwv_flow_imp.id(139013655867197761)
,p_event_id=>wwv_flow_imp.id(139012707493197760)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7582556391737896987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139014036391197761)
,p_name=>'dy_get_enrollment_ids'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7582556391737896987)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139014620526197761)
,p_event_id=>wwv_flow_imp.id(139014036391197761)
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
 p_id=>wwv_flow_imp.id(139803055966818507)
,p_name=>'dy_set_evaluated'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P230_COURSE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139803190151818508)
,p_event_id=>wwv_flow_imp.id(139803055966818507)
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
 p_id=>wwv_flow_imp.id(139803439108818511)
,p_event_id=>wwv_flow_imp.id(139803055966818507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P230_PERCENTAGE_ATTAIN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138979403820197723)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8573566501138328206)
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
 p_id=>wwv_flow_imp.id(138999599626197752)
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
,p_process_when_button_id=>wwv_flow_imp.id(138969117641197709)
,p_process_success_message=>'System successfully generated grade for all the attendee of the specific classes.'
,p_internal_uid=>23215465769884047
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138999936479197752)
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
,p_process_when_button_id=>wwv_flow_imp.id(138980444831197724)
,p_process_when=>'P230_COURSE_1_1'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>23215802622884047
);
wwv_flow_imp.component_end;
end;
/
