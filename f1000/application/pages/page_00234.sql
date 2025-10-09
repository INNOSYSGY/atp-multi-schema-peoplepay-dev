prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_name=>'frmMassDocEmail'
,p_alias=>'FRMMASSDOCEMAIL'
,p_step_title=>'Create/Edit Mass Document Email'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825577615856149478)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670322827147599643)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435440519157742748)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3435440604520742749)
,p_plug_name=>'Employee Email List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMAIL_ADDRESS,',
'       EMAIL_SENT,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,DOC_EMAIL_HD_ID',
'  from HR_DOC_EMAIL_LIST',
'where DOC_EMAIL_HD_ID = :P234_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P234_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P234_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Email List'
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
 p_id=>wwv_flow_imp.id(3435440829734742751)
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
 p_id=>wwv_flow_imp.id(3435440847510742752)
,p_name=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Email Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_max_length=>1020
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email ||'' (''||FIRST_NAME||'' ''||SURNAME||'')'' email, email rtn',
'from hr_rcm_individual',
'where ind_org_id=:APP_ORG_ID',
'and email is not null'))
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3435441027390742753)
,p_name=>'EMAIL_SENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_SENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Email Sent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854040274465998798)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3435441058539742754)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(3435441134734742755)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3435441286782742756)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
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
 p_id=>wwv_flow_imp.id(3435441361291742757)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
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
 p_id=>wwv_flow_imp.id(3435441455145742758)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3440020200711888109)
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
 p_id=>wwv_flow_imp.id(3440020393990888111)
,p_name=>'DOC_EMAIL_HD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOC_EMAIL_HD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P234_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3435440684038742750)
,p_internal_uid=>657374851507325342
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
 p_id=>wwv_flow_imp.id(3440012514803882087)
,p_interactive_grid_id=>wwv_flow_imp.id(3435440684038742750)
,p_static_id=>'6619467'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3440012645883882087)
,p_report_id=>wwv_flow_imp.id(3440012514803882087)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2778068112890420803)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3440020393990888111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440013051110882090)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3435440829734742751)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440014017234882096)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3435440847510742752)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>292
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440014896156882101)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3435441027390742753)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440015755075882105)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3435441058539742754)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440016667498882110)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3435441134734742755)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440017576386882115)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3435441286782742756)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440018438039882119)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3435441361291742757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440026221624888296)
,p_view_id=>wwv_flow_imp.id(3440012645883882087)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3435441455145742758)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3439875310788284465)
,p_plug_name=>'Mass Document Email'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_DOC_EMAIL_LIST_HD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3435439509684742738)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  apex_util.get_since(last_changed_date) updated',
'from HR_DOC_EMAIL_LIST_HD',
'where ',
'  id = :P234_ID'))
,p_display_when_condition=>'P234_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P234_ID'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3439883364296286272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3440024896484888156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3435440604520742749)
,p_button_name=>'LOAD_QUICK_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Quick Email'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3439884199364286275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P234_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019313075118135)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3441292438818927709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3435440604520742749)
,p_button_name=>'Send_Emails'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Send Emails'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3440024656982888154)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.:234::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3439884612040286275)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P234_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3439884997338286275)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P234_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3440340215201662912)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_button_name=>'LOAD_RECORD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Record Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P234_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3440340042332662911)
,p_branch_name=>'stay'
,p_branch_action=>'f?p=&APP_ID.:234:&SESSION.::&DEBUG.::P234_ID:&P234_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3435440023631742743)
,p_name=>'P234_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3435440088660742744)
,p_name=>'P234_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
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
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3435440173057742745)
,p_name=>'P234_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1429_MEMO_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P234_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439875603785284466)
,p_name=>'P234_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439876464469285068)
,p_name=>'P234_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439876777665285197)
,p_name=>'P234_ATTACHED_DOC'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Attached Doc'
,p_source=>'ATTACHED_DOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439877051795285330)
,p_name=>'P234_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439877388999285469)
,p_name=>'P234_LAST_CHANGED_DOC'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_source=>'LAST_CHANGED_DOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439878859640286146)
,p_name=>'P234_EMAIL_SUBJECT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Email Subject'
,p_source=>'EMAIL_SUBJECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3439879158604286267)
,p_name=>'P234_EMAIL_CONTENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Email Contents'
,p_source=>'EMAIL_CONTENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cMaxlength=>2000
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '360',
  'toolbar', 'INTERMEDIATE',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3440021868354888126)
,p_name=>'P234_FORM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Form Name'
,p_source=>'FORM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_title a, upper(page_Name) b',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'where upper(page_name) like ''FRM%''',
'and application_id=:APP_ID',
'AND upper(page_Name) in (',
'''FRMMEMORANDA'' ,',
'''FRMGENERALMEMO'' ',
')'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>1000
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3440021957922888127)
,p_name=>'P234_RECORD_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_item_source_plug_id=>wwv_flow_imp.id(3439875310788284465)
,p_prompt=>'Record'
,p_source=>'RECORD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' If :P234_FORM_NAME=''FRMMEMORANDA'' Then',
'  RETURN',
'      ''SELECT (select employee_name',
'        from vw_employee',
'        where id = employee) ||'''' Written On:-''''|| date_written||''''; From ''''|| (select employee_name',
'        from vw_employee',
'        where id = FROM_EMPLOYEE) ||'''' ''''|| SUBJECT label, MEMO_ID',
'        FROM HR_DOC_MEMORANDA  ',
'        where org_id=:APP_ORG_ID',
'        ORDER BY date_written desc'';',
' ',
'ELSe',
'RETURN',
'        ''select SUBJECT||'''' Written On:-''''||MEMO_DATE label,MEMO_ID',
'         from HR_DOC_MEMORANDAGEN',
'         where org_id  =:APP_ORG_ID',
'         order by MEMO_DATE desc'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_FORM_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>1000
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3440024829729888155)
,p_name=>'P234_QUICK_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3435440604520742749)
,p_prompt=>'Quick Email'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email ||'' (''||FIRST_NAME||'' ''||SURNAME||'')'' email_VALUE, email rtn',
'from hr_rcm_individual',
'where ind_org_id=:APP_ORG_ID',
'and email is not null'))
,p_lov_display_null=>'YES'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3440024979818888157)
,p_name=>'LOAD_EMAILS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3440024896484888156)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3440025037999888158)
,p_event_id=>wwv_flow_imp.id(3440024979818888157)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'         l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'begin',
'             ',
'        l_selected := APEX_UTIL.STRING_TO_TABLE(:P234_QUICK_EMAIL);',
'               ',
'',
'                  FOR i IN 1..l_selected.COUNT loop',
'                    begin',
'                  ',
'                        INSERT INTO hr_doc_email_list ( email_address, email_sent,doc_email_hd_id)',
'                        VALUES (l_selected(i), 0, :P234_ID);',
'                            ',
'                            ',
'                   -- exception',
'                  --    when others then null;',
'                    end;',
'                 end loop;',
'',
'',
'    :P234_QUICK_EMAIL :=NULL;',
'',
'     commit;',
'end;',
'',
''))
,p_attribute_02=>'P234_QUICK_EMAI,P234_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3440339858278662909)
,p_event_id=>wwv_flow_imp.id(3440024979818888157)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3435440604520742749)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3440340292010662913)
,p_name=>'load_record_details'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3440340215201662912)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3440340361293662914)
,p_event_id=>wwv_flow_imp.id(3440340292010662913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P234_FORM_NAME=''FRMMEMORANDA'' then',
'',
'    for I in (select memo_id, MEMO_CONTENTS, memo_attached, FILENAME, MIMETYPE, LAST_UPDATE_MEMO_ATTACH, SUBJECT ',
'              from HR_DOC_MEMORANDA',
'              where memo_id = :P234_RECORD_ID) loop',
'              ',
'                    update HR_DOC_EMAIL_LIST_HD',
'                    set  email_subject     =  i.SUBJECT',
'                        , EMAIL_CONTENTS   =  i.MEMO_CONTENTS',
'                        , FILENAME         =  i.FILENAME',
'                        , ATTACHED_DOC     =  i.memo_attached',
'                        , MIMETYPE         =  i.MIMETYPE',
'                        , LAST_CHANGED_DOC =  i.LAST_UPDATE_MEMO_ATTACH',
'                    where form_name =''FRMMEMORANDA''',
'                    and  RECORD_ID = i.memo_id;',
'    end loop;',
'    ',
'else',
'    ',
'    for I in (select memo_id, MEMO_CONTENTS, memo_attached, FILENAME, MIMETYPE, LAST_UPDATE_MEMO_ATTACH, SUBJECT ',
'              from HR_DOC_MEMORANDAGEN',
'              where memo_id = :P234_RECORD_ID) loop',
'              ',
'                    update HR_DOC_EMAIL_LIST_HD',
'                    set  email_subject     =  i.SUBJECT',
'                        , EMAIL_CONTENTS   =  i.MEMO_CONTENTS',
'                        , FILENAME         =  i.FILENAME',
'                        , ATTACHED_DOC     =  i.memo_attached',
'                        , MIMETYPE         =  i.MIMETYPE',
'                        , LAST_CHANGED_DOC =  i.LAST_UPDATE_MEMO_ATTACH',
'                    where form_name =''FRMGENERALMEMO''',
'                    and  RECORD_ID = i.memo_id;',
'    end loop;',
'    ',
'',
'end if;',
''))
,p_attribute_02=>'P234_FORM_NAME,P234_RECORD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3440340679199662917)
,p_event_id=>wwv_flow_imp.id(3440340292010662913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3439875310788284465)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3441292534873927710)
,p_name=>'Send'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3441292438818927709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3441292671142927711)
,p_event_id=>wwv_flow_imp.id(3441292534873927710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'PKG_GLOBAL_FNTS.send_mass_document_email(:P234_ID, :P234_FORM_NAME, :P234_RECORD_ID);'
,p_attribute_02=>'P234_ID,P234_FORM_NAME,P234_RECORD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3441292735157927712)
,p_event_id=>wwv_flow_imp.id(3441292534873927710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3435440604520742749)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3439886156373286277)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3439875310788284465)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmMassDocEmail'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2796410234493531772
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3440020285266888110)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3435440604520742749)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Employee Email List - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2796544363387133605
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3440340019910662910)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'         l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'begin',
'             ',
'        l_selected := APEX_UTIL.STRING_TO_TABLE(:P234_QUICK_EMAIL);',
'               ',
'',
'                  FOR i IN 1..l_selected.COUNT loop',
'                    begin',
'                  ',
'                        INSERT INTO hr_doc_email_list ( email_address, email_sent,doc_email_hd_id)',
'                        VALUES (l_selected(i), 0, :P234_ID);',
'                            ',
'                            ',
'                   -- exception',
'                  --    when others then null;',
'                    end;',
'                 end loop;',
'',
'',
'    :P234_QUICK_EMAIL :=NULL;',
'',
'     commit;',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3440024896484888156)
,p_internal_uid=>2796864098030908405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3440340800239662918)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_recors_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P234_FORM_NAME=''FRMMEMORANDA'' then',
'',
'    for I in (select memo_id, MEMO_CONTENTS, memo_attached, FILENAME, MIMETYPE, LAST_UPDATE_MEMO_ATTACH, SUBJECT ',
'              from HR_DOC_MEMORANDA',
'              where memo_id = :P234_RECORD_ID) loop',
'              ',
'                    update HR_DOC_EMAIL_LIST_HD',
'                    set  email_subject     =  i.SUBJECT',
'                        , EMAIL_CONTENTS   =  i.MEMO_CONTENTS',
'                        , FILENAME         =  i.FILENAME',
'                        , ATTACHED_DOC     =  i.memo_attached',
'                        , MIMETYPE         =  i.MIMETYPE',
'                        , LAST_CHANGED_DOC =  i.LAST_UPDATE_MEMO_ATTACH',
'                    where form_name =''FRMMEMORANDA''',
'                    and  RECORD_ID = i.memo_id;',
'    end loop;',
'    ',
'else',
'    ',
'    for I in (select memo_id, MEMO_CONTENTS, memo_attached, FILENAME, MIMETYPE, LAST_UPDATE_MEMO_ATTACH, SUBJECT ',
'              from HR_DOC_MEMORANDAGEN',
'              where memo_id = :P234_RECORD_ID) loop',
'              ',
'                    update HR_DOC_EMAIL_LIST_HD',
'                    set  email_subject     =  i.SUBJECT',
'                        , EMAIL_CONTENTS   =  i.MEMO_CONTENTS',
'                        , FILENAME         =  i.FILENAME',
'                        , ATTACHED_DOC     =  i.memo_attached',
'                        , MIMETYPE         =  i.MIMETYPE',
'                        , LAST_CHANGED_DOC =  i.LAST_UPDATE_MEMO_ATTACH',
'                    where form_name =''FRMGENERALMEMO''',
'                    and  RECORD_ID = i.memo_id;',
'    end loop;',
'    ',
'',
'end if;',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3440340215201662912)
,p_internal_uid=>2796864878359908413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3440340929471662919)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    GET_TRANSACTION TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'    V_DESCRIPTION TBLWORKFLOWSTATUS.WFL_STATUS_DESCRIPTION%TYPE;',
'BEGIN',
'',
'SELECT INITCAP(TRANSACTION_DESCRIPTION)  INTO GET_TRANSACTION ',
'FROM TBLTRANSACTIONTYPE ',
'WHERE TRANSACTION_TYPE_ID=:P234_TRANSACTION_TYPE_ID;',
'',
'SELECT WFL_STATUS_DESCRIPTION INTO V_DESCRIPTION',
'FROM TBLWORKFLOWSTATUS',
'WHERE WFL_STATUS_ID=:P234_STATUS;',
'',
'  PKG_BIZ_RULES.POP_NOTIFICATION',
'(',
'	GET_TRANSACTION||'' for: Employee Memoranda'',',
'	NVL(V(''APP_USER''),USER),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P234_ID,',
'	V_DESCRIPTION||'' ''||GET_TRANSACTION||'' for: ''||''Employee Documents'',',
'	:P234_STATUS,:APP_PAGE_ID,:P234_TRANSACTION_TYPE_ID,',
'        ''HR_DOC_EMAIL_LIST_HD'',:P1429_WORK_FLOW_COMMENT,:P234_ID);',
'',
'',
' IF PKG_GLOBAL_FNTS.STATUS_DESCRIPT(:P234_STATUS) LIKE ''APPROVE%'' THEN    ',
'      PKG_GLOBAL_FNTS.APPROVE_RECORD(NVL(V(''APP_USER''),USER), ''HR_DOC_EMAIL_LIST_HD'',''ID'', :P234_ID);',
'',
'  ELSIF PKG_GLOBAL_FNTS.STATUS_DESCRIPT(:P234_STATUS) LIKE ''DISAPPROV%'' OR  PKG_GLOBAL_FNTS.STATUS_DESCRIPT(:P1429_STATUS) LIKE ''CANCEL%'' THEN',
'',
'      PKG_GLOBAL_FNTS.DISAPPROVE_RECORD(NVL(V(''APP_USER''),USER), ''HR_DOC_EMAIL_LIST_HD'', ''ID'', :P234_ID);       ',
' END IF;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3439884612040286275)
,p_internal_uid=>2796865007591908414
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3439885774327286276)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3439875310788284465)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmMassDocEmail'
,p_internal_uid=>2796409852447531771
);
wwv_flow_imp.component_end;
end;
/
