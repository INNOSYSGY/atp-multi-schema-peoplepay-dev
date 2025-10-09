prompt --application/pages/page_00321
begin
--   Manifest
--     PAGE: 00321
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
 p_id=>321
,p_name=>'rptclassattendance'
,p_alias=>'RPTCLASSATTENDANCE'
,p_step_title=>'View/Update Training Class Attendance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3555294529043866639)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function updateCheckbox(e) {',
'',
'    e.stopPropagation();',
'',
'    var region = apex.region(''ig_acc_col'');      // Static ID of the Interactive Grid',
'    var grid = region.call("getViews").grid;',
'    var model = grid.model;',
'    var totalRec = model.getTotalRecords();',
'    var  selectedRec = 0;',
'    var col_selected = model.getFieldKey("ATTENDANCE_STATUS");      // Column Name',
'    ',
'    model.forEach(function (record, index, id) {',
'       var n_sal = (record[col_selected]);',
'         if (!isNaN(n_sal) && n_sal == 1) {',
'            selectedRec += 1;',
'        }',
'        ',
'    }); ',
'',
'if (selectedRec === totalRec){',
' model.forEach(function (record, index, id) {',
'            model.setValue(record, "ATTENDANCE_STATUS", "ABSENT" );',
'        });',
'    ',
'}else{',
'     model.forEach(function (record, index, id) {',
'            model.setValue(record, "ATTENDANCE_STATUS", "ATTENDED" );',
'        });',
'    ',
'}',
'};',
'',
'',
'function updateCheckboxUncheck(e) {',
'',
'    e.stopPropagation();',
'',
'    var region = apex.region(''ig_acc_col'');      // Static ID of the Interactive Grid',
'    var grid = region.call("getViews").grid;',
'    var model = grid.model;',
'    var totalRec = model.getTotalRecords();',
'    var  selectedRec = 0;',
'    var col_selected = model.getFieldKey("ATTENDANCE_STATUS");      // Column Name',
'    ',
'    model.forEach(function (record, index, id) {',
'       var n_sal = (record[col_selected]);',
'         if (!isNaN(n_sal) && n_sal == 1) {',
'            selectedRec += 1;',
'        }',
'        ',
'    }); ',
'',
'if (selectedRec === totalRec){',
' model.forEach(function (record, index, id) {',
'            model.setValue(record, "ATTENDANCE_STATUS", "ATTENDED" );',
'        });',
'    ',
'}else{',
'     model.forEach(function (record, index, id) {',
'            model.setValue(record, "ATTENDANCE_STATUS", "ABSENT" );',
'        });',
'    ',
'}',
'};',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}',
'',
'.ax{',
'    padding-left:10px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670323630649599651)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6318283455987890206)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6318283546366890207)
,p_plug_name=>'View Class Attendance'
,p_parent_plug_id=>wwv_flow_imp.id(6318283455987890206)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2663623830162561360)
,p_plug_name=>'Class Attendance'
,p_parent_plug_id=>wwv_flow_imp.id(6318283546366890207)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P321_MASTER_EMP_ID = '':'' then return ',
'''select',
'    b.enrollment_id, b.emp_id, b.class_id, case when b.present > 0 then ''''Present'''' else ''''Absent'''' end attendance',
'from(select ',
'    a.enrollment_id, a.emp_id, a.class_id, nvl(sum(a.present), 0) present, nvl(sum(a.absent), 0) absent',
'from(select ',
'    te.id enrollment_id, te.emp_id, tcc.id class_id, null present, null absent',
'from    ',
'    hr_trn_enrollment te ',
'    join hr_trn_course_class tcc on te.course_schedule_id = tcc.course_schedule_id',
'where   ',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and tcc.id = nvl(:P321_COURSE_CLASS, tcc.id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'group by ',
'    te.id, te.emp_id, tcc.id',
'union',
'select ',
'    te.id enrollment_id, te.emp_id, tcc.id class_id, null present, count(1) absent',
'from    ',
'    hr_trn_enrollment te ',
'    join hr_trn_course_class tcc on te.course_schedule_id = tcc.course_schedule_id',
'where   ',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and tcc.id = nvl(:P321_COURSE_CLASS, tcc.id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'    and not exists(',
'        select ',
'            1',
'        from    ',
'            hr_trn_class_attend att ',
'        where ',
'            att.class_id = tcc.id ',
'            and att.enrollment_id = te.id ',
'            and att.emp_id = te.emp_id',
'    )',
'    group by ',
'        te.id, te.emp_id, tcc.id',
'union',
'select ',
'    att.enrollment_id, att.emp_id, att.class_id, count(1) present , null absent',
'from    ',
'    hr_trn_class_attend att ',
'    join hr_trn_enrollment te on att.enrollment_id = te.id',
'where',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and upper(att.attendance_status) like upper(''''ATTENDED'''')',
'    and class_id = nvl(:P321_COURSE_CLASS, class_id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'group by',
'    att.enrollment_id, att.emp_id, att.class_id) a',
'group by a.enrollment_id, a.emp_id, a.class_id) b'';',
'else return ',
'''select',
'    b.enrollment_id, b.emp_id, b.class_id, case when b.present > 0 then ''''Present'''' else ''''Absent'''' end attendance',
'from(select ',
'    a.enrollment_id, a.emp_id, a.class_id, nvl(sum(a.present), 0) present, nvl(sum(a.absent), 0) absent',
'from(select ',
'    te.id enrollment_id, te.emp_id, tcc.id class_id, null present, null absent',
'from    ',
'    hr_trn_enrollment te ',
'    join hr_trn_course_class tcc on te.course_schedule_id = tcc.course_schedule_id',
'where   ',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and tcc.id = nvl(:P321_COURSE_CLASS, tcc.id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'group by ',
'    te.id, te.emp_id, tcc.id',
'union',
'select ',
'    te.id enrollment_id, te.emp_id, tcc.id class_id, null present, count(1) absent',
'from    ',
'    hr_trn_enrollment te ',
'    join hr_trn_course_class tcc on te.course_schedule_id = tcc.course_schedule_id',
'where   ',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and tcc.id = nvl(:P321_COURSE_CLASS, tcc.id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'    and not exists(',
'        select ',
'            1',
'        from    ',
'            hr_trn_class_attend att ',
'        where ',
'            att.class_id = tcc.id ',
'            and att.enrollment_id = te.id ',
'            and att.emp_id = te.emp_id',
'    )',
'    group by ',
'        te.id, te.emp_id, tcc.id',
'union',
'select ',
'    att.enrollment_id, att.emp_id, att.class_id, count(1) present , null absent',
'from    ',
'    hr_trn_class_attend att ',
'    join hr_trn_enrollment te on att.enrollment_id = te.id',
'where',
'    pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
'    and upper(att.attendance_status) like upper(''''ATTENDED'''')',
'    and class_id = nvl(:P321_COURSE_CLASS, class_id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and te.course_id = nvl(:P321_COURSE, te.course_id)',
'group by',
'    att.enrollment_id, att.emp_id, att.class_id) a',
'where a.emp_id in  ( ',
'        SELECT ',
'            a_field ',
'        FROM ',
'            XMLTABLE ( ''''/root/e/text()'''' PASSING xmltype(''''<root><e>'''' || replace(  substr(:P321_MASTER_EMP_ID, 2, length(:P321_MASTER_EMP_ID) - 2)',
'                                                                                , '''':'''', ''''</e><e>'''') || ''''</e></root>'''') ',
'                                                                    COLUMNS a_field VARCHAR2(1000) PATH ''''/'''' ) ',
'        )',
'group by a.enrollment_id, a.emp_id, a.class_id) b '';',
'end if;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P321_COURSE,P321_COURSE_SCHEDULE,P321_COURSE_CLASS,P321_MASTER_EMP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Class Attendance'
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
 p_id=>wwv_flow_imp.id(2663623911240561361)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'20'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ICARTER'
,p_internal_uid=>2020147989360806856
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680762560957092851)
,p_db_column_name=>'ENROLLMENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Enrollment Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680762989667092852)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(666707788576638573)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680763398135092853)
,p_db_column_name=>'CLASS_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(666714212843638579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1680763784037092854)
,p_db_column_name=>'ATTENDANCE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Attendance'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2663695530901691770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'9905964'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EMP_ID:CLASS_ID::ATTENDANCE'
,p_break_on=>'CLASS_ID'
,p_break_enabled_on=>'CLASS_ID'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2669139974167204556)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Attendance Grouped By Class'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'9905968'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EMP_ID:CLASS_ID::ATTENDANCE'
,p_break_on=>'CLASS_ID'
,p_break_enabled_on=>'CLASS_ID'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(667155654826823385)
,p_report_id=>wwv_flow_imp.id(2669139974167204556)
,p_group_by_columns=>'CLASS_ID:ATTENDANCE'
,p_function_01=>'COUNT'
,p_function_column_01=>'EMP_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6318283760242890209)
,p_plug_name=>'Enrolled Employees'
,p_region_name=>'my-ig-region'
,p_parent_plug_id=>wwv_flow_imp.id(6318283546366890207)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    te.id enrollment_id, te.emp_id, te.emp_id EMPID, te.course_schedule_id, te.course_id',
'from',
'    hr_trn_enrollment te ',
'    join hr_rcm_employee emp on te.emp_id = emp.id',
'    join hr_rcm_individual ind on ind.id = emp.ind_id',
'where',
'    te.course_id = nvl(:P321_COURSE, te.course_id)',
'    and te.course_schedule_id = nvl(:P321_COURSE_SCHEDULE, te.course_schedule_id)',
'    and pkg_global_fnts.fn_sharereforg(te.org_id)=:APP_ORG_SHR_DED',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P321_COURSE,P321_COURSE_SCHEDULE'
,p_plug_read_only_when_type=>'ALWAYS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Enrolled Employees'
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
 p_id=>wwv_flow_imp.id(6318283946039890211)
,p_name=>'ENROLLMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENROLLMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Enrollment Id'
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
 p_id=>wwv_flow_imp.id(6318284099388890212)
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
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(666707788576638573)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6318285358219890225)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6318285454491890226)
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
 p_id=>wwv_flow_imp.id(6318285800565890229)
,p_name=>'COURSE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Schedule'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(667175470290823406)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6328549511504749784)
,p_name=>'EMPID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(6433880173123342889)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Course'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(667174789412823405)
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
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6318283850616890210)
,p_internal_uid=>5674807928737135705
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
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
 p_id=>wwv_flow_imp.id(6328531163205629445)
,p_interactive_grid_id=>wwv_flow_imp.id(6318283850616890210)
,p_static_id=>'8206305'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6328531359370629445)
,p_report_id=>wwv_flow_imp.id(6328531163205629445)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5507908564455215473)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6318285358219890225)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5507928252372406393)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6328549511504749784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6328531882512629447)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6318283946039890211)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6328532755032629451)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6318284099388890212)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>554
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6328663629387332174)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6318285800565890229)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6433956058684674544)
,p_view_id=>wwv_flow_imp.id(6328531359370629445)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6433880173123342889)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7904689480975132322)
,p_plug_name=>'Training Class Filter'
,p_parent_plug_id=>wwv_flow_imp.id(6318283546366890207)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7106938368420605529)
,p_plug_name=>'Update Class Attendance'
,p_parent_plug_id=>wwv_flow_imp.id(6318283455987890206)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6329626585146834180)
,p_plug_name=>'Training Class Filter'
,p_parent_plug_id=>wwv_flow_imp.id(7106938368420605529)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6329627188165834186)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(6329626585146834180)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(667163082490823394)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(6329626585146834180)
,p_button_name=>'ATTENDANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mark Attended'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-check-circle-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1680762505914092849)
,p_name=>'P321_EMP_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6318283546366890207)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1680762920708092850)
,p_name=>'P321_MASTER_EMP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6318283546366890207)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1680778654928092883)
,p_name=>'P321_COURSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7904689480975132322)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',id',
'from ',
'    HR_TRN_COURSE a',
'where ',
'    pkg_global_fnts.fn_sharereforg(org_id)=:APP_ORG_SHR_DED',
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1680779074214092883)
,p_name=>'P321_COURSE_SCHEDULE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7904689480975132322)
,p_prompt=>'Course Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    case when :P321_COURSE is null then b.course_name || '' :- '' else null end || to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a ',
'join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'where pkg_global_fnts.fn_sharereforg(a.org_id)=:APP_ORG_SHR_DED',
'and b.id = NVL(:P321_COURSE, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P321_COURSE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
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
 p_id=>wwv_flow_imp.id(1680779461083092884)
,p_name=>'P321_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7904689480975132322)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(1680779858875092884)
,p_name=>'P321_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7904689480975132322)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(1680780259495092885)
,p_name=>'P321_COURSE_CLASS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7904689480975132322)
,p_prompt=>'Course Class'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    CLASS_NAME',
'        ||'' from ''',
'        ||to_char(cc.CLASS_START_TIME,''DD-MON-YYYY HH:MI PM'') ',
'        ||'' to ''',
'        ||to_char(cc.CLASS_END_TIME,''DD-MON-YYYY HH:MI PM'') display, ',
'    cc.id return_value ',
'from HR_TRN_COURSE_CLASS cc ',
'join HR_TRN_COURSE_STRUCTURE cs on cs.id = cc.COURSE_STRUCTURE_ID',
'where cc.course_schedule_id = NVL(:P321_COURSE_SCHEDULE, cc.course_schedule_id)',
'and pkg_global_fnts.fn_sharereforg(cc.org_id)=:APP_ORG_SHR_DED',
'and exists(',
'    select 1 ',
'    from hr_trn_course_schedule tcs ',
'    where tcs.id = cc.course_schedule_id',
'    and tcs.course_id = nvl(:P321_COURSE, tcs.course_id))',
'order by cc.CLASS_START_TIME  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P321_COURSE_SCHEDULE'
,p_ajax_items_to_submit=>'P321_COURSE_SCHEDULE,P321_COURSE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
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
 p_id=>wwv_flow_imp.id(1680784346297092890)
,p_name=>'P321_COURSE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6329626585146834180)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',id',
'from ',
'    HR_TRN_COURSE a',
'where ',
'    pkg_global_fnts.fn_sharereforg(org_id)=:APP_ORG_SHR_DED',
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Course--'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1680784757365092890)
,p_name=>'P321_COURSE_SCHEDULE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6329626585146834180)
,p_prompt=>'Course Schedule'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    to_char(a.START_DATE,''DD-MON-YYYY'') ',
'        ||'' to ''',
'        ||to_char(a.END_DATE,''DD-MON-YYYY'') display, ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a ',
'join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'where pkg_global_fnts.fn_sharereforg(b.org_id)=:APP_ORG_SHR_DED',
'and b.id = :P321_COURSE_1',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Schedule--'
,p_lov_cascade_parent_items=>'P321_COURSE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1680785150738092890)
,p_name=>'P321_COURSE_CLASS_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6329626585146834180)
,p_prompt=>'Course Class'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    to_char(cc.CLASS_START_TIME,''DD-MON-YYYY HH:MI PM'') ',
'        ||'' to ''',
'        ||to_char(cc.CLASS_END_TIME,''DD-MON-YYYY HH:MI PM'') ',
'        ||'' :- ''',
'        || CLASS_NAME',
'         display, ',
'    cc.id return_value ',
'from HR_TRN_COURSE_CLASS cc ',
'join HR_TRN_COURSE_STRUCTURE cs on cs.id = cc.COURSE_STRUCTURE_ID',
'where cc.course_schedule_id = :P321_COURSE_SCHEDULE_1',
'and exists(',
'    select 1 ',
'    from hr_trn_course_schedule tcs ',
'    where tcs.id = cc.course_schedule_id',
'    and tcs.course_id = :P321_COURSE_1)',
'and pkg_global_fnts.fn_sharereforg(cc.org_id)=:APP_ORG_SHR_DED',
'order by cc.CLASS_START_TIME  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Class--'
,p_lov_cascade_parent_items=>'P321_COURSE_SCHEDULE_1'
,p_ajax_items_to_submit=>'P321_COURSE_SCHEDULE_1,P321_COURSE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="width:50%;"'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(1680787197176092893)
,p_name=>'P321_ENROLL_EMPLOYEES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6329627188165834186)
,p_pre_element_text=>'<b>Absent</b>'
,p_post_element_text=>'<b>Present</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    B.SURNAME || '', '' || B.FIRST_NAME, E.ID',
'FROM',
'    HR_TRN_ENROLLMENT E ',
'    JOIN HR_RCM_EMPLOYEE A ON E.EMP_ID = A.ID',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'WHERE',
'    E.COURSE_ID = :P321_COURSE_1',
'    AND E.COURSE_SCHEDULE_ID = :P321_COURSE_SCHEDULE_1',
'    -- AND NOT EXISTS(',
'    --     SELECT ',
'    --         1',
'    --     FROM',
'    --         HR_TRN_CLASS_ATTEND D ',
'    --     WHERE',
'    --         D.EMP_ID = A.ID ',
'    --         AND D.CLASS_ID = :P321_COURSE_CLASS_1)',
'    and pkg_global_fnts.fn_sharereforg(e.org_id)=:APP_ORG_SHR_DED',
'    and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'        where  nvl(t.id,1)= nvl(a.orgdtl_id,1)',
'        and nvl(a.orgdtl_id,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(a.orgdtl_id,1), k.org_structure_id)         ',
'        )',
' ',
''))
,p_lov_cascade_parent_items=>'P321_COURSE_1,P321_COURSE_SCHEDULE_1,P321_COURSE_CLASS_1'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1680787560201092894)
,p_name=>'P321_ALL_PRESENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6329627188165834186)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667166330817823399)
,p_name=>'REFRESH_PAGE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_COURSE_CLASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667166876384823399)
,p_event_id=>wwv_flow_imp.id(667166330817823399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P321_COURSE_CLASS'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667167290013823399)
,p_name=>'dy_set_present'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_COURSE_CLASS_1'
,p_condition_element=>'P321_COURSE_CLASS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667167759743823400)
,p_event_id=>wwv_flow_imp.id(667167290013823399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P321_ALL_PRESENT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    LISTAGG(E.ID, '':'') WITHIN GROUP (ORDER BY B.SURNAME, B.FIRST_NAME) A',
'FROM',
'    HR_TRN_ENROLLMENT E ',
'    JOIN HR_RCM_EMPLOYEE A ON E.EMP_ID = A.ID',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'WHERE',
'    E.COURSE_ID = NVL(:P321_COURSE_1, E.COURSE_ID)',
'    AND E.COURSE_SCHEDULE_ID = NVL(:P321_COURSE_SCHEDULE_1, E.COURSE_SCHEDULE_ID)',
'    AND pkg_global_fnts.fn_sharereforg(e.org_id)=:APP_ORG_SHR_DED',
'    AND EXISTS(',
'        SELECT ',
'            1',
'        FROM',
'            HR_TRN_CLASS_ATTEND D ',
'        WHERE',
'            D.EMP_ID = A.ID ',
'            AND E.ID = D.ENROLLMENT_ID',
'            AND D.CLASS_ID = :P321_COURSE_CLASS_1)',
'    and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'        where  nvl(t.id,1)= nvl(a.orgdtl_id,1)',
'        and nvl(a.orgdtl_id,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(a.orgdtl_id,1), k.org_structure_id)         ',
'        )',
' ',
''))
,p_attribute_07=>'P321_COURSE_1,P321_COURSE_SCHEDULE_1,P321_COURSE_CLASS_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667168309522823400)
,p_event_id=>wwv_flow_imp.id(667167290013823399)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P321_ENROLL_EMPLOYEES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    NVL(LISTAGG(E.ID, '':'') WITHIN GROUP (ORDER BY B.SURNAME, B.FIRST_NAME), :P321_ALL_PRESENT) A',
'FROM',
'    HR_TRN_ENROLLMENT E ',
'    JOIN HR_RCM_EMPLOYEE A ON E.EMP_ID = A.ID',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'WHERE',
'    E.COURSE_ID = NVL(:P321_COURSE_1, E.COURSE_ID)',
'    AND E.COURSE_SCHEDULE_ID = NVL(:P321_COURSE_SCHEDULE_1, E.COURSE_SCHEDULE_ID)',
'    AND pkg_global_fnts.fn_sharereforg(e.org_id)=:APP_ORG_SHR_DED',
'    AND EXISTS(',
'        SELECT ',
'            1',
'        FROM',
'            HR_TRN_CLASS_ATTEND D ',
'        WHERE',
'            D.EMP_ID = A.ID ',
'            AND E.ID = D.ENROLLMENT_ID',
'            AND D.CLASS_ID = :P321_COURSE_CLASS_1)',
'    and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'        where  nvl(t.id,1)= nvl(a.orgdtl_id,1)',
'        and nvl(a.orgdtl_id,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(a.orgdtl_id,1), k.org_structure_id)         ',
'        )',
' ',
''))
,p_attribute_07=>'P321_COURSE_1,P321_COURSE_SCHEDULE_1,P321_COURSE_CLASS_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667168721000823400)
,p_name=>'show_buttons_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_COURSE_CLASS_1'
,p_condition_element=>'P321_COURSE_CLASS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667169155075823400)
,p_event_id=>wwv_flow_imp.id(667168721000823400)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(667163082490823394)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667169641854823401)
,p_event_id=>wwv_flow_imp.id(667168721000823400)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(667163082490823394)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667170033592823401)
,p_name=>'refresh_enrollment'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_COURSE,P321_COURSE_SCHEDULE,P321_COURSE_CLASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667170546276823401)
,p_event_id=>wwv_flow_imp.id(667170033592823401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6318283760242890209)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667171054622823401)
,p_event_id=>wwv_flow_imp.id(667170033592823401)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2663623830162561360)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667171433454823401)
,p_name=>'dyGetEmpId'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6318283760242890209)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667171989612823402)
,p_event_id=>wwv_flow_imp.id(667171433454823401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P321_MASTER_EMP_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,  linkID ="", EmpIds = ":", EmpId = "", ',
'    model = this.data.model;  ',
'  ',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {  ',
'',
'     EmpId   = model.getValue( this.data.selectedRecords[i], "EMPID");',
'     EmpIds += model.getValue( this.data.selectedRecords[i], "EMPID") + ":";  ',
'',
'console.log(EmpId);',
'console.log(EmpIds);',
'',
'}  ',
'  ',
'$s("P321_MASTER_EMP_ID", EmpIds); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667172472799823402)
,p_event_id=>wwv_flow_imp.id(667171433454823401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P321_MASTER_EMP_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(667172909431823402)
,p_name=>'dyrefreshClassAtt'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_MASTER_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(667173369010823402)
,p_event_id=>wwv_flow_imp.id(667172909431823402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2663623830162561360)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(667165566718823398)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_class_attended'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    Cursor current_values is ',
'            Select',
'                t.column_value As enrollment_id',
'            From',
'                Table (apex_string.split(:P321_ENROLL_EMPLOYEES, '':'') ) t',
'            Where',
'                t.column_value Is Not Null;',
'',
'    /*Cursor all_present is ',
'        select',
'            t.column_value As enrollment_id',
'        from',
'            table(apex_string.split(:P321_ALL_PRESENT, '':'')) t',
'        where',
'            t.column_value is not null;*/',
'',
'    Cursor all_absent is ',
'        select',
'            t.column_value As enrollment_id',
'        from',
'            table(apex_string.split(:P321_ALL_PRESENT, '':'')) t',
'        where',
'            t.column_value is not null',
'        MINUS',
'        Select',
'                P.column_value As enrollment_id',
'            From',
'                Table (apex_string.split(:P321_ENROLL_EMPLOYEES, '':'') ) P',
'            Where',
'                P.column_value Is Not Null;',
'            ',
'begin',
'',
'    ',
'',
'    IF :P321_COURSE_CLASS_1 IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20006, ''Sorry. You need to select a class before marking attendance.'');',
'    ELSIF :P321_COURSE_SCHEDULE_1 IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20007, ''Sorry. You need to select a course schedule before marking attendance.'');',
'    ELSE',
'    /*Delete records that were transferred back to the left side of the shuttle*/',
'        BEGIN',
'            FOR I IN all_absent LOOP',
'                DELETE FROM ',
'                    HR_TRN_CLASS_ATTEND',
'                WHERE ',
'                    CLASS_ID = :P321_COURSE_CLASS_1',
'                    AND ENROLLMENT_ID = I.ENROLLMENT_ID;',
'            END LOOP;',
'        END;',
'',
'    /*Insert records that are on to the right side of the shuttle*/',
'        BEGIN',
'            for c in current_values loop',
'                pkg_training.prcd_mark_attendance(c.enrollment_id, :P321_COURSE_CLASS_1, :P321_COURSE_1, :P321_COURSE_SCHEDULE_1, ''ATTENDED'');',
'            end loop;',
'        END;',
'    END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(667163082490823394)
,p_internal_uid=>23689644839068893
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(667166007097823398)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_class_absent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    Cursor c_values is ',
'            Select',
'                t.column_value As emp_id',
'            From',
'                Table (apex_string.split(:P321_ENROLL_EMPLOYEES, '':'') ) t',
'            Where',
'                t.column_value Is Not Null;',
'begin',
'',
'    IF :P321_COURSE_CLASS IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20006, ''Sorry. You need to select a class before marking attendance.'');',
'    ELSIF :P321_COURSE_SCHEDULE IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20007, ''Sorry. You need to select a course schedule before marking attendance.'');',
'    ELSE',
'    for c in c_values loop',
'        pkg_training.prcd_mark_attendance(c.emp_id, :P321_COURSE_CLASS, :P321_COURSE, :P321_COURSE_SCHEDULE, ''ABSENT'');',
'    end loop;',
'',
'    END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>23690085218068893
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(667160043658823391)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6318283760242890209)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Enrolled Employees - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23684121779068886
);
wwv_flow_imp.component_end;
end;
/
