prompt --application/pages/page_01496
begin
--   Manifest
--     PAGE: 01496
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1496
,p_name=>'frmEmpAppraisal'
,p_alias=>'FRMEMPAPPRAISAL'
,p_step_title=>'Manage Employee Appraisal'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297886235910714013)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P1496_VERIFIED_BY'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144994939950268047)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2219896925278480332)
,p_plug_name=>'Summary of Attendance for &P1496_APP_START_PERIOD. and &P1496_APP_END_PERIOD.'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    -- select ',
'    --     leave_type, sum(absence_hours) absence_hours, sum(assign_shift_hours) assign_shift_hours',
'    -- from ',
'    --     hr_att_empcalendar_hd haeh ',
'    --     left join hr_att_timesheetabsence hata on hata.calendar_id = haeh.id',
'    -- where ',
'    --     haeh.emp_id = :P1496_EMP_ID',
'    --     and to_date(haeh.work_date,''DD-MON-YYYY'')  between TO_DATE(to_date(:P1496_APP_START_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')  and (TO_DATE(to_date(:P1496_APP_END_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
'    -- group by',
'    --     leave_type',
'',
'select ',
'    leave_type, sum(absence_hours) absence_hours, sum(assign_shift_hours) assign_shift_hours',
'from(',
'    select ',
'        leave_type, sum(absence_hours) absence_hours, null assign_shift_hours',
'    from ',
'        hr_att_timesheetabsence',
'    where ',
'        emp_id = :P1496_EMP_ID',
'        and to_date(work_date,''DD-MON-YYYY'')  between TO_DATE(to_date(:P1496_APP_START_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')  and (TO_DATE(to_date(:P1496_APP_END_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
'    group by',
'        leave_type',
'    union',
'    select ',
'        null leave_type, null absence_hours, sum(assign_shift_hours) assign_shift_hours',
'    from ',
'        hr_att_empcalendar_hd',
'    where ',
'        emp_id = :P1496_EMP_ID',
'        and to_date(work_date,''DD-MON-YYYY'')  between TO_DATE(to_date(:P1496_APP_START_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')  and (TO_DATE(to_date(:P1496_APP_END_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
'    )',
'group by',
'    leave_type',
'',
'-- select ',
'--        to_Char(work_date,''DD-MON-YYYY'') WKDATE, ',
'--        assigned_shift,',
'--        normal_time shw,',
'--        hours_worked chw,',
'--        over_time cot',
'-- from hr_att_empcalendar_hd',
'-- where emp_id = :P1496_EMP_ID',
'-- and to_date(work_date,''DD-MON-YYYY'')  between TO_DATE(to_date(:P1496_APP_START_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')  and (TO_DATE(to_date(:P1496_APP_END_PERIOD,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1496_EMP_ID,P1496_APP_START_PERIOD,P1496_APP_END_PERIOD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Shift Roster'
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
 p_id=>wwv_flow_imp.id(2219897112648480333)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'ICARTER'
,p_internal_uid=>2104112978792166628
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205343048943152454)
,p_db_column_name=>'LEAVE_TYPE'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Leave/Absence Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205343466527152454)
,p_db_column_name=>'ABSENCE_HOURS'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Absence Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205343825073152455)
,p_db_column_name=>'ASSIGN_SHIFT_HOURS'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Assigned Shift Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2219908714804537582)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10338080'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEAVE_TYPE:ABSENCE_HOURS:ASSIGN_SHIFT_HOURS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3363558743086454655)
,p_plug_name=>'Appraisal Tabs'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2211606397746591666)
,p_plug_name=>'Appraisers'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_APPRAISAL_ID,',
'       EMP_APPRAISER_ID,',
'       START_DATE,',
'       END_DATE,',
'       REMARKS,',
'       STATUS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,',
'       APPRAISER_TYPE,',
'       USE_APPRAISER_RATING',
'       --, case when emp_appraiser_id = (select distinct employee_no from vw_useraccess b where b.user_id = :APP_USER_ID) then ''U'' else ''X'' end row_operations',
'  from HR_APP_APPRAISER',
' where emp_appraisal_id = :P1496_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appraisers'
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
 p_id=>wwv_flow_imp.id(2211606527913591668)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211606699471591669)
,p_name=>'EMP_APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211606800412591670)
,p_name=>'EMP_APPRAISER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_APPRAISER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Appraiser'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_readonly_condition_type=>'ITEM_IS_NOT_NULL'
,p_readonly_condition=>'ENTERED_BY'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211606920571591671)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Started Appraising'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(2211606956441591672)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Ended Appraising'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(2211607117728591673)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(2211607191667591674)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(144335288699177312)
,p_lov_display_extra=>false
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
,p_default_expression=>'KEYED'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211607313120591675)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2211607407109591676)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2211607432311591677)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(2211607580859591678)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(2211607688137591679)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211607768633591680)
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
 p_id=>wwv_flow_imp.id(2211996673664405845)
,p_name=>'APPRAISER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Appraiser Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description display, table_value return',
'from hr_hcf_lookup',
'where pkg_global_fnts.fn_sharereforg(org_id) = :APP_ORG_SHR_DED',
'and table_name = ''TBLAPPRAISERTYPE'';'))
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
 p_id=>wwv_flow_imp.id(2211999324299405871)
,p_name=>'USE_APPRAISER_RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USE_APPRAISER_RATING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Use Appraiser Rating'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'EXISTS'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from hr_app_appraiser ',
'where exists(select 1 from vw_useraccess where emp_appraiser_id = employee_no and user_id = :APP_USER_ID and employee_no = :P1496_EMP_ID)'))
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233401825146369737)
,p_name=>'CANCEL'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Cancel Appraiser'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:$.event.trigger(''cancelAppraiser'',''&ID.'');'
,p_link_text=>'<span aria-hidden="true" style="color:#b94a48">Cancel</span>'
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':END_DATE IS NULL'
,p_display_condition2=>'PLSQL'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2211606498420591667)
,p_internal_uid=>2095822364564277962
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2211983092549391811)
,p_interactive_grid_id=>wwv_flow_imp.id(2211606498420591667)
,p_static_id=>'10067572'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2211983231370391811)
,p_report_id=>wwv_flow_imp.id(2211983092549391811)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211983648764391815)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2211606527913591668)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211984557054391819)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2211606699471591669)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211985427993391823)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2211606800412591670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211986347205391826)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2211606920571591671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211987294841391830)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2211606956441591672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211988132614391833)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2211607117728591673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211989110710391838)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2211607191667591674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211989993696391843)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2211607313120591675)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211990824959391847)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2211607407109591676)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211991791772391851)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2211607432311591677)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211992678716391855)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2211607580859591678)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2211993537886391859)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2211607688137591679)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212160368881617302)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2211996673664405845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212428205349072031)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2211999324299405871)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233769996063582577)
,p_view_id=>wwv_flow_imp.id(2211983231370391811)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2233401825146369737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2211996735138405846)
,p_plug_name=>'Appraiser Rating'
,p_parent_plug_id=>wwv_flow_imp.id(2211606397746591666)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       a.APPRAISER_ID,',
'       a.EMP_APPRAISAL_ID,',
'       a.question_id,',
'       b.questions,',
'       upper(b.pf_short_name) pf_short_name,',
'       upper(b.pf_core_name) pf_core_name,',
'       upper(b.pf_abv) pf_abv,',
'       a.RATING,',
'       a.REMARKS,',
'       a.ENTRY_DATE,',
'       a.ENTERED_BY,',
'       a.LAST_CHANGED_DATE,',
'       a.LAST_CHANGED_BY',
'       --, case when appraiser_id = (select distinct id from hr_app_appraiser a where exists(select 1 from vw_useraccess b where b.user_id = :APP_USER_ID and b.employee_no = a.emp_appraiser_id)) then ''U'' else ''X'' end row_operations',
'  from HR_APP_APPRAISER_RATING a',
'    join HR_APP_MERITINCREQUEST b on a.question_id = b.id',
' where emp_appraisal_id = :P1496_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'ALWAYS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appraiser Rating'
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
 p_id=>wwv_flow_imp.id(2211997023242405848)
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
 p_id=>wwv_flow_imp.id(2211997034768405849)
,p_name=>'APPRAISER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211997124503405850)
,p_name=>'EMP_APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(2211997385243405852)
,p_name=>'RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Rating'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select range_value b,range_value c',
'from table(pkg_global_fnts.fn_getAppRanges(:P1496_MERIT_CONFIG_ID))',
'union ',
'select 0 b, 0 c ',
'from dual'))
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
 p_id=>wwv_flow_imp.id(2211997514667405853)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1020
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
 p_id=>wwv_flow_imp.id(2211997593974405854)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(2211997695093405855)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2211997800747405856)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2211997902927405857)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(2211997955876405858)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211998030590405859)
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
 p_id=>wwv_flow_imp.id(2211998412082405862)
,p_name=>'QUESTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Questions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211998499348405863)
,p_name=>'QUESTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2211998552554405864)
,p_name=>'PF_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_SHORT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Short Name'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2212438784817316759)
,p_name=>'PF_CORE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_CORE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Core Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2212438905867316760)
,p_name=>'PF_ABV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_ABV'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Abv'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2211996915534405847)
,p_internal_uid=>2096212781678092142
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
 p_id=>wwv_flow_imp.id(2212251039415191720)
,p_interactive_grid_id=>wwv_flow_imp.id(2211996915534405847)
,p_static_id=>'10070252'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2212251321631191720)
,p_report_id=>wwv_flow_imp.id(2212251039415191720)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1205265590092241065)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2211998499348405863)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1205266960620241070)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2211998552554405864)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212251736641191724)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2211997023242405848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212252683464191729)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2211997034768405849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212253571757191734)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2211997124503405850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212255325528191747)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2211997385243405852)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212256257297191751)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2211997514667405853)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212257141483191756)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2211997593974405854)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212258035674191761)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2211997695093405855)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212258948166191767)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2211997800747405856)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212259895904191771)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2211997902927405857)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212260775991191776)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2211997955876405858)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212266189166208163)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2211998412082405862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212480390952597233)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2212438784817316759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2212481268524597238)
,p_view_id=>wwv_flow_imp.id(2212251321631191720)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2212438905867316760)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2211999614473405874)
,p_plug_name=>'Questions and Appraisers'
,p_parent_plug_id=>wwv_flow_imp.id(2211606397746591666)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    hamr.questions,',
'    nvl(haar.rating, 0) rating,',
'    haa.emp_appraiser_id,',
'    hamr.weighting, ',
'    hamr.pf_short_name,',
'    hamr.pf_core_name, ',
'    hamr.pf_abv',
'from',
'    hr_app_appraiser_rating haar ',
'    join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'    join hr_app_meritincrequest hamr on hamr.id = haar.question_id',
'where ',
'    haar.emp_appraisal_id = :P1496_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1496_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Questions and Appraisers'
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
 p_id=>wwv_flow_imp.id(2212437086542316742)
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
,p_internal_uid=>2096652952686003037
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205328491660152433)
,p_db_column_name=>'WEIGHTING'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Weighting'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205328944242152434)
,p_db_column_name=>'QUESTIONS'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Questions'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205329316068152434)
,p_db_column_name=>'PF_SHORT_NAME'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Pf Short Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205329733495152435)
,p_db_column_name=>'RATING'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205330160053152435)
,p_db_column_name=>'EMP_APPRAISER_ID'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Appraiser'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(139016000553197773)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205330489034152436)
,p_db_column_name=>'PF_CORE_NAME'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Pf Core Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1205330899366152436)
,p_db_column_name=>'PF_ABV'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Pf Abv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2212447460176337633)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'10337951'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WEIGHTING:QUESTIONS:PF_SHORT_NAME:RATING:EMP_APPRAISER_ID:PF_CORE_NAME:PF_ABV'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(2213445849077685748)
,p_report_id=>wwv_flow_imp.id(2212447460176337633)
,p_pivot_columns=>'EMP_APPRAISER_ID'
,p_row_columns=>'PF_CORE_NAME:QUESTIONS:WEIGHTING'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(144987318238268041)
,p_pivot_id=>wwv_flow_imp.id(2213445849077685748)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'RATING'
,p_db_column_name=>'PFC1'
,p_column_label=>'Rating'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(144987647469268041)
,p_pivot_id=>wwv_flow_imp.id(2213445849077685748)
,p_sort_seq=>1
,p_sort_column_name=>'PF_SHORT_NAME'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(144988050489268041)
,p_pivot_id=>wwv_flow_imp.id(2213445849077685748)
,p_sort_seq=>2
,p_sort_column_name=>'QUESTIONS'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2238889211401894032)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5794814050039559166)
,p_name=>'Audit Record Verified by: &P1496_VERIFIED_BY.'
,p_parent_plug_id=>wwv_flow_imp.id(2238889211401894032)
,p_template=>2664334895415463485
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' machine_insert,',
' machine_update,',
' apex_util.get_since(last_changed_date) updated',
'from HR_APP_MERITINCREMENT',
'where id = :P1496_ID',
''))
,p_display_when_condition=>'P1496_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1496_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427115667457725)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427220303457726)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427258061457727)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427376190457728)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427518241457729)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169427570326457730)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5794780255172580048)
,p_name=>'Approval History'
,p_parent_plug_id=>wwv_flow_imp.id(5794814050039559166)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_APP_MERITINCREMENT''',
'and table_name_key=:P1496_ID'))
,p_display_when_condition=>'P1496_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1496_ID'
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
 p_id=>wwv_flow_imp.id(144992398191268045)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144992764058268045)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144993193895268046)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144993550043268046)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144993975677268046)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE_OF_ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144994415341268046)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3363559067045454658)
,p_plug_name=>'Resulting Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235025765835731832)
,p_plug_name=>'Resulting Deduction'
,p_parent_plug_id=>wwv_flow_imp.id(3363559067045454658)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APP_ADMINDEDUCTION'
,p_query_where=>'APPRAISAL_ID = :P1496_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resulting Deduction'
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
 p_id=>wwv_flow_imp.id(2235026006511731834)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235026058355731835)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235026185842731836)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Expense Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
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
,p_lov_id=>wwv_flow_imp.id(3326617330175913802)
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
 p_id=>wwv_flow_imp.id(2235026254276731837)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235026335456731838)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235026508007731839)
,p_name=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_OWING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Owing'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(2235026613081731840)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(2235026643058731841)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(2235026763287731842)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2235026838725731843)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2235026950559731844)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(2235027065335731845)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(2235027145007731846)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235027267063731847)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2235025862812731833)
,p_internal_uid=>2119241728956418128
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(2235033578949785197)
,p_interactive_grid_id=>wwv_flow_imp.id(2235025862812731833)
,p_static_id=>'10298077'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2235033725752785198)
,p_report_id=>wwv_flow_imp.id(2235033578949785197)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235034230827785207)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2235026006511731834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235035117077785214)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2235026058355731835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235036017540785220)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2235026185842731836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235036859099785227)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2235026254276731837)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235037787456785231)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2235026335456731838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235038866623785235)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2235026508007731839)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235039819635785238)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2235026613081731840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235040769325785243)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2235026643058731841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235041802017785247)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2235026763287731842)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235042678074785251)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2235026838725731843)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235043619680785256)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2235026950559731844)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235044439969785260)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2235027065335731845)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235045362638785265)
,p_view_id=>wwv_flow_imp.id(2235033725752785198)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2235027145007731846)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3363559139068454659)
,p_plug_name=>'Resulting Salary'
,p_parent_plug_id=>wwv_flow_imp.id(3363559067045454658)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APP_MERIT_SAL_INCREASE'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APPRAISAL_ID = :P1496_ID',
'AND EMP_ID = :P1496_EMP_ID'))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID,P1496_EMP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resulting Salary'
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
,p_plug_header=>'<span style="color:#0076DF; font-weight:bold">When changing the New Grade Point, Increase Rate, Increase Amount or Increase Percentage, click on the fields to ensure the values are pulled into the columns.</span>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3363559335027454661)
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
 p_id=>wwv_flow_imp.id(3363559678709454664)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3363559710312454665)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3363559798873454666)
,p_name=>'CURRENT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Current Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(3363559888850454667)
,p_name=>'CURRENT_GRADE_SCALE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_GRADE_SCALE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Current Grade Scale'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326550784367798359)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(3363560014752454668)
,p_name=>'CURRENT_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Current Grade Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||a.point||'': ''||trim(to_char(a.point_amount,''$999,999,999,999'')) a, a.ID',
'from HR_HCF_POSITIONGRADEPOINT a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id= :CURRENT_GRADE_SCALE',
'and a.position_grade_id=b.id',
'and b.org_id = :APP_ORG_SHR_DED',
'and (a.end_date is null or a.end_date >= trunc(current_date));',
''))
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(3363560170477454669)
,p_name=>'INCREASE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(3363560268946454670)
,p_name=>'INCREASE_GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_GRADE_POINT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'New Grade Point'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||a.point||'': ''||trim(to_char(a.point_amount,''$999,999,999,999'')) a, a.ID',
'from HR_HCF_POSITIONGRADEPOINT a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id= :CURRENT_GRADE_SCALE',
'and a.position_grade_id=b.id',
'and b.org_id = :APP_ORG_SHR_DED',
'and (a.end_date is null or a.end_date >= trunc(current_date));',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CURRENT_GRADE_SCALE'
,p_ajax_items_to_submit=>'CURRENT_GRADE_SCALE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3419746906032870621)
,p_name=>'INCREASE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(3419747043777870622)
,p_name=>'INCREASE_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_PERCENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(3419747155757870623)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3419747261545870624)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3419747324750870625)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3419747441435870626)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3419747552113870627)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3419748118570870633)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3419748239624870634)
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
 p_id=>wwv_flow_imp.id(3430869890556741924)
,p_name=>'OLD_SALARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_SALARY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Old Salary Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3430869991571741925)
,p_name=>'SALARY_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY_CURRENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Salary Currency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3363559194398454660)
,p_internal_uid=>3247775060542140955
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
 p_id=>wwv_flow_imp.id(3419754838862876904)
,p_interactive_grid_id=>wwv_flow_imp.id(3363559194398454660)
,p_static_id=>'7167291'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3419755077525876905)
,p_report_id=>wwv_flow_imp.id(3419754838862876904)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419755560129876909)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3363559335027454661)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419758200280876928)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3363559678709454664)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>222
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419759150039876934)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3363559710312454665)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419760040750876939)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3363559798873454666)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419760931620876946)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3363559888850454667)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>139
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419761823067876951)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3363560014752454668)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419762753318876956)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3363560170477454669)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419763631277876962)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3363560268946454670)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419764498100876968)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3419746906032870621)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419765477686876974)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3419747043777870622)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419766293496876980)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3419747155757870623)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419767256377876985)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3419747261545870624)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419768128334876991)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3419747324750870625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419769042709876998)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3419747441435870626)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419769783199877004)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3419747552113870627)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3419817183359524954)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3419748118570870633)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3433165488894610457)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3430869890556741924)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3433189362388889702)
,p_view_id=>wwv_flow_imp.id(3419755077525876905)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3430869991571741925)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3421239706804496360)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(3363559067045454658)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5781573204219301278)
,p_plug_name=>'Resulting Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(3363559067045454658)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    emp_id,EARNINGS_PERIOD_ID,',
'    income_type,',
'    empent_id,',
'    taxable,',
'    nis_deduction,',
'    amount,',
'    admin_status,',
'    percentage,',
'    remarks,',
'    quick_entry,',
'    start_date,',
'    end_date,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'    appraisal_id,',
'    income_status,',
'    pay_status',
'FROM',
'    hr_app_empentitle',
'where appraisal_id= :P1496_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resulting Remuneration'
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
 p_id=>wwv_flow_imp.id(5780709215647411002)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ADD_INCOME_ID',
'from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code=b.id',
'where a.emp_id=nvl(:EMP_ID,:P1496_EMP_ID)',
'and a.admin_status=''MAN''',
'and b.income_type = ''Incentive''',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'EMP_ID,P1496_EMP_ID'
,p_ajax_items_to_submit=>'EMP_ID,P1496_EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5780709290769411003)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'When to Pay'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
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
,p_lov_id=>wwv_flow_imp.id(3326582346564849587)
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
 p_id=>wwv_flow_imp.id(5780709504535411005)
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
 p_id=>wwv_flow_imp.id(5780709554299411006)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5780709728667411007)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3316814715915867495)
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781571219404301258)
,p_name=>'INCOME_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326617015677913802)
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
 p_id=>wwv_flow_imp.id(5781571281281301259)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781571398790301260)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(5781571540464301261)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(5781571580756301262)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(5781571714095301263)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(5781571821204301264)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781571854292301265)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781572019606301266)
,p_name=>'QUICK_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUICK_ENTRY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Quick Entry'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781572115071301267)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781572223766301268)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781572287113301269)
,p_name=>'ADMIN_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Admin Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Manual;MAN,Systematic;SYS'
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
 p_id=>wwv_flow_imp.id(5781572428651301270)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781572502711301271)
,p_name=>'NIS_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIS_DEDUCTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Nis Deduction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(5781572642246301272)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Taxable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(5781572801172301274)
,p_name=>'INCOME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Income Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(5781572905179301275)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5781573018449301276)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5781573150902301277)
,p_internal_uid=>5665789017045987572
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5780703779037410552)
,p_interactive_grid_id=>wwv_flow_imp.id(5781573150902301277)
,p_static_id=>'299225'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5780703631378410552)
,p_report_id=>wwv_flow_imp.id(5780703779037410552)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780554382637336162)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5780709215647411002)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>226.703
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780684056768402587)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5780709554299411006)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780686008007410519)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5780709728667411007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780686855424410520)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5781571219404301258)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>136.422
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780687801569410522)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(5781571281281301259)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780688723746410523)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(5781571398790301260)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780689610914410525)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(5781571540464301261)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780690489655410526)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(5781571580756301262)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780691377526410528)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(5781571714095301263)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780692350433410529)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(5781571821204301264)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780693228898410531)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5781571854292301265)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780694087968410532)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5781572019606301266)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.844
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780694983556410534)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(5781572115071301267)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>311.656
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780695904208410535)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5781572223766301268)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>128.1406
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780696773489410537)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5781572287113301269)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>124.8594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780697690618410538)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5781572428651301270)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>115.8906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780698585482410540)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(5781572502711301271)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780699461088410541)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5781572642246301272)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780701293416410546)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5781572801172301274)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780702216757410547)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5781572905179301275)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5780703076199410549)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5781573018449301276)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5810623333416940572)
,p_view_id=>wwv_flow_imp.id(5780703631378410552)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5780709290769411003)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>291.453
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3421237194765496335)
,p_plug_name=>'Training Required'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APP_MERIT_TRAIN_REQ'
,p_query_where=>'APPRAISAL_ID = :P1496_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Training Required'
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
 p_id=>wwv_flow_imp.id(2233401784576369736)
,p_name=>'REASON_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421237468069496337)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421237500078496338)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421237650565496339)
,p_name=>'COURSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Course'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COURSE_NAME,id',
'from HR_TRN_COURSE',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(3421237687034496340)
,p_name=>'PROPOSED_TRAIN_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROPOSED_TRAIN_START'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Proposed Train Start'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'STATIC',
  'min_static', '&P1496_APPRAISAL_DATE.',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421237824939496341)
,p_name=>'PROPOSED_TRAIN_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROPOSED_TRAIN_END'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Proposed Train End'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'STATIC',
  'min_static', '&P1496_APPRAISAL_DATE.',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421237892775496342)
,p_name=>'COURSE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COURSE_SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Course Schedule'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'and b.id = NVL(:COURSE_ID, b.id)',
'AND A.START_DATE > :P1496_APPRAISAL_DATE',
'order by a.START_DATE desc '))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'COURSE_ID'
,p_ajax_items_to_submit=>'COURSE_ID,P1496_APPRAISAL_DATE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238033445496343)
,p_name=>'REQUEST_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Request Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(879309922130445252)
,p_lov_display_extra=>false
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
,p_default_expression=>'APPRAISAL'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238112024496344)
,p_name=>'REQUESTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUESTOR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Requestor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
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
,p_lov_id=>wwv_flow_imp.id(3326578119485849578)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238300716496346)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Training Enrolment done via Employee Appraisal'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238390317496347)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3326578119485849578)
,p_lov_display_extra=>false
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
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_EMP_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238487898496348)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
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
 p_id=>wwv_flow_imp.id(3421238595134496349)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238775111496350)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(3421238842930496351)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421238976278496352)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421239066597496353)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3421237296401496336)
,p_internal_uid=>3305453162545182631
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(3421558464720505264)
,p_interactive_grid_id=>wwv_flow_imp.id(3421237296401496336)
,p_static_id=>'7185327'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3421558615448505264)
,p_report_id=>wwv_flow_imp.id(3421558464720505264)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233748688226412895)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2233401784576369736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421559096722505268)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3421237468069496337)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421560020642505275)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3421237500078496338)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421560880235505284)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3421237650565496339)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421561805771505290)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3421237687034496340)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>135
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421562711415505297)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3421237824939496341)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421563498490505303)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3421237892775496342)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421564459954505309)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3421238033445496343)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421565302110505315)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3421238112024496344)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421567135451505327)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3421238300716496346)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421568054133505333)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3421238390317496347)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>198
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421568964259505339)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3421238487898496348)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421569792885505346)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3421238595134496349)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421570747350505354)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3421238775111496350)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421571618235505360)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3421238842930496351)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421572517686505366)
,p_view_id=>wwv_flow_imp.id(3421558615448505264)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3421238976278496352)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5794799061684502762)
,p_plug_name=>'Remarks'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3419751874056870670)
,p_plug_name=>'Remarks Details'
,p_parent_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_icon_css_classes=>'fa-clipboard-list'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APP_MERIT_EMP_REMARKS'
,p_query_where=>'APPRAISAL_ID = :P1496_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Remarks Details'
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
 p_id=>wwv_flow_imp.id(3421235913718496322)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421236059628496323)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421236166662496324)
,p_name=>'REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(3421236245787496325)
,p_name=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(3421236354013496326)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3421236380833496327)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421236566058496328)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3421236637053496329)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3421236721908496330)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3421236806557496331)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3421235785282496321)
,p_internal_uid=>3305451651426182616
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3421247184203513666)
,p_interactive_grid_id=>wwv_flow_imp.id(3421235785282496321)
,p_static_id=>'7182215'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3421247474167513666)
,p_report_id=>wwv_flow_imp.id(3421247184203513666)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421247893140513671)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3421235913718496322)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421248800196513680)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3421236059628496323)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421249704186513686)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3421236166662496324)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>262.8906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421250656529513692)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3421236245787496325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421251453053513708)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3421236354013496326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421252335898513716)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3421236380833496327)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421253208483513727)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3421236566058496328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421254147655513741)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3421236637053496329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3421254984416513752)
,p_view_id=>wwv_flow_imp.id(3421247474167513666)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3421236721908496330)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5794799237227505136)
,p_plug_name=>'Calculations'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5794792934148456978)
,p_plug_name=>'Summary of Weighted Average Percentages'
,p_region_name=>'graded-body'
,p_parent_plug_id=>wwv_flow_imp.id(5794799237227505136)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_footer=>'<style>#graded-body > div.t-Region-header > div.t-Region-headerItems.t-Region-headerItems--title {text-align:center;}</style>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3363558935773454657)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(5794792934148456978)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5794830743657683761)
,p_plug_name=>'Create/Edit Employee Appraisal '
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_plug_header=>'<div style="overflow:auto;">'
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2218659908677797338)
,p_plug_name=>'Calculations'
,p_parent_plug_id=>wwv_flow_imp.id(5794830743657683761)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2221076184682730232)
,p_plug_name=>'Appraisal Header'
,p_parent_plug_id=>wwv_flow_imp.id(5794830743657683761)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5799299306644765287)
,p_plug_name=>'Questions'
,p_parent_plug_id=>wwv_flow_imp.id(3363558743086454655)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       APPRAISAL_ID,weighting,',
'       QUESTIONS_ID,',
'       QUESTIONS,',
'       PF_SHORT_NAME,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       PF_CORE_NAME, PF_ABV',
'  from HR_APP_MERITINCREQUEST',
'  where APPRAISAL_ID =:P1496_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1496_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1496_ID'
,p_plug_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_plug_read_only_when=>'P1496_VERIFIED_BY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Questions'
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
 p_id=>wwv_flow_imp.id(2212438713443316758)
,p_name=>'PF_ABV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_ABV'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Abv'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(3423208769320467434)
,p_name=>'PF_CORE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_CORE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Core Name'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5796796361692924991)
,p_name=>'WEIGHTING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHTING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weighting'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5799296974874765264)
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
 p_id=>wwv_flow_imp.id(5799297111657765265)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5799297869244765273)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(5799297977694765274)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(5799298090588765275)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(5799298228869765276)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(5799298285604765277)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(5799298429679765278)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(5799298458604765279)
,p_name=>'PF_SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PF_SHORT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pf Short Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(5799298670055765281)
,p_name=>'QUESTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Questions'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5799298839803765282)
,p_name=>'QUESTIONS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTIONS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(5799299037472765284)
,p_name=>'APPRAISAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1496_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5799299092182765285)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5799299165803765286)
,p_internal_uid=>5683515031947451581
,p_is_editable=>true
,p_edit_operations=>'u:d'
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
 p_id=>wwv_flow_imp.id(5796915305022176486)
,p_interactive_grid_id=>wwv_flow_imp.id(5799299165803765286)
,p_static_id=>'137110'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5796915136420176486)
,p_report_id=>wwv_flow_imp.id(5796915305022176486)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1205545021363310618)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2212438713443316758)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3423465971375264532)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3423208769320467434)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>.75
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796685855625573457)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5796796361692924991)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796895796881174953)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5799297111657765265)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796903952339176464)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5799297869244765273)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796904803505176465)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5799297977694765274)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796905657919176467)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5799298090588765275)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796906578040176468)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5799298228869765276)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796907454693176470)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5799298285604765277)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796908379183176471)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5799298429679765278)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796909324819176473)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5799298458604765279)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796911149881176476)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5799298670055765281)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>385
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796912026420176477)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5799298839803765282)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796913657816176480)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5799299037472765284)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5796914572083176484)
,p_view_id=>wwv_flow_imp.id(5796915136420176486)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5799299092182765285)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5842239452256830385)
,p_name=>'Average Evaluation Competency Attributes'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PERFORMANCE_FACTORS,AVG_AMOUNT, AVG_AMOUNT_MGNT',
'from HR_APP_MERITFACTORSUM a join HR_APP_MERITCONFIGPFACTORS B on B.id=a.PERFORMANCE_FACTORS_ID',
'where  EMP_APPRAISAL_ID=:P1496_ID',
'ORDER BY PERFORMANCE_FACTORS'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144885296168267942)
,p_query_column_id=>1
,p_column_alias=>'PERFORMANCE_FACTORS'
,p_column_display_sequence=>1
,p_column_heading=>'Performance factors'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144885704580267943)
,p_query_column_id=>2
,p_column_alias=>'AVG_AMOUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Avg amount'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(144886059806267943)
,p_query_column_id=>3
,p_column_alias=>'AVG_AMOUNT_MGNT'
,p_column_display_sequence=>3
,p_column_heading=>'Avg amount mgnt'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5861407891357344442)
,p_plug_name=>'Filter Options'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6120477634248622476)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5922124181204646389)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(6120477634248622476)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')''  label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'       union',
'      select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)) ) ||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1496_EMP_ID',
'       union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.position_id',
'    where b.id=:P1496_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1496_EMP_ID',
'            union',
'     select 11 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee emp on a.id = emp.ind_id',
'    where emp.id=:P1496_EMP_ID',
'    union',
'    select 12 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1496_EMP_ID',
'     union',
'    select 13 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1496_EMP_ID',
'    union',
'    select 14 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1496_EMP_ID',
'    union',
'    select 15 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1496_EMP_ID',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144886918491267944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5861407891357344442)
,p_button_name=>'P1496_ASSIGN_RATING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Rating'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144889285373267949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5922124181204646389)
,p_button_name=>'VIEW_EMP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID:&P1496_EMP_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144907751434267969)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3363559139068454659)
,p_button_name=>'IMPORT_SAL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Salary'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_APP_MERIT_SAL_INCREASE',
'WHERE APPRAISAL_ID = :P1496_ID',
'AND EMP_ID = :P1496_EMP_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-arrow-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144937335111267993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3419751874056870670)
,p_button_name=>'IMPORT_REMARKS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Remarks'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_VERIFIED_BY'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-arrow-down'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144938959350267995)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5794792934148456978)
,p_button_name=>'P1496_GET_PERCENTAGES'
,p_button_static_id=>'P1496_GET_PERCENTAGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Compute Appraisal'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144975147767268030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2211606397746591666)
,p_button_name=>'GENERATE_APPRAISER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start Appraising'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144995593391268049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1496_RETURN_VALUE.:&SESSION.:&SESSION.:&DEBUG.:&DEBUG.::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144995978644268049)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_app_meritincrement ',
'where id = :P1496_ID',
'and verified_by is null'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144996431101268050)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144996742538268050)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144997193064268050)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:1496::'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144997591067268050)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144997998879268050)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'APPRAISAL_QUESTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Competency Attributes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144998406733268051)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'JOB_OBJECTIVES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Employee Objectives'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144998820166268051)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144999183031268051)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'VIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144999562948268051)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(144994939950268047)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P1496_ID.,ID,&P1496_STATUS.,HR_APP_MERITINCREMENT,&P1496_TRANSACTION_TYPE_ID.,Appraisal Management,1496,&P1496_WORK_FLOW_COMMENT.'
,p_button_condition=>'P1496_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144966843214268021)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(5799299306644765287)
,p_button_name=>'GENERATE_QUESTIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Questions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1496_VERIFIED_BY'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144952601990268008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_button_name=>'CALCULATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Compute Appraisal'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    1',
'from',
'    hr_app_appraiser ',
'where',
'    emp_appraisal_id = :P1496_ID',
'    and :P1496_VERIFIED_BY is null ',
'    and status in (''COMPLETED'', ''CANCELLED'')'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145030092289268072)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:1496::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(144997591067268050)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145029730437268072)
,p_branch_name=>'DELETE_BRANCH'
,p_branch_action=>'f?p=&APP_ID.:1495:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(144995978644268049)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145029236367268072)
,p_branch_name=>'Appraisal_Question'
,p_branch_action=>'f?p=&APP_ID.:1497:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(144997998879268050)
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145028910264268071)
,p_branch_name=>'job_objective'
,p_branch_action=>'f?p=&APP_ID.:1498:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>4
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145031299082268073)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:2,FRMEMPAPPRAISAL,&P1496_ID.,&P1496_EMP_ID.,1496'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(144998820166268051)
,p_branch_sequence=>14
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1496_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145030906131268072)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_ID,P129_RETURN_VALUE:&P1496_DOC_EXIST.,1496'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(144998820166268051)
,p_branch_sequence=>24
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1496_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145030479794268072)
,p_branch_name=>'Go To Page 1496'
,p_branch_action=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>34
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205267705365152293)
,p_name=>'P1496_REVIEWER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3421239706804496360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reviewer'
,p_source=>'REVIEWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1496_ID IS NULL THEN',
'return ',
'''select a.employee||''''(No.''''||a.EMP_COMPANY_NO||'''')'''' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null or b.Date_Separated >=:P1496_APP_START_PERIOD',
'order by employee'';',
'',
'ELSE',
'return ',
'''select a.SURNAME||'''' ''''||A.FIRST_NAME||''''(No.''''||b.EMP_COMPANY_NO||'''')'''' employee, b.id',
'from hr_rcm_INDIVIDUAL a join hr_rcm_EMPLOYEE b  on a.id=b.ind_id',
'where org_id= :APP_ORG_ID',
'order by SURNAME'';',
'',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1496_APP_START_PERIOD'
,p_ajax_items_to_submit=>'P1496_ID,P1496_APP_START_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(1205268087888152293)
,p_name=>'P1496_DEDUCTION_PERCENT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3421239706804496360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Deduction Percent'
,p_source=>'DEDUCTION_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205268499964152294)
,p_name=>'P1496_BONUS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3421239706804496360)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_source=>'BONUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205268878858152294)
,p_name=>'P1496_RECOMMEND_PROMOTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3421239706804496360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Promotion Recommended'
,p_source=>'RECOMMEND_PROMOTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205307784549152345)
,p_name=>'P1496_INTERVIEWEE_ASPIRATIONS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interviewee Aspirations'
,p_source=>'INTERVIEWEE_ASPIRATIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>3
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205308163926152346)
,p_name=>'P1496_INTERVIEWEE_COMMENTS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interviewee Comments'
,p_source=>'INTERVIEWEE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>3
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205308643736152347)
,p_name=>'P1496_INTERVIEWER_COMMENTS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interviewer Comments'
,p_source=>'INTERVIEWER_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>3
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205309060559152347)
,p_name=>'P1496_AREAS_OF_STRENGHTS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Areas Of Strengths'
,p_source=>'AREAS_OF_STRENGHTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>3
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205309378354152348)
,p_name=>'P1496_AREAS_OF_WEAKNESS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Areas Of Weakness'
,p_source=>'AREAS_OF_WEAKNESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205309838214152349)
,p_name=>'P1496_TRAINING_REQUIRED'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Training Required'
,p_source=>'TRAINING_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205310216140152350)
,p_name=>'P1496_MOBILITY_POTENTIAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobility Potential'
,p_source=>'MOBILITY_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205310638625152350)
,p_name=>'P1496_HR_COMMENTS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Human Resources Comments'
,p_source=>'HR_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205311044811152351)
,p_name=>'P1496_CEO_COMMENTS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(5794799061684502762)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CEO Comments'
,p_source=>'CEO_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>55
,p_cMaxlength=>2000
,p_cHeight=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205333319625152339)
,p_name=>'P1496_VERIFIED_BY'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(5794814050039559166)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205334123511152341)
,p_name=>'P1496_MACHINE_INSERT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(5794814050039559166)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205334494480152342)
,p_name=>'P1496_MACHINE_UPDATE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(5794814050039559166)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205334938296152342)
,p_name=>'P1496_DOC_EXIST'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(5794814050039559166)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1496_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205337947958152447)
,p_name=>'P1496_FACTORS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5861407891357344442)
,p_prompt=>'Filter Factors'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(Performance_Factors||'' (Questions:-''||(select to_char(COUNT(1) )',
'                                                                          from HR_APP_MERITQUESTION b ',
'                                                                          where b.Performance_Factors_ID=a.ID)||'')'') QUESTIONS, UPPER(SHORT_NAME) A',
'from HR_APP_MERITCONFIGPFACTORS a ',
'where (a.end_date is null or  a.end_date > current_date)',
'and Merit_Config_id = :P1496_MERIT_CONFIG_ID',
'and exists(select 1',
'           from HR_APP_MERITQUESTION k',
'            where k.PERFORMANCE_FACTORS_ID=a.id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205338330369152447)
,p_name=>'P1496_APPRAISER_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5861407891357344442)
,p_prompt=>'Appraiser Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_HR_Staff(nvl(V(''APP_USER''),USER)) >= 1  then',
'RETURN   ''select ''''Self'''' a , ''''SELF'''' B',
'          from dual ',
'          UNION',
'          select ''''Supervisor'''' a , ''''SUPERVISOR'''' B',
'          from dual ',
'          UNION',
'          select ''''Colleague'''' a , ''''COLLEAGUE'''' B',
'          from dual ',
'          UNION',
'          select ''''Junior'''' a , ''''JUNIOR'''' B',
'          from dual'';',
'',
'ELSE',
'RETURN  ',
'          ''SELECT CASE WHEN pkg_global_fnts.chk_manager(nvl(V(''''APP_USER''''),USER)) >=1 THEN ''''Supervisor'''' ',
'                      WHEN  pkg_global_fnts.chk_HR_Staff(nvl(V(''''APP_USER''''),USER))>=1 then ''''Colleague''''',
'                      WHEN EMPLOYEE_NO = :P1496_EMP_ID THEN ''''Self'''' ',
'                      ELSE ''''Junior'''' END a',
'          ,      CASE WHEN pkg_global_fnts.chk_manager(nvl(V(''''APP_USER''''),USER)) >=1 THEN ''''SUPERVISOR'''' ',
'                      WHEN  pkg_global_fnts.chk_HR_Staff(nvl(V(''''APP_USER''''),USER))>=1 then ''''COLLEAGUE''''',
'                      WHEN EMPLOYEE_NO = :P1496_EMP_ID THEN ''''SELF'''' ',
'                      ELSE ''''JUNIOR'''' END b',
'          from tbluser a ',
'          where upper(user_name)=:APP_USER'';',
'',
'END IF;'))
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205338789164152448)
,p_name=>'P1496_RATING'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5861407891357344442)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select range_value b,range_value c',
'from table(pkg_global_fnts.fn_getAppRanges(:P1496_MERIT_CONFIG_ID))',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205345475947152457)
,p_name=>'P1496_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6120477634248622476)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from hr_app_meritincrement C ',
    '              where  C.EMP_ID=B.ID',
    '              and c.id=:P1496_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205355837184152431)
,p_name=>'P1496_RESULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Result:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(remarks)||'' (''||rating_scale||'')''',
'from HR_APP_MERITCONFIGDTL',
'where MERIT_CONFIG_ID=:P1496_MERIT_CONFIG_ID',
'and  (select MANAGEMENT_PERCENT',
'from HR_APP_MERITINCREMENT',
'where id = :P1496_ID) between PERCENTAGE_RANGE_LOWER and PERCENTAGE_RANGE_UPPER'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_imp.id(1205356274491152432)
,p_name=>'P1496_MANAGEMENT_PERCENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Management Percent(%):'
,p_source=>'MANAGEMENT_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205356652016152432)
,p_name=>'P1496_MANAGEMENT_POINTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'MANAGEMENT_POINTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205357086543152433)
,p_name=>'P1496_EMPLOYEE_PERCENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Employee Percent(%):'
,p_source=>'EMPLOYEE_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205357444837152434)
,p_name=>'P1496_SUMMARY_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Calculation Notes'
,p_source=>'SUMMARY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205357902052152434)
,p_name=>'P1496_EMPLOYEE_POINTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'EMPLOYEE_POINTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205358254515152435)
,p_name=>'P1496_APPRAISER_CLASSIFICATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appraiser Classification'
,p_source=>'APPRAISER_CLASSIFICATION'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_imp.id(1205358657189152436)
,p_name=>'P1496_REFUNDED_POINT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3363558935773454657)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'REFUNDED_POINT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205363673751152442)
,p_name=>'P1496_KO_PERCENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Key Outputs %'
,p_source=>'KO_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:orange;"'
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205364082922152443)
,p_name=>'P1496_BC_PERCENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Behavioural Competency %'
,p_source=>'BC_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:orange;"'
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205364427072152443)
,p_name=>'P1496_FC_PERCENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Functional Competency %'
,p_source=>'FC_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:orange;"'
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205364829561152444)
,p_name=>'P1496_ST_PERCENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Specific Tasks %'
,p_source=>'ST_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:orange;"'
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205365269185152445)
,p_name=>'P1496_AVG_PERCENT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2218659908677797338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Average %'
,p_source=>'AVG_PERCENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:green;"'
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205367835514152448)
,p_name=>'P1496_RETURN_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205368281738152449)
,p_name=>'P1496_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205368689933152449)
,p_name=>'P1496_MERIT_CONFIG_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appraisal Configuration'
,p_source=>'MERIT_CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'APPRAISAL_CONFIGURATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    INITCAP(TRIM(c.merit_description))|| '' :- '' || hhl.value_description || ''- Duration: ''|| c.duration_in_mths || '' month(s))'' ||'' :- Effective (''||to_char(c.Date_Effective,''DD-MON-YYYY'')||'')'' A,c.id',
'from ',
'    HR_APP_MERITCONFIG c ',
'    join HR_HCF_ORGANISATION o on c.org_id=o.id',
'    left join hr_hcf_lookup hhl on (c.appraisal_type = hhl.table_value and hhl.table_name = ''TBLAPPRAISALTYPE'' and pkg_global_fnts.fn_sharereforg(hhl.org_id) = :APP_ORG_SHR_DED)',
'WHERE ',
'    c.ORG_ID =:APP_ORG_ID',
'order by ',
'    c.date_effective desc',
'',
'-- select Upper(TRIM(c.merit_description)||'' - (''||TRIM(lk.value_description)||',
'-- case when c.supervisor=''Y'' then '' (MANAGEMENT))'' else '')'' end||'' Duration (Mths): ''||c.duration_in_mths||'' EFFECTIVE(''||to_char(c.Date_Effective,''DD-MON-YYYY''))||'')'' A,c.id',
'-- from HR_APP_MERITCONFIG c join HR_HCF_ORGANISATION o on c.org_id=o.id',
'-- join table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) lk on c.employment_class_id=lk.id',
'-- order by c.date_effective desc',
'---',
'',
'/*',
'select Upper(Short_name||'' ''||TRIM(c.value_description)||',
'case when supervisor=''Y'' then '' MANAGEMENT''',
'else '''' end||'' Range ''||lower_range||''--''||upper_range||'' EFFECTIVE(''||to_char(Date_Effective,''DD-MON-YYYY''))||'')'' ||case when add_info is null then '''' else ''--''||add_info end A,a.id',
'from HR_APP_MERITCONFIG a ',
'join HR_HCF_ORGANISATION b on a.org_id=b.id',
'join table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) c on a.employment_class_id=c.id',
'order by 1',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205369011827152450)
,p_name=>'P1496_APP_START_PERIOD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appraised for'
,p_source=>'APPRAISAL_START_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1205369456104152451)
,p_name=>'P1496_APP_END_PERIOD'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'to '
,p_source=>'APPRAISAL_END_PERIOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1205369870450152452)
,p_name=>'P1496_EMP_ID'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a id="clocklink" href="#">',
'  <span aria-hidden="true" class="fa fa-clock-o" style="color: green;"></span>',
'</a>'))
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1496_ID IS NULL and :P1496_RETURN_VALUE !=1281 then',
'',
'  if pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID) = 1 THEN',
'     return',
'           ''select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'            from table(pkg_global_fnts.Get_availemployee(to_date(:P1496_APP_START_PERIOD, ''''DD-MON-YYYY''''))) X join VW_SELFREPORT_TO Y on X.report_to = Y.EMPLOYEE_NO',
'            where TO_CHAR(TO_DATE(:P1496_APP_START_PERIOD, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY'''') > date_employed',
'            union            ',
'                select distinct EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'                from table(pkg_global_fnts.Get_availemployee(to_date(:P1496_APP_START_PERIOD, ''''DD-MON-YYYY''''))) X JOIN tbluser V ON X.ID=V.EMPLOYEE_NO',
'                where v.user_name =:APP_USER',
'                ORDER BY 1'';',
'    ',
'',
'    else',
'    return ',
'    ''select emp.employee||''''(No.''''||emp.emp_company_no||'''')'''' a, emp.id b',
'     from table(pkg_global_fnts.get_availemployee(nvl(:P1496_APP_START_PERIOD, trunc(current_date)))) emp',
'      where ',
'        emp.org_id = :APP_ORG_ID',
'        order by 1'';',
'     ',
'',
'    end if;',
'',
'elsif :P1496_ID IS NULL and :P1496_RETURN_VALUE =1281 then',
'',
'    return ',
'    ''select distinct a.employee||''''(No.''''||a.EMP_COMPANY_NO||'''')'''' employee, a.id',
'      from table(pkg_global_fnts.Get_availemployee(to_date(:P1496_APP_START_PERIOD, ''''DD-MON-YYYY''''))) a join VW_EMPLOYEE b  on a.id=b.id',
'      where  exists (select 1',
'                        from hr_hcf_jobresponsibility w join hr_hcf_position z on z.job_id = w.job_id',
'                        where z.id = a.position_id',
'                        )',
'        order by 1'';',
'',
'else',
'',
'return',
'   ''select distinct full_name a, id',
'     from hr_rcm_employee b  ',
'where (b.separated_Status is  null or b.Date_Separated> nvl(:P1496_APP_START_PERIOD, trunc(current_date)) )',
'                and date_employed <= nvl(:P1496_APP_START_PERIOD, trunc(current_date))',
'and B.org_id = :APP_ORG_ID',
'order by 1'';',
'',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1496_MERIT_CONFIG_ID,P1496_APP_START_PERIOD'
,p_ajax_items_to_submit=>'P1496_ID,P1496_RETURN_VALUE,P1496_MERIT_CONFIG_ID,P1496_APP_START_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1205370288047152453)
,p_name=>'P1496_APPRAISAL_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TRUNC(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Appraisal Date'
,p_source=>'APPRAISAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_colspan=>6
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1205370621094152454)
,p_name=>'P1496_QUESTION_ANSWERED'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Question Ans.'
,p_source=>'QUESTION_ANSWERED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205371090785152455)
,p_name=>'P1496_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205371434660152456)
,p_name=>'P1496_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1496_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1496_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P1496_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205371819705152456)
,p_name=>'P1496_COMENT_SWITCH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205372235388152458)
,p_name=>'P1496_WORK_FLOW_COMMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205372641930152458)
,p_name=>'P1496_APPROVED_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_source=>'APPROVED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205373081320152459)
,p_name=>'P1496_APPROVED_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'APPROVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205373433949152460)
,p_name=>'P1496_FULL_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2221076184682730232)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a',
'where id=:P1496_EMP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1205410573863152508)
,p_name=>'P1496_DELETE_APPRAISER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2211606397746591666)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(145000993496268052)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1496_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(145000618897268052)
,p_validation_name=>'reject_approval_disapproval'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and pkg_global_fnts.status_descript(:P1496_STATUS) like ''%APPRO%'' then',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'User action disallowed. You are not an approver!'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(145000142360268052)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_APP_MERITINCREMENT'' ---(change to current screen table)',
'        and table_name_key=:P1496_ID;-----(change to current primary key)',
'        ',
'    if v_test_approval=0 and pkg_global_fnts.status_descript(:P1496_STATUS) =''VERIFY'' then --(? mean current screen ID)',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_when_button_pressed=>wwv_flow_imp.id(144996431101268050)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145009992114268060)
,p_name=>'set_value_end_date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1496_MERIT_CONFIG_ID'
,p_condition_element=>'P1496_MERIT_CONFIG_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145010496881268061)
,p_event_id=>wwv_flow_imp.id(145009992114268060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_APP_END_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select add_months(to_date(:P1496_APP_START_PERIOD,''DD-MON-YYYY''),DURATION_IN_MTHS)-1',
'FROM HR_APP_MERITCONFIG',
'WHERE ID=to_number(:P1496_MERIT_CONFIG_ID)'))
,p_attribute_07=>'P1496_APP_START_PERIOD,P1496_MERIT_CONFIG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145010873123268061)
,p_name=>'show_hide_button'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1496_FACTOR'
,p_condition_element=>'P1496_FACTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145011309300268061)
,p_name=>'Print_OnPreme'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144999183031268051)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%192.168.12.16%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145011825559268062)
,p_event_id=>wwv_flow_imp.id(145011309300268061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:APP_ID=&P1496_ID.,PeoplePay/01_HR/Standard_Letters/APR_LETTER'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145012218585268062)
,p_name=>'show_comments'
,p_event_sequence=>40
,p_condition_element=>'P1496_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145012679559268062)
,p_event_id=>wwv_flow_imp.id(145012218585268062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145013159589268062)
,p_event_id=>wwv_flow_imp.id(145012218585268062)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145013604511268063)
,p_name=>'show_comment'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1496_COMENT_SWITCH'
,p_condition_element=>'P1496_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145014105355268063)
,p_event_id=>wwv_flow_imp.id(145013604511268063)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145014619225268063)
,p_event_id=>wwv_flow_imp.id(145013604511268063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145015032366268063)
,p_name=>'Print_Cloud'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144999183031268051)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%bfe1jra07zihlbs-innosysdb2019.adb.us-ashburn-1.oraclecloudapps.com%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145015524152268064)
,p_event_id=>wwv_flow_imp.id(145015032366268063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:APP_ID=&P1496_ID.,PeoplePay/01_HR/Standard_Letters/APR_LETTER'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}*/',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Cloud/01_HR/Standard_Letters/APR_LETTER-APP_ID=&P1496_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar'
||'=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145015931386268064)
,p_name=>'REFRESH_VALUES'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1496_FACTORS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145016287240268064)
,p_name=>'SET_INC_VALUES_1'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3363559139068454659)
,p_triggering_element=>'INCREASE_GRADE_POINT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145016779183268065)
,p_event_id=>wwv_flow_imp.id(145016287240268064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_RATE,INCREASE_AMOUNT,INCREASE_PERCENT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    C.INCREASE_RATE,',
'    C.INCREASE_AMOUNT, ',
'    C.INCREASE_PERCENT',
'FROM ',
'    (SELECT',
'        B.*,',
'        ROUND((B.INCREASE_AMOUNT/B.CURRENT_RATE) * 100,2) INCREASE_PERCENT',
'    FROM',
'        (SELECT',
'            A.POINT_AMOUNT INCREASE_RATE, ',
'            A.CURRENT_RATE,',
'            (A.POINT_AMOUNT - A.CURRENT_RATE) INCREASE_AMOUNT',
'        FROM ',
'            (',
'            SELECT',
'                POINT_AMOUNT, ',
'                TO_NUMBER(REPLACE(REPLACE(:CURRENT_RATE, ''$'', ''''), '','', '''')) CURRENT_RATE',
'            FROM',
'                HR_HCF_POSITIONGRADEPOINT ',
'            WHERE',
'                ID = :INCREASE_GRADE_POINT_ID',
'            ) A',
'        ) B',
'    ) C'))
,p_attribute_07=>'INCREASE_GRADE_POINT_ID,CURRENT_RATE'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145017239643268065)
,p_event_id=>wwv_flow_imp.id(145016287240268064)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_FLAG'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'GPI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145017797297268065)
,p_event_id=>wwv_flow_imp.id(145016287240268064)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_RATE,INCREASE_AMOUNT,INCREASE_PERCENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145018199908268065)
,p_name=>'New'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1496_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145018728677268066)
,p_event_id=>wwv_flow_imp.id(145018199908268065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_FLAG2'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1234'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145019094363268066)
,p_name=>'SET_INC_VALUES_2'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3363559139068454659)
,p_triggering_element=>'INCREASE_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145019594601268066)
,p_event_id=>wwv_flow_imp.id(145019094363268066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_AMOUNT,INCREASE_PERCENT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    C.INCREASE_AMOUNT, ',
'    C.INCREASE_PERCENT',
'FROM ',
'    (SELECT',
'        B.*,',
'        ROUND((B.INCREASE_AMOUNT/B.CURRENT_RATE) * 100, 2) INCREASE_PERCENT',
'    FROM',
'        (SELECT',
'            A.*,',
'            (A.INCREASE_RATE - A.CURRENT_RATE) INCREASE_AMOUNT',
'        FROM ',
'            (',
'            SELECT',
'                TO_NUMBER(REPLACE(REPLACE(:CURRENT_RATE, ''$'', ''''), '','', '''')) CURRENT_RATE,',
'                TO_NUMBER(REPLACE(REPLACE(:INCREASE_RATE, ''$'', ''''), '','', '''')) INCREASE_RATE',
'            FROM',
'                DUAL ',
'            ) A',
'        ) B',
'    ) C'))
,p_attribute_07=>'INCREASE_RATE,CURRENT_RATE'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145020106856268066)
,p_event_id=>wwv_flow_imp.id(145019094363268066)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_AMOUNT,INCREASE_PERCENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145020517921268066)
,p_name=>'SET_INC_VALUES_3'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3363559139068454659)
,p_triggering_element=>'INCREASE_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145020986076268067)
,p_event_id=>wwv_flow_imp.id(145020517921268066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_RATE,INCREASE_PERCENT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    C.INCREASE_RATE, ',
'    C.INCREASE_PERCENT',
'FROM ',
'    (SELECT',
'        B.*,',
'        ROUND((B.INCREASE_AMOUNT/B.CURRENT_RATE) * 100, 2) INCREASE_PERCENT',
'    FROM',
'        (SELECT',
'            A.*,',
'            (A.CURRENT_RATE + A.INCREASE_AMOUNT) INCREASE_RATE',
'        FROM ',
'            (',
'            SELECT',
'                TO_NUMBER(REPLACE(REPLACE(:CURRENT_RATE, ''$'', ''''), '','', '''')) CURRENT_RATE,',
'                TO_NUMBER(REPLACE(REPLACE(:INCREASE_AMOUNT, ''$'', ''''), '','', '''')) INCREASE_AMOUNT',
'            FROM',
'                DUAL ',
'            ) A',
'        ) B',
'    ) C'))
,p_attribute_07=>'CURRENT_RATE,INCREASE_AMOUNT'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145021462722268067)
,p_event_id=>wwv_flow_imp.id(145020517921268066)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_RATE,INCREASE_PERCENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145021931548268067)
,p_name=>'SET_INC_VALUES_4'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3363559139068454659)
,p_triggering_element=>'INCREASE_PERCENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145022349005268067)
,p_event_id=>wwv_flow_imp.id(145021931548268067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_AMOUNT,INCREASE_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    C.INCREASE_AMOUNT, ',
'    C.INCREASE_RATE',
'FROM ',
'    (SELECT',
'        B.*,',
'        ROUND((B.INCREASE_AMOUNT + B.CURRENT_RATE), 2) INCREASE_RATE',
'    FROM',
'        (SELECT',
'            A.*,',
'            ROUND((A.INCREASE_PERCENT/100) * CURRENT_RATE, 2) INCREASE_AMOUNT',
'        FROM ',
'            (',
'            SELECT',
'                TO_NUMBER(REPLACE(REPLACE(:CURRENT_RATE, ''$'', ''''), '','', '''')) CURRENT_RATE,',
'                TO_NUMBER(REPLACE(REPLACE(:INCREASE_PERCENT, ''$'', ''''), '','', '''')) INCREASE_PERCENT',
'            FROM',
'                DUAL ',
'            ) A',
'        ) B',
'    ) C'))
,p_attribute_07=>'CURRENT_RATE,INCREASE_PERCENT'
,p_attribute_08=>'N'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145022906913268068)
,p_event_id=>wwv_flow_imp.id(145021931548268067)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'INCREASE_AMOUNT,INCREASE_RATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145023290916268068)
,p_name=>'set_proposed_dates'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3421237194765496335)
,p_triggering_element=>'COURSE_SCHEDULE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145023795137268068)
,p_event_id=>wwv_flow_imp.id(145023290916268068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PROPOSED_TRAIN_START,PROPOSED_TRAIN_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    START_DATE, NVL(END_DATE,current_date)',
'FROM',
'    HR_TRN_COURSE_SCHEDULE',
'WHERE',
'    ID = :COURSE_SCHEDULE_ID'))
,p_attribute_07=>'COURSE_SCHEDULE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145024136832268068)
,p_name=>'refresh_rating'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5799299306644765287)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145025042806268069)
,p_name=>'dy_open_shifts_region'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clocklink'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145025561194268070)
,p_event_id=>wwv_flow_imp.id(145025042806268069)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2219896925278480332)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145026073347268070)
,p_event_id=>wwv_flow_imp.id(145025042806268069)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2219896925278480332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145026486275268070)
,p_name=>'cancelAppraiser'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'cancelAppraiser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145026939331268070)
,p_event_id=>wwv_flow_imp.id(145026486275268070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1496_DELETE_APPRAISER_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145027492594268070)
,p_event_id=>wwv_flow_imp.id(145026486275268070)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit(''CANCEL_APPRAISER'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145027854842268071)
,p_name=>'dy_set_deduction_amount'
,p_event_sequence=>220
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2235025765835731832)
,p_triggering_element=>'PERIOD,AMOUNT_OWING'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145028426201268071)
,p_event_id=>wwv_flow_imp.id(145027854842268071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    l_deduction_amount number;',
'BEGIN',
'    if :PERIOD = 0 THEN',
'        l_deduction_amount := :AMOUNT_OWING;',
'    elsif :PERIOD > 0 THEN',
'        l_deduction_amount := :AMOUNT_OWING / :PERIOD;',
'    end if;',
'',
'    return l_deduction_amount;',
'END;'))
,p_attribute_07=>'AMOUNT_OWING,PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145007134674268058)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_APP_MERITINCREMENT'
,p_attribute_02=>'HR_APP_MERITINCREMENT'
,p_attribute_03=>'P1496_ID'
,p_attribute_04=>'ID'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EXISTS (SELECT 1',
'        FROM VW_USERACCESS A ',
'        where A.PAYMENT_TYPE=HR_APP_MERITINCREMENT.PAYMENT_TYPE AND A.EMPLOYMENT_CLASS_ID=HR_APP_MERITINCREMENT.EMPLOYMENT_CLASS_ID AND',
'        A.ORG_ID=HR_APP_MERITINCREMENT.ORG_ID)'))
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You don''t have the access rights to view this employee file. Contact your system administrator if you believe access should be granted to you.',
''))
,p_internal_uid=>29223000817954353
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145006759737268058)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_APP_MERITINCREMENT'
,p_attribute_02=>'HR_APP_MERITINCREMENT'
,p_attribute_03=>'P1496_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1496_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>29222625880954353
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145006366487268058)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144995978644268049)
,p_internal_uid=>29222232630954353
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145005546992268056)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'    v_merit_detail varchar2(200);',
'',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1496_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1496_STATUS;',
'',
'select a.merit_description||'' Range ''||lower_range||''--''||upper_range||'' EFFECTIVE(''||to_char(Date_Effective,''DD-MON-YYYY'')||'')''  A into v_merit_detail',
'from HR_APP_MERITCONFIG a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'WHERE a.id=:P1496_MERIT_CONFIG_ID;',
'',
'-- select Upper(Short_name)||'' ''||initcap(TRIM(c.value_description)||',
'-- case when supervisor=''Y'' then '' MANAGEMENT''',
'-- else '''' end||',
'-- '' Range ''||lower_range||''--''||upper_range||'' EFFECTIVE(''||to_char(Date_Effective,''DD-MON-YYYY''))||'')'' A into v_merit_detail',
'-- from HR_APP_MERITCONFIG a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'-- join table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) c on a.employment_class_id=c.id',
'-- WHERE a.id=:P1496_MERIT_CONFIG_ID;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_merit_detail,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1496_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Appraisal Management'',',
'	:P1496_STATUS,:APP_PAGE_ID,:P1496_TRANSACTION_TYPE_ID,',
'        ''HR_APP_MERITINCREMENT'',:P1496_WORK_FLOW_COMMENT, :P1496_ID);',
'',
' if pkg_global_fnts.status_descript(:P1496_STATUS) like ''APPROV%'' then    ',
'      pkg_global_fnts.approve_record(NVL(V(''APP_USER''),user), ''HR_APP_MERITINCREMENT'',''ID'', :P1496_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P1496_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P1496_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_APP_MERITINCREMENT'', ''ID'', :P1496_ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144996431101268050)
,p_process_when=>'P1496_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>29221413135954351
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144920633503267981)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5781573204219301278)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Resulting Remuneration - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29136499646954276
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144908270279267969)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3363559139068454659)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Remuneration Increase - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29124136422954264
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145001670954268053)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'import_salary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- declare',
'--     l_grade_scale hr_rcm_salary.sal_grade_id%type;',
'--     l_grade_point_id hr_rcm_salary.grade_point_id%type;',
'--     l_personal_rate hr_rcm_salary.personal_rate%type;',
'--     l_sal_id hr_rcm_salary.id%type;',
'--     l_salary_currency hr_rcm_salary.salary_currency%type;',
'',
'-- begin ',
'--     select',
'--         id, sal_grade_id, grade_point_id, personal_rate, salary_currency',
'--     into',
'--         l_sal_id, l_grade_scale, l_grade_point_id, l_personal_rate, l_salary_currency',
'--     from',
'--         hr_rcm_salary ',
'--     where',
'--         emp_id = :P1496_EMP_ID',
'--         and (end_date is null or end_date >= trunc(current_date));',
'    ',
'',
'--     begin',
'--         insert into hr_app_merit_sal_increase',
'--         (old_salary_id, emp_id, appraisal_id, current_rate, current_grade_scale, current_grade_point_id, salary_currency)',
'--         values',
'--         (l_sal_id, :P1496_EMP_ID, :P1496_ID, l_personal_rate, l_grade_scale, l_grade_point_id, l_salary_currency);',
'--     end;',
'',
'-- end;',
'',
'begin',
'    pkg_appraisal.prcd_import_salary(in_appraisal_id => :P1496_ID);',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Salary importation was unsuccessful!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144907751434267969)
,p_process_success_message=>'Necessary salary information imported successfully!'
,p_internal_uid=>29217537097954348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144937865546267993)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3419751874056870670)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'REMARKS_DETAILS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29153731689954288
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145002049298268053)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'import_remarks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    INSERT INTO HR_APP_MERIT_EMP_REMARKS',
'        (APPRAISAL_ID, REASON)',
'    SELECT',
'        :P1496_ID, UPPER(VALUE_DESCRIPTION) REASON',
'    FROM',
'        HR_HCF_LOOKUP A',
'    WHERE',
'        ORG_ID = :APP_ORG_SHR_DED',
'        AND TABLE_NAME = ''TBLREASON''',
'        AND LOOKUP_ID = pkg_global_fnts.get_lookup_id(''RTA'',''TBLREASONTYPE'')',
'        AND NOT EXISTS',
'            (SELECT',
'                1',
'            FROM',
'                HR_APP_MERIT_EMP_REMARKS B',
'            WHERE',
'                APPRAISAL_ID = :P1496_ID',
'                AND UPPER(A.VALUE_DESCRIPTION) = UPPER(B.REASON));',
'exception',
'    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Remarks importation was unsuccessful!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144937335111267993)
,p_process_success_message=>'Remarks successfully imported!'
,p_internal_uid=>29217915441954348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144928834340267987)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3421237194765496335)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Training Required - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29144700483954282
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145002528465268053)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_appraisal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      v_count number; ',
'      ',
'begin',
'',
'   select count(1) into v_count',
'   from hr_app_meritincrement',
'   where id = :P1496_ID',
'   and  VERIFIED_BY is not null',
'   and (APPROVED_BY is not null);',
'   ',
'   ',
'   if  v_count > 0 and upper(pkg_global_fnts.status_descript(:P1496_STATUS)) = ''VERIFY'' then',
'        pkg_appraisal.prcd_appraisal_verify(:P1496_ID);',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144996431101268050)
,p_internal_uid=>29218394608954348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145008418200268060)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gen_appraisal_questions_from_job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    PKG_APPRAISAL.PRCD_POP_EMP_APPRAISAL(',
'        in_appraisal_id => :P1496_ID,',
'        in_config_id => :P1496_MERIT_CONFIG_ID,',
'        in_emp_id => :P1496_EMP_ID,',
'        in_org_id => :APP_ORG_SHR_DED,',
'        in_appraisal_start_period => :P1496_APP_START_PERIOD, ',
'        in_appraisal_end_period => :P1496_APP_END_PERIOD);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144966843214268021)
,p_internal_uid=>29224284343954355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145008805417268060)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gen_appraiser'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    pkg_appraisal.prcd_appraiser_details(',
'        in_appraisal_id => :P1496_ID,',
'        in_user_id => :APP_USER_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144975147767268030)
,p_internal_uid=>29224671560954355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144975978347268031)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2211606397746591666)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appraisers - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29191844490954326
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144983837260268037)
,p_process_sequence=>260
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2211996735138405846)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appraiser Rating - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29199703403954332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145009195582268060)
,p_process_sequence=>270
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'compute_appraisal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_appraisal.prcd_appraisal_overall_rating(in_appraisal_id => :P1496_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144952601990268008)
,p_internal_uid=>29225061725954355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145009549347268060)
,p_process_sequence=>280
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel_appraiser'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update hr_app_appraiser',
'    set status = ''CANCELLED''',
'    where id = :P1496_DELETE_APPRAISER_ID',
'    and end_date is null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CANCEL_APPRAISER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>29225415490954355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144898744788267961)
,p_process_sequence=>290
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2235025765835731832)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Resulting Deduction - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29114610931954256
);
wwv_flow_imp.component_end;
end;
/
