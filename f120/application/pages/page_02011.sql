prompt --application/pages/page_02011
begin
--   Manifest
--     PAGE: 02011
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>2011
,p_name=>'frmInterviewSetup'
,p_alias=>'FRMINTERVIEWSETUP'
,p_step_title=>'Create/Edit Interview Setup'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825717152573565037)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670461833484027260)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4193529519042350833)
,p_plug_name=>'Interview Summary Sheet '
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ind_id,interviewer_comments,INTERVIEWER, ((sum(RATING)+sum(BONUS)-sum(deduction))/sum(factor_weight))*100 scoring,',
'max(fn_avgIntScore(w.INTERVIEW_ID, w.ind_id)) avg_score',
'from hr_inv_session w join HR_INV_RESPONSE_DTL x on w.id=x.inv_session_id',
'where INTERVIEW_ID= :P2011_ID',
'group by ind_id,interviewer_comments,INTERVIEWER',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2011_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2011_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Interview Summary Sheet '
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
 p_id=>wwv_flow_imp.id(4193529589007350834)
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
,p_owner=>'RLANGFORD'
,p_internal_uid=>1415322994968505791
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3355413736152161567)
,p_db_column_name=>'IND_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Name of Candidate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3355201601467728661)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3355414139628161568)
,p_db_column_name=>'INTERVIEWER_COMMENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Interviewer Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3355414521974161568)
,p_db_column_name=>'INTERVIEWER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Interviewer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3355414954195161569)
,p_db_column_name=>'SCORING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Scoring'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3355415349432161569)
,p_db_column_name=>'AVG_SCORE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Avg Score'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4193659579437949153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'5772091'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IND_ID:INTERVIEWER_COMMENTS:INTERVIEWER:SCORING:AVG_SCORE'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(4193671333359317996)
,p_report_id=>wwv_flow_imp.id(4193659579437949153)
,p_pivot_columns=>'INTERVIEWER'
,p_row_columns=>'IND_ID:INTERVIEWER_COMMENTS:AVG_SCORE'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(3355416399821161571)
,p_pivot_id=>wwv_flow_imp.id(4193671333359317996)
,p_display_seq=>1
,p_function_name=>'MAX'
,p_column_name=>'SCORING'
,p_db_column_name=>'PFC1'
,p_column_label=>'Score'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(3355416816037161572)
,p_pivot_id=>wwv_flow_imp.id(4193671333359317996)
,p_sort_seq=>1
,p_sort_column_name=>'AVG_SCORE'
,p_sort_direction=>'DESC'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5832295301690278669)
,p_name=>'Audit'
,p_template=>4072358936313175081
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' apex_util.get_since(last_changed_date) updated',
'from HR_INV_INTERVIEW',
'where id = :P2011_ID',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2011_ID'
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
 p_id=>wwv_flow_imp.id(684856779012770987)
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
 p_id=>wwv_flow_imp.id(684856846630770988)
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
 p_id=>wwv_flow_imp.id(684856978069770989)
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
 p_id=>wwv_flow_imp.id(684857037807770990)
,p_query_column_id=>4
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>40
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5832295623997278672)
,p_plug_name=>'Interviewees'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'        IND_ID,position_config_id,INTERVIEW_DATETIME,EMAIL_SENT,remarks,',
'       LEAD_INTERVIEWER,     ',
'     LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE ,INTERVIEW_ID ',
'  from HR_INV_INTERVIEWDTL',
'  where INTERVIEW_ID=:P2011_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2011_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2011_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Interviewees'
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
 p_id=>wwv_flow_imp.id(4972397569652496312)
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
 p_id=>wwv_flow_imp.id(5832295836372278674)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5832296062126278677)
,p_name=>'LEAD_INTERVIEWER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAD_INTERVIEWER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Lead Interviewer'
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
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :ID is null then',
'',
'return',
'''select a.employee||''''(No.''''||a.EMP_COMPANY_NO||'''')'''' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'order by employee'';',
'',
'else',
'',
'return',
'   ''select B.employee||''''(No.''''||B.EMP_COMPANY_NO||'''')'''' employee, B.id',
'    from VW_EMPLOYEEALL b  ',
'    order by employee'';',
'',
'end if;'))
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
 p_id=>wwv_flow_imp.id(5837773747521119643)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
 p_id=>wwv_flow_imp.id(5837773873561119644)
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
 p_id=>wwv_flow_imp.id(5837775332689119658)
,p_name=>'IND_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Applicant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label , id',
'from (',
'        SELECT to_char(INDIVIDUAL)||'' Int-Applicant '' label, id',
'        from VW_INDIVIDUAL_only x',
'        where IND_ORG_ID=:APP_ORG_ID',
'        union',
'        select to_char(surname||'', ''|| FIRST_NAME||'' DOB: ''||dob||'' ''||SEX_CODE||'':-''||MARITAL_CODE)||''  Ext-Applicant (''||applicant_no||'')'' label, id',
'        from HR_APL_INDIVIDUAL a        ',
'        ) appl',
'where exists (select 1',
'              from HR_HCF_JOBOPENING jobdtl join hr_apl_jobrequest jobreq on jobdtl.id = jobreq.JOBOPENING_ID',
'              where jobreq.applicant_id= appl.id',
'              and JOBOPENING_ID = :P2011_JOBOPENING_ID ',
'              and upper(pkg_global_fnts.status_descript(jobreq.STATUS)) = ''ACCEPTANCE SHORT LIST'')    ',
'order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P2011_JOBOPENING_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5837775940291119664)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5837775984344119665)
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
 p_id=>wwv_flow_imp.id(5837776617127119671)
,p_name=>'INTERVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERVIEW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P2011_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5837776781382119673)
,p_name=>'POSITION_CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_CONFIG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P2011_POSITION_CONFIG_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5837777547950119681)
,p_name=>'INTERVIEW_DATETIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERVIEW_DATETIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Interview Datetime'
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
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
,p_default_type=>'ITEM'
,p_default_expression=>'INTERVIEW_DATETIME'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5860608171199103043)
,p_name=>'EMAIL_SENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_SENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Email Sent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854181035973426433)
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
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5832295644053278673)
,p_internal_uid=>3054089050014433630
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
 p_id=>wwv_flow_imp.id(5837778935725123997)
,p_interactive_grid_id=>wwv_flow_imp.id(5832295644053278673)
,p_static_id=>'4147427'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5837779110237123997)
,p_report_id=>wwv_flow_imp.id(5837778935725123997)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4976967999112321441)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4972397569652496312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>414.038
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5423057917070873601)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5837776781382119673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5423083620388384088)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5837777547950119681)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196.052
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837779576546124001)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5832295836372278674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837782335528124015)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5832296062126278677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>208
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837796561461124080)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5837773747521119643)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837797461902124084)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5837773873561119644)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837809990507124142)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5837775332689119658)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>358.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5837816287221129486)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5837775940291119664)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5839233023596689076)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5837776617127119671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5860618214759798116)
,p_view_id=>wwv_flow_imp.id(5837779110237123997)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5860608171199103043)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131.26732824707034
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5837715983329669699)
,p_plug_name=>'Create/Edit Interview Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_INV_INTERVIEW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4186396891971927417)
,p_plug_name=>'Quick Entry Interviewees'
,p_parent_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2011_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5837776453356119670)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>9
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5839320080266655957)
,p_plug_name=>'Interview Schedule'
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct',
'    individual||'' schedule for:-''||to_char(interview_datetime,''HH:MIAM'') individual,',
'    a.id,     ',
'    interview_datetime',
'FROM  hr_inv_interviewdtl a join vw_applicants_all  b on a.ind_id =b.id',
'where INTERVIEW_ID = :P2011_ID',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P2011_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2011_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'INDIVIDUAL',
  'drag_and_drop', 'N',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'INTERVIEW_DATETIME')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1381416326484383055)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4193529519042350833)
,p_button_name=>'VIEW_SHEET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Summary Score Sheet'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clipboard-list'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355393643535161544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5832295623997278672)
,p_button_name=>'EMAIL_INVITE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Email Invite'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355395185151161546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355406557899161559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4186396891971927417)
,p_button_name=>'POPULATE_APPL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate Applicants'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355395583586161546)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160074582545770)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355395894560161547)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355396338378161547)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355396745766161547)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:2011::'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355397119329161548)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2011_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3355397572251161548)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(670461833484027260)
,p_button_name=>'GENERATE_INTERVIEW_SESSION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Interview Session'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.:239:P239_ID,P239_INTERVIEW_ID,P239_LEAD_INTERVIEWER:&P2011_ID.,&P2011_ID.,&P2011_LEAD_INTERVIEWER.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_INV_INTERVIEWDTL',
'where INTERVIEW_ID=:P2011_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3355423196711161582)
,p_branch_name=>'DELETE_BR'
,p_branch_action=>'f?p=&APP_ID.:2009:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3355395583586161546)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3355422886520161582)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.:2011::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3355397119329161548)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3355422486004161581)
,p_branch_name=>'Go To Page 2009'
,p_branch_action=>'f?p=&APP_ID.:2011:&SESSION.::&DEBUG.::P2011_ID:&P2011_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1381416575067383058)
,p_name=>'P2011_REPORT_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4193529519042350833)
,p_use_cache_before_default=>'NO'
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355397986345161549)
,p_name=>'P2011_INTERVIEW_SESSION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Interview Name'
,p_source=>'INTERVIEW_SESSION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355398313714161549)
,p_name=>'P2011_INTERVIEW_VENUE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Interview Venue'
,p_source=>'INTERVIEW_VENUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ACTIVITY VENUES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from table(pkg_global_fnts.Get_Lookup_Value(''TBLLOCATION''))',
'where org_id=:APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) =:APP_COUNTRY',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3355398735375161550)
,p_name=>'P2011_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355399185165161550)
,p_name=>'P2011_POSITION_CONFIG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Job Question Bank'
,p_source=>'POSITION_CONFIG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select interview_type||'' for ''||c.Description||'' EFFECTIVE(''||to_char(a.start_date,''DD-MON-YYYY'')||'') ''||a.DESCRIPTION A, a.id',
'From Hr_Inv_jobConfig A Join Hr_Hcf_Organisation B On A.Org_Id=B.Id',
'join hr_hcf_job c on c.id =a.job_id',
'Where  A.End_Date Is Null ',
'and b.id=:APP_ORG_ID',
'Order By 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3355399503974161551)
,p_name=>'P2011_JOBOPENING_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Position Opening'
,p_source=>'JOBOPENING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  pos.position_name||'' Applicant Type: ''||APPLICANT_TYPE||'', Opening No.:''||EXPECTED_SHORT_LIST||''(''||APPLICATION_START||'' to ''||APPLICATION_END||'') for ''||',
'unit_name||'' at ''||wkloc.location_description a,a.id b',
'from HR_HCF_JOBOPENING a join hr_hcf_position pos on pos.id= a.position_id',
'join hr_hcf_orgstructuredtl orgdtl on orgdtl.id =pos.orgdtl_id',
'join hr_hcf_worklocation wkloc on wkloc.id = pos.def_work_location_id',
'where exists (select 1',
'              from HR_INV_jobCONFIG B',
'              where a.job_id=B.job_id',
'              and B.id= :P2011_POSITION_CONFIG_ID',
'              )',
'and exists (select 1',
'            from HR_APL_JOBREQUEST C',
'            where a.id = C.JOBOPENING_ID',
'            AND upper(pkg_global_fnts.status_descript(STATUS)) = ''ACCEPTANCE SHORT LIST''',
'            )',
'              '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2011_POSITION_CONFIG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Only positions with have a question bank and employees short listed.'
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
 p_id=>wwv_flow_imp.id(3355400396435161552)
,p_name=>'P2011_DATE_START'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Date Start'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'DATE_START'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>18
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'time_increment', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355400859874161552)
,p_name=>'P2011_DATE_END'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Date End'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'DATE_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>18
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'time_increment', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355401242776161553)
,p_name=>'P2011_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355401682308161553)
,p_name=>'P2011_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P2011_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:APP_PAGE_ID      ',
'and TRANSACTION_TYPE_ID=:P2011_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2011_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355402068656161554)
,p_name=>'P2011_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>2000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355406967323161559)
,p_name=>'P2011_INTERVIEWEES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4186396891971927417)
,p_prompt=>'Interviewees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label , id',
'from (',
'        SELECT to_char(INDIVIDUAL)||'' Int-Applicant '' label, id',
'        from VW_INDIVIDUAL_only x',
'        where IND_ORG_ID=:APP_ORG_ID',
'        union',
'        select to_char(surname||'', ''|| FIRST_NAME||'' DOB: ''||dob||'' ''||SEX_CODE||'':-''||MARITAL_CODE)||''  Ext-Applicant (''||applicant_no||'')'' label, id',
'        from HR_APL_INDIVIDUAL a',
'        where not exists(select 1',
'                       from HR_RCM_INDIVIDUAL w',
'                       where w.ext_applicant_id = a.id',
'                       )',
'        ) appl',
'where exists (select 1',
'              from HR_HCF_JOBOPENING jobdtl join hr_apl_jobrequest jobreq on jobdtl.id = jobreq.JOBOPENING_ID',
'              where jobreq.applicant_id= appl.id',
'              and JOBOPENING_ID = :P2011_JOBOPENING_ID ',
'              and upper(pkg_global_fnts.status_descript(jobreq.STATUS)) in (''EVALUATED'',''ACCEPTANCE SHORT LIST'')',
'             )',
'and not exists (select 1',
'                from HR_INV_INTERVIEWDTL invdtl',
'                where invdtl.ind_id = appl.id',
'                and INTERVIEW_ID = :P2011_ID',
'                )              ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P2011_JOBOPENING_ID'
,p_ajax_items_to_submit=>'P2011_ID,P2011_JOBOPENING_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355407323336161560)
,p_name=>'P2011_LEAD_INTERVIEWER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4186396891971927417)
,p_prompt=>'Lead Interviewer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'order by employee'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3355407755102161560)
,p_name=>'P2011_INTERVIEW_DATETIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4186396891971927417)
,p_item_default=>'P2011_DATE_START'
,p_item_default_type=>'ITEM'
,p_prompt=>'Interview Start'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355408154768161561)
,p_name=>'P2011_DURATION_LAG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4186396891971927417)
,p_item_default=>'30'
,p_prompt=>'Duration + Grace Time'
,p_post_element_text=>'(Mins)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3355410839999161564)
,p_name=>'P2011_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5832295301690278669)
,p_item_source_plug_id=>wwv_flow_imp.id(5837715983329669699)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3355418393351161575)
,p_validation_name=>'chk_field_pop_interviewees'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P2011_INTERVIEWEES is null or :P2011_LEAD_INTERVIEWER is null or :P2011_INTERVIEW_DATETIME IS NULL OR',
'     :P2011_DURATION_LAG IS NULL then',
'        return ''One of more of the Quick Entry Interviewees fields are null. All must have a values'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3355406557899161559)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3355419093962161577)
,p_name=>'send email'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3355393643535161544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3355419530771161577)
,p_event_id=>wwv_flow_imp.id(3355419093962161577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'    v_APP_CORRESPENDENCE_EMAIL hr_hcf_organisation.APP_CORRESPENDENCE_EMAIL%type;',
'',
'',
'begin',
'',
'    select APP_CORRESPENDENCE_EMAIL into v_APP_CORRESPENDENCE_EMAIL',
'    from hr_hcf_organisation',
'    where id =:APP_ORG_ID;',
'',
'for i in (',
'    select ''Dear ''||SALUTATION||''. ''||surname||'' ''||FIRST_NAME||'', With reference to your application for the post of ''||pos.Position_dtl ||''. <br><br>You are requested to appear for an interview for the said post on the ''||TO_CHAR( INTERVIEW_DATETIM'
||'E, ''FMMonth DD, YYYY'' )||'' at ''||TO_CHAR( INTERVIEW_DATETIME, ''HH24:MI'' )||'' hrs. <br><br>Kindly walk with all other necessary documents you may have to present upon arrival. <br><br>With Cooperation.'' Body, EMAIL, a.id',
'from HR_INV_INTERVIEW Inv join HR_INV_INTERVIEWDTL a on inv.id = a.INTERVIEW_ID',
'join vw_applicants_all b on b.id = a.ind_id',
'join ( select  pos.position_name||'' Work Unit:- ''||unit_name||'' at ''||wkloc.location_description Position_dtl, jobop.id',
'        from HR_HCF_JOBOPENING jobop join hr_hcf_position pos on pos.id= jobop.position_id',
'        join hr_hcf_orgstructuredtl orgdtl on orgdtl.id =pos.orgdtl_id',
'        join hr_hcf_worklocation wkloc on wkloc.id = pos.def_work_location_id) Pos on pos.id=inv.jobopening_id',
'',
'where INTERVIEW_ID=:P2011_ID',
'',
') loop',
'',
'',
'     pkg_email.send_mail(',
'                  p_to=>i.EMAIL,',
'                  p_cc=>NULL,',
'                  p_bcc=>NULL,',
'                  p_from=>v_APP_CORRESPENDENCE_EMAIL,',
'                  p_subject=> ''INTERVIEW INVITE'',',
'                  p_html_msg=>regexp_replace(i.Body,chr(13)|| chr(10)),',
'                  p_text_msg=>null,',
'                 p_attachment_id=>null  --PA_PMG_EMAILPAYSLIP_ID',
'                 );',
'    ',
'    update HR_INV_INTERVIEWDTL  x  set x.EMAIL_SENT=1 where x.id=i.id;',
'commit;',
'end loop;',
'end;'))
,p_attribute_02=>'P2011_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3355420068447161578)
,p_event_id=>wwv_flow_imp.id(3355419093962161577)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5832295623997278672)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3355420514218161578)
,p_event_id=>wwv_flow_imp.id(3355419093962161577)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'All emails were sent successfully'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3355420938940161579)
,p_name=>'show_hide_btn'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2011_LEAD_INTERVIEWER'
,p_condition_element=>'P2011_LEAD_INTERVIEWER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3355421414182161580)
,p_event_id=>wwv_flow_imp.id(3355420938940161579)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3355406557899161559)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3355421979647161581)
,p_event_id=>wwv_flow_imp.id(3355420938940161579)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3355406557899161559)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1381416429619383056)
,p_name=>'view_sheet'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1381416326484383055)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1381416466186383057)
,p_event_id=>wwv_flow_imp.id(1381416429619383056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''&P2011_REPORT_URL.&p2=/reports/PeoplePay_Multi/01_HR/Interview_Summary_Score_Sheet-IN_ORG_ID=&APP_ORG_ID.-IN_INTERVIEW_ID=&P2011_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,m'
||'enubar=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3355405864153161558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5837715983329669699)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmInterviewSetup'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2711789180765979418
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3355394461328161545)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5832295623997278672)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Interviewee - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2711777777940979405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3355418679577161576)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_interviewees'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_int_time date;  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'                v_sqlcode varchar2(50);',
'        V_SQLERRM varchar2(2000);',
'begin',
'       v_int_time := to_date(:P2011_INTERVIEW_DATETIME,''DD-MON-YYYY HH:MI AM'');',
'       ',
'        l_selected := APEX_UTIL.STRING_TO_TABLE(:P2011_INTERVIEWEES);',
'               ',
'    for I in (  SELECT APPLICANT_TYPE, :P2011_POSITION_CONFIG_ID POSITION_CONFIG_ID',
'                FROM hr_hcf_jobopening',
'                where ID = :P2011_JOBOPENING_ID) loop',
'                ',
'                  FOR j IN 1..l_selected.COUNT loop',
'                    begin',
'                  ',
'                           INSERT INTO hr_inv_interviewdtl (INTERVIEW_DATETIME, APPLICANT_TYPE, position_config_id, lead_interviewer, ind_id, interview_id)',
'                            values (v_int_time, i.APPLICANT_TYPE, i.POSITION_CONFIG_ID, :P2011_LEAD_INTERVIEWER, l_selected(j), :P2011_ID  );',
'                            ',
'                            v_int_time := v_int_time + (TO_NUMBER(:P2011_DURATION_LAG)/1440);',
'                            ',
'                   ',
'                        EXCEPTION',
'                            when OTHERS then ',
'                                v_sqlcode := sqlcode;',
'                                V_SQLERRM := SQLERRM;',
'                                PKG_ERRORLOGGER.INSERT_ERR(V_SQLCODE ,V_SQLERRM ,''Error during execution of populate Interview and setting applicants interview sessions.'' ,''Populate Interviews'');',
'',
'                    end;',
'                 end loop;',
'    end loop;',
'',
'    :P2011_INTERVIEWEES :=NULL;',
'    :P2011_LEAD_INTERVIEWER :=NULL;',
'     ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3355406557899161559)
,p_internal_uid=>2711801996189979436
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(677723779295074863)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send_email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_int_time date; ',
'        ',
'        V_APPLICANT varchar2(200);',
'        V_JOB_POSITION varchar2(100); ',
'        V_COMPANY varchar2(100);',
'        v_body varchar2(2000);',
'        v_subject varchar2(500);',
'        v_to varchar2(100);',
'        V_INTERVIEW_DATE varchar2(50);',
'        v_sqlcode varchar2(50);',
'        V_SQLERRM varchar2(2000);',
'',
'',
'begin',
'  ',
'       select organisation_name into V_COMPANY from hr_hcf_organisation X where ID=:APP_ORG_ID;',
'',
'--Please rewrite this lookup to use a global attribute so end user can select their own template.',
'    --    select  subject, template_body',
'    --     into v_subject, v_body',
'    --     from APP_GLO_TEMPLATEDTL where template_id=62;     ',
'                 ',
'    for I in (  SELECT APPLICANT_TYPE, :P2011_POSITION_CONFIG_ID POSITION_CONFIG_ID',
'                FROM hr_hcf_jobopening',
'                where ID = :P2011_JOBOPENING_ID) loop',
'                ',
'                  FOR j IN (select INTERVIEW_DATETIME,   ind_id,  remarks',
'                            from hr_inv_interviewdtl a  ',
'                            where interview_id= :P2011_ID) loop',
'                    begin',
'                            select FIRST_NAME||'' ''||SURNAME, email into V_APPLICANT, V_TO',
'                            from  ',
'                                (select FIRST_NAME, SURNAME, email, id',
'                                from HR_rcm_INDIVIDUAL',
'                                    union',
'                                select FIRST_NAME, SURNAME, email, id',
'                                from HR_apl_INDIVIDUAL ',
'                                )',
'                            where id=j.ind_id;',
'',
'                            select POSITION_NAME into V_JOB_POSITION from HR_HCF_POSITION where id=  i.POSITION_CONFIG_ID ;',
'                           ',
'                            ',
'                            V_INTERVIEW_DATE:=to_char(:P2006_DATE_INTERVIEWED, ''dd-mm-yyyy hh:mm'');',
'                            ',
'                          --add code for j.remarks tag on letter template below.',
'                            v_body:=PKG_GLOBAL_FNTS2.fn_replace(v_body, ''#COMPANY#'', V_COMPANY);',
'                            v_body:=PKG_GLOBAL_FNTS2.fn_replace(v_body, ''#APPLICANT#'', V_APPLICANT);',
'                            v_body:=PKG_GLOBAL_FNTS2.fn_replace(v_body, ''#JOB_POSITION#'', V_JOB_POSITION);         ',
'                            v_body:=PKG_GLOBAL_FNTS2.fn_replace(v_body, ''#INTERVIEW_DATE#'', V_INTERVIEW_DATE);',
'           ',
'',
'                                pkg_email.send_mail(',
'                                      p_to=>v_to,',
'                                      p_cc=>NULL,',
'                                      p_bcc=>NULL,',
'                                      p_from=>''apps@innosysgy.com'',',
'                                      p_subject=> v_subject,',
'                                      p_html_msg=>regexp_replace(v_body,chr(13)|| chr(10)),',
'                                      p_text_msg=>null,',
'                                     p_attachment_id=>null  --PA_PMG_EMAILPAYSLIP_ID',
'                                     );                                    ',
'                           ',
'                           ',
'                            v_int_time := v_int_time + (TO_NUMBER(:P2011_DURATION_LAG)/1440);',
'                            ',
'                    ',
'                    EXCEPTION',
'                        when OTHERS then ',
'                            v_sqlcode := sqlcode;',
'                            V_SQLERRM := SQLERRM;',
'                            PKG_ERRORLOGGER.INSERT_ERR(V_SQLCODE ,V_SQLERRM ,''Error during execution of populate Interview'' ,''Populate Interviews'');',
'',
'                    end;',
'                 end loop;',
'    end loop;',
'',
'    :P2011_INTERVIEWEES :=NULL;',
'    :P2011_LEAD_INTERVIEWER :=NULL;',
'     ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3355393643535161544)
,p_internal_uid=>34107095907892723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3355405430534161558)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5837715983329669699)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmInterviewSetup'
,p_internal_uid=>2711788747146979418
);
wwv_flow_imp.component_end;
end;
/
