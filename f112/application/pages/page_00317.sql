prompt --application/pages/page_00317
begin
--   Manifest
--     PAGE: 00317
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
 p_id=>317
,p_name=>'rpttrainEnrollment'
,p_alias=>'RPTTRAINENROLLMENT'
,p_step_title=>'View/Update Training Enrollment'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3027602741020425839)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142631785654158850)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5797308939438399927)
,p_plug_name=>'Training Enrolment'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5913942106389700926)
,p_plug_name=>'Update Training Enrollments'
,p_parent_plug_id=>wwv_flow_imp.id(5797308939438399927)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5913942199223700927)
,p_plug_name=>'Training Enrolment Filter For Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(5913942106389700926)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5913942309922700928)
,p_plug_name=>'Enrollment Updating'
,p_parent_plug_id=>wwv_flow_imp.id(5913942199223700927)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5927753756015106630)
,p_plug_name=>'Status Region'
,p_parent_plug_id=>wwv_flow_imp.id(5913942199223700927)
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
 p_id=>wwv_flow_imp.id(6595060313214877205)
,p_plug_name=>'Training Enrolment Listing'
,p_parent_plug_id=>wwv_flow_imp.id(5913942106389700926)
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
'       htcs.end_date SCHEDULE_END,',
'       decode(UPPER(hte.enrollment_status),''VERIFIED'',''X'' ,''UD'') EDITABLE',
'  from HR_TRN_ENROLLMENT hte',
'    left join hr_trn_course_schedule htcs on hte.course_schedule_id = htcs.id ',
' where hte.COURSE_ID = NVL(:P317_COURSE_1, hte.COURSE_ID)',
' AND nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY'')',
'AND (NVL(hte.COURSE_SCHEDULE_ID, 1) = NVL(NVL(:P317_COURSE_SCHEDULE_1, hte.COURSE_SCHEDULE_ID), 1) ',
'or (hte.course_schedule_id is null and nvl(trunc(hte.proposed_train_start), trunc(htcs.start_date))  BETWEEN TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY'')))',
'AND pkg_global_fnts.fn_sharereforg(hte.org_ID)=NVL(:P317_ORGANISATION_1, :APP_ORG_SHR_DED)',
'-- AND hte.ORG_ID = NVL(:P317_ORGANISATION_1, hte.ORG_ID)',
'-- AND hte.ORGDTL_ID = NVL(:P317_DEPARTMENT, hte.ORGDTL_ID)',
'-- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P317_JOB, JOB_ID) AND POS.ID = hte.position_id)',
'-- AND hte.EMP_GRADE_ID = NVL(:P317_EMP_GRADE, hte.EMP_GRADE_ID)',
'-- AND hte.EMP_ID = NVL(:P317_EMPLOYEE, hte.EMP_ID)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P317_COURSE_1,P317_COURSE_SCHEDULE_1,P317_START_DATE_1,P317_END_DATE_1,P317_ORGANISATION_1'
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
 p_id=>wwv_flow_imp.id(5797310802089399946)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797310888256399947)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797310979819399948)
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
,p_readonly_condition_type=>'EXISTS'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_trn_enrollment ',
'where id = :ID'))
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797311313892399951)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797311376623399952)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797311527049399953)
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
 p_id=>wwv_flow_imp.id(5797311614711399954)
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
 p_id=>wwv_flow_imp.id(5797311701323399955)
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
 p_id=>wwv_flow_imp.id(5797311762828399956)
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
 p_id=>wwv_flow_imp.id(5797311934405399957)
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
,p_readonly_condition_type=>'EXISTS'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_trn_enrollment ',
'where id = :ID'))
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797311998151399958)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312093358399959)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312237088399960)
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
 p_id=>wwv_flow_imp.id(5797312243202399961)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312381386399962)
,p_name=>'GRADE_STATUS_ATTAINED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_STATUS_ATTAINED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Grade Status Attained'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312459095399963)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312618403399964)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312738640399965)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797312812385399966)
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
 p_id=>wwv_flow_imp.id(5797312875821399967)
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
 p_id=>wwv_flow_imp.id(5797312946526399968)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797313052663399969)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5797313237617399970)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5798041837815874246)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5816221709419141451)
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
 p_id=>wwv_flow_imp.id(5816221835210141452)
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
 p_id=>wwv_flow_imp.id(5816221880541141453)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5816221979207141454)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5927499981272371431)
,p_name=>'EDITABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDITABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
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
 p_id=>wwv_flow_imp.id(6595060557265877207)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6595060596912877208)
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
 p_id=>wwv_flow_imp.id(6595060857278877210)
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
 p_id=>wwv_flow_imp.id(6595060878427877211)
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
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6595061309842877215)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6595061502295877217)
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
,p_readonly_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_readonly_condition=>'ENROLLMENT_STATUS'
,p_readonly_condition2=>'VERIFIED'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6595062023794877222)
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
 p_id=>wwv_flow_imp.id(6595062085826877223)
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
 p_id=>wwv_flow_imp.id(6595060427759877206)
,p_internal_uid=>6479276293903563501
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_edit_row_operations_column=>'EDITABLE'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(6595091140871153826)
,p_interactive_grid_id=>wwv_flow_imp.id(6595060427759877206)
,p_static_id=>'7976768'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6595091347783153826)
,p_report_id=>wwv_flow_imp.id(6595091140871153826)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797623507489707231)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5797310802089399946)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>191
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797624374933707236)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5797310888256399947)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797625308410707241)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5797310979819399948)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>233
,p_break_order=>5
,p_break_is_enabled=>false
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797628014409707254)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5797311313892399951)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797628924037707257)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(5797311376623399952)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797629797782707262)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(5797311527049399953)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>187.817
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797630676331707265)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(5797311614711399954)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797631641862707269)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(5797311701323399955)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797632464287707273)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(5797311762828399956)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797633400011707278)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5797311934405399957)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>233
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797634278730707284)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(5797311998151399958)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797635174049707289)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(5797312093358399959)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797636112240707292)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(5797312237088399960)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797637013484707296)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(5797312243202399961)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797637942601707300)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(5797312381386399962)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797638762682707303)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(5797312459095399963)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797639567184707307)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(5797312618403399964)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797640499293707311)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(5797312738640399965)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797641424000707315)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(5797312812385399966)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797642248012707319)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5797312875821399967)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797643206315707322)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(5797312946526399968)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797644141049707326)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5797313052663399969)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5797645036444707330)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5797313237617399970)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5799595628028659441)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(5798041837815874246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5816483722753892642)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5816221709419141451)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5816484563954892647)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5816221835210141452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5816569465385961408)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5816221880541141453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5816570371837961412)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(5816221979207141454)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5927666288177994603)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(5927499981272371431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595091817358153828)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(6595060557265877207)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595093145098153836)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6595060857278877210)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595094009452153840)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6595060878427877211)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>233
,p_break_order=>10
,p_break_is_enabled=>false
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595097633837153857)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(6595061309842877215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595099462269153866)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6595061502295877217)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595103867147153887)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(6595062023794877222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6595104690403153891)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(6595062085826877223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(4998418011596745722)
,p_view_id=>wwv_flow_imp.id(6595091347783153826)
,p_execution_seq=>5
,p_name=>'No Schedule'
,p_background_color=>'#FCEC77'
,p_text_color=>'#000000'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(6595060878427877211)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6594980466806794035)
,p_plug_name=>'View Training Enrollments'
,p_parent_plug_id=>wwv_flow_imp.id(5797308939438399927)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5913972436656803160)
,p_plug_name=>'Training Enrolment Listing - IR'
,p_parent_plug_id=>wwv_flow_imp.id(6594980466806794035)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
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
' where hte.COURSE_ID = NVL(:P317_COURSE, hte.COURSE_ID)',
' AND nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN trunc(TO_DATE(:P317_START_DATE, ''DD-MON-YYYY'')) AND trunc(TO_DATE(:P317_END_DATE, ''DD-MON-YYYY''))',
'AND NVL(hte.COURSE_SCHEDULE_ID, 1) = NVL(NVL(:P317_COURSE_SCHEDULE, hte.COURSE_SCHEDULE_ID), 1) ',
'AND nvl(trunc(hte.proposed_train_start), trunc(htcs.start_date)) BETWEEN trunc(TO_DATE(:P317_START_DATE, ''DD-MON-YYYY'')) AND trunc(TO_DATE(:P317_END_DATE, ''DD-MON-YYYY''))',
'AND pkg_global_fnts.fn_sharereforg(hte.org_ID)=NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED)',
'AND hte.ORGDTL_ID = NVL(:P317_DEPARTMENT, hte.ORGDTL_ID)',
'-- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P317_JOB, JOB_ID) AND POS.ID = hte.position_id)',
'-- AND hte.EMP_GRADE_ID = NVL(:P317_EMP_GRADE, hte.EMP_GRADE_ID)',
'AND hte.EMP_ID = NVL(:P317_EMPLOYEE, hte.EMP_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P317_COURSE,P317_COURSE_SCHEDULE,P317_START_DATE,P317_END_DATE,P317_ORGANISATION,P317_DEPARTMENT,P317_JOB,P317_EMP_GRADE,P317_EMPLOYEE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Training Enrolment Listing - IR'
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
 p_id=>wwv_flow_imp.id(5913976484278814650)
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
,p_internal_uid=>5798192350422500945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152786843820591765)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152787237297591765)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139020632144197777)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152787621018591766)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139021322402197778)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152787969410591766)
,p_db_column_name=>'COURSE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Course'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152788364857591766)
,p_db_column_name=>'PROPOSED_START'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Proposed Start'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152788829851591767)
,p_db_column_name=>'PROPOSED_END'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Proposed End'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152789172487591767)
,p_db_column_name=>'REASON_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Reason Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152789624196591768)
,p_db_column_name=>'REASON_DETAILS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reason Details'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152790040406591768)
,p_db_column_name=>'REMARKS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152790438392591768)
,p_db_column_name=>'CREATED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152790842393591769)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152791175205591769)
,p_db_column_name=>'UPDATED'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152791648203591770)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152791968461591770)
,p_db_column_name=>'ORG_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139019842482197777)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152792397357591771)
,p_db_column_name=>'EMP_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139016000553197773)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152792770496591771)
,p_db_column_name=>'COURSE_NAME'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Course Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152793179424591771)
,p_db_column_name=>'COURSE_DESCRIPTION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Course Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152793553921591772)
,p_db_column_name=>'SCHEDULE_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Schedule Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152793975704591772)
,p_db_column_name=>'GRADE_ATTAINED'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Grade Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152794380603591773)
,p_db_column_name=>'GRADE_STATUS_ATTAINED'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Grade Status Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152794777724591773)
,p_db_column_name=>'PERCENTAGE_ATTAINED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Percentage Attained'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152795225840591773)
,p_db_column_name=>'QUAL_LEVEL_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Qual Level Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152795584936591774)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152796003722591774)
,p_db_column_name=>'STATUS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152796398856591775)
,p_db_column_name=>'REQUEST_TYPE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Request Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152796823461591775)
,p_db_column_name=>'ENROLLMENT_NO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Enrollment No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152797238572591776)
,p_db_column_name=>'COURSE_SCHEDULE_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Course Schedule'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152797635690591776)
,p_db_column_name=>'APPRAISAL_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Appraisal Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152798004883591777)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Employment Type Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152798379211591777)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326550784367798359)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152798829849591778)
,p_db_column_name=>'REQUESTOR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Requestor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152799231128591778)
,p_db_column_name=>'ENROLLMENT_STATUS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Enrollment Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139018739769197775)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152799615865591779)
,p_db_column_name=>'SCHEDULE_START'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Schedule Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152799992406591779)
,p_db_column_name=>'SCHEDULE_END'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Schedule End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5914014285985063106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9905068'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_DESCRIPTION:ORG_ID:ENROLLMENT_NO:EMP_ID:PROPOSED_START:ORGDTL_ID:REQUEST_TYPE:CREATED:ENROLLMENT_STATUS:'
,p_break_on=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_DESCRIPTION'
,p_break_enabled_on=>'COURSE_ID:COURSE_SCHEDULE_ID:COURSE_DESCRIPTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6595059328146877195)
,p_plug_name=>'Training Enrolment Filter For Search/Entry'
,p_parent_plug_id=>wwv_flow_imp.id(6594980466806794035)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5797308970480399928)
,p_plug_name=>'Further Filter by'
,p_parent_plug_id=>wwv_flow_imp.id(6595059328146877195)
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
 p_id=>wwv_flow_imp.id(5797309749153399936)
,p_plug_name=>'Quick Load Enrolment'
,p_parent_plug_id=>wwv_flow_imp.id(6595059328146877195)
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5798042475368874253)
,p_plug_name=>'Enrollment Viewing'
,p_parent_plug_id=>wwv_flow_imp.id(6595059328146877195)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8228704014680509971)
,p_plug_name=>'Listing of Training Enrollment'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ORGDTL_ID,ENROLLMENT_NO,',
'       POSITION_ID,',
'       COURSE_ID,',
'       course_name,course_description,',
'       PROPOSED_TRAIN_START,',
'       PROPOSED_TRAIN_END,',
'       REASON_ID,',
'       REASON_DETAILS,',
'       REMARKS,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       ORG_ID,',
'       EMP_ID',
'  from hr_trn_enrollment',
'  where org_id=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Training Enrollment'
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
 p_id=>wwv_flow_imp.id(8228704377728509971)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:318:&SESSION.::&DEBUG.:RP,318:P318_ID:\#ID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_owner=>'RLANGFORD'
,p_internal_uid=>8112920243872196266
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152806651276591789)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152806954082591789)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326483173226690551)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152807431696591790)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326449371106652824)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152807804080591790)
,p_db_column_name=>'COURSE_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Course'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152808178425591790)
,p_db_column_name=>'PROPOSED_TRAIN_START'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Proposed Train Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152808648934591791)
,p_db_column_name=>'PROPOSED_TRAIN_END'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Proposed Train End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152808972246591791)
,p_db_column_name=>'REASON_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3190172012149246302)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152809426994591792)
,p_db_column_name=>'REASON_DETAILS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Reason Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152809769560591792)
,p_db_column_name=>'REMARKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152810220386591793)
,p_db_column_name=>'CREATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152810592158591793)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152811036899591793)
,p_db_column_name=>'UPDATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152811426378591794)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152811774381591795)
,p_db_column_name=>'ORG_ID'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152812180690591795)
,p_db_column_name=>'EMP_ID'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326578119485849578)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152812618534591796)
,p_db_column_name=>'COURSE_NAME'
,p_display_order=>44
,p_column_identifier=>'Q'
,p_column_label=>'Course Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152812982197591796)
,p_db_column_name=>'COURSE_DESCRIPTION'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Course Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1152806163879591788)
,p_db_column_name=>'ENROLLMENT_NO'
,p_display_order=>64
,p_column_identifier=>'S'
,p_column_label=>'Enrollment No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8228711363718521080)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9905199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:ORGDTL_ID:POSITION_ID:APXWS_CC_001:PROPOSED_TRAIN_START:PROPOSED_TRAIN_END:REASON_ID:REASON_DETAILS:REMARKS:ENROLLMENT_NO'
,p_break_on=>'APXWS_CC_001:0:0:0:0'
,p_break_enabled_on=>'APXWS_CC_001:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(139321464942340254)
,p_report_id=>wwv_flow_imp.id(8228711363718521080)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>' NVL( D , Q )'
,p_column_type=>'STRING'
,p_column_label=>'Course Requested'
,p_report_label=>'Course Requested'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139282216231340202)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(5927753756015106630)
,p_button_name=>'EXECUTE_UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Status'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139321888247340254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8228704014680509971)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:318:&SESSION.::&DEBUG.:318::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139279089290340199)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5913942199223700927)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Enrolments for Target Audience'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139279531131340199)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5913942199223700927)
,p_button_name=>'UPDATE_SCHEDULE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Schedule'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152769041987591728)
,p_name=>'P317_ORGANISATION_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5913942309922700928)
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and (x.ID = :APP_ORG_SHR_DED',
'     OR x.parent_org_id = :APP_ORG_SHR_DED',
'    )',
'and exists(select 1 from hr_trn_course a where a.org_id = x.id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_tag_attributes=>'style="width:100%;"'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(1152769525339591728)
,p_name=>'P317_COURSE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5913942309922700928)
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
'    and a.org_id = nvl(:P317_ORGANISATION_1, a.org_id)',
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
 p_id=>wwv_flow_imp.id(1152769904744591729)
,p_name=>'P317_COURSE_SCHEDULE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5913942309922700928)
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
'and b.id = NVL(:P317_COURSE_1, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_COURSE_1'
,p_ajax_items_to_submit=>'P317_COURSE_1'
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
 p_id=>wwv_flow_imp.id(1152770254345591729)
,p_name=>'P317_START_DATE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5913942309922700928)
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
 p_id=>wwv_flow_imp.id(1152770713248591730)
,p_name=>'P317_END_DATE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5913942309922700928)
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
 p_id=>wwv_flow_imp.id(1152774167954591735)
,p_name=>'P317_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5927753756015106630)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ENROLLMENT_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM',
'(select ''Keyed'' DISPLAY, ''KEYED'' RETURN',
'from dual',
'union ',
'select ''Approved'' DISPLAY, ''APPROVED'' RETURN',
'from dual',
'union ',
'select ''Verified'' DISPLAY, ''VERIFIED'' RETURN',
'from dual',
'union ',
'select ''Cancelled'' DISPLAY, ''CANCELLED'' RETURN',
'from dual',
')',
'ORDER BY DISPLAY',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:100%;"'
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
 p_id=>wwv_flow_imp.id(1152806521550591792)
,p_name=>'P317_MASTER_ENROLLMENT_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6595060313214877205)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1152835313772591826)
,p_name=>'P317_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5797308970480399928)
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and pkg_global_fnts.fn_sharereforg(x.id)=:APP_ORG_SHR_DED',
'and exists(select 1 ',
'            from VW_USERACCESS_FULL V',
'            WHERE V.ORG_ID = X.ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_colspan=>12
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
 p_id=>wwv_flow_imp.id(1152835734707591827)
,p_name=>'P317_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5797308970480399928)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Level ''|| a.unit_level || '': '' || a.unit_name||''(''||short_name||'')'' reply, a.id',
'from  hr_hcf_orgstructuredtl a join hr_hcf_orgstructurehd b on a.org_structure_id = b.id',
'join hr_hcf_organisation c on c.id = b.org_id',
'where pkg_global_fnts.fn_sharereforg(c.id)=nvl(:P317_ORGANISATION, :APP_ORG_SHR_DED)',
'order by',
'   c.short_name asc, a.unit_name asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_ORGANISATION'
,p_ajax_items_to_submit=>'P317_ORGANISATION'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1152836094229591828)
,p_name=>'P317_JOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5797308970480399928)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DISTINCT JOB.DESCRIPTION || CASE WHEN :P317_ORGANISATION IS NULL THEN '' ('' || X.SHORT_NAME|| '')'' ELSE NULL END JOB, JOB.ID',
'FROM ',
'    HR_HCF_JOB JOB',
'     JOIN HR_HCF_POSITION POS ON JOB.ID = POS.JOB_ID',
'     JOIN HR_HCF_ORGSTRUCTUREDTL ORGDTL ON ORGDTL.ID = POS.ORGDTL_ID',
'     JOIN HR_HCF_ORGANISATION X ON X.ID = JOB.ORG_ID',
'WHERE (x.id  = NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED) OR x.parent_org_id = NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED))',
'ORDER BY',
' 1 ASC',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_ORGANISATION'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_colspan=>12
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1152836499680591828)
,p_name=>'P317_EMP_GRADE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5797308970480399928)
,p_prompt=>'Grade'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.GRADE_DESCRIPTION || '' ('' || A.GRADE_CODE || '') ('' || X.SHORT_NAME || '')'' , A.ID',
'FROM',
'    HR_HCF_POSITIONGRADE A',
'    JOIN HR_HCF_ORGANISATION X ON A.ORG_ID = X.ID',
'WHERE',
'    (X.ID = NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED) OR X.PARENT_ORG_ID = NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED))',
'    AND (A.EFFECTIVE_TODATE IS NULL OR A.EFFECTIVE_TODATE > TRUNC(current_date))',
'    AND EXISTS(',
'        SELECT 1 ',
'        FROM HR_HCF_POSITION B ',
'        WHERE A.ID = B.GRADE_ID',
'        --AND B.JOB_ID = NVL(:P317_JOB, B.JOB_ID)',
'        and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'          where  nvl(t.id,1)= nvl(B.ORGDTL_ID,1)',
'          and nvl(B.ORGDTL_ID,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(B.ORGDTL_ID,1), k.org_structure_id)         ',
'          )',
'    )',
'',
'ORDER BY A.GRADE_DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_ORGANISATION'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_colspan=>12
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1152836947388591829)
,p_name=>'P317_EMPLOYEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5797308970480399928)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    B.SURNAME || '', '' || B.FIRST_NAME || '' ('' || X.SHORT_NAME|| '')''  EMPLOYEE, A.ID',
'FROM',
'    HR_RCM_EMPLOYEE A',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'    JOIN HR_HCF_ORGANISATION X ON A.ORG_ID=X.ID',
'WHERE',
'    pkg_global_fnts.fn_sharereforg(A.org_ID)=NVL(:P317_ORGANISATION, :APP_ORG_SHR_DED)',
'    -- AND A.ORGDTL_ID = NVL(:P317_DEPARTMENT, A.ORGDTL_ID)',
'    -- AND A.EMP_GRADE_ID = NVL(:P317_EMP_GRADE, A.EMP_GRADE_ID)',
'    -- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P317_JOB, JOB_ID) AND POS.ID = A.position_id)',
'    AND (A.SEPARATED_STATUS_ID IS NULL OR (A.DATE_SEPARATED IS NULL OR A.DATE_SEPARATED > TRUNC(current_date)))',
'    and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'          where  nvl(t.id,1)= nvl(A.ORGDTL_ID,1)',
'          and nvl(A.ORGDTL_ID,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(A.ORGDTL_ID,1), k.org_structure_id)         ',
'          )',
'ORDER BY',
'    B.SURNAME, B.FIRST_NAME',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_ORGANISATION'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1152839579256591832)
,p_name=>'P317_ENROLL_EMPLOYEES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5797309749153399936)
,p_prompt=>'<b>Enroll Employees</b>'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    B.SURNAME || '', '' || B.FIRST_NAME, A.ID',
'FROM',
'    HR_RCM_EMPLOYEE A',
'    JOIN HR_RCM_INDIVIDUAL B ON A.IND_ID = B.ID',
'WHERE',
'    A.ORG_ID = NVL(:P317_ORGANISATION, :APP_ORG_ID)',
'    AND (A.SEPARATED_STATUS_ID IS NULL OR (A.DATE_SEPARATED IS NULL OR A.DATE_SEPARATED > TRUNC(current_date)))',
'    AND NOT EXISTS(',
'        SELECT ',
'            1',
'        FROM',
'            HR_TRN_ENROLLMENT C ',
'        WHERE',
'            C.EMP_ID = A.ID',
'            AND C.COURSE_ID = :P317_COURSE',
'            AND (C.COURSE_SCHEDULE_ID = NVL(:P317_COURSE_SCHEDULE, C.COURSE_SCHEDULE_ID) OR ',
'            TO_DATE(C.PROPOSED_TRAIN_START, ''DD-MON-YYYY'') BETWEEN TO_DATE(:P317_START_DATE, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_DATE, ''DD-MON-YYYY''))',
'    )',
''))
,p_lov_cascade_parent_items=>'P317_ORGANISATION,P317_COURSE'
,p_ajax_items_to_submit=>'P317_START_DATE,P317_END_DATE,P317_COURSE_SCHEDULE'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(1152840940987591834)
,p_name=>'P317_COURSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5798042475368874253)
,p_prompt=>'Course'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    COURSE_NAME || '' ['' || COURSE_NO || '']'',a.id',
'from ',
'    HR_TRN_COURSE a',
'    join hr_hcf_organisation x on a.org_id = x.id',
'where ',
'    pkg_global_fnts.fn_sharereforg(A.org_ID)=:APP_ORG_SHR_DED',
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
,p_tag_attributes=>'style="width:100%;"'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(1152841193918591834)
,p_name=>'P317_COURSE_SCHEDULE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5798042475368874253)
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
'        display , ',
'    a.id return_value ',
'from HR_TRN_COURSE_SCHEDULE a join HR_TRN_COURSE b on b.id = a.COURSE_ID',
'join hr_rcm_individual c on c.id=  a.FACILITATOR',
'join hr_hcf_organisation x on x.id = b.org_id',
'left join hr_hcf_worklocation wk on wk.id = a.wklocation_id',
'where pkg_global_fnts.fn_sharereforg(a.org_ID)=:APP_ORG_SHR_DED',
'and b.id = nvl(:P317_COURSE, b.id)',
'order by a.START_DATE desc '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P317_COURSE'
,p_ajax_items_to_submit=>'P317_COURSE'
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
 p_id=>wwv_flow_imp.id(1152841652560591835)
,p_name=>'P317_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5798042475368874253)
,p_item_default=>'''01-JAN-''  || TO_CHAR(current_date, ''YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(1152842020194591835)
,p_name=>'P317_END_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5798042475368874253)
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
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139322929380340255)
,p_name=>'checkSpan'
,p_event_sequence=>1
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_START_DATE,P317_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139323419531340255)
,p_event_id=>wwv_flow_imp.id(139322929380340255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if MONTHS_BETWEEN(TO_DATE(:P317_END_DATE, ''DD-MON-YYYY''), TO_DATE(:P317_START_DATE, ''DD-MON-YYYY'')) > 12 then ',
'        raise_application_error(-20000, ''The start date and end date should not span more than 12 months.'');',
'    end if;',
'end;'))
,p_attribute_02=>'P317_START_DATE,P317_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139323744824340256)
,p_name=>'checkSpan_1'
,p_event_sequence=>11
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_START_DATE_1,P317_END_DATE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139324331510340256)
,p_event_id=>wwv_flow_imp.id(139323744824340256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if MONTHS_BETWEEN(TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY''), TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'')) > 12 then ',
'',
'        raise_application_error(-20000, ''The start date and end date should not span more than 12 months.'');   ',
'        ',
'    end if;',
'end;'))
,p_attribute_02=>'P317_START_DATE_1,P317_END_DATE_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139324747411340256)
,p_event_id=>wwv_flow_imp.id(139323744824340256)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if MONTHS_BETWEEN(TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY''), TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'')) > 12 then ',
'',
'        :P317_START_DATE_1 := ''01-JAN-''|| TO_CHAR(current_date, ''YYYY'');',
'        :P317_END_DATE_1 := ''31-DEC-''|| TO_CHAR(current_date, ''YYYY'');',
'',
'        -- raise_application_error(-20000, ''The start date and end date should not span more than 12 months.'');   ',
'        ',
'    end if;',
'end;'))
,p_attribute_02=>'P317_START_DATE_1,P317_END_DATE_1'
,p_attribute_03=>'P317_START_DATE_1,P317_END_DATE_1'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139325161167340257)
,p_name=>'refresh_schedule'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139325638823340257)
,p_event_id=>wwv_flow_imp.id(139325161167340257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_COURSE_SCHEDULE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139326038781340257)
,p_name=>'refresh_classes'
,p_event_sequence=>31
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE,P317_COURSE_SCHEDULE,P317_START_DATE,P317_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139326489261340257)
,p_event_id=>wwv_flow_imp.id(139326038781340257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139326845946340258)
,p_name=>'set_time'
,p_event_sequence=>41
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_SCHEDULE'
,p_condition_element=>'P317_COURSE_SCHEDULE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139327402835340258)
,p_event_id=>wwv_flow_imp.id(139326845946340258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_START_DATE,P317_END_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(start_date, ''DD-MON-YYYY''), to_char(end_date, ''DD-MON-YYYY'')',
'from',
'    hr_trn_course_schedule',
'where ',
'    id = :P317_COURSE_SCHEDULE'))
,p_attribute_07=>'P317_COURSE_SCHEDULE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139327874543340258)
,p_event_id=>wwv_flow_imp.id(139326845946340258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_START_DATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139328306961340258)
,p_name=>'set_time_1'
,p_event_sequence=>51
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_triggering_element=>'COURSE_SCHEDULE_ID'
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P317_COURSE_SCHEDULE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139328781352340259)
,p_event_id=>wwv_flow_imp.id(139328306961340258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PROPOSED_START,PROPOSED_END'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(start_date, ''DD-MON-YYYY''), to_char(end_date, ''DD-MON-YYYY'')',
'from',
'    hr_trn_course_schedule',
'where ',
'    id = :COURSE_SCHEDULE_ID'))
,p_attribute_07=>'COURSE_SCHEDULE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139329276145340259)
,p_event_id=>wwv_flow_imp.id(139328306961340258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'PROPOSED_START,PROPOSED_END'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139329686378340259)
,p_name=>'set_time_1_1'
,p_event_sequence=>61
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_SCHEDULE_1'
,p_condition_element=>'P317_COURSE_SCHEDULE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139330230778340259)
,p_event_id=>wwv_flow_imp.id(139329686378340259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_START_DATE_1,P317_END_DATE_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_char(start_date, ''DD-MON-YYYY''), to_char(end_date, ''DD-MON-YYYY'')',
'from',
'    hr_trn_course_schedule',
'where ',
'    id = :P317_COURSE_SCHEDULE_1'))
,p_attribute_07=>'P317_COURSE_SCHEDULE_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139330677210340260)
,p_event_id=>wwv_flow_imp.id(139329686378340259)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_START_DATE_1,P317_END_DATE_1'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139331124216340260)
,p_name=>'refresh_items_below_org'
,p_event_sequence=>71
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_ORGANISATION'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139331588527340260)
,p_event_id=>wwv_flow_imp.id(139331124216340260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_DEPARTMENT,P317_JOB,P317_EMP_GRADE,P317_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139332031467340260)
,p_name=>'refresh_items_below_org_1'
,p_event_sequence=>81
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_ORGANISATION_1'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139332452615340261)
,p_event_id=>wwv_flow_imp.id(139332031467340260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_COURSE_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139332920295340261)
,p_name=>'refresh_items_below_org_1_1'
,p_event_sequence=>91
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139333381355340261)
,p_event_id=>wwv_flow_imp.id(139332920295340261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_COURSE_SCHEDULE_1'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139333830318340261)
,p_name=>'refresh_items_below_dept'
,p_event_sequence=>101
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_DEPARTMENT'
,p_condition_element=>'P317_DEPARTMENT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139334252763340262)
,p_event_id=>wwv_flow_imp.id(139333830318340261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_JOB,P317_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139334677185340262)
,p_name=>'refresh_items_below_grade'
,p_event_sequence=>111
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_EMP_GRADE'
,p_condition_element=>'P317_EMP_GRADE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139335227199340262)
,p_event_id=>wwv_flow_imp.id(139334677185340262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139335576276340263)
,p_name=>'refresh_items_below_pos'
,p_event_sequence=>121
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_JOB'
,p_condition_element=>'P317_JOB'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139336113461340263)
,p_event_id=>wwv_flow_imp.id(139335576276340263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P317_EMP_GRADE,P317_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139336486776340263)
,p_name=>'refresh_schedule_grid'
,p_event_sequence=>131
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_triggering_element=>'COURSE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139336983601340263)
,p_event_id=>wwv_flow_imp.id(139336486776340263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'COURSE_SCHEDULE_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139337409318340264)
,p_name=>'refresh_enroll_employees'
,p_event_sequence=>141
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE,P317_COURSE_SCHEDULE,P317_START_DATE,P317_END_DATE,P317_ORGANISATION,P317_DEPARTMENT,P317_JOB,P317_EMP_GRADE,P317_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139337925298340264)
,p_event_id=>wwv_flow_imp.id(139337409318340264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5913972436656803160)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139338308748340264)
,p_name=>'refresh_enroll_employees_1'
,p_event_sequence=>151
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_1,P317_COURSE_SCHEDULE_1,P317_START_DATE_1,P317_END_DATE_1,P317_ORGANISATION_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139338802651340264)
,p_event_id=>wwv_flow_imp.id(139338308748340264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139339224398340265)
,p_name=>'show_generate'
,p_event_sequence=>161
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE'
,p_condition_element=>'P317_COURSE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139339702619340265)
,p_event_id=>wwv_flow_imp.id(139339224398340265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139340230148340265)
,p_event_id=>wwv_flow_imp.id(139339224398340265)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139340557825340265)
,p_name=>'show_generate_3'
,p_event_sequence=>171
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_END_DATE'
,p_condition_element=>'P317_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139341067195340266)
,p_event_id=>wwv_flow_imp.id(139340557825340265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139341607339340266)
,p_event_id=>wwv_flow_imp.id(139340557825340265)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139341971903340266)
,p_name=>'show_generate_2'
,p_event_sequence=>181
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_START_DATE'
,p_condition_element=>'P317_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139342465546340266)
,p_event_id=>wwv_flow_imp.id(139341971903340266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139343009061340267)
,p_event_id=>wwv_flow_imp.id(139341971903340266)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139343419335340267)
,p_name=>'update_status'
,p_event_sequence=>191
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139282216231340202)
,p_condition_element=>'P317_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139343912215340267)
,p_event_id=>wwv_flow_imp.id(139343419335340267)
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
'    enrollment_status = :P317_STATUS',
'where ',
'    id in (',
'        select ',
'            hte.id ',
'        from ',
'            HR_TRN_ENROLLMENT hte',
'            left join hr_trn_course_schedule htcs on hte.course_schedule_id = htcs.id ',
'        where ',
'            hte.COURSE_ID = NVL(:P317_COURSE_1, hte.COURSE_ID)',
'            AND nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY'')',
'            AND (NVL(hte.COURSE_SCHEDULE_ID, 1) = NVL(NVL(:P317_COURSE_SCHEDULE_1, hte.COURSE_SCHEDULE_ID), 1) OR nvl(trunc(htcs.start_date), trunc(hte.proposed_train_start))  BETWEEN TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_D'
||'ATE_1, ''DD-MON-YYYY''))',
'            AND hte.ORG_ID = NVL(:P317_ORGANISATION_1, hte.ORG_ID)',
'            AND hte.id in  ( ',
'                SELECT ',
'                    a_field ',
'                FROM ',
'                    XMLTABLE ( ''/root/e/text()'' PASSING xmltype(''<root><e>'' || replace(  substr(:P317_MASTER_ENROLLMENT_IDS, 2, length(:P317_MASTER_ENROLLMENT_IDS) - 2)',
'                                                                                        , '':'', ''</e><e>'') || ''</e></root>'') ',
'                                                                            COLUMNS a_field VARCHAR2(1000) PATH ''/'' ) ',
'                )',
'            -- AND hte.ORGDTL_ID = NVL(:P317_DEPARTMENT, hte.ORGDTL_ID)',
'            -- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P317_JOB, JOB_ID) AND POS.ID = hte.position_id) ',
'            -- AND hte.EMP_GRADE_ID = NVL(:P317_EMP_GRADE, hte.EMP_GRADE_ID)',
'            -- AND hte.EMP_ID = NVL(:P317_EMPLOYEE, hte.EMP_ID)',
'    );',
'end;'))
,p_attribute_02=>'P317_COURSE_1,P317_COURSE_SCHEDULE_1,P317_START_DATE_1,P317_END_DATE_1,P317_ORGANISATION_1,P317_STATUS,P317_MASTER_ENROLLMENT_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139344350163340268)
,p_event_id=>wwv_flow_imp.id(139343419335340267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139344778008340268)
,p_name=>'update_schedule'
,p_event_sequence=>211
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139279531131340199)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139345263942340268)
,p_event_id=>wwv_flow_imp.id(139344778008340268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P317_COURSE_SCHEDULE_1 is null then',
'    raise_application_error(-20005, ''Sorry. You cannot update enrollment schedules unless you select a course schedule.'');',
'else',
'update ',
'    hr_trn_enrollment',
'set ',
'    course_schedule_id = :P317_COURSE_SCHEDULE_1',
'where ',
'    id in (',
'        select ',
'            hte.id',
'        from ',
'            HR_TRN_ENROLLMENT hte',
'            cross join (select id, start_date, end_date from hr_trn_course_schedule where id = :P317_COURSE_SCHEDULE_1) htcs ',
'        where ',
'            hte.COURSE_ID = NVL(:P317_COURSE_1, hte.COURSE_ID)',
'            AND NVL(hte.COURSE_SCHEDULE_ID, :P317_COURSE_SCHEDULE_1) = NVL(:P317_COURSE_SCHEDULE_1, hte.COURSE_SCHEDULE_ID)',
'            AND nvl(trunc(hte.proposed_train_start), trunc(htcs.start_date))  BETWEEN TO_DATE(:P317_START_DATE_1, ''DD-MON-YYYY'') AND TO_DATE(:P317_END_DATE_1, ''DD-MON-YYYY'')',
'            -- AND hte.ORG_ID = NVL(:P317_ORGANISATION_1, hte.ORG_ID)',
'            -- AND hte.ORGDTL_ID = NVL(:P317_DEPARTMENT, hte.ORGDTL_ID)',
'            -- AND EXISTS(SELECT 1 FROM HR_HCF_POSITION POS WHERE JOB_ID = NVL(:P317_JOB, JOB_ID) AND POS.ID = hte.position_id)',
'            -- AND hte.EMP_GRADE_ID = NVL(:P317_EMP_GRADE, hte.EMP_GRADE_ID)',
'            -- AND hte.EMP_ID = NVL(:P317_EMPLOYEE, hte.EMP_ID)',
'            and hte.course_schedule_id is null',
'            and hte.proposed_train_start between htcs.start_date and htcs.end_date',
'            );',
'end if;',
'end;'))
,p_attribute_02=>'P317_COURSE_1,P317_COURSE_SCHEDULE_1,P317_START_DATE_1,P317_END_DATE_1,P317_ORGANISATION_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139345775624340268)
,p_event_id=>wwv_flow_imp.id(139344778008340268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139346150401340269)
,p_name=>'set_employee_fields'
,p_event_sequence=>221
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_triggering_element=>'EMP_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139346701465340269)
,p_event_id=>wwv_flow_imp.id(139346150401340269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ORGDTL_ID,EMP_GRADE_ID,POSITION_ID,EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select orgdtl_id,',
'EMP_GRADE_ID,ORG_ID,position_id,',
'employment_type_id ',
'from hr_rcm_employee where id = :EMP_ID'))
,p_attribute_07=>'EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139347083968340269)
,p_name=>'show_hide_update_status'
,p_event_sequence=>231
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_STATUS'
,p_condition_element=>'P317_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139347539031340269)
,p_event_id=>wwv_flow_imp.id(139347083968340269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139282216231340202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139348115901340270)
,p_event_id=>wwv_flow_imp.id(139347083968340269)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139282216231340202)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139348531107340270)
,p_name=>'show_hide_update_status_1'
,p_event_sequence=>241
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_STATUS_1'
,p_condition_element=>'P317_STATUS_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139348862521340270)
,p_name=>'show_hide_generate_button'
,p_event_sequence=>251
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_1,P317_START_DATE_1,P317_END_DATE_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P317_COURSE_1").getValue() != ''''',
'&& apex.item("P317_START_DATE_1").getValue() != ''''',
'&& apex.item("P317_END_DATE_1").getValue() != '''''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139349399267340270)
,p_event_id=>wwv_flow_imp.id(139348862521340270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139349867144340271)
,p_event_id=>wwv_flow_imp.id(139348862521340270)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279089290340199)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139350257160340271)
,p_name=>'show_hide_update_schedule'
,p_event_sequence=>271
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P317_COURSE_SCHEDULE_1'
,p_condition_element=>'P317_COURSE_SCHEDULE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139350799665340271)
,p_event_id=>wwv_flow_imp.id(139350257160340271)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279531131340199)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139351279860340271)
,p_event_id=>wwv_flow_imp.id(139350257160340271)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(139279531131340199)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139351717095340272)
,p_name=>'dy_get_enrollment_ids'
,p_event_sequence=>281
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139352176044340272)
,p_event_id=>wwv_flow_imp.id(139351717095340272)
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
'$s("P317_MASTER_ENROLLMENT_IDS", EnrollmentIds); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139352539013340272)
,p_name=>'dy_set_course_and_proposed_start'
,p_event_sequence=>291
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CREATED_BY'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139353108080340272)
,p_event_id=>wwv_flow_imp.id(139352539013340272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'COURSE_ID,PROPOSED_START,COURSE_SCHEDULE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P317_COURSE_1, to_date(:P317_START_DATE_1, ''DD-MON-YYYY''), :P317_COURSE_SCHEDULE_1 from dual'
,p_attribute_07=>'P317_COURSE_1,P317_START_DATE_1,P317_COURSE_SCHEDULE_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139322530882340255)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_enrollment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_training.prcd_generate_enrolments',
'        (',
'            in_course_id => :P317_COURSE_1, ',
'            in_course_schedule_id => :P317_COURSE_SCHEDULE_1, ',
'            in_start_date => to_date(:P317_START_DATE_1, ''DD-MON-YYYY''), ',
'            in_end_date => to_date(:P317_END_DATE_1, ''DD-MON-YYYY'')',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139279089290340199)
,p_process_when=>'P317_COURSE_1'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
,p_internal_uid=>23538397026026550
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139299219109340228)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6595060313214877205)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Training Enrolment Listing - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>23515085253026523
);
wwv_flow_imp.component_end;
end;
/
