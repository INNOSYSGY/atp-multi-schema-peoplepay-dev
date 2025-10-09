prompt --application/pages/page_01201
begin
--   Manifest
--     PAGE: 01201
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
 p_id=>1201
,p_name=>'frmLookup'
,p_alias=>'FRMLOOKUP'
,p_step_title=>'Reference Entries'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295957110000543)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684430323283197072)
,p_plug_name=>'References Specific to Forms'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>71
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''(''||b.application_id||'') ''||b.application_name App,a.table_description, a.value_description,''(Page ''||c.webpage_id||''):- ''||nvl(c.PAGE_LABEL,c.webpage_name) page_name,d.label, a.country',
'from hr_hcf_lookup a join hr_hcf_lookup_use b on a.id = b.lookup_id',
'join tblpagelist c on upper(c.webpage_name) = upper(b.FORM_NAME) ',
'join apex_application_page_items d on (b.form_id=c.webpage_id and d.item_id = b.item_id) ',
'where a.table_name = :P1201_LK_TABLE_NAME'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1201_LK_TABLE_NAME'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1201_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'References Specific to Forms'
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
 p_id=>wwv_flow_imp.id(684430624121197075)
,p_name=>'TABLE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TABLE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Table Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(684430743820197076)
,p_name=>'VALUE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Value Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684430803787197077)
,p_name=>'PAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(684430878866197078)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684431006916197079)
,p_name=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(684431203818197081)
,p_name=>'APP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'App No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4043
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(684430440247197073)
,p_internal_uid=>41235890467588805
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(684792191073882747)
,p_interactive_grid_id=>wwv_flow_imp.id(684430440247197073)
,p_static_id=>'415977'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(684792433430882749)
,p_report_id=>wwv_flow_imp.id(684792191073882747)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684793809876882767)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(684430624121197075)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684794676987882773)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(684430743820197076)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684795622565882777)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(684430803787197077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684796529528882781)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(684430878866197078)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684797375978882786)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(684431006916197079)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684808208570020272)
,p_view_id=>wwv_flow_imp.id(684792433430882749)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(684431203818197081)
,p_is_visible=>true
,p_is_frozen=>false
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(684703419717109069)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>71
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2155149156240366944)
,p_plug_name=>'Search System References'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'(select value_description from hr_hcf_lookup y where y.id= v.LOOKUP_ID and  y.org_id=:APP_ORG_SHR_DED)"LOOKUP_ID", ',
'"TABLE_NAME",',
'"TABLE_DESCRIPTION", ',
'"TABLE_VALUE",',
'"VALUE_DESCRIPTION",country,',
'"CLASSIFICATION",',
'"CUSTOM_FIELD",',
'"CUSTOM_FIELD1",',
'"START_PERIOD",',
'"END_PERIOD",',
'"ENTRY_DATE",',
'"ENTERED_BY",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"ORG_ID", remarks, transaction_type_id, status, lock_ref',
' from   hr_hcf_lookup v',
' WHERE trim(UPPER(Table_Name))=trim(DECODE(UPPER(:P1201_REFERENCE_TABLES),''1'',UPPER(Table_Name),UPPER(:P1201_REFERENCE_TABLES)))',
' and  org_id=:APP_ORG_SHR_DED  ',
' and table_name != ''REF_TYPE''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1201_REFERENCE_TABLES'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1201_SWITCH'
,p_plug_display_when_cond2=>'2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Search System References'
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
 p_id=>wwv_flow_imp.id(2155149224762366945)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_ID,P1201_PAGE_ID,P1201_SWITCH,P1201_REFERENCE_TABLES:#ID#,3,2,#TABLE_NAME#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'RLANGFORD'
,p_internal_uid=>1511954674982758677
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155149355449366946)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155149440483366947)
,p_db_column_name=>'LOOKUP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Lookup Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892476577251998)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892579976251999)
,p_db_column_name=>'TABLE_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Table Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892673845252000)
,p_db_column_name=>'TABLE_VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Table Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892747073252001)
,p_db_column_name=>'VALUE_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892862663252002)
,p_db_column_name=>'COUNTRY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158892887047252003)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893072947252004)
,p_db_column_name=>'CUSTOM_FIELD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Custom Field'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893177804252005)
,p_db_column_name=>'CUSTOM_FIELD1'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Custom Field1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893252211252006)
,p_db_column_name=>'START_PERIOD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893330885252007)
,p_db_column_name=>'END_PERIOD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893427206252008)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893499334252009)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893598848252010)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893738868252011)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893785092252012)
,p_db_column_name=>'ORG_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158893898371252013)
,p_db_column_name=>'REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158894057446252014)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158894127979252015)
,p_db_column_name=>'STATUS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2198098602759379100)
,p_db_column_name=>'LOCK_REF'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Lock Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853758902365852561)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2158911052577281320)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'14329497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_DESCRIPTION:TABLE_NAME:TABLE_VALUE:VALUE_DESCRIPTION:LOOKUP_ID:CLASSIFICATION:START_PERIOD:END_PERIOD:REMARKS:COUNTRY:LOCK_REF:'
,p_break_on=>'TABLE_DESCRIPTION:TABLE_NAME:0:0:0:0'
,p_break_enabled_on=>'TABLE_DESCRIPTION:TABLE_NAME:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2208441265953105606)
,p_plug_name=>'TABS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2208441335156105607)
,p_plug_name=>'Reference Use'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>61
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       APPLICATION_ID,',
'       FORM_ID,',
'       LOOKUP_ID,',
'       ITEM_ID,',
'       APPLICATION_NAME,',
'       FORM_NAME,',
'       ITEM_NAME,',
'       START_DATE,',
'       END_DATE,',
'       REMARKS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY,',
'       LOOKUP_TABLENAME',
'  from HR_HCF_LOOKUP_USE',
'  where lookup_id = :P1201_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1201_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1201_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reference Use'
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
 p_id=>wwv_flow_imp.id(2208441538752105609)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208441597148105610)
,p_name=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Application'
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(684682019072080713)
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
 p_id=>wwv_flow_imp.id(2208441721611105611)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Form Page'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
'select ''(Page ''||a.page_id||''):- ''||a.PAGE_TITLE a, a.PAGE_ID b',
'from apex_application_pages a join apex_applications b on a.APPLICATION_ID = b.APPLICATION_ID',
'where a.page_name like ''%frm%''',
'and b.APPLICATION_ID = :APPLICATION_ID ',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'APPLICATION_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208441780975105612)
,p_name=>'LOOKUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1201_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208441880783105613)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Page Item '
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
'SELECT DISTINCT c.label, c.ITEM_ID',
'FROM apex_application_pages a ',
'JOIN apex_applications b ON a.application_id = b.application_id',
'JOIN apex_application_page_items c ON c.application_id = b.application_id',
'AND a.application_id = :APPLICATION_ID ',
'AND c.page_id = :FORM_ID',
'and lov_named_lov IS NOT NULL'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'APPLICATION_ID ,FORM_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208441982368105614)
,p_name=>'APPLICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208442131943105615)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208442229061105616)
,p_name=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208442375814105617)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'current_date'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208442478485105618)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
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
 p_id=>wwv_flow_imp.id(2208442557459105619)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208442662433105620)
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
 p_id=>wwv_flow_imp.id(2208442738092105621)
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
 p_id=>wwv_flow_imp.id(2208442783947105622)
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
 p_id=>wwv_flow_imp.id(2208442894443105623)
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
 p_id=>wwv_flow_imp.id(2208442991894105624)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2208443083527105625)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2210208807716568298)
,p_name=>'LOOKUP_TABLENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOOKUP_TABLENAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1201_LK_TABLE_NAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2208441403371105608)
,p_internal_uid=>1565246853591497340
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
 p_id=>wwv_flow_imp.id(2208453601445171755)
,p_interactive_grid_id=>wwv_flow_imp.id(2208441403371105608)
,p_static_id=>'14824923'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2208453823508171757)
,p_report_id=>wwv_flow_imp.id(2208453601445171755)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208454330432171765)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2208441538752105609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208455202967171773)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2208441597148105610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208455995157171778)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2208441721611105611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208456923446171781)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2208441780975105612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208457869501171785)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2208441880783105613)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>222
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208458742756171788)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2208441982368105614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>198
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208459636945171792)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2208442131943105615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>343.5999755859375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208460547278171795)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2208442229061105616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208461472166171799)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2208442375814105617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208462294001171802)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2208442478485105618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208463204562171807)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2208442557459105619)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208464117297171811)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2208442662433105620)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208465052721171815)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2208442738092105621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208465974428171818)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2208442783947105622)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208466826423171821)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2208442894443105623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208469667819188025)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2208442991894105624)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2210214807650577572)
,p_view_id=>wwv_flow_imp.id(2208453823508171757)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2210208807716568298)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2210209553395568305)
,p_plug_name=>'Reference Generator for Pages'
,p_parent_plug_id=>wwv_flow_imp.id(2208441335156105607)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>71
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5460006555847981739)
,p_plug_name=>'Search Reference Table'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, table_value, value_description, start_period, LOOKUP_TABLE,',
'(select case when count(1)>0 then 1 else 0 end from hr_hcf_lookup w where table_name = x.table_value and lock_ref=1) Locked_value',
'from hr_hcf_lookup x',
'where table_name=''REF_TYPE''',
'and table_value !=''REF_TYPE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1201_SWITCH'
,p_plug_display_when_cond2=>'3'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Search Reference Table'
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
 p_id=>wwv_flow_imp.id(5460006667056981740)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD'
,p_internal_uid=>4816812117277373472
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155578178090973468)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_TABLE_NAME,P1201_TABLE_DESCRIPTION,P1201_PARENT_TABLE,P1201_SWITCH,P1201_PK_ID:#TABLE_VALUE#,#VALUE_DESCRIPTION#,#LOOKUP_TABLE#,3,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155578535061973469)
,p_db_column_name=>'TABLE_VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Table Value'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155578965884973470)
,p_db_column_name=>'VALUE_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Value Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155579304821973471)
,p_db_column_name=>'START_PERIOD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2155579760449973471)
,p_db_column_name=>'LOOKUP_TABLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Lookup Table'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(645125021262359306)
,p_db_column_name=>'LOCKED_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Has Locked Value'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853758902365852561)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5476914576938772020)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'14296187'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID:TABLE_VALUE:VALUE_DESCRIPTION:START_PERIOD:LOOKUP_TABLE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5971983122809258333)
,p_plug_name=>'Add Reference Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1201_SWITCH'
,p_plug_display_when_cond2=>'3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6770960579170174662)
,p_name=>'Audit Record Verified by: &P1201_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>81
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from',
'  hr_hcf_lookup',
'where ',
'  id = :P1201_ID'))
,p_display_when_condition=>'P1201_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P1201_ID'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1201_ID'
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
 p_id=>wwv_flow_imp.id(684648881101080685)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>1
,p_column_heading=>'Entered'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684649329232080685)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>2
,p_column_heading=>'Last changed'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684649737852080685)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>3
,p_column_heading=>'Verified'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684650054936080686)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>4
,p_column_heading=>'Machine insert'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684650524138080686)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Machine update'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(684650929226080686)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6770967764438174680)
,p_plug_name=>'Manage System References'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>51
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_LOOKUP'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P1201_SWITCH'
,p_plug_display_when_cond2=>'2'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'From hr_hcf_lookup v',
'where id = :P1201_ID',
'and LOCK_REF=1 ',
'AND UPPER(:APP_USER) not like ''%INNOSYSGY.COM'''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684618248765080643)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1200:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684627640477080654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2155149156240366944)
,p_button_name=>'RETURN_SSR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_condition=>'P1201_SWITCH'
,p_button_condition2=>'3'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684637688738080674)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2208441335156105607)
,p_button_name=>'Open_GEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Open Generator'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684643699537080680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_button_name=>'ADD_REFERENCE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return to Value'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.::P1201_SWITCH,P1201_LK_TABLE_NAME,P1201_LK_TABLE_DESC:2,&P1201_TABLE_NAME.,&P1201_TABLE_DESCRIPTION.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684618566590080643)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>':P1201_ID is not null and :P1201_VERIFIED_BY IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684644112222080681)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_button_name=>'CREATE_TYPE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Table'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1201_PK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684619037089080644)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P1201_ID is not null and :P1201_VERIFIED_BY IS NULL) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P1201_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684628001556080654)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2155149156240366944)
,p_button_name=>'ADD_TYPE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add/Update Reference Table'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_SWITCH:3'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684638944303080675)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684644514021080681)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_button_name=>'SET_PARENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Set Parent'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1201_PK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684619365467080644)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Ref Value'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1201_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684644868472080681)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_button_name=>'UPDATE_TBL_DESC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Description/Lock'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684645336974080681)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_button_name=>'DELETE_TYPE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete Type'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1201_TABLE_NAME_FORGEN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806736389511971897)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684619778028080644)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_LK_TABLE_NAME,P1201_START_PERIOD,P1201_PARENT_VALUE,P1201_SWITCH,P1201_LK_TABLE_DESC:&P1201_LK_TABLE_NAME.,&P1201_START_PERIOD.,&P1201_PARENT_VALUE.,2,&P1201_LK_TABLE_DESC.'
,p_button_condition=>'P1201_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(684620155048080644)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(684703419717109069)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1201_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(684680873792080709)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_TABLE_DESCRIPTION,P1201_TABLE_NAME,P1201_START_PERIOD,P1201_LK_TABLE_DESC:&P1201_TABLE_DESCRIPTION.,&P1201_TABLE_NAME.,&P1201_START_PERIOD.,&P1201_LK_TABLE_DESC.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(684620155048080644)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(684681267547080710)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(684618566590080643)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(645125006549359305)
,p_branch_name=>'UPDATE_LOCK_BR'
,p_branch_action=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_REFERENCE_TABLES:&P1201_TABLE_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(684644868472080681)
,p_branch_sequence=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(684681718035080710)
,p_branch_name=>'Go To Page 1201'
,p_branch_action=>'f?p=&APP_ID.:1201:&SESSION.::&DEBUG.:1201:P1201_ID,P1201_REFERENCE_TABLES:&P1201_ID.,&P1201_REFERENCE_TABLES.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>22
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(564685418815692729)
,p_name=>'P1201_MODULE_MAIN_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_default=>'10'
,p_prompt=>'Module Main'
,p_source=>'MODULE_MAIN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) display, id ',
'from APP_MAIN_MODULE z'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(574597041389153265)
,p_name=>'P1201_SOURCE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Source Name'
,p_source=>'SOURCE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(575125922952120177)
,p_name=>'P1201_SOURCE_NAME_ALT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Source Name ALT'
,p_source=>'SOURCE_NAME_ALT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(609382099879508713)
,p_name=>'P1201_LOOKUP_TABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_source=>'LOOKUP_TABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684703453355109070)
,p_name=>'P1201_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684703617496109071)
,p_name=>'P1201_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155610237834973517)
,p_name=>'P1201_PK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155610593718973518)
,p_name=>'P1201_TABLE_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>2
,p_read_only_when=>'P1201_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'Type the short but complete name of table. E.g. TBLCHEMICALS. Ensure all table names are started with TBL. Else with be auto appended.'
,p_inline_help_text=>'Prefix must be TBL'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155611405510973519)
,p_name=>'P1201_TABLE_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_prompt=>'Table Description'
,p_placeholder=>'e.g Listing of [TABLE NAME]'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_grid_label_column_span=>2
,p_read_only_when=>'P1201_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'Type the long description of the table name e.g Listing of Chemicals'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155612303194973520)
,p_name=>'P1201_PARENT_TABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_prompt=>'Parent Table Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  distinct value_description a, upper(table_value) b',
'From hr_hcf_lookup  n',
'where table_name=''REF_TYPE''',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(2155628432393973544)
,p_name=>'P1201_LK_TABLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  value_description a, upper(table_value) b',
'From hr_hcf_lookup  n',
'where table_name=''REF_TYPE''',
'and table_value !=''REF_TYPE'' ',
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
 p_id=>wwv_flow_imp.id(2155628876216973545)
,p_name=>'P1201_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_default=>':APP_COUNTRY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2155629195054973546)
,p_name=>'P1201_PAGE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155629680947973546)
,p_name=>'P1201_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155630023360973546)
,p_name=>'P1201_PARENT_VALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Parent Value'
,p_source=>'LOOKUP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1201_LOOKUP_TABLE IS not NULL then',
'return',
'        ''select lookup_table||'''':-''''||table_VALUE||'''' - ''''||VALUE_DESCRIPTION A, id',
'        from hr_hcf_lookup W',
'        where table_name =:P1201_LOOKUP_TABLE',
'        AND  org_id = :APP_ORG_SHR_DED'';',
' else',
'    return',
'        ''select lookup_table||'''':-''''||table_VALUE||'''' - ''''||VALUE_DESCRIPTION A, id',
'        from hr_hcf_lookup W',
'        where org_id = :APP_ORG_SHR_DED'';',
'end if;        ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1201_LOOKUP_TABLE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2155630463989973547)
,p_name=>'P1201_LK_TABLE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_source=>'TABLE_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>'Use only if adding values to existing table description'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155630849391973548)
,p_name=>'P1201_TABLE_VALUE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Value Code'
,p_source=>'TABLE_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>500
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155631254090973548)
,p_name=>'P1201_VALUE_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Value Description'
,p_source=>'VALUE_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>120
,p_cMaxlength=>2000
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
 p_id=>wwv_flow_imp.id(2155631683818973549)
,p_name=>'P1201_NATURAL_ACCOUNT_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_use_cache_before_default=>'NO'
,p_source=>'NATURAL_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155632077906973549)
,p_name=>'P1201_NATURAL_ACCOUNT_CODE_SEC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_use_cache_before_default=>'NO'
,p_source=>'NATURAL_ACCOUNT_CODE_SEC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155632400474973550)
,p_name=>'P1201_CLASSIFICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Classification'
,p_source=>'CLASSIFICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'REFERENCE_CLASSIFICATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREFERENCECLASS'')) a',
'where org_id= :APP_ORG_SHR_DED',
'',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Stores Classifications, which is a table of values in this very screen named Listing Of Reference Classification.'
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
 p_id=>wwv_flow_imp.id(2155632808478973550)
,p_name=>'P1201_CUSTOM_FIELD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Custom Field'
,p_source=>'CUSTOM_FIELD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Currently used to displays the male alternate relationship specific to relationship table values.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155633745051973551)
,p_name=>'P1201_CUSTOM_FIELD1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Custom Field1'
,p_source=>'CUSTOM_FIELD1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Currently used to displays the female alternate relationship specific to relationship table values.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155635062973973553)
,p_name=>'P1201_START_PERIOD'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_default=>'trunc(current_date,''MM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Period'
,p_source=>'START_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2155635481534973554)
,p_name=>'P1201_END_PERIOD'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'End Period'
,p_source=>'END_PERIOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(2155635828678973555)
,p_name=>'P1201_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
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
 p_id=>wwv_flow_imp.id(2155636195618973555)
,p_name=>'P1201_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and upper(Wfl_Status_Description) not like DECODE(:P1201_ID, NULL,''%VERI%'',''%test%'')               ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1201_TRANSACTION_TYPE_ID',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P1201_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155636601011973556)
,p_name=>'P1201_MODULE_MAIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_default=>'21'
,p_prompt=>'Module'
,p_source=>'MODULE_MAIN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) display, id ',
'from APP_MAIN_MODULE z',
'WHERE UPPER(main_module_name) !=''GLOBALS''',
'and z.id=21'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2155637035118973557)
,p_name=>'P1201_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(2155654449569973572)
,p_name=>'P1201_SWITCH'
,p_item_sequence=>10
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158905134239252030)
,p_name=>'P1201_REFERENCE_TABLES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2155149156240366944)
,p_prompt=>'Search by Reference Tables'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select value_description,table_value',
'From hr_hcf_lookup v',
'where table_name =''REF_TYPE''  ',
'and table_value !=''REF_TYPE'' ',
'order by value_description',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'1'
,p_cSize=>30
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(2158923210482252065)
,p_name=>'P1201_LOCK_REF_PARENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_prompt=>'Parent Lock Ref'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO_NUM'
,p_lov=>'.'||wwv_flow_imp.id(3853758902365852561)||'.'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2169062863566454554)
,p_name=>'P1201_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2155149156240366944)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198128582152379159)
,p_name=>'P1201_VALUES_TO_LOCK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5971983122809258333)
,p_prompt=>'Values to Lock'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description, id',
'from hr_hcf_lookup',
'where upper(trim(table_name))= upper(trim(:P1201_TABLE_NAME))',
'and org_id = :APP_ORG_SHR_DED'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1201_TABLE_NAME_FORGEN'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_07', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198134597688379165)
,p_name=>'P1201_LOCK_REF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_query_only=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_source_plug_id=>wwv_flow_imp.id(6770967764438174680)
,p_item_default=>'10'
,p_prompt=>'Locked Ref'
,p_source=>'LOCK_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO_NUM'
,p_lov=>'.'||wwv_flow_imp.id(3853758902365852561)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'States the Lock Status of the reference.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208466238124105672)
,p_name=>'P1201_FORM_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_prompt=>'Form'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(page_title||'': '')||a.page_id a, a.page_id b',
'from APEX_APPLICATION_PAGES a join tblpagelist c on c.webpage_id=a.page_id',
'where a.application_id= :P1201_APPLICATION',
'and upper(c.webpage_name) like ''%FRM%''',
'',
'/*select INITCAP(page_title||'': '')||a.page_id page_name, a.page_id',
'from apex_application_pages a join tblpagelist c on c.webpage_id=a.page_id',
'join apex_applications b on a.APPLICATION_ID = b.APPLICATION_ID',
'where upper(c.webpage_name) like ''%FRM%''',
'and a.APPLICATION_ID = :P1201_APPLICATION*/'))
,p_lov_cascade_parent_items=>'P1201_APPLICATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(2210231438795568340)
,p_name=>'P1201_TABLE_NAME_FORGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_prompt=>'Table Name '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  value_description a, upper(table_value) b',
'From hr_hcf_lookup  n',
'where table_name=''REF_TYPE''',
'and pkg_global_fnts.fn_sharereforg(n.org_id) = :APP_ORG_SHR_DED',
'order by 1'))
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(2210231495849568341)
,p_name=>'P1201_TABLE_VALUES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_prompt=>'Table Values'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''('' || TABLE_VALUE || '')'' || '' '' || VALUE_DESCRIPTION AS a, id AS b',
'FROM hr_hcf_lookup',
'WHERE table_name = :P1201_TABLE_NAME_FORGEN',
'and org_id =:APP_ORG_SHR_DED',
''))
,p_lov_cascade_parent_items=>'P1201_TABLE_NAME_FORGEN'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2210231619034568342)
,p_name=>'P1201_APPLICATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_prompt=>'Application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       APPLICATION_ID',
'from HR_HCF_LOOKUP_USE',
'where lookup_id = :P1201_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_NAME||'':- ''||APPLICATION_ID a,   APPLICATION_ID b',
'from APEX_APPLICATIONS',
'WHERE APPLICATION_ID IN (100, 109, 112)'))
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(2210231751208568343)
,p_name=>'P1201_PAGE_ITEMS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_prompt=>'Page Items'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT c.label, c.ITEM_ID',
'FROM apex_application_pages a ',
'JOIN apex_applications b ON a.application_id = b.application_id',
'JOIN apex_application_page_items c ON c.application_id = b.application_id',
'AND a.application_id = :P1201_APPLICATION',
'AND c.page_id = :P1201_FORM_ID',
'and lov_named_lov IS NOT NULL'))
,p_lov_cascade_parent_items=>'P1201_APPLICATION,P1201_FORM_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(2210232083219568347)
,p_name=>'P1201_TABLE_NAME_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2210209553395568305)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(604110872091931274)
,p_validation_name=>'stop_taxfree_change'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_VALUE_DESCRIPTION hr_hcf_lookup.VALUE_DESCRIPTION%type;',
'    v_TABLE_VALUE  hr_hcf_lookup.TABLE_VALUE%type;',
'',
'begin',
'     select VALUE_DESCRIPTION, TABLE_VALUE into v_VALUE_DESCRIPTION, v_TABLE_VALUE',
'     from hr_hcf_lookup',
'     WHERE ID=:P1201_ID;',
'',
'',
'',
'if :P1201_LK_TABLE_NAME=''TBLTAXFREE'' and (:P1201_VALUE_DESCRIPTION != v_VALUE_DESCRIPTION or :P1201_TABLE_VALUE != v_TABLE_VALUE) THEN',
'    return ''Changes not allowed to the value description or code for Tax FreePays.'';',
'else',
'    return '''';',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(684619037089080644)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684668837314080701)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where exists(select 1',
'            from vw_useraccess b',
'            where a.org_id=b.org_id)',
'AND workflow_required =1',
'and ((to_date(:P1201_START_PERIOD) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1201_START_PERIOD) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1201_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'exception',
' when others then',
'   return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684668439741080701)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1201_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1201_ID, :P1201_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(684669564982080702)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1201_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684668049559080701)
,p_validation_name=>'reject_unverification'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_old_status number;',
'',
'begin',
'    ',
'    select count(1) into v_old_status',
'    from hr_hcf_lookup',
'    where id = :P1201_ID',
'    and verified_by is not null;',
'',
'    if pkg_global_fnts.chk_verifier(:APP_USER, :APP_PAGE_ID) =0 and v_old_status > 0 and  pkg_global_fnts.status_descript(:P1201_STATUS) not like ''VER%'' then',
'        return FALSE;',
'    else',
'         return TRUE;',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed since the record is verified.'
,p_when_button_pressed=>wwv_flow_imp.id(684619037089080644)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684669960188080702)
,p_validation_name=>'prv_dup_reftype'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_test_count number;',
'',
'begin',
'        SELECT count(1) into v_test_count',
'        from hr_hcf_lookup a',
'        where table_name =''REF_TYPE''',
'        And table_value=upper(:P1201_TABLE_NAME);',
'',
'        if v_test_count > 0 then',
'            return ''This table name already exist. Locate it and add reference values to it.'';',
'        else',
'            return '''';',
'        end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(684644112222080681)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684669199472080702)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1201_END_PERIOD) < TO_DATE(:P1201_START_PERIOD) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than start date.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(684670380362080702)
,p_validation_name=>'prv_spaces'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if INSTR(:P1201_TABLE_VALUE, '' '') > 0 then',
'        return ''Spaces are not allowed in the Value Code.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684673107046080704)
,p_name=>'set_table_name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1201_LK_TABLE_NAME'
,p_condition_element=>'P1201_LK_TABLE_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684673601471080705)
,p_event_id=>wwv_flow_imp.id(684673107046080704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1201_LK_TABLE_DESC,P1201_MODULE_MAIN'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct  value_description a, module_main_id',
'From hr_hcf_lookup  n',
'where upper(table_value) = :P1201_LK_TABLE_NAME',
'AND table_name=''REF_TYPE'''))
,p_attribute_07=>'P1201_LK_TABLE_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684674862820080706)
,p_name=>'refresh_ref_search'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1201_REFERENCE_TABLES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684675405955080706)
,p_event_id=>wwv_flow_imp.id(684674862820080706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2155149156240366944)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684675813843080706)
,p_name=>'Set Application Name'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2208441335156105607)
,p_triggering_element=>'APPLICATION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684676340193080707)
,p_event_id=>wwv_flow_imp.id(684675813843080706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'APPLICATION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_NAME',
'from APEX_APPLICATIONS',
'where APPLICATION_ID = :APPLICATION_ID '))
,p_attribute_07=>'APPLICATION_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684676707967080707)
,p_name=>'Set Form Name'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2208441335156105607)
,p_triggering_element=>'FORM_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684677161275080707)
,p_event_id=>wwv_flow_imp.id(684676707967080707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'FORM_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.PAGE_NAME',
'from apex_application_pages a ',
'where a.APPLICATION_ID = :APPLICATION_ID ',
'and a.page_id = :FORM_ID'))
,p_attribute_07=>'APPLICATION_ID ,FORM_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684677641281080707)
,p_name=>'Set Item Name'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2208441335156105607)
,p_triggering_element=>'ITEM_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684678097619080708)
,p_event_id=>wwv_flow_imp.id(684677641281080707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ITEM_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.item_name',
'FROM apex_application_page_items a ',
'WHERE a.application_id = :APPLICATION_ID ',
'AND a.page_id = :FORM_ID',
'and a.ITEM_ID = :ITEM_ID'))
,p_attribute_07=>'APPLICATION_ID ,FORM_ID,ITEM_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684678548099080708)
,p_name=>'OPEN_INLINE_POPUP'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(684637688738080674)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684678986684080708)
,p_event_id=>wwv_flow_imp.id(684678548099080708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2210209553395568305)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(684679411121080708)
,p_name=>'SHOW_GNERATOR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1201_PAGE_ITEMS'
,p_condition_element=>'P1201_PAGE_ITEMS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684679873878080709)
,p_event_id=>wwv_flow_imp.id(684679411121080708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(684638944303080675)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(684680385609080709)
,p_event_id=>wwv_flow_imp.id(684679411121080708)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(684638944303080675)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684664866893080698)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6770967764438174680)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'DML lookup'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record successfully updated!'
,p_internal_uid=>41470317113472430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684638176206080674)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2208441335156105607)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Lookup Use - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41443626426472406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684671450805080703)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1201_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1201_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1201_VALUE_DESCRIPTION,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1201_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''System References'',',
'	:P1201_STATUS,:APP_PAGE_ID,:P1201_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_LOOKUP'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684619037089080644)
,p_process_when=>'P1201_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>41476901025472435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684670675433080703)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_parent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    begin',
'        update hr_hcf_lookup',
'        set lookup_table = :P1201_PARENT_TABLE',
'        where TABLE_NAME=:P1201_TABLE_NAME',
'        AND ORG_ID=:APP_ORG_SHR_DED;',
'',
'        commit;',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684644514021080681)
,p_internal_uid=>41476125653472435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684671908121080703)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete_reftype'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'from hr_hcf_lookup a',
'where table_name =''REF_TYPE''',
'And table_value=upper(:P1201_TABLE_NAME)',
'AND not exists (select 1',
'               from hr_hcf_lookup b',
'               where table_name = upper(:P1201_TABLE_NAME)',
'                );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684645336974080681)
,p_process_success_message=>'Successfully deleted ref tyep. '
,p_internal_uid=>41477358341472435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684672253276080704)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_table_desc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  v_sqlcode varchar2(25);',
'  v_sqlerrm varchar2(2000);',
'  ',
'begin',
'',
' l_selected := APEX_UTIL.STRING_TO_TABLE(:P1201_VALUES_TO_LOCK);',
'',
'if :P1201_TABLE_DESCRIPTION is not null then',
'--change to table name description',
'    update  hr_hcf_lookup',
'    set TABLE_DESCRIPTION=:P1201_TABLE_DESCRIPTION',
'    where upper(trim(table_name)) = upper(trim(:P1201_TABLE_NAME))',
'    and org_id =:APP_ORG_SHR_DED;',
'',
'    ',
'    update hr_hcf_lookup',
'    set value_description=:P1303_TABLE_DESCRIPTION',
'    where table_name=''REF_TYPE''',
'    and org_id = :APP_ORG_SHR_DED',
'    and  trim(upper(table_value)) = trim(upper(:P1303_TABLE_NAME));',
'',
'end if;',
'',
'if :P1201_VALUES_TO_LOCK is not null then',
' --looking values',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'  begin',
'',
'    update hr_hcf_lookup',
'    set  LOCK_REF= :P1201_LOCK_REF_PARENT',
'    where id = nvl(l_selected(i), id)',
'    and  upper(trim(table_name)) = upper(trim(:P1201_TABLE_NAME));',
'        ',
' 	 exception',
'             when others then ',
'                    v_sqlcode := sqlcode;',
'                    v_sqlerrm := sqlerrm;        ',
'                    pkg_errorlogger.insert_err(',
'                                    v_sqlcode,',
'                                    v_sqlerrm,',
'                                    ''Error occurred while executing quick responsibility'' ,',
'                                    ''RESPONSIBILITY PAGE'',',
'                                    ''QUICK_ENTRY'',',
'                                    ''SECURITY''',
'                                 );        ',
' ',
'',
'  end;',
'  end loop;',
'',
' else',
'    update hr_hcf_lookup',
'    set  LOCK_REF= :P1201_LOCK_REF_PARENT',
'    where  upper(trim(table_name)) = upper(trim(:P1201_TABLE_NAME));',
'',
' end if;',
'    ',
'   :P1201_REFERENCE_TABLES := :P1201_TABLE_NAME;',
'   :P1201_VALUES_TO_LOCK :=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684644868472080681)
,p_internal_uid=>41477703496472436
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684671049845080703)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_REF_TYPE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_sqlcode varchar2(25); V_SQLERRM varchar2(2000);',
'        ',
'BEGIN',
'',
'',
'    INSERT INTO HR_HCF_lookup(module_main_id, lock_ref, lookup_table, table_name, table_description, table_value,value_description, start_period, country)',
'',
'    select :P1201_MODULE_MAIN_REF, :P1201_LOCK_REF_PARENT, :P1201_PARENT_TABLE, ''REF_TYPE'', ''References'', case when upper(substr(:P1201_TABLE_NAME,1,3)) =''TBL'' then upper(:P1201_TABLE_NAME)',
'                                            else ''TBL''||upper(:P1201_TABLE_NAME) end , :P1201_TABLE_DESCRIPTION',
'    ',
'     , TRUNC (current_date, ''YEAR''), :APP_COUNTRY',
'    from DUAL;',
'',
'    commit;',
'',
'   ',
'-- Exception',
'--     when others then',
'--         v_sqlcode := sqlcode;',
'--         v_sqlerrm := sqlerrm;        ',
'--         pkg_errorLogger.INSERT_ERR(v_sqlcode ,v_sqlerrm  ,''error occured while adding reference table for system references.'' ,''INSERT_REF_TYPE'', null);    ',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684644112222080681)
,p_internal_uid=>41476500065472435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684672683267080704)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate_lookup_items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  v_application_name VARCHAR2 (100);',
'  v_form_name VARCHAR2 (100);',
'  v_item_name VARCHAR2 (100);',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1201_TABLE_VALUES);',
'',
'select APPLICATION_NAME INTO v_application_name',
'from APEX_APPLICATIONS',
'where APPLICATION_ID = :P1201_APPLICATION; ',
'',
'select a.PAGE_NAME INTO v_form_name',
'from apex_application_pages a ',
'where a.APPLICATION_ID = :P1201_APPLICATION ',
'and a.page_id = :P1201_FORM_ID;',
'',
'SELECT a.item_name INTO v_item_name',
'FROM apex_application_page_items a ',
'WHERE a.application_id = :P1201_APPLICATION ',
'AND a.page_id = :P1201_FORM_ID',
'and a.ITEM_ID = :P1201_PAGE_ITEMS;',
'',
'',
'',
'  	FOR i IN 1..l_selected.COUNT',
'	  LOOP',
'       begin',
'		insert into HR_HCF_lookup_use(APPLICATION_ID, FORM_ID, LOOKUP_ID, ITEM_ID, APPLICATION_NAME,',
'                                      FORM_NAME, ITEM_NAME, START_DATE, LOOKUP_TABLENAME) ',
'			values(:P1201_APPLICATION, :P1201_FORM_ID, l_selected(i),:P1201_PAGE_ITEMS, v_application_name, v_form_name,',
'                    v_item_name, current_date, :P1201_LK_TABLE_NAME );',
'',
'      Exception',
'        when dup_val_on_index then            ',
'                apex_error.add_error(',
'                                    p_message => ''The item selected already exists for this lookup value ''',
'                                    , p_display_location => apex_error.c_inline_in_notification',
'                                    );',
'    ',
'      end;',
'	  END LOOP;',
'	  ',
'	  :P1201_TABLE_VALUES :=null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Operation Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(684638944303080675)
,p_process_success_message=>'Operation Succeeded'
,p_internal_uid=>41478133487472436
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(684664497291080697)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6770967764438174680)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form rptLookup'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41469947511472429
);
wwv_flow_imp.component_end;
end;
/
