prompt --application/pages/page_01327
begin
--   Manifest
--     PAGE: 01327
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
 p_id=>1327
,p_name=>'frmUserAccount'
,p_step_title=>'Create/Edit User Account'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3584896379937630896)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'//-->',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}',
'',
'<style>',
'#passwordStrength',
'{',
'        height:10px;',
'        display:block;',
'        float:left;',
'}',
'.strength0',
'{',
'        width:190px;',
'        background:#ffffff;',
'}',
'.strength1',
'{',
'        width:45px;',
'        background:#ff0000;',
'}',
'.strength2',
'{',
'        width:90px;  ',
'        background:#ff5f5f;',
'}',
'.strength3',
'{',
'        width:135px;',
'        background:#56e500;',
'}',
'.strength4',
'{',
'        background:#4dcd00;',
'        width:160px;',
'}',
'.strength5',
'{',
'        background:#399800;',
'        width:190px;',
'}',
'',
'.t-Form-fieldContainer--postTextBlock .t-Form-itemText--post{',
'    height:100px;',
'    background:rgba(99, 55, 220,0.40);',
'    ',
'    ',
'}',
'.fa-low-vision::before{',
'   content: "\f2a8";',
'    background: rgba(99, 55, 220,0.40);',
'     height:25px;',
'    display:inline-block;',
'',
'',
'',
'</style>'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(438801673295609786)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3484035150879382614)
,p_plug_name=>'Create Like'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3537412005148410753)
,p_plug_name=>'Audit'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1327_USER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3539638018023998538)
,p_plug_name=>'Create/Edit User Accounts'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'TABLE'
,p_query_table=>'TBLUSER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3550259040443950217)
,p_plug_name=>'Work Flow Forwarding for Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3550256451047943806)
,p_plug_name=>'Shuttle'
,p_parent_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_footer=>'</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3586135560019035540)
,p_plug_name=>'Restrict Static IP'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    user_id,',
'    restrict_ip,',
'    last_changed_by,',
'    last_changed_date,',
'    entered_by,',
'    entry_date',
'FROM  tbluser_restrict',
'WHERE USER_ID=:P1327_USER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1327_USER_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3586134431785035529)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3586134555043035530)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3586134583350035531)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3586134732722035532)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3586134860354035533)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
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
 p_id=>wwv_flow_imp.id(3586134959157035534)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3586135065777035535)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(3586135084037035536)
,p_name=>'RESTRICT_IP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESTRICT_IP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Restrict IP'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(3586135177439035537)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1327_USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3586135283031035538)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3586135413849035539)
,p_internal_uid=>66703752297952030
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
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
 p_id=>wwv_flow_imp.id(3585015974644642575)
,p_interactive_grid_id=>wwv_flow_imp.id(3586135413849035539)
,p_static_id=>'18124'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3585015903892642575)
,p_report_id=>wwv_flow_imp.id(3585015974644642575)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585010826210641892)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3586134555043035530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585011294106641894)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3586134583350035531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585012414995642562)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3586134732722035532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>270
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585012903977642563)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3586134860354035533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585013392970642564)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3586134959157035534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585013959568642566)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3586135065777035535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585014383235642567)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3586135084037035536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585014876966642568)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3586135177439035537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3585015452494642572)
,p_view_id=>wwv_flow_imp.id(3585015903892642575)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3586135283031035538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3613153894919115895)
,p_plug_name=>'Reminder'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Form--slimPadding'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="red" size="2"><b>',
' You are reminded to create the Account Details of the user account immediately upon account creation!.</b></font>'))
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tbluserDETAIL',
'where user_id =:P1327_USER_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3632823631954113445)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3574947313252192630)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3741471086888392437)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(3543117633844416350)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3741471086888392437)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1327_EMPLOYEE_NO',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P1327_EMPLOYEE_NO',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1327_EMPLOYEE_NO',
'            union',
'     select 11 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee emp on a.id = emp.ind_id',
'    where emp.id=:P1327_EMPLOYEE_NO',
'    union',
'    select 12 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1327_EMPLOYEE_NO',
'     union',
'    select 13 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1327_EMPLOYEE_NO',
'    union',
'    select 14 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1327_EMPLOYEE_NO',
'    union',
'    select 15 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1327_EMPLOYEE_NO',
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
 p_id=>wwv_flow_imp.id(3485525236986425503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3543117633844416350)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P1327_EMPLOYEE_NO.,1327'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632330391079941316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632336824849941334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_button_name=>'CREATE_LIKE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Like'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632339240720941343)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>':p916_wizard_id'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632338815675941336)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632338380301941335)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'SAVE'
,p_button_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1327_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632338037748941335)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'CREATE'
,p_button_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1327_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632336405450941334)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1327_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632336004685941333)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3632823631954113445)
,p_button_name=>'ACCOUNT_DETAILS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Account Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1327_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632330053109941316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3550256451047943806)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3632287479642941216)
,p_branch_name=>'ADD NEW'
,p_branch_action=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:1327::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3632336405450941334)
,p_branch_sequence=>9
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3632287087937941216)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3632330391079941316)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3632285870814941215)
,p_branch_name=>'acc_dtl_br'
,p_branch_action=>'f?p=&APP_ID.:1405:&SESSION.::&DEBUG.:1405:P1405_USER_ID,P1405_USER_NAME:&P1327_USER_ID.,&P1327_USER_NAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3632336004685941333)
,p_branch_sequence=>41
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3630750732553838283)
,p_branch_name=>'return_branch'
,p_branch_action=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3632339240720941343)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3632287877838941217)
,p_branch_name=>'Go To Page 1327'
,p_branch_action=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:1327:P1327_USER_ID:&P1327_USER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433821874271723522)
,p_name=>'P1327_MAX_LOGIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>168
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'6'
,p_prompt=>'Max Login Attempts'
,p_source=>'MAX_LOGIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:3;3,6;6,9;9,0;0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Number of failed logins allowed. The user account will be locked if this period is passed. Zero means unlimited.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(433821931708723523)
,p_name=>'P1327_MAX_DAYS_BEFORE_RESET'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>248
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Max Days Reset'
,p_source=>'MAX_RESET_DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,15;15,30;30,45;45'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Restriction on how soon you can change your password. Zero(0) means unlimited.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(438801225929609782)
,p_name=>'P1327_PWD_REUSE_HIST'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>358
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Password Reuse History'
,p_source=>'PWD_REUSE_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,5;5,6;6,7;7,8;8,9;9,3;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'A password can only be reused this number new passwords have been used. Zero means unlimited.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(445354380716844908)
,p_name=>'P1327_MFA_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>448
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NOT_ASSIGNED'
,p_prompt=>'MFA Type'
,p_source=>'MFA_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Code;CODE,Not Assigned;NOT_ASSIGNED'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Multi Factor Authentication requires user to provide either a code or an answer to a question before they can login.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(445354418299844909)
,p_name=>'P1327_MFA_DURATION_MINS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>478
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'MFA Mins to Expire'
,p_source=>'MFA_DURATION_MINS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:5 Mins;5,10 Mins;10,15 Mins;15,20 Mins;20,25 Mins;25,30 Mins;30'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(445354555372844910)
,p_name=>'P1327_MFA_DELIVERY_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>488
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NOT_ASSIGNED'
,p_prompt=>'MFA Delivery Method'
,p_source=>'MFA_DELIVERY_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Email;EMAIL,SMS;SMS,WhatsApp;WHATSAPP,Not Assigned;NOT_ASSIGNED'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please note Whatsapp and SMS will not work.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(445354639785844911)
,p_name=>'P1327_MFA_CELL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>498
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'MFA Cell'
,p_source=>'MFA_CELL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3151174954334102501)
,p_name=>'P1327_ENFORCE_ONE_ACTIVE_RESP'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>108
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enf One Active Resp'
,p_source=>'ENFORCE_ONE_ACTIVE_RESP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3485524529017425502)
,p_name=>'P1327_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3741471086888392437)
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
    '              from TBLUSER C ',
    '              where  C.EMPLOYEE_NO=B.ID',
    '              and c.user_id=:P1327_USER_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3497388232184039835)
,p_name=>'P1327_MY_POSTING_ONLY'
,p_item_sequence=>278
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_prompt=>'View My Posting Only'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3602741731253778342)
,p_name=>'P1327_SELF_SERVE_ONLY'
,p_item_sequence=>538
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NVL(MAX(SELF_SERVE_ORG),0)',
'from tbluser a join tbluserdetail b on a.USER_ID=b.USER_ID',
'where org_id=:APP_ORG_ID',
'and SELF_SERVE_ORG=1',
'and USER_NAME=:APP_USER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3603583312365229756)
,p_name=>'P1327_NEW'
,p_item_sequence=>528
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3625937628929847882)
,p_name=>'P1327_CREATE_LIKE_MODULE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Create Like Responsibility'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(d.responsibility_name) a, d.responsibility_id',
'from  tblresponsibility d ',
'where exists(select 1',
'            from tbluserdetail c ',
'            where d.responsibility_id=c.responsibility_id',
'            and c.user_id=:P1327_CREATE_FROM)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1327_CREATE_FROM'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3626324425949431104)
,p_name=>'P1327_ORGANISATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Create Like Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :APP_USER in (''WANT'',''RLANGFORD@INNOSYSGY.COM'') then',
'',
'return ',
'    ''select organisation_name,id',
'    from hr_hcf_organisation a',
'    where organisation_type=''''SOFTWARE USER''''',
'    and exists (select 1',
'                from APP_MODULE_LICENCE c',
'                where c.org_id=a.id',
'                and EXPIRY_LICENCE_DATE >= trunc(current_date))           ',
'    order by 1'';     ',
'',
'else',
'return ',
'    ''select organisation_name,id',
'    from hr_hcf_organisation a',
'    where organisation_type=''''SOFTWARE USER''''',
'    and exists(select 1',
'               from tbluserdetail b',
'               where a.id=b.ORG_ID           ',
'               and user_id=:P1327_CREATE_FROM',
'               and b.org_id=:APP_ORG_ID)	',
'    and exists (select 1',
'                from APP_MODULE_LICENCE c',
'                where c.org_id=a.id',
'                and EXPIRY_LICENCE_DATE >= trunc(current_date))           ',
'    order by 1'';     ',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1327_CREATE_FROM'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3626665782326229197)
,p_name=>'P1327_LOAD_HOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>458
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Home Screen:'
,p_source=>'LOAD_HOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(page_title) page_name, c.webpage_id',
'from APEX_APPLICATION_PAGES a join tblpagelist c on c.webpage_id=a.page_id',
'join app_module b on b.id = c.app_module_id',
'where application_id=:APP_ID',
'and module_start_pagetype is not null',
'and exists(select 1',
'          from qry_usermodule_sw sw',
'          where MODULE_MAIN !=''GLOBAL''',
'          and trim(upper(b.module_main))=sw.MODULE_MAIN',
'          )',
'order by page_name',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3629530819559213401)
,p_name=>'P1327_PAYMENT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct payment_type a, payment_type b',
'from tbluserdetail  ',
'where org_id= :P1327_ORGANISATION',
'and user_id = :P1327_CREATE_FROM'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1327_ORGANISATION,P1327_CREATE_FROM'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tblresponsibility c ',
'where exists (select 1',
'             from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'              where B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              and USER_NAME=nvl(v(''APP_USER''),user)',
'              and TRUNC(b.EFFECTIVE_FROM) <= TRUNC(current_date)',
'              and (TRUNC(b.effective_to) IS NULL OR TRUNC(b.effective_to) >= TRUNC(current_date))',
'              )',
'and RESPONSIBILITY_NAME like ''%SYS%ADMIN%'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3629530920108213402)
,p_name=>'P1327_EMPLOYMENT_CLASS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Employment Class'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''VALUE_DESCRIPTION'') a, employment_class_id b',
'from tbluserdetail  ',
'where org_id= :P1327_ORGANISATION',
'and payment_type =:P1327_PAYMENT_TYPE',
'and user_id = :P1327_CREATE_FROM'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1327_CREATE_FROM,P1327_ORGANISATION,P1327_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from tblresponsibility c ',
'where exists (select 1',
'             from tbluser a join tbluserdetail b on a.user_id=b.user_id',
'              where B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              and USER_NAME=nvl(v(''APP_USER''),user)',
'              and TRUNC(b.EFFECTIVE_FROM) <= TRUNC(current_date)',
'              and (TRUNC(b.effective_to) IS NULL OR TRUNC(b.effective_to) >= TRUNC(current_date))',
'              )',
'and RESPONSIBILITY_NAME like ''%SYS%ADMIN%'''))
,p_display_when_type=>'EXISTS'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632309548701941269)
,p_name=>'P1327_LAST_UPDATE_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>285
,p_item_plug_id=>wwv_flow_imp.id(3537412005148410753)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632309911410941270)
,p_name=>'P1327_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>264
,p_item_plug_id=>wwv_flow_imp.id(3537412005148410753)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632310295162941271)
,p_name=>'P1327_CREATION_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>262
,p_item_plug_id=>wwv_flow_imp.id(3537412005148410753)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632310761873941271)
,p_name=>'P1327_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>241
,p_item_plug_id=>wwv_flow_imp.id(3537412005148410753)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632311427086941274)
,p_name=>'P1327_SELF_SERVE_ONLY_TMP'
,p_item_sequence=>608
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632311776351941275)
,p_name=>'P1327_RESET_ARCHIVE_TMP'
,p_item_sequence=>598
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632312259963941277)
,p_name=>'P1327_CAN_VERIFY_TMP'
,p_item_sequence=>588
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632312649037941283)
,p_name=>'P1327_CAN_APPROVE_TMP'
,p_item_sequence=>578
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632313030848941283)
,p_name=>'P1327_EFFECTIVE_TO_TMP'
,p_item_sequence=>568
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632313417868941283)
,p_name=>'P1327_USER_ID_PREV'
,p_item_sequence=>558
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632313849965941284)
,p_name=>'P1327_USER_ID_NEXT'
,p_item_sequence=>548
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632314631825941286)
,p_name=>'P1327_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>518
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632314970404941286)
,p_name=>'P1327_CONTROL_STATIONERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>508
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTROL_STATIONERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632315431126941286)
,p_name=>'P1327_VIEW_ACCOUNT_FIELDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>438
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'View Account Fields'
,p_source=>'VIEW_ACCOUNT_FIELDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632315815486941287)
,p_name=>'P1327_IS_BUYER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>418
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Buyer'
,p_source=>'IS_BUYER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632316198996941288)
,p_name=>'P1327_DISPLAY_WIZARD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>398
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Display Wizard'
,p_source=>'DISPLAY_WIZARD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632317448844941292)
,p_name=>'P1327_SHOW_TIP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>348
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Show Tip'
,p_source=>'SHOW_TIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'NO',
  'off_value', '0',
  'on_label', 'YES',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632318208688941293)
,p_name=>'P1327_PASSWORD_DURATION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>328
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password Duration'
,p_source=>'PASSWORD_DURATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:0,30,60,90,120'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'The number of days the password would remain active. Zero means unlimited.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632318602757941293)
,p_name=>'P1327_3_2'
,p_item_sequence=>318
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632319064942941296)
,p_name=>'P1327_CAN_ISSUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>308
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Can Issue'
,p_source=>'CAN_ISSUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632319449187941297)
,p_name=>'P1327_FORWARD_DEFAULT_ONLY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>298
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Forward Default Only'
,p_source=>'FORWARD_DEFAULT_ONLY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'States whether the user can take part in auto defined workflow only or can do manual workflow. Please not this user must be setup in the forward list at least to receive general notifications.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632319852420941297)
,p_name=>'P1327_CAN_FORWARD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>288
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Can Forward'
,p_source=>'CAN_FORWARD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'States whether the user can take part in workflow.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632320239001941298)
,p_name=>'P1327_RESET_ARCHIVE_PAYROLL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>268
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reset Archive Payroll'
,p_source=>'RESET_ARCHIVE_PAYROLL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632320603758941298)
,p_name=>'P1327_CHANGE_ON_LOGON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>408
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Change On Logon'
,p_source=>'CHANGE_ON_LOGON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632321871695941302)
,p_name=>'P1327_EXPIRY_ACCOUNT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>238
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expire Account'
,p_source=>'EXPIRY_ACCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632322359250941304)
,p_name=>'P1327_CAN_VERIFY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>228
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Can Verify'
,p_source=>'CAN_VERIFY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632322763083941304)
,p_name=>'P1327_CAN_APPROVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>218
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Can Approve'
,p_source=>'CAN_APPROVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632323103514941304)
,p_name=>'P1327_AUTHENTICATION_SCHEME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>208
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SHA256'
,p_prompt=>'Authentication Scheme'
,p_source=>'AUTHENTICATION_SCHEME'
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
 p_id=>wwv_flow_imp.id(3632323467867941304)
,p_name=>'P1327_EFFECTIVE_TO'
,p_source_data_type=>'DATE'
,p_item_sequence=>198
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Effect To'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EFFECTIVE_TO'
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
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632323881525941306)
,p_name=>'P1327_EFFECTIVE_FROM'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>188
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_item_default=>'current_date()'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effect From'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EFFECTIVE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>13
,p_cMaxlength=>255
,p_grid_label_column_span=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM DUAL',
'WHERE :APP_USER = ''GTT'''))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3632324341226941306)
,p_name=>'P1327_CREATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Create To'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select user_name,user_id',
'from tbluser a    ',
'where exists(select 1',
'             from tbluserdetail b',
'             where a.user_id=b.user_id',
'             and org_id=:APP_ORG_ID)',
'          --   AND to_char(user_id)!=to_char(:P1327_CREATE_FROM))',
'             union',
'Select user_name,user_id',
'from tbluser a    ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_lov_cascade_parent_items=>'P1327_CREATE_FROM'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632324705281941307)
,p_name=>'P1327_CREATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3484035150879382614)
,p_prompt=>'Create From'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select user_name,user_id',
'from tbluser a    ',
'where exists(select 1',
'             from tbluserdetail b',
'             where a.user_id=b.user_id',
'             and org_id=:APP_ORG_ID',
'             )',
'             '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632325077091941307)
,p_name=>'P1327_CONFIRM_PASSWORD'
,p_item_sequence=>158
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_prompt=>'Confirm Password'
,p_post_element_text=>'<span class="fa fa-low-vision"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'<div id ="success"></div>'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632325475681941307)
,p_name=>'P1327_PASSWORD'
,p_item_sequence=>148
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_prompt=>'Password'
,p_pre_element_text=>'<span class="fa fa-low-vision"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>100
,p_tag_attributes=>'onkeyup="return passwordStrength();" '
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="passwordDescription">Password not entered</div>',
'<div id="show"style="background-color:pink;border-radius:8px;width:90%; padding:2%; font-weight:bold; display:none;">',
'    <span style="font-size:10px; "><i> Must contain: 8 characters<br> upper and lowercase letters<br> special characters like (@#$%^)</i></span>',
'</div>',
'',
''))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632325953403941307)
,p_name=>'P1327_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>138
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>200
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3632326279037941308)
,p_name=>'P1327_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>128
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
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
  'trim_spaces', 'TRAILING')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632326764558941308)
,p_name=>'P1327_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>118
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3632327067766941309)
,p_name=>'P1327_EMPLOYEE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>98
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_prompt=>'Employee No'
,p_source=>'EMPLOYEE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if UPPER(:APP_USER)  LIKE ''%INNOSYSGY.COM'' THEN -- this is used specifically to allow innosys staff to enter the very first employee',
'return',
'    '' SELECT  to_char(employee_name ||''''(No.:''''||EMP_COMPANY_NO||'''')'''')',
'        ||case when to_char(separated_status) is null then '''''''' else to_char(separated_status) end a, x.ID b',
'       FROM VW_EMPLOYEE X  -- FROM apps.VW_EMPLOYEE X ',
'        where org_id =1749',
'        AND date_separated is null',
'        and employment_class!=''''APPLICANT''''',
'     UNION',
'     SELECT  to_char(INITCAP(SURNAME || '''', '''' || NVL(FIRST_NAME, '''''''')) ||'''' ''''||NVL(MIDDLE_NAME,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')''''',
'    ||'''' At ''''||LOCATION_DESCRIPTION)||'''' ''''||case when to_char(separated_status) is null then '''''''' else to_char(separated_status) end a,x.ID b',
'    FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'    JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'    JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID     ',
'    where exists (select 1',
'                  from hr_hcf_organisation k',
'                  where x.org_id = k.id ',
'                  and k.organisation_type=''''SOFTWARE USER''''',
'                  and k.id in (select nvl(parent_org_id,id) ',
'                              from hr_hcf_organisation',
'                              where id =:APP_ORG_ID)',
'                  )'';',
'',
'else',
'',
'return',
'  ''SELECT  to_char(INITCAP(SURNAME || '''', '''' || NVL(FIRST_NAME, '''''''')) ||'''' ''''||NVL(MIDDLE_NAME,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')''''',
'||'''' At ''''||LOCATION_DESCRIPTION)||'''' ''''||case when to_char(separated_status) is null then '''''''' else to_char(separated_status) end a,x.ID b',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID     ',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''''SOFTWARE USER''''',
'              and k.parent_org_id =:APP_ORG_ID',
'              )  ',
'UNION',
'SELECT  to_char(INITCAP(SURNAME || '''', '''' || NVL(FIRST_NAME, '''''''')) ||'''' ''''||NVL(MIDDLE_NAME,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')''''',
'||'''' At ''''||LOCATION_DESCRIPTION)||'''' ''''||case when to_char(separated_status) is null then '''''''' else to_char(separated_status) end a,x.ID b',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID     ',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''''SOFTWARE USER''''',
'              and k.parent_org_id in (select parent_org_id ',
'                                      from hr_hcf_organisation',
'                                      where id =:APP_ORG_ID)',
'              )  ',
'UNION',
'SELECT  to_char(INITCAP(SURNAME || '''', '''' || NVL(FIRST_NAME, '''''''')) ||'''' ''''||NVL(MIDDLE_NAME,'''''''') ||''''(No.:''''||EMP_COMPANY_NO||'''')''''',
'||'''' At ''''||LOCATION_DESCRIPTION)||'''' ''''||case when to_char(separated_status) is null then '''''''' else to_char(separated_status) end a,x.ID b',
'FROM VW_EMPLOYEE X JOIN HR_RCM_INDIVIDUAL Z ON Z.ID=X.IND_ID        ',
'JOIN HR_HCF_POSITION B ON B.ID=x.POSITION_ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=x.WKLOCATION_ID     ',
'where exists (select 1',
'              from hr_hcf_organisation k',
'              where x.org_id = k.id ',
'              and k.organisation_type=''''SOFTWARE USER''''',
'              and k.id in (select nvl(parent_org_id,id) ',
'                          from hr_hcf_organisation',
'                          where id =:APP_ORG_ID)',
'              ) '';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3632327382741941309)
,p_name=>'P1327_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>88
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>33
,p_cMaxlength=>50
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3632327798525941310)
,p_name=>'P1327_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_item_source_plug_id=>wwv_flow_imp.id(3539638018023998538)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632329223119941314)
,p_name=>'P1327_STAY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3550256451047943806)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632329625371941316)
,p_name=>'P1327_POSITION_LOCATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3550256451047943806)
,p_prompt=>'Destination Position'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'' (''||initcap(unit_name)||'') At ''||LOCATION_code a, b.id b',
'from HR_HCF_POSITION b JOIN HR_HCF_WORKLOCATION C ON C.ID=b.def_work_LOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'where exists(select 1',
'           from tbluser u join tbluserdetail b on u.USER_ID=b.USER_ID',
'           join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           join hr_rcm_employee v on u.EMPLOYEE_NO=v.id',
'           where b.id = v.position_id',
'           and c.id = v.wklocation_id',
'           and WFL_STATUS_ID=:P1327_WFL_STATUS_ID',
'           and d.can_view=''Y''',
'           and trunc(d.start_date) <= trunc(current_date)',
'           and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'           and trunc(d.start_date) <= trunc(current_date)',
'           and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'           )',
'order by 1'))
,p_lov_cascade_parent_items=>'P1327_WFL_STATUS_ID,P1327_ORGANISATION,P1327_ORGANISATION_DED,P1327_ORGANISATION_RULE,P1327_EMPLOYMENT_CLASS,P1327_PAYMENT_FREQUENCY,P1327_RULE_FREQUENCY,P1327_EMP_CLASS_RULE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632331120047941319)
,p_name=>'P1327_REMARKS_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632331494742941320)
,p_name=>'P1327_EFFECTIVE_TO_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Effective To'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3632331871139941320)
,p_name=>'P1327_EFFECTIVE_FROM_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Effective From'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3632332796657941322)
,p_name=>'P1327_AUTO_CLOSE_ON_COMPLETE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Auto Close On Complete'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This ensures that flow automatically closes off thus no need to edit notification record and close off the notices.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632333762080941324)
,p_name=>'P1327_IS_DEFAULT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Default'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Y'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'This ensures that the flow works without user intervention'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632334119908941325)
,p_name=>'P1327_SRC_POSLOC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source Position/Location'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'' (''||initcap(unit_name)||'') At ''||LOCATION_code a, b.id b',
'from HR_HCF_POSITION b JOIN HR_HCF_WORKLOCATION C ON C.ID=b.def_work_lOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3632334563337941325)
,p_name=>'P1327_FORWARD_MODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Forward Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3585038208548167125)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632334888018941325)
,p_name=>'P1327_WFL_STATUS_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and b.STAGE_ID=:P1327_STAGE_ID)             ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1327_STAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3632335297117941331)
,p_name=>'P1327_STAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3550259040443950217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Flow Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1327_FORWARD_LIST_ID is null then',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'';',
'else',
'',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3632297724693941236)
,p_validation_name=>'P1327_USER_NAME_exists'
,p_validation_sequence=>18
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM TBLUSER',
'WHERE USER_NAME = :P1327_USER_NAME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The user entered already exists. Change the user name now.'
,p_when_button_pressed=>wwv_flow_imp.id(3632338037748941335)
,p_associated_item=>wwv_flow_imp.id(3632327382741941309)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3625937702427847883)
,p_validation_name=>'chk_create_like_fields'
,p_validation_sequence=>38
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1327_CREATE_LIKE_MODULE is null or :P1327_ORGANISATION is null or :P1327_PAYMENT_TYPE is null or :P1327_EMPLOYMENT_CLASS is null then',
'    return FALSE;',
'else',
'    return TRUE;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must select the Responsibility, Organisation, Payment type and Employment class'
,p_when_button_pressed=>wwv_flow_imp.id(3632336824849941334)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3630750613544838282)
,p_validation_name=>'enf_account_detail'
,p_validation_sequence=>48
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from TBLUSERDETAIL',
'where user_id=:P1327_USER_ID'))
,p_validation_type=>'EXISTS'
,p_error_message=>'You have not entered an account detail records. Please complete that before processing.'
,p_when_button_pressed=>wwv_flow_imp.id(3632339240720941343)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3618824167212115864)
,p_validation_name=>'chk_employee_link'
,p_validation_sequence=>68
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1327_CAN_APPROVE=''Y'' and :P1327_EMPLOYEE_NO is null then',
'     return ''Approvers must be linked to an employee. Set an Employee No. for this user account.'';',
'else',
'     return '''';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3617252158939832130)
,p_validation_name=>'chk_self_serve_employee'
,p_validation_sequence=>78
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0;',
'',
'begin',
'    select count(1) into v_count',
'    from TBLUSERDETAIL',
'    where user_id =:P1327_USER_ID',
'    and SELF_SERVE_ORG=1',
'    and upper(pkg_global_fnts.Get_Lookup_Col(EMPLOYMENT_CLASS_ID, ''VALUE_DESCRIPTION'')) !=''APPLICANT'';',
'',
'    if v_count >0 and :P1327_EMPLOYEE_NO is null then',
'        return '' You must assign an employee to this user account, since self serve access has been assigned to them via the account details screen'';',
'    else',
'          return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3632338380301941335)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3632298130257941241)
,p_validation_name=>'passwords_chk'
,p_validation_sequence=>88
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if  :P1327_PASSWORD IS NOT NULL AND :P1327_CONFIRM_PASSWORD IS NOT NULL THEN',
' if  :P1327_PASSWORD = :P1327_CONFIRM_PASSWORD then',
'      return TRUE;',
'  else',
'      return FALSE;',
'  END IF;',
'ELSE',
'  RETURN TRUE;',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password and confirm passwords do not match!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3603777015730559793)
,p_validation_name=>'chk_email_self_Serve'
,p_validation_sequence=>98
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_selftest number(10):=0;',
'    ',
'begin',
'',
' select count(1) into v_selftest',
' from tbluserdetail',
' where user_id =:P1327_USER_ID',
' AND SELF_SERVE_ORG=1;',
' ',
' if :P1327_EMAIL is null and v_selftest > 0 then',
'    return ''You must enter an email address, since self serve exist for this user account details'';',
' else',
'    return '''';',
' end if;',
' ',
' end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1884111762062640989)
,p_validation_name=>'enf_email_address_user'
,p_validation_sequence=>108
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if instr(:P1327_USER_NAME,''@'') =0 and upper(:P1327_USER_NAME) != :G_PARSING_SCHEMA then',
'        return '' The user name selected is not an email address. Only email addresses are allowed as user names.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(3632338037748941335)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3632292610854941228)
,p_name=>'expire_account'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1327_EXPIRY_ACCOUNT'
,p_condition_element=>'P1327_EXPIRY_ACCOUNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632291605715941225)
,p_event_id=>wwv_flow_imp.id(3632292610854941228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1327_EFFECTIVE_TO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'current_date'
,p_attribute_07=>'P1327_EXPIRY_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632292070801941225)
,p_event_id=>wwv_flow_imp.id(3632292610854941228)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1327_EFFECTIVE_TO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_07=>'P1327_EXPIRY_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3632291245602941224)
,p_name=>'set_email'
,p_event_sequence=>11
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1327_EMPLOYEE_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632290759446941223)
,p_event_id=>wwv_flow_imp.id(3632291245602941224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1327_EMAIL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(ALTERNATIVE_EMAIL, :P1327_EMAIL)',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where b.id = :P1327_EMPLOYEE_NO'))
,p_attribute_07=>'P1327_EMPLOYEE_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3632290295853941223)
,p_name=>'show_hide_create_like'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1327_CREATE_TO'
,p_condition_element=>'P1327_CREATE_TO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632289802376941223)
,p_event_id=>wwv_flow_imp.id(3632290295853941223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3632336824849941334)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632289306372941219)
,p_event_id=>wwv_flow_imp.id(3632290295853941223)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3632336824849941334)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3632288958412941219)
,p_name=>'assign_at_load'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3632288374763941218)
,p_event_id=>wwv_flow_imp.id(3632288958412941219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1327_CAN_APPROVE_TMP,P1327_CAN_VERIFY_TMP_TMP,P1327_EFFECTIVE_TO_TMP,P1327_RESET_ARCHIVE_TMP,P1327_SELF_SERVE_ONLY_TMP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P1327_CAN_APPROVE,:P1327_CAN_VERIFY,:P1327_EFFECTIVE_TO,:P1327_RESET_ARCHIVE,:P1327_SELF_SERVE_ONLY',
'from dual'))
,p_attribute_07=>'P1327_CAN_APPROVE,P1327_CAN_VERIFY,P1327_EFFECTIVE_TO,P1327_RESET_ARCHIVE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3586136074876035546)
,p_name=>'SET_USER_NAME'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1327_EMPLOYEE_NO'
,p_condition_element=>'P1327_LAST_NAME'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3586136033772035545)
,p_event_id=>wwv_flow_imp.id(3586136074876035546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1327_LAST_NAME,P1327_FIRST_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SURNAME, FIRST_NAME',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where b.id=:P1327_EMPLOYEE_NO',
'and :P1327_LAST_NAME is null'))
,p_attribute_07=>'P1327_EMPLOYEE_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632294966941941234)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3539638018023998538)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from TBLUSER'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>3210502973743944660
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632295830391941235)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3539638018023998538)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of TBLUSER'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_internal_uid=>3210503837193944661
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632294258407941233)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_LIKE_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'        l_empclass APEX_APPLICATION_GLOBAL.VC_ARR2;',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1327_CREATE_LIKE_MODULE);',
'  l_empclass := APEX_UTIL.STRING_TO_TABLE(:P1327_EMPLOYMENT_CLASS);',
' ',
'  if :P1327_CREATE_FROM is not null and :P1327_CREATE_TO is not null then',
'  ',
'      FOR i IN 1..l_selected.COUNT',
'      LOOP',
'',
'          FOR J IN 1..l_empclass.COUNT',
'          LOOP',
'',
'              pkg_security.create_like_user(:P1327_CREATE_FROM, :P1327_CREATE_TO, l_selected(i), :P1327_ORGANISATION, :P1327_PAYMENT_TYPE, l_empclass(J));',
'          END LOOP;',
'          ',
'      END LOOP;  ',
'        :P1327_CREATE_LIKE_MODULE :=null;',
'        :P1327_EMPLOYMENT_CLASS :=NULL;',
'   end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(3632336824849941334)
,p_process_success_message=>'Successful creation of User accounts details.'
,p_internal_uid=>3210502265209944659
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632293014991941232)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'general_notfy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_chk varchar2(50);',
'',
' begin   ',
' ',
' ',
'',
'  if (:P1327_EFFECTIVE_TO_TMP is null and :P1327_EFFECTIVE_TO is NOT null) or (:P1327_EFFECTIVE_TO_TMP is not null and :P1327_EFFECTIVE_TO is null) then',
'',
' select case when :P1327_EFFECTIVE_TO is not null then ''disable'' else ''enable'' end into v_chk',
'  from dual;',
'',
'        pkg_biz_rules.pop_notification',
'            (',
'               ''A user with name ''||:P1327_USER_NAME ||'' has been ''||v_chk||'' effective: ''||nvl(:P1327_EFFECTIVE_TO,to_char(trunc(current_date),''DD-MON-YYYY'')),',
'                ''PEOPLEPAY'',',
'                ''ACTIVE'',',
'                current_date, ''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||TO_CHAR(:P1327_USER_ID),',
'                ''A user with name ''||:P1327_USER_NAME ||'' has been ''||v_chk||'' effective: ''||nvl(:P1327_EFFECTIVE_TO,:P1327_LAST_UPDATE_DATE),',
'                943,1327,152,',
'                ''TBLUSER''',
'            );   ',
'   end if;',
'',
'if (:P1327_CAN_APPROVE_TMP =''N'' and :P1327_CAN_APPROVE =''Y'') or (:P1327_CAN_APPROVE_TMP =''Y'' and :P1327_CAN_APPROVE =''N'')  then',
'',
'  select case when :P1327_CAN_APPROVE is not null then ''can do Approvals '' else ''cannot do Approvals'' end into v_chk',
'  from dual;',
'',
'       pkg_biz_rules.pop_notification',
'                  (',
'                     ''User ''||:P1327_USER_NAME ||'' ''||v_chk||''  as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      ''PEOPLEPAY'',',
'                      ''ACTIVE'',',
'                      current_date,	''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||:P1327_USER_ID,',
'                      ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      946,1327,152,',
'                      ''TBLUSER''',
'                  );         ',
'end if;',
'  ',
'if (:P1327_CAN_VERIFY_TMP =''N'' and :P1327_CAN_VERIFY =''Y'') or (:P1327_CAN_VERIFY_TMP =''Y'' and :P1327_CAN_VERIFY =''N'') then',
'',
'  select case when :P1327_CAN_VERIFY is not null then ''can do Verifications'' else ''cannot do Verifications'' end into v_chk',
'  from dual;',
'',
'       pkg_biz_rules.pop_notification',
'                  (',
'                     ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      ''PEOPLEPAY'',',
'                      ''ACTIVE'',',
'                      current_date,	''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||:P1327_USER_ID,',
'                      ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      947,1327,152,',
'                      ''TBLUSER''',
'                  );         ',
'end if; ',
'',
'  ',
'if (:P1327_RESET_ARCHIVE_TMP =0 and :P1327_RESET_ARCHIVE_PAYROLL =1) OR (:P1327_RESET_ARCHIVE_TMP =1 and :P1327_RESET_ARCHIVE_PAYROLL =0) then',
'',
'  select case when :P1327_RESET_ARCHIVE_PAYROLL is not null then ''can do Archive payroll resets'' else ''cannot do Archive  payroll resets'' end into v_chk',
'  from dual;',
'',
'       pkg_biz_rules.pop_notification',
'                  (',
'                     ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      ''PEOPLEPAY'',',
'                      ''ACTIVE'',',
'                      current_date,	''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||:P1327_USER_ID,',
'                      ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      948,1327,152,',
'                      ''TBLUSER''',
'                  );         ',
'end if; ',
' ',
'',
'  if (:P1327_SELF_SERVE_ONLY_TMP =0 and :P1327_SELF_SERVE_ONLY =1) OR (:P1327_SELF_SERVE_ONLY_TMP =1 and :P1327_SELF_SERVE_ONLY =0) then',
'',
'  select case when :P1327_SELF_SERVE_ONLY  is not null then ''can view self serve only'' else ''can view all employees'' end into v_chk',
'  from dual;',
'',
'       pkg_biz_rules.pop_notification',
'                  (',
'                     ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      ''PEOPLEPAY'',',
'                      ''ACTIVE'',',
'                      current_date,	''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||:P1327_USER_ID,',
'                      ''User ''||:P1327_USER_NAME ||'' ''||v_chk||'' as at: ''||to_char(trunc(current_date),''DD-MON-YYYY''),',
'                      949,1327,152,',
'                      ''TBLUSER''',
'                  );         ',
'end if; ',
'',
'',
':P1327_CAN_APPROVE_TMP:=:P1327_CAN_APPROVE;',
':P1327_CAN_VERIFY_TMP:=:P1327_CAN_VERIFY;',
':P1327_EFFECTIVE_TO_TMP:=:P1327_EFFECTIVE_TO;',
':P1327_RESET_ARCHIVE_TMP:=:P1327_RESET_ARCHIVE;',
':P1327_SELF_SERVE_ONLY_TMP:=:P1327_SELF_SERVE_ONLY;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3632338380301941335)
,p_internal_uid=>3210501021793944658
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632293406394941232)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEW_USER_notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' IF :P1327_CREATED_BY IS NULL THEN            ',
' pkg_biz_rules.pop_notification',
'            (',
'                ''A new user has been added to the system with name.: ''||:P1327_USER_NAME ||'' starting: ''||:P1327_EFFECTIVE_FROM,',
'                ''GTT'',',
'                ''ACTIVE'',',
'                current_date,	',
'                ''f?p=&APP_ID.:1327:44426677::NO::P1327_USER_ID:''||to_char(:P1327_USER_ID),',
'                ''A new user has been added to the system with name.: ''||:P1327_USER_NAME||'' starting: ''||:P1327_EFFECTIVE_FROM,',
'                942,',
'                1327,',
'                152,',
'                ''TBLUSER''',
'            );',
'',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3210501413196944658
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3611887290793687453)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset_pwd'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update tbluser',
'set PASSWORD =:P1327_PASSWORD',
'where USER_ID=:P1327_USER_ID',
'and :P1327_PASSWORD is not null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Password successfully reset for current user on screen.'
,p_internal_uid=>3190095297595690879
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632296207501941235)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'471'
,p_process_when_button_id=>wwv_flow_imp.id(3632338815675941336)
,p_internal_uid=>3210504214303944661
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3586134312275035528)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3586135560019035540)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'RESTRICT_IP - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3164342319077038954
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3497388324802039836)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASSIGN_MY_POSTING_ONLY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':APP_MY_POSTING_ONLY := :P1327_MY_POSTING_ONLY;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3075596331604043262
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3632294591332941233)
,p_process_sequence=>110
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_primary_key'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select SYS_UTL_USER_ID.nextval into :P1327_USER_ID from dual;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(3632338037748941335)
,p_internal_uid=>3210502598134944659
);
wwv_flow_imp.component_end;
end;
/
