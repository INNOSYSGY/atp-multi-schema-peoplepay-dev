prompt --application/pages/page_04013
begin
--   Manifest
--     PAGE: 04013
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
 p_id=>4013
,p_name=>'frmRiskAssessment'
,p_step_title=>'Create/Edit Risk Assessment'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697435050082629625)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3687098875454133770)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812888426062685395)
,p_plug_name=>'<B> Manage Risk Assessment </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'HR_HS_RISK_ASSESSMENT'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812983017118916593)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3812983073111916594)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3813652249206551808)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  id,                   ',
'  RISK_ASSESSMENT_ID,    ',
'  category,           ',
'  RAW_RISK_SCORE,    ',
'  COMMENTS,          ',
'  CONTROL_TYPE,     ',
'  CONTROL_DESC,       ',
'  RES_RISK_SCORE ',
'',
'  ',
'  from hr_hs_risk_categ',
'  ',
' WHERE RISK_ASSESSMENT_ID=:P4013_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P4013_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813652517429551810)
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
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813652521769551811)
,p_name=>'RISK_ASSESSMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RISK_ASSESSMENT_ID'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P4013_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813652660197551812)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813652811322551813)
,p_name=>'RAW_RISK_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAW_RISK_SCORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raw Risk Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813652847502551814)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comments (when and where hazard is present)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813653016762551815)
,p_name=>'CONTROL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTROL_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Control Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813653087820551816)
,p_name=>'CONTROL_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTROL_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Control Description (current and proposed)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813653145541551817)
,p_name=>'RES_RISK_SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RES_RISK_SCORE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Residual Risk Score'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813653850775551824)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3813653944232551825)
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
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3813652397416551809)
,p_internal_uid=>206134891283405425
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
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
 p_id=>wwv_flow_imp.id(3813784575231221292)
,p_interactive_grid_id=>wwv_flow_imp.id(3813652397416551809)
,p_static_id=>'18449'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3813784634878221292)
,p_report_id=>wwv_flow_imp.id(3813784575231221292)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813785141411221293)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3813652517429551810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813785697826221294)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3813652521769551811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813786144314221295)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3813652660197551812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813786655061221296)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3813652811322551813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813787211557221299)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3813652847502551814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813787689418221301)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3813653016762551815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813788182259221302)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3813653087820551816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813788657030221303)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3813653145541551817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3813792152140221312)
,p_view_id=>wwv_flow_imp.id(3813784634878221292)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3813653850775551824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3813618328304972711)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3813652249206551808)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691350266550010178)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691348281458010176)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691349161195010177)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691348721010010177)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'ADDNEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4013:&SESSION.::&DEBUG.:RP,4013::'
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691349906721010177)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HS_RISK_ASSESSMENT',
'WHERE ID=:P4013_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691349552341010177)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'Populate_Register'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Populate Register'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691347881033010176)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'GRA_FORM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'General Risk Assessment Form'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3691347517631010176)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3687098875454133770)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4013_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3690509346411076813)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:4013:&SESSION.::&DEBUG.:RP:P4013_ID:&P4013_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3691348281458010176)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3690508678289076807)
,p_branch_name=>'DELETE'
,p_branch_action=>'f?p=&APP_ID.:4012:&SESSION.::&DEBUG.:RP,4012::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3691349906721010177)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3691317519245010150)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY:169,FRMHSACCIDENTINV,&P4005_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3691347517631010176)
,p_branch_sequence=>30
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P4013_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3691317072589010150)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID:&P4005_DOC_EXIST.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3691347517631010176)
,p_branch_sequence=>40
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P4013_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3691316675721010150)
,p_branch_name=>'goto_same_page'
,p_branch_action=>'f?p=&APP_ID.:4013:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691321715391010153)
,p_name=>'P4013_LAST_CHANGED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691322121130010154)
,p_name=>'P4013_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed by:'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691322499453010154)
,p_name=>'P4013_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified Date:'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691322892787010154)
,p_name=>'P4013_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Verified by:'
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691323263249010155)
,p_name=>'P4013_ENTRY_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date:'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691323754395010155)
,p_name=>'P4013_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3813618328304972711)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered by:'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691329727614010163)
,p_name=>'P4013_BUILD_CAPACITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Build Capacity'
,p_source=>'BUILD_CAPACITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Adequate;Adequate,Over;Over,Under;Under'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691330117498010163)
,p_name=>'P4013_OCCU_FOUR_FLOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4th Floor'
,p_source=>'OCCU_FOUR_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691330465648010163)
,p_name=>'P4013_OCCU_THIR_FLOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'3rd Floor'
,p_source=>'OCCU_THIR_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691330959407010163)
,p_name=>'P4013_OCCU_SECO_FLOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2nd Floor'
,p_source=>'OCCU_SECO_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691331310316010163)
,p_name=>'P4013_OCCU_FIRST_FLOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupancy of 1st Floor'
,p_source=>'OCCU_FIRST_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691331686270010164)
,p_name=>'P4013_AREA_FOUR_FLOOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4th Floor'
,p_source=>'AREA_FOUR_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691332081412010164)
,p_name=>'P4013_AREA_THIR_FLOOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'3rd Floor'
,p_source=>'AREA_THIR_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691332496001010164)
,p_name=>'P4013_AREA_SECO_FLOOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2nd Floor'
,p_source=>'AREA_SECO_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691332938604010165)
,p_name=>'P4013_AREA_FIRST_FLOOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area in 1st Floor (meter square)'
,p_source=>'AREA_FIRST_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691333273735010165)
,p_name=>'P4013_NUM_FLOOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'# Floors'
,p_source=>'NUM_FLOOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691333733696010165)
,p_name=>'P4013_ELEC_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ELEC_EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691334065538010165)
,p_name=>'P4013_ELEC_ISSUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ELEC_ISSUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691334474727010166)
,p_name=>'P4013_ELEC_CER_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Electrical Certificate Number'
,p_source=>'ELEC_CER_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691334882009010166)
,p_name=>'P4013_F_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'F_EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691335347721010166)
,p_name=>'P4013_CER_ISSUED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issued Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CER_ISSUED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691335727766010166)
,p_name=>'P4013_FIRE_CER_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3812983073111916594)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fire Certificate Number'
,p_source=>'FIRE_CER_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691336369274010167)
,p_name=>'P4013_HAVE_FIRE_CER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Does the building have a fire certificate?'
,p_source=>'HAVE_FIRE_CER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Yes,No;No'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691336861540010167)
,p_name=>'P4013_REQ_FIRE_CER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Does the building require a fire certificate?'
,p_source=>'REQ_FIRE_CER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Yes,No;No'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691337186812010168)
,p_name=>'P4013_COPY_ATTACHED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Copy Attached'
,p_source=>'COPY_ATTACHED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Yes,No;No'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691337637833010168)
,p_name=>'P4013_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry Date'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>13
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691337975843010168)
,p_name=>'P4013_L_ISSUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Date'
,p_source=>'L_ISSUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>13
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691338402131010168)
,p_name=>'P4013_EPA_LICENCE_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'EPA Licence Number'
,p_source=>'EPA_LICENCE_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691338780728010169)
,p_name=>'P4013_HAVE_PERMIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Does the building have a Permit?'
,p_source=>'HAVE_PERMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Yes,No;No'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691339212139010169)
,p_name=>'P4013_PERMIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Does the building require an EPA permit/ license?'
,p_source=>'PERMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Yes,No;No'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691339659987010169)
,p_name=>'P4013_CONSTRUCTION_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Construction Class'
,p_source=>'CONSTRUCTION_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HS-BUILDING-CONST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description,id',
'from hr_hcf_lookup',
'where table_name= ''TBLBUILDINGCONST''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691339993590010170)
,p_name=>'P4013_OCCUPANCY_CLASSIFICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3812983017118916593)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Occupancy Classification'
,p_source=>'OCCUPANCY_CLASSIFICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HS-BUILDING-CLASS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description,id',
'from hr_hcf_lookup',
'where table_name =''TBLBUILDINGCLASS'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691340726650010170)
,p_name=>'P4013_DOC_EXIST'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P4013_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691341066706010171)
,p_name=>'P4013_FILE_ATTACHED'
,p_source_data_type=>'BLOB'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_ATTACHED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691341490278010171)
,p_name=>'P4013_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
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
'and upper(Wfl_Status_Description) not like DECODE(:P4013_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P4013_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P4013_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3691341867293010171)
,p_name=>'P4013_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(3691342280775010172)
,p_name=>'P4013_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_prompt=>'Assessed by'
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_FULL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')''  end a,x.ID b',
'from hr_rcm_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where  x.ORG_ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3691342702952010172)
,p_name=>'P4013_DEPARTMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_STRUCTURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and n.org_id=:APP_ORG_SHR_DED',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and a.org_id= :APP_ORG_ID)',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3691343087242010172)
,p_name=>'P4013_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_prompt=>'Region'
,p_source=>'REGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'REGION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_value||'': ''|| value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREGION'')) a',
'where org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3691343493656010173)
,p_name=>'P4013_JWSHC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'JWSHC Representative'
,p_source=>'JWSHC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691343875634010173)
,p_name=>'P4013_BUILDING_NUMBER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Building Number'
,p_source=>'BUILDING_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691344317183010173)
,p_name=>'P4013_DATE_ASSESSED'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_source=>'DATE_ASSESSED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691344681137010174)
,p_name=>'P4013_LOCATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location Name'
,p_source=>'LOCATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>200
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691345084136010174)
,p_name=>'P4013_AUTHOURISED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_prompt=>'Authorised By'
,p_source=>'AUTHOURISED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select (Employee_name||'' - ''||position_name) name, emp_id',
'from VW_POSITION_LOCATION_V1',
'where org_id = :APP_ORG_ID',
'--where emp_id in(14055,14126,14025);'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3691345489773010174)
,p_name=>'P4013_DATE_REVIEW'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Review'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_REVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>25
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691345888877010174)
,p_name=>'P4013_VERSION_NUMBER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version Number'
,p_source=>'VERSION_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>40
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691346322066010175)
,p_name=>'P4013_REVIEW_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date of this review'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'REVIEW_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691346738662010175)
,p_name=>'P4013_REVIEW_NUMBER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Risk Assessment #'
,p_source=>'REVIEW_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3691347089998010175)
,p_name=>'P4013_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_item_source_plug_id=>wwv_flow_imp.id(3812888426062685395)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3691321227101010153)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P4013_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P4013_ID, :P4013_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3691320774430010153)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P4013_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3691318469452010151)
,p_name=>'Show Form OMPREME'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3691347881033010176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%192.168.12.16%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3691318001499010151)
,p_event_id=>wwv_flow_imp.id(3691318469452010151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P4013_ID.,PeoplePay_Cloud/01_SH/GENERAL_RISK_ASSTMENT'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3705674539925903403)
,p_name=>'Show Form CLOUD'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3691347881033010176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%bfe1jra07zihlbs-innosysdb2019.adb.us-ashburn-1.oraclecloudapps.com%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3705674384087903402)
,p_event_id=>wwv_flow_imp.id(3705674539925903403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P4013_ID.,PeoplePay_Cloud/01_SH/GENERAL_RISK_ASSTMENT'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}*/',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_Cloud/01_SH/GENERAL_RISK_ASSTMENT-ID=&P4013_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,locati'
||'on=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691320149104010152)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3812888426062685395)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_HS_RISK_ASSESSMENT'
,p_internal_uid=>3048125599324401884
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691319680186010152)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3812888426062685395)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_HS_RISK_ASSESSMENT'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3048125130406401884
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691319263907010152)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3691349906721010177)
,p_internal_uid=>3048124714127401884
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691324379527010156)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3813652249206551808)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3048129829747401888
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691318890623010151)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P4013_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P4013_STATUS;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Risk Assessment'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P4013_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Risk Assessment'',',
'	:P4013_STATUS,:APP_PAGE_ID,:P4013_TRANSACTION_TYPE_ID,',
'        ''HR_HS_RISK_ASSESSMENT'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P4013_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3048124340843401883
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3691320491309010152)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate_Register'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'FOR I IN (',
'SELECT ',
'          RSK.ID AS RISK_ID,',
'          RCAT.ID as risk_cat_id,',
'          RSK.DATE_REVIEW,',
'          RSK.LOCATION_NAME,',
'          RSK.REGION,',
'          RSK.DEPARTMENT,',
'          RCAT.CATEGORY,',
'          RCAT.RAW_RISK_SCORE,',
'          RCAT.COMMENTS,',
'          RCAT.CONTROL_TYPE,',
'          RCAT.CONTROL_DESC, ',
'          RCAT.RES_RISK_SCORE,',
'          RSK.ENTERED_BY,',
'          RSK.ENTRY_DATE,',
'          RSK.LAST_CHANGED_BY,',
'          RSK.LAST_CHANGED_DATE   ',
'',
'      FROM HR_HS_RISK_ASSESSMENT RSK',
'      JOIN HR_HS_RISK_CATEG RCAT ON RSK.ID=RCAT.RISK_ASSESSMENT_ID',
'      WHERE RSK.ID=:P4013_ID',
'',
') LOOP',
'',
'INSERT INTO HR_HS_RISK_REGISTER(',
'            ',
'            RISK_ID,',
'            RISK_CAT_ID,',
'            DATE_REVIEW,',
'            LOCATION_NAME,',
'            REGION,',
'            DEPARTMENT,',
'            RSK_CATEGORY,',
'            RAW_RISK_SCORE,',
'            COMMENTS,',
'            CONTROL_TYPE,',
'            CONTROL_DESC,',
'            RES_RISK_SCORE,',
'            ENTERED_BY,',
'            ENTRY_DATE,',
'            LAST_CHANGED_BY,',
'            LAST_CHANGED_DATE',
'            )',
'VALUES    (',
'        ',
'          I.RISK_ID,',
'          i.risk_cat_id,',
'          i.DATE_REVIEW,',
'          i.LOCATION_NAME,',
'          i.REGION,',
'          i.DEPARTMENT,',
'          i.CATEGORY,',
'          i.RAW_RISK_SCORE,',
'          i.COMMENTS,',
'          i.CONTROL_TYPE,',
'          i.CONTROL_DESC, ',
'          i.RES_RISK_SCORE,',
'          i.ENTERED_BY,',
'          i.ENTRY_DATE,',
'          i.LAST_CHANGED_BY,',
'          i.LAST_CHANGED_DATE   ',
'',
'           );',
'           ',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to Populate Risk Assessment Register'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3691349552341010177)
,p_process_success_message=>'Successfully Populated Risk Assessment Register'
,p_internal_uid=>3048125941529401884
);
wwv_flow_imp.component_end;
end;
/
