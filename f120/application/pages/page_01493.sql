prompt --application/pages/page_01493
begin
--   Manifest
--     PAGE: 01493
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
 p_id=>1493
,p_name=>'rptappraisalreview'
,p_alias=>'RPTAPPRAISALREVIEW'
,p_step_title=>'Employee Appraisal Review'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603894095252396882)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3576748125079358172)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(450368470624909477)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2530764953060502240)
,p_plug_name=>'Appraisal Review Regions'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2530765829943502248)
,p_plug_name=>'Appraisal Summaries'
,p_parent_plug_id=>wwv_flow_imp.id(2530764953060502240)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2530762094110502211)
,p_plug_name=>'Appraisal Summary Overall'
,p_parent_plug_id=>wwv_flow_imp.id(2530765829943502248)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    a.use_appraiser_rating, a.appraiser_type, sum(a.ko_avg) ko_avg, sum(a.bc_avg) bc_avg, sum(a.fc_avg) fc_avg, sum(a.st_avg) st_avg, sum(a.overall_avg) overall_avg',
'from (',
'    select ',
'        haa.use_appraiser_rating, haa.appraiser_type, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) ko_avg, null bc_avg, null fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''ko'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        haa.use_appraiser_rating, haa.appraiser_type',
'    union',
'    select ',
'        haa.use_appraiser_rating, haa.appraiser_type, null ko_avg, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) bc_avg, null fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''bc'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        haa.use_appraiser_rating, haa.appraiser_type',
'    union',
'    select ',
'        haa.use_appraiser_rating, haa.appraiser_type, null ko_avg, null bc_avg, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''fc'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        haa.use_appraiser_rating, haa.appraiser_type',
'    union',
'    select ',
'        haa.use_appraiser_rating, haa.appraiser_type, null ko_avg, null bc_avg, null fc_avg, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''st'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        haa.use_appraiser_rating, haa.appraiser_type',
'    union',
'    select ',
'        haa.use_appraiser_rating, haa.appraiser_type, null ko_avg, null bc_avg, null fc_avg, null st_avg, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        haa.use_appraiser_rating, haa.appraiser_type) a',
'group by ',
'    a.use_appraiser_rating, a.appraiser_type'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1493_EMP_APPRAISAL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appraisal Summary Overall'
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
 p_id=>wwv_flow_imp.id(2530762325065502213)
,p_name=>'USE_APPRAISER_RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USE_APPRAISER_RATING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Use Appraiser Rating'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632356345784240867)
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762361110502214)
,p_name=>'APPRAISER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Appraiser Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762437977502215)
,p_name=>'KO_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KO_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'KO %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762591194502216)
,p_name=>'BC_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BC_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'BC %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762686030502217)
,p_name=>'FC_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FC_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FC %'
,p_heading_alignment=>'CENTER'
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762826911502218)
,p_name=>'ST_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ST %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530762953285502220)
,p_name=>'OVERALL_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OVERALL_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Overall %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_max_length=>47
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530765117103502241)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530765142317502242)
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
 p_id=>wwv_flow_imp.id(2530762145074502212)
,p_internal_uid=>2108970151876505638
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_imp.id(2530799222633782649)
,p_interactive_grid_id=>wwv_flow_imp.id(2530762145074502212)
,p_static_id=>'10205149'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2530799377894782649)
,p_report_id=>wwv_flow_imp.id(2530799222633782649)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1510293477351410501)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2530765117103502241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530799872596782653)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2530762325065502213)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530800816263782661)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2530762361110502214)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530801708060782668)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2530762437977502215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530802587576782672)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2530762591194502216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530803502483782676)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2530762686030502217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530804335365782680)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2530762826911502218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2530805318685782683)
,p_view_id=>wwv_flow_imp.id(2530799377894782649)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2530762953285502220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2530763118421502221)
,p_plug_name=>'Appraisal Summary by Appraisers'
,p_parent_plug_id=>wwv_flow_imp.id(2530765829943502248)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    a.appraiser, a.appraiser_type, a.use_appraiser_rating, sum(a.ko_avg) ko_avg, sum(a.bc_avg) bc_avg, sum(a.fc_avg) fc_avg, sum(a.st_avg) st_avg, sum(a.overall_avg) overall_avg',
'from (',
'    select ',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end appraiser, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating, round(sum((haar.RATING/ham.upper_range)* hamr.weighting)'
||'/sum(hamr.weighting) * 100 , 2) ko_avg, null bc_avg, null fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join vw_employee ve on ve.id = haa.emp_appraiser_id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''ko'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating',
'    union',
'    select ',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end appraiser, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating, null ko_avg, round(sum((haar.RATING/ham.upper_range)* ha'
||'mr.weighting)/sum(hamr.weighting) * 100 , 2) bc_avg, null fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join vw_employee ve on ve.id = haa.emp_appraiser_id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''bc'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating',
'    union',
'    select ',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end appraiser, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating, null ko_avg, null bc_avg, round(sum((haar.RATING/ham.upp'
||'er_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) fc_avg, null st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join vw_employee ve on ve.id = haa.emp_appraiser_id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''fc'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating',
'    union',
'    select ',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end appraiser, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating, null ko_avg, null bc_avg, null fc_avg, round(sum((haar.R'
||'ATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) st_avg, null overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join vw_employee ve on ve.id = haa.emp_appraiser_id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and upper(hamr.pf_abv) = upper(''st'')',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating',
'    union',
'    select ',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end appraiser, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating, null ko_avg, null bc_avg, null fc_avg, null st_avg, roun'
||'d(sum((haar.RATING/ham.upper_range)* hamr.weighting)/sum(hamr.weighting) * 100 , 2) overall_avg',
'    from ',
'        hr_app_appraiser_rating haar',
'        join hr_app_meritincrequest hamr  on haar.question_id = hamr.id',
'        join hr_app_meritincrement hami on hamr.appraisal_id = hami.id',
'        join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'        join vw_employee ve on ve.id = haa.emp_appraiser_id',
'        join hr_app_meritconfig ham on hami.merit_config_id = ham.id',
'    where ',
'        haar.rating != 0',
'        and hami.id = :P1493_EMP_APPRAISAL_ID',
'    group by',
'        case when ham.anonymous = 1  then ''Anonymous '' || haa.emp_appraiser_id else  to_char(ve.employee_name) end, haa.appraiser_type, haa.emp_appraiser_id, haa.use_appraiser_rating) a',
'where ',
'    ((:P1493_MASTER_APPRAISER_TYPE is not null and a.appraiser_type in  ( ',
'                SELECT ',
'                    a_field ',
'                FROM ',
'                    XMLTABLE ( ''/root/e/text()'' PASSING xmltype(''<root><e>'' || replace(  substr(:P1493_MASTER_APPRAISER_TYPE, 2, length(:P1493_MASTER_APPRAISER_TYPE) - 2)',
'                                                                                        , '':'', ''</e><e>'') || ''</e></root>'') ',
'                                                                            COLUMNS a_field VARCHAR2(1000) PATH ''/'' ) ',
'                )',
'    ) or replace(:P1493_MASTER_APPRAISER_TYPE, '':'', '''') is null)',
'group by ',
'    a.appraiser, a.appraiser_type, a.use_appraiser_rating'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1493_EMP_APPRAISAL_ID,P1493_MASTER_APPRAISER_TYPE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appraisal Summary by Appraisers'
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
 p_id=>wwv_flow_imp.id(2530766043386502251)
,p_name=>'APPRAISER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Appraiser'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766181112502252)
,p_name=>'APPRAISER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRAISER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Appraiser Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766322363502253)
,p_name=>'KO_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KO_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'KO %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766377935502254)
,p_name=>'BC_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BC_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'BC %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766513933502255)
,p_name=>'FC_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FC_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FC %'
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766542271502256)
,p_name=>'ST_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ST %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766705412502257)
,p_name=>'OVERALL_AVG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OVERALL_AVG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Overall %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_item_attributes=>'style="font-weight: bold"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766792551502258)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2530766918652502259)
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
 p_id=>wwv_flow_imp.id(2531100024689008911)
,p_name=>'USE_APPRAISER_RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USE_APPRAISER_RATING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Use Appraiser Rating'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632356345784240867)
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2530766009154502250)
,p_internal_uid=>2108974015956505676
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_imp.id(2531080004208946161)
,p_interactive_grid_id=>wwv_flow_imp.id(2530766009154502250)
,p_static_id=>'10207957'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2531080196347946162)
,p_report_id=>wwv_flow_imp.id(2531080004208946161)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531081080357946171)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2530766043386502251)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531081979311946176)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2530766181112502252)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531082856570946181)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2530766322363502253)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531083787084946186)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2530766377935502254)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531084542642946192)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2530766513933502255)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531085514477946197)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2530766542271502256)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531086393348946202)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2530766705412502257)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531087317894946207)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2530766792551502258)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2531106470911009861)
,p_view_id=>wwv_flow_imp.id(2531080196347946162)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2531100024689008911)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3533178493005667569)
,p_plug_name=>'Appraisal Details'
,p_parent_plug_id=>wwv_flow_imp.id(2530764953060502240)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    hamr.questions,',
'    nvl(haar.rating, 0) rating,',
'    case when hamc.anonymous = 1 then ''Anonymous '' || haa.emp_appraiser_id else to_char(ve.employee_name) end emp_appraiser_id,',
'    hamr.weighting, ',
'    hamr.pf_short_name,',
'    hamr.pf_core_name, ',
'    hamr.pf_abv',
'from',
'    hr_app_appraiser_rating haar ',
'    join hr_app_appraiser haa on haar.appraiser_id = haa.id',
'    join vw_employee ve on ve.id = haa.emp_appraiser_id',
'    join hr_app_meritincrequest hamr on hamr.id = haar.question_id',
'    join hr_app_meritincrement ham on ham.id = hamr.appraisal_id',
'    join hr_app_meritconfig hamc on hamc.id = ham.merit_config_id',
'where ',
'    haar.emp_appraisal_id = :P1493_EMP_APPRAISAL_ID',
'    and ham.emp_id = :P1493_EMP_ID',
'    and haar.rating !=0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1493_EMP_ID,P1493_EMP_APPRAISAL_ID'
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
 p_id=>wwv_flow_imp.id(3533615965074578437)
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
,p_internal_uid=>3111823971876581863
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510285583851398517)
,p_db_column_name=>'WEIGHTING'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Weighting'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510286007652398517)
,p_db_column_name=>'QUESTIONS'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Questions'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510286414671398518)
,p_db_column_name=>'PF_SHORT_NAME'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Pf Short Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510286743549398519)
,p_db_column_name=>'RATING'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510287220832398520)
,p_db_column_name=>'PF_CORE_NAME'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Pf Core Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510287603635398520)
,p_db_column_name=>'PF_ABV'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Pf Abv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1510285209999398515)
,p_db_column_name=>'EMP_APPRAISER_ID'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Appraiser'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3533626338708599328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'10332866'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WEIGHTING:QUESTIONS:PF_SHORT_NAME:RATING:PF_CORE_NAME:PF_ABV'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(3534624727609947443)
,p_report_id=>wwv_flow_imp.id(3533626338708599328)
,p_pivot_columns=>'EMP_APPRAISER_ID'
,p_row_columns=>'PF_CORE_NAME:QUESTIONS:WEIGHTING'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(450364569448909472)
,p_pivot_id=>wwv_flow_imp.id(3534624727609947443)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'RATING'
,p_db_column_name=>'PFC1'
,p_column_label=>'Rating'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(450364926537909473)
,p_pivot_id=>wwv_flow_imp.id(3534624727609947443)
,p_sort_seq=>1
,p_sort_column_name=>'PF_SHORT_NAME'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_worksheet_pivot_sort(
 p_id=>wwv_flow_imp.id(450365340559909474)
,p_pivot_id=>wwv_flow_imp.id(3534624727609947443)
,p_sort_seq=>2
,p_sort_column_name=>'QUESTIONS'
,p_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3487695336281909347)
,p_plug_name=>'Appraisal Review Filter'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1510317139287398611)
,p_name=>'P1493_EMP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ',
'    EMPLOYEE_NO',
'FROM ',
'    VW_USERACCESS',
'WHERE ',
'    USER_ID = :APP_USER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1510317563277398612)
,p_name=>'P1493_DEPARTMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Level ''|| a.unit_level || '': '' || a.unit_name||''(''||short_name||'')'' reply, a.id',
'from  hr_hcf_orgstructuredtl a join hr_hcf_orgstructurehd b on a.org_structure_id = b.id',
'join hr_hcf_organisation c on c.id = b.org_id',
'where c.id= :APP_ORG_ID',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = a.id',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )  ',
'order by',
'   c.short_name asc, a.unit_name asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(1510317958819398612)
,p_name=>'P1493_START_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_item_default=>'TRUNC(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Between'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(1510318329108398613)
,p_name=>'P1493_END_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_item_default=>'ADD_MONTHS(TRUNC(current_date), 3)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'and'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(1510318744413398614)
,p_name=>'P1493_EMP_APPRAISAL_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_prompt=>'Appraisal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    to_char(hami.appraisal_date, ''fmDD-MON-YYYY'')|| '' :- '' ||e.employee_name|| '' '' || hhl.value_description || '' for ''  || ''Period: ''|| to_char(hami.appraisal_start_period,''DD-MON-YYYY'') || '' to ''  || to_char(hami.appraisal_end_period,''DD-MON-YYYY'') '
||'A,hami.id',
'from ',
'    HR_APP_MERITINCREMENT hami',
'    JOIN HR_APP_MERITCONFIG hamc on hami.merit_config_id = hamc.id',
'    left join hr_hcf_lookup hhl on (hamc.appraisal_type = hhl.table_value and hhl.table_name = ''TBLAPPRAISALTYPE'' and pkg_global_fnts.fn_sharereforg(hhl.org_id) = :APP_ORG_SHR_DED)',
'    left join vw_employee e on e.id = hami.emp_id',
'WHERE ',
'    hamc.ORG_ID =:APP_ORG_ID',
'    and hami.emp_id = :P1493_EMP_ID',
'    and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where e.org_id=a.org_id',
'              and e.employment_class_id=a.employment_class_id',
'              and upper(e.payment_type)=a.payment_type            ',
'              ) ',
'    and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = e.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )',
'    and hami.verified_by is null',
'    and e.orgdtl_id = nvl(:P1493_DEPARTMENT, e.orgdtl_id) ',
'    and hami.appraisal_date between to_date(:P1493_START_DATE, ''DD-MON-YYYY'') and to_date(:P1493_END_DATE, ''DD-MON-YYYY'')',
'order by ',
'    hami.appraisal_date desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1493_DEPARTMENT,P1493_START_DATE,P1493_END_DATE,P1493_EMP_ID'
,p_ajax_items_to_submit=>'P1493_DEPARTMENT,P1493_START_DATE,P1493_END_DATE,P1493_EMP_ID'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(1510319110495398615)
,p_name=>'P1493_ANONYMOUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1510319598545398615)
,p_name=>'P1493_MASTER_APPRAISER_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3487695336281909347)
,p_item_default=>':'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450369095054909478)
,p_name=>'dy_set_anoymous'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1493_EMP_APPRAISAL_ID'
,p_condition_element=>'P1493_EMP_APPRAISAL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450369650129909478)
,p_event_id=>wwv_flow_imp.id(450369095054909478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1493_ANONYMOUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    a.anonymous',
'from',
'    hr_app_meritconfig a',
'    join hr_app_meritincrement b on a.id = b.merit_config_id',
'where ',
'    b.id = :P1493_EMP_APPRAISAL_ID'))
,p_attribute_07=>'P1493_EMP_APPRAISAL_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450370052658909479)
,p_name=>'dy_show_hide_appraisal_review'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1493_EMP_APPRAISAL_ID'
,p_condition_element=>'P1493_EMP_APPRAISAL_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450370509349909479)
,p_event_id=>wwv_flow_imp.id(450370052658909479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2530764953060502240)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450371049324909479)
,p_event_id=>wwv_flow_imp.id(450370052658909479)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2530764953060502240)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450371518923909479)
,p_event_id=>wwv_flow_imp.id(450370052658909479)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3533178493005667569)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450372070021909480)
,p_event_id=>wwv_flow_imp.id(450370052658909479)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2530762094110502211)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450372550362909480)
,p_event_id=>wwv_flow_imp.id(450370052658909479)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2530763118421502221)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450372915135909480)
,p_name=>'dy_get_appraiser_type'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2530762094110502211)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450373467089909481)
,p_event_id=>wwv_flow_imp.id(450372915135909480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i,  linkID ="", AppraiserType = "", AppraiserTypes = ":",',
'    model = this.data.model;  ',
'  ',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {  ',
'   ',
' AppraiserType = model.getValue( this.data.selectedRecords[i], "APPRAISER_TYPE");  ',
' AppraiserTypes += model.getValue( this.data.selectedRecords[i], "APPRAISER_TYPE") + ":";  ',
'',
'}  ',
'  ',
'',
'$s("P1493_MASTER_APPRAISER_TYPE", AppraiserTypes);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450373956174909481)
,p_event_id=>wwv_flow_imp.id(450372915135909480)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1493_MASTER_APPRAISER_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450374312077909481)
,p_name=>'dy_refresh_details'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1493_MASTER_APPRAISER_TYPE'
,p_condition_element=>'P1493_MASTER_APPRAISER_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450374838815909482)
,p_event_id=>wwv_flow_imp.id(450374312077909481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2530763118421502221)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(450355655739909450)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2530762094110502211)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appraisal Summary - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28563662541912876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(450361126158909459)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2530763118421502221)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Appraisal Summary by Appraisers - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>28569132960912885
);
wwv_flow_imp.component_end;
end;
/
