prompt --application/pages/page_00540
begin
--   Manifest
--     PAGE: 00540
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
 p_id=>540
,p_name=>'FrmApplicant'
,p_alias=>'FRMAPPLICANT'
,p_step_title=>'Applicants'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   #call-tele{',
'    border-top-left-radius: 0px;',
'    border-bottom-left-radius: 0px;',
'    border-bottom-right-radius: 3px;',
'    border-top-right-radius: 3px;',
'    height: 48px;',
'}',
'   #call-cell{',
'    border-top-left-radius: 0px;',
'    border-bottom-left-radius: 0px;',
'    border-bottom-right-radius: 3px;',
'    border-top-right-radius: 3px;',
'    height: 48px;',
'}',
'',
'#P5_TELEPHONE,#P5_CELL_PHONE{',
'    border-bottom-right-radius: 0px;',
'    border-top-right-radius: 0px;',
' POSITION:RELATIVE;',
'}'))
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142628349281158816)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5861214225173523906)
,p_plug_name=>'Applicant Details'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P540_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5861214261045523907)
,p_plug_name=>'Cv Details'
,p_parent_plug_id=>wwv_flow_imp.id(5861214225173523906)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863908693345988093)
,p_plug_name=>'Employment History for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214261045523907)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICANT_ID,',
'       ORGANISATION,',
'       FROM_DATE,',
'       TO_DATE,',
'       POSITION_HELD,',
'       DEPARTMENT,',
'       REASON_FOR_LEAVING,',
'       PREVIOUS_SALARY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       REMARKS,',
'       ID,',
'       id pkey',
'  from HR_APL_EMPHISTORY ehis',
' where APPLICANT_ID = CASE WHEN :P540_INIT_EMPH_SEARCH =1 then applicant_id  else to_number(:P540_ID) end',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_EMPH_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employment History for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(4434600237765417283)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Add Experience'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:546:&SESSION.::&DEBUG.:546:P546_APPLICANT_ID,P546_SALUTATION,P546_SURNAME,P546_FIRST_NAME,P546_ORGANISATION_NAME,P546_AT_POSITION:&P540_ID.,&P540_SALUTATION.,&P540_SURNAME.,&P540_FIRST_NAME.,&ID.,&POSITION_HELD.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955426825963581525)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Edit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:544:P544_ID,P544_SURNAME,P544_FIRST_NAME,P544_SALUTATION:&ID.,&P540_SURNAME.,&P540_FIRST_NAME.,&P540_SALUTATION.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955426932112581526)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(5955427026107581527)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5955427075430581528)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5955427181458581529)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(5955427325790581530)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(5955427418229581531)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(5955427476195581532)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(5955427635956581533)
,p_name=>'PREVIOUS_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_SALARY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Previous Salary'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(5955427652316581534)
,p_name=>'REASON_FOR_LEAVING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON_FOR_LEAVING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reason For Leaving'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955427783295581535)
,p_name=>'DEPARTMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department'
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
 p_id=>wwv_flow_imp.id(5955427929232581536)
,p_name=>'POSITION_HELD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_HELD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Position Held'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(5955427990812581537)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'To Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(5955428114126581538)
,p_name=>'FROM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'From Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(5955428221295581539)
,p_name=>'ORGANISATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANISATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Organisation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955428342825581540)
,p_name=>'APPLICANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Applicant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
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
,p_lov_id=>wwv_flow_imp.id(3326669105585944543)
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
,p_default_type=>'ITEM'
,p_default_expression=>'P540_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5955428446257581541)
,p_internal_uid=>3705054401749604933
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(5955103322605840583)
,p_interactive_grid_id=>wwv_flow_imp.id(5955428446257581541)
,p_static_id=>'341653'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5955103141991840581)
,p_report_id=>wwv_flow_imp.id(5955103322605840583)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4441999113419360269)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4434600237765417283)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955089246351840494)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5955426825963581525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955090147624840499)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5955426932112581526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955091038386840503)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(5955427026107581527)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955091941480840508)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5955427075430581528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955092815594840512)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5955427181458581529)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955093734362840516)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5955427325790581530)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955094510082840519)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5955427418229581531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955095387473840523)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5955427476195581532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955096331988840532)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5955427635956581533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955097243482840536)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5955427652316581534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955098054896840541)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5955427783295581535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955098957474840545)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5955427929232581536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955099867439840549)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5955427990812581537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955100769341840553)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5955428114126581538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955101658878840557)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5955428221295581539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5955102639197840567)
,p_view_id=>wwv_flow_imp.id(5955103141991840581)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5955428342825581540)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5861276424985326186)
,p_plug_name=>'Experience for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5863908693345988093)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXPERIENCE_REQUIRED,',
'       DURATION_UNIT,',
'       DURATION_QUANTITY,',
'       AT_POSITION,',
'       QUALIFICATION_LEVEL,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       APPLICANT_ID,',
'       START_DATE,',
'       END_DATE,',
'       ORGANISATION_NAME,',
'       ID,',
'       EMP_HISTORY_ID,',
'       MIGRATE_DATE',
'  from HR_APL_JOBEXPERIENCE EXP',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(5863908693345988093)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Experience for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(4443402982678814780)
,p_name=>'MIGRATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIGRATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Migrate Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(5955066737269716533)
,p_name=>'EMP_HISTORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_HISTORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(5955426825963581525)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955066818466716534)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Edit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:546:&SESSION.::&DEBUG.:546:P546_ID,P546_SALUTATION,P546_FIRST_NAME,P546_SURNAME:&ID.,&P540_SALUTATION.,&P540_FIRST_NAME.,&P540_SURNAME.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955066912188716535)
,p_name=>'ORGANISATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANISATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Organisation Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5955066985077716536)
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
 p_id=>wwv_flow_imp.id(5955067131362716537)
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
 p_id=>wwv_flow_imp.id(5955067230785716538)
,p_name=>'APPLICANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Applicant Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(5955067251078716539)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5955067367950716540)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5955067457557716541)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(5955067589285716542)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(5955067715779716543)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(5955067780657716544)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(5955067910290716545)
,p_name=>'QUALIFICATION_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUALIFICATION_LEVEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Qualification Level'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5955068016167716546)
,p_name=>'AT_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AT_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'At Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>400
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
 p_id=>wwv_flow_imp.id(5955068107504716547)
,p_name=>'DURATION_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(5955068156892716548)
,p_name=>'DURATION_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Duration Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(5955068323998716549)
,p_name=>'EXPERIENCE_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPERIENCE_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Experience Required'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5955068506792716551)
,p_internal_uid=>3704694462284739943
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(5954998838985446938)
,p_interactive_grid_id=>wwv_flow_imp.id(5955068506792716551)
,p_static_id=>'342698'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5954998549910446937)
,p_report_id=>wwv_flow_imp.id(5954998838985446938)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4443426892161928330)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4443402982678814780)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954982855991446861)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(5955066737269716533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954983847683446865)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5955066818466716534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.042
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954984718271446869)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5955066912188716535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954985608364446873)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5955066985077716536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954986459273446877)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(5955067131362716537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954987446520446881)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5955067230785716538)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954988258239446885)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5955067251078716539)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954989186252446889)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5955067367950716540)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954990122365446893)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5955067457557716541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954991006294446898)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5955067589285716542)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954991880079446902)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5955067715779716543)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954992769357446906)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5955067780657716544)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954993706804446910)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5955067910290716545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954994588695446914)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5955068016167716546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954995384929446918)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5955068107504716547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954996281895446921)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5955068156892716548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5954997198606446925)
,p_view_id=>wwv_flow_imp.id(5954998549910446937)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5955068323998716549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5861214340606523908)
,p_plug_name=>'Cv Core'
,p_parent_plug_id=>wwv_flow_imp.id(5861214225173523906)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863702978862581984)
,p_plug_name=>'Hobbies/NGOs for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214340606523908)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICANT_ID,',
'       HOBBY_NGO,',
'       LOCATION,',
'       HOW_FREQUENT_INVOLVE,',
'       NGO_POSITION,',
'       DATE_STARTED,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       ID,',
'       REMARKS,',
'       MIGRATE_DATE',
'  from HR_APL_HOBBY HOB',
' where APPLICANT_ID = CASE WHEN :P540_INIT_HOB_SEARCH =1 then applicant_id  else to_number(:P540_ID) end',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_HOB_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Hobbies/NGOs for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(4443352870875722994)
,p_max_row_count=>'1000000'
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
,p_detail_link=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:545:P545_APPLICANT_ID:&P540_ID.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>2192978826367746386
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827152779861633004)
,p_db_column_name=>'APPLICANT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326669105585944543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827153187952633004)
,p_db_column_name=>'HOBBY_NGO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hobby Ngo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827153642341633005)
,p_db_column_name=>'LOCATION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827153997424633005)
,p_db_column_name=>'HOW_FREQUENT_INVOLVE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'How Frequent Involve'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827154385952633006)
,p_db_column_name=>'NGO_POSITION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ngo Position'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827154751385633006)
,p_db_column_name=>'DATE_STARTED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Started'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827155181992633006)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827155561854633007)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827155981040633007)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827156400551633008)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827156819857633008)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827157218473633009)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827157581581633009)
,p_db_column_name=>'ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827158022124633010)
,p_db_column_name=>'REMARKS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827158368907633010)
,p_db_column_name=>'MIGRATE_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Migrate Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4443394691005746405)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5767847'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICANT_ID:HOBBY_NGO:LOCATION:HOW_FREQUENT_INVOLVE:NGO_POSITION:DATE_STARTED:LAST_CHANGED_BY:LAST_CHANGED_DATE:ENTERED_BY:ENTRY_DATE:MACHINE_INSERT:MACHINE_UPDATE:ID:REMARKS:MIGRATE_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863908547145988092)
,p_plug_name=>'References for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214340606523908)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICANT_ID,',
'       REF_FIRST_NAME,DEFAULT_ONLINE_USER,REF_ORG_name, POSITION,',
'       REF_SURNAME,',
'       REF_CELL,',
'       REF_TEL,',
'       REF_EMAIL,',
'       REF_DATE,',
'       ATTACHED_SCAN_REF,',
'       ATTACHED_FILED_REF,',
'       MIMETYPE,',
'       LAST_UPDATE_SCAN_REF,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       REMARKS,',
'       ID,',
'       REFF_CONTENTS,',
'       MIGRATE_DATE',
'  from HR_APL_REFERENCE refr',
' where APPLICANT_ID = CASE WHEN :P540_INIT_REF_SEARCH =1 then applicant_id  else to_number(:P540_ID) end',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_REF_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'References for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(4443350662508722972)
,p_max_row_count=>'1000000'
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
,p_detail_link=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:506:P506_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>2192976618000746364
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827123494433632966)
,p_db_column_name=>'APPLICANT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326669105585944543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827123921682632967)
,p_db_column_name=>'REF_FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ref First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827124269421632967)
,p_db_column_name=>'REF_SURNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ref Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827124722543632968)
,p_db_column_name=>'REF_CELL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ref Cell'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827125100275632968)
,p_db_column_name=>'REF_TEL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ref Tel'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827125515466632968)
,p_db_column_name=>'REF_EMAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ref Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827125925098632970)
,p_db_column_name=>'REF_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ref Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827126334980632970)
,p_db_column_name=>'ATTACHED_SCAN_REF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Attached Scan Ref'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827126720563632971)
,p_db_column_name=>'ATTACHED_FILED_REF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Attached Filed Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827127105835632971)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827127491617632972)
,p_db_column_name=>'LAST_UPDATE_SCAN_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Update Scan Ref'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827127876171632972)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827128317441632972)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827128666686632973)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827129109757632974)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827129500799632974)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827129940730632974)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827130325090632975)
,p_db_column_name=>'REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827130661138632975)
,p_db_column_name=>'ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827131124426632976)
,p_db_column_name=>'REFF_CONTENTS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Reff Contents'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827131536556632976)
,p_db_column_name=>'MIGRATE_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Migrate Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149889549851206412)
,p_db_column_name=>'DEFAULT_ONLINE_USER'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Default Online User'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149891689597206433)
,p_db_column_name=>'POSITION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(149893232758206448)
,p_db_column_name=>'REF_ORG_NAME'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ref Org Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4443380995013736574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5767578'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REF_ORG_NAME:POSITION:REF_FIRST_NAME:REF_SURNAME:REF_CELL:REF_TEL:REF_EMAIL:REF_DATE:DEFAULT_ONLINE_USER:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863908739236988094)
,p_plug_name=>'Qualifications for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214340606523908)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICANT_ID,',
'       EXAM_BODY,',
'       Q_YEAR,',
'       SUBJECT_COURSE,',
'       GRADE_ATTAINED,',
'       SCHOOL,',
'       COMPANY_SPONSOR,',
'       Q_LEVEL,',
'       COUNTRY,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       REMARKS,',
'       FILENAME,',
'       MIMETYPE,',
'       LAST_UPDATE_PHOTO,',
'       CERTIFICATE,',
'       ID',
'  from HR_APL_QUALIFICATION qual',
' where applicant_id= CASE WHEN :P540_INIT_QUAL_SEARCH =1 then applicant_id  else to_number(:P540_ID) end',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_QUAL_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Qualifications for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(5961359361687972532)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV:XLSX:PDF'
,p_download_filename=>'Qualifications'
,p_enable_mail_download=>'Y'
,p_csv_output_separator=>','
,p_csv_output_enclosed_by=>'"'
,p_detail_link=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:542:P542_ID,P542_SALUTATION,P542_FIRST_NAME,P542_SURNAME:#ID#,&P540_SALUTATION.,&P540_FIRST_NAME.,&P540_SURNAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLPAYDEMO'
,p_internal_uid=>3710985317179995924
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827141809974632990)
,p_db_column_name=>'APPLICANT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326669105585944543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827141404962632990)
,p_db_column_name=>'EXAM_BODY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Exam Body'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827140996192632989)
,p_db_column_name=>'Q_YEAR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Q Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827140563873632988)
,p_db_column_name=>'SUBJECT_COURSE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Subject Course'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827140186589632988)
,p_db_column_name=>'GRADE_ATTAINED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Grade Attained'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827139773329632987)
,p_db_column_name=>'SCHOOL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'School'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827139380432632987)
,p_db_column_name=>'COMPANY_SPONSOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Company Sponsor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827138960607632986)
,p_db_column_name=>'Q_LEVEL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Q Level'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827138573376632986)
,p_db_column_name=>'COUNTRY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827138241121632985)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827137787316632985)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827137406428632985)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827136987594632984)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827136590755632984)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827136168641632983)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827135780321632983)
,p_db_column_name=>'REMARKS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827135417410632982)
,p_db_column_name=>'FILENAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827134965737632982)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827134586013632981)
,p_db_column_name=>'LAST_UPDATE_PHOTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Update Photo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827134170847632981)
,p_db_column_name=>'CERTIFICATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Certificate'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827133754057632980)
,p_db_column_name=>'ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5955413738245570941)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5767681'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXAM_BODY:Q_YEAR:SUBJECT_COURSE:GRADE_ATTAINED:SCHOOL:COMPANY_SPONSOR:Q_LEVEL:COUNTRY:LAST_CHANGED_BY:LAST_CHANGED_DATE:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863910630909988113)
,p_plug_name=>'Address for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214340606523908)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADDRESS_TYPE,',
'       APPLICANT_ID,',
'       LOT,',
'       STREET,',
'       VILLAGE_WARD,',
'       TOWN,',
'       REGION,',
'       COUNTY,',
'       COUNTRY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       ID,',
'       MIGRATE_DATE',
'  from HR_APL_ADDRESS addR',
'  where applicant_id = CASE WHEN :P540_INIT_ADD_SEARCH =1 then applicant_id  else TO_NUMBER(:P540_ID) end',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_ADD_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Address for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(5961361101229972549)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:541:P541_ID,P541_SALUTATION,P541_FIRST_NAME,P541_SURNAME:#ID#,&P540_SALUTATION.,&P540_FIRST_NAME.,&P540_SURNAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PPLPAYDEMO'
,p_internal_uid=>3710987056721995941
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827150541815633001)
,p_db_column_name=>'ADDRESS_TYPE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Address Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827150054176633000)
,p_db_column_name=>'APPLICANT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326669105585944543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827149671660632999)
,p_db_column_name=>'LOT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827149298364632999)
,p_db_column_name=>'STREET'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827148901286632998)
,p_db_column_name=>'VILLAGE_WARD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Village Ward'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827148516094632998)
,p_db_column_name=>'TOWN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Town'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827148116990632997)
,p_db_column_name=>'REGION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827147671223632997)
,p_db_column_name=>'COUNTY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'County'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827147343277632997)
,p_db_column_name=>'COUNTRY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827146860309632996)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827146480574632996)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827146070138632995)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827145718213632995)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827145301717632995)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827144910125632994)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827144526068632994)
,p_db_column_name=>'ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827144126935632993)
,p_db_column_name=>'MIGRATE_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Migrate Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5955432515798595911)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5767768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADDRESS_TYPE:LOT:STREET:VILLAGE_WARD:TOWN:REGION:COUNTY:COUNTRY:LAST_CHANGED_BY:LAST_CHANGED_DATE::MIGRATE_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863908475642988091)
,p_plug_name=>'Job Application for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
,p_parent_plug_id=>wwv_flow_imp.id(5861214225173523906)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,APPLICANT_ID,',
'    date_applied,',
'    comments,',
'    proposed_start,',
'    CASE when employment_type= 1 then ''Temporary''',
'        when employment_type= 2 then ''Permanent''',
'        when employment_type= 3 then ''Pension''',
'        when employment_type= 4 then ''Contract''',
'        else  ''Training'' end  employment_type,',
'    organisation_name,',
'    position_name "position Available",POSITION_APPLIED_FOR',
'FROM hr_apl_jobrequest JOB',
'where APPLICANT_ID = CASE WHEN :P540_INIT_APPL_SEARCH =1 then applicant_id  else to_number(:P540_ID) end',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P540_ID,P540_INIT_APPL_SEARCH'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Job Application for &P540_SALUTATION. .&P540_FIRST_NAME. &P540_SURNAME. '
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
 p_id=>wwv_flow_imp.id(4434600639227417287)
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
,p_owner=>'APPS'
,p_internal_uid=>2184226594719440679
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827117744015632956)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:549:P549_ID,P549_NAVIGATOR:#ID#,540'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827118091418632957)
,p_db_column_name=>'DATE_APPLIED'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Date Applied'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827118466942632958)
,p_db_column_name=>'COMMENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827118930700632958)
,p_db_column_name=>'PROPOSED_START'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Proposed Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827119264997632959)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827119656349632959)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827120074662632960)
,p_db_column_name=>'position Available'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Position Available'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827120506965632960)
,p_db_column_name=>'POSITION_APPLIED_FOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Position Applied For'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2827120932554632960)
,p_db_column_name=>'APPLICANT_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Applicant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326669105585944543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4443192906518124019)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5767472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ORGANISATION_NAME:position Available:POSITION_APPLIED_FOR:DATE_APPLIED:COMMENTS:PROPOSED_START:EMPLOYMENT_TYPE::APPLICANT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5863703067253581985)
,p_plug_name=>'Reminder'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5931033540603463134)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
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
 p_id=>wwv_flow_imp.id(5961361635208972554)
,p_plug_name=>'External Applicant Register'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5802932794273708926)
,p_plug_name=>'Photograph'
,p_parent_plug_id=>wwv_flow_imp.id(5961361635208972554)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_APL_INDIVIDUAL',
'WHERE FILENAME IS NOT NULL',
'and id=:P540_ID'))
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
 p_id=>wwv_flow_imp.id(5864140184938218134)
,p_plug_name=>'Applicant BioData'
,p_parent_plug_id=>wwv_flow_imp.id(5961361635208972554)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'HR_APL_INDIVIDUAL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5902390807395854926)
,p_plug_name=>'Companies that I can Apply to'
,p_parent_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICANT_ID,',
'       ORG_ID,SVR_ENVIRONMENT,',
'       START_DATE,',
'       END_DATE,',
'       REMARKS,',
'       ID,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_DATE,',
'       LAST_CHANGED_BY',
'  from HR_APL_INDSECURITY',
'  where applicant_id= :P540_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P540_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P540_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Companies that I can Apply to'
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
 p_id=>wwv_flow_imp.id(149889814426206414)
,p_name=>'SVR_ENVIRONMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SVR_ENVIRONMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'G_PARSING_SCHEMA'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5900778340609264863)
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
 p_id=>wwv_flow_imp.id(5900778439085264864)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5900778511378264865)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(5900778608883264866)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(5900778654920264867)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(5900778764461264868)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(5900778902339264869)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(5902390249537854920)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5902390334601854921)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(5902390402400854922)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'trunc(current_date)'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5902390522309854923)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Company'
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from HR_HCF_organisation X',
'where organisation_type=''SOFTWARE USER''',
'order by 1'))
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5902390638308854924)
,p_name=>'APPLICANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICANT_ID'
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
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P540_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5902390679085854925)
,p_internal_uid=>3652016634577878317
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
 p_id=>wwv_flow_imp.id(5900773305933261702)
,p_interactive_grid_id=>wwv_flow_imp.id(5902390679085854925)
,p_static_id=>'278890'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5900773145206261701)
,p_report_id=>wwv_flow_imp.id(5900773305933261702)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(150103095264129323)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(149889814426206414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900758399087155528)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5900778439085264864)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900764521022261670)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5900778511378264865)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900765393825261673)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5900778608883264866)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900766339983261675)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5900778654920264867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900767153292261678)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5900778764461264868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900768123110261681)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5900778902339264869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900768996870261683)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5902390249537854920)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900769895175261686)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5902390334601854921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900770818459261688)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5902390402400854922)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>182.85500000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900771663265261691)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5902390522309854923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132.01600000000002
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5900772635186261697)
,p_view_id=>wwv_flow_imp.id(5900773145206261701)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5902390638308854924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5961361547826972553)
,p_plug_name=>'Signature'
,p_parent_plug_id=>wwv_flow_imp.id(5961361635208972554)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_APL_INDIVIDUAL',
'WHERE SIG_FILENAME IS NOT NULL',
'and id=:P540_ID'))
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827068617799632876)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5802932794273708926)
,p_button_name=>'REMOVE_PHOTO'
,p_button_static_id=>'1261_DELETE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Remove'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827098082801632927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5961361547826972553)
,p_button_name=>'REMOVE_SIGNATURE'
,p_button_static_id=>'1261_DELETE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--stretch'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Remove'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827066322256632873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827107563222632941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5863908693345988093)
,p_button_name=>'ADD_EMPHISTORY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Emphistory'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-box-plot-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827121657772632962)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5863908475642988091)
,p_button_name=>'ADD_JOBAPPLICATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Job Application'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-layout-list-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827132294937632977)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5863908547145988092)
,p_button_name=>'ADD_REFERENCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Reference'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-address-card-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827151245796633002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5863910630909988113)
,p_button_name=>'ADD_ADDRESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Address'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-address-card'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827159158276633011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5863702978862581984)
,p_button_name=>'ADD_HOBBIES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Hobbies'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-taxi'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827107967363632941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863908693345988093)
,p_button_name=>'INIT_EMPH_SEARCH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_NAVIGATION:&P540_ID.'
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827122090327632963)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863908475642988091)
,p_button_name=>'INIT_APP_SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827132661705632978)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863908547145988092)
,p_button_name=>'INIT_REF_SEARCH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::P227_NAVIGATION:&P540_ID.'
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827142566687632991)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863908739236988094)
,p_button_name=>'ADD_QUALIFICATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Qualification'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-emoji-cool'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827151670474633002)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863910630909988113)
,p_button_name=>'INIT_ADD_SEARCH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::P220_APPLICANT_ID:&P540_ID.'
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827159613062633012)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5863702978862581984)
,p_button_name=>'INIT_HOB_SEARCH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:228:&SESSION.::&DEBUG.::P228_NAVIGATION:&P540_ID.'
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827066681209632874)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P540_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827143001412632992)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5863908739236988094)
,p_button_name=>'INIT_QUAL_SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initial Search'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-database-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827067081373632874)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P540_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827067491456632875)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P540_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827067940171632875)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.:540::'
,p_button_condition=>'P540_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2912651433935222142)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(142628349281158816)
,p_button_name=>'RM_CV'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Remove CV'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from  HR_APL_INDIVIDUAL',
'where CV_FILENAME is not null',
'and id=:P540_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827177913965633031)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:539:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827066681209632874)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827177527901633030)
,p_branch_name=>'add_address'
,p_branch_action=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:541:P541_APPLICANT_ID,P541_SALUTATION,P541_SURNAME,P541_FIRST_NAME:&P540_ID.,&P540_SALUTATION.,&P540_SURNAME.,&P540_FIRST_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827151245796633002)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827177094105633030)
,p_branch_name=>'qualification'
,p_branch_action=>'f?p=&APP_ID.:542:&SESSION.::&DEBUG.:542:P542_APPLICANT_ID,P542_FIRST_NAME,P542_SURNAME,P542_SALUTATION:&P540_ID.,&P540_FIRST_NAME.,&P540_SURNAME.,&P540_SALUTATION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827142566687632991)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827176644868633030)
,p_branch_name=>'emphistory'
,p_branch_action=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:544:P544_APPLICANT_ID,P544_FIRST_NAME,P544_SURNAME,P544_SALUTATION:&P540_ID.,&P540_FIRST_NAME.,&P540_SURNAME.,&P540_SALUTATION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827107563222632941)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827176248961633029)
,p_branch_name=>'add_reference'
,p_branch_action=>'f?p=&APP_ID.:506:&SESSION.::&DEBUG.:506:P506_APPLICANT_ID,P506_FIRST_NAME_APP,P506_SALUTATION_APP,P506_SURNAME_APP:&P540_ID.,&P540_FIRST_NAME.,&P540_SALUTATION.,&P540_SURNAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827132294937632977)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827175884309633029)
,p_branch_name=>'add_HOBBIES'
,p_branch_action=>'f?p=&APP_ID.:545:&SESSION.::&DEBUG.:545:P545_APPLICANT_ID,P545_SALUTATION,P545_SURNAME,P545_FIRST_NAME:&P540_ID.,&P540_SALUTATION.,&P540_SURNAME.,&P540_FIRST_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827159158276633011)
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827175459794633028)
,p_branch_name=>'add_JobApplication'
,p_branch_action=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:549:P549_FIRST_NAME,P549_SURNAME,P549_SALUTATION,P549_NAVIGATOR:&P540_FIRST_NAME.,&P540_SURNAME.,&P540_SALUTATION.,540&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2827121657772632962)
,p_branch_sequence=>90
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2827178302752633031)
,p_branch_name=>'stay'
,p_branch_action=>'f?p=&APP_ID.:540:&SESSION.::&DEBUG.::P540_ID:&P540_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>100
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827065566900632872)
,p_name=>'P540_ALL_APPLICANTS_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863703067253581985)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_imp.id(2827069001337632876)
,p_name=>'P540_IND_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5802932794273708926)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'DB_COLUMN',
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827070043933632889)
,p_name=>'P540_APPLICANT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Applicant No.'
,p_source=>'APPLICANT_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P540_ID is not null and :P540_APPLICANT_NO is not null',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(2827070265504632890)
,p_name=>'P540_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
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
 p_id=>wwv_flow_imp.id(2827070698829632890)
,p_name=>'P540_SALUTATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Salutation e..g. Mr. or Mrs.'
,p_source=>'SALUTATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SALUTATION'
,p_lov=>'.'||wwv_flow_imp.id(3330665268833864803)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(2827071063962632891)
,p_name=>'P540_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Surname'
,p_source=>'SURNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(2827071507017632891)
,p_name=>'P540_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(2827071922837632891)
,p_name=>'P540_MIDDLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Middle Name'
,p_source=>'MIDDLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(2827072268729632892)
,p_name=>'P540_ALIAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Alias'
,p_source=>'ALIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(2827072707514632893)
,p_name=>'P540_DOB'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'DOB :- Select date from Calendar Icon'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(2827073093896632893)
,p_name=>'P540_SEX_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Sex'
,p_source=>'SEX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Female;FEMALE,Male;MALE'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827073464267632894)
,p_name=>'P540_NATIONALITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Nationality'
,p_source=>'NATIONALITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NATIONALITY_COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description A,UPPER(value_description)  B',
'from table(pkg_global_fnts.get_lookup_value(''TBLNATIONALITY'')) a',
'where org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(2827073929884632894)
,p_name=>'P540_MARITAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Marital Status'
,p_source=>'MARITAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'MARITAL STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from HR_HCF_LOOKUP  ',
'WHERE table_NAME=''TBLMARITALSTATUS'' ',
'order by 1'))
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827074297546632895)
,p_name=>'P540_TELEPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Telephone'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="call-tele" type="button" class="t-Button t-Button--icon t-Button--success t-Button--iconRight">',
'<span aria-hidden="true" class="fa fa-phone fa-lg"></span>',
'<font style = "margin: 0 auto;">Dial</font>',
'</button>'))
,p_source=>'TELEPHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827074714693632897)
,p_name=>'P540_CELL_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Cell Phone'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button id="call-cell" type="button" class="t-Button t-Button--icon t-Button--success t-Button--iconRight">',
'<span aria-hidden="true" class="fa fa-phone fa-lg"></span>',
'<font style = "margin: 0 auto;">Dial</font>',
'</button>'))
,p_source=>'CELL_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827075078067632897)
,p_name=>'P540_USE_SOCIAL_LOGIN'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Use Social Login'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827075458681632898)
,p_name=>'P540_CORR_PREFERENCE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Correspond:- Type email, cell or Land Line '
,p_source=>'CORR_PREFERENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Email;EMAIL,Cell;CELL,Land Line;LAND LINE,Post Mail;POST MAIL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'<b><i>Preferred method for correspondence.</i></b>'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827075911997632900)
,p_name=>'P540_WORK_PERMIT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'If  Foreigner do you have a Work Permit'
,p_source=>'WORK_PERMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Do you have a work Permit if foreigner.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'NO',
  'on_label', 'Yes',
  'on_value', 'YES',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827076836872632901)
,p_name=>'P540_CERTIFY_AUTHENTIC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Certify that Authentic Information is Provided'
,p_source=>'CERTIFY_AUTHENTIC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'I certify that the information contained in this application is true and complete.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'NO',
  'on_label', 'Yes',
  'on_value', 'YES',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827077687983632902)
,p_name=>'P540_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Please note this email address will be your user name when logging into the system.'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>200
,p_cMaxlength=>200
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827078072236632902)
,p_name=>'P540_PASSWORD'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827078520246632903)
,p_name=>'P540_PASSWORD_CONFIRM'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Password Confirm'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827078894756632903)
,p_name=>'P540_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827079341306632904)
,p_name=>'P540_MISSINFO_CONSEQUENCES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_default=>'YES'
,p_prompt=>'Certify that I understand'
,p_source=>'MISSINFO_CONSEQUENCES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'In the event of employment, I understand that false or misleading information given in my application or interview(s) may result in discharge.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'NO',
  'on_label', 'Yes',
  'on_value', 'YES',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827080210046632904)
,p_name=>'P540_SIG_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'SIG_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827080608280632905)
,p_name=>'P540_SIG_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'SIG_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827080987943632905)
,p_name=>'P540_SIG_LAST_UPDATE_PHOTO'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'SIG_LAST_UPDATE_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827081432607632906)
,p_name=>'P540_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827081801044632906)
,p_name=>'P540_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827082207302632907)
,p_name=>'P540_LAST_UPDATE_PHOTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_source=>'LAST_UPDATE_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827082545763632907)
,p_name=>'P540_FIRST_ORG_ID'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827098462309632927)
,p_name=>'P540_SIG_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5961361547826972553)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Sig Photo'
,p_source=>'SIG_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'DB_COLUMN',
  'blob_last_updated_column', 'SIG_LAST_UPDATE_PHOTO',
  'filename_column', 'SIG_FILENAME',
  'mime_type_column', 'SIG_MIMETYPE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827108353152632942)
,p_name=>'P540_INIT_EMPH_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863908693345988093)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827116950082632954)
,p_name=>'P540_INIT_EXP_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5861276424985326186)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827122446384632963)
,p_name=>'P540_INIT_APPL_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5863908475642988091)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827133064120632978)
,p_name=>'P540_INIT_REF_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863908547145988092)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827143422344632992)
,p_name=>'P540_INIT_QUAL_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863908739236988094)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827152065520633003)
,p_name=>'P540_INIT_ADD_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863910630909988113)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827159948103633012)
,p_name=>'P540_INIT_HOB_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5863702978862581984)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2838509112227548819)
,p_name=>'P540_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Photo'
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2838509165634548820)
,p_name=>'P540_SIGN_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'Signature'
,p_source=>'SIG_PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'SIG_LAST_UPDATE_PHOTO',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'SIG_FILENAME',
  'mime_type_column', 'SIG_MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912651333149222141)
,p_name=>'P540_CV_UPLOAD'
,p_source_data_type=>'BLOB'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_item_source_plug_id=>wwv_flow_imp.id(5864140184938218134)
,p_prompt=>'CV Upload'
,p_source=>'CV_UPLOAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'CV_LAST_UPDATE',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'CV_FILENAME',
  'mime_type_column', 'CV_MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2827160533819633013)
,p_validation_name=>'chk_pwd'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' if  :P540_PASSWORD IS NOT NULL AND :P540_PASSWORD_CONFIRM IS NOT NULL and :P540_EMAIL IS NOT NULL then',
' if  :P540_PASSWORD = :P540_PASSWORD_CONFIRM then',
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
,p_error_message=>'Password and confirm passwords do not match or your email may be blank!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827162363260633016)
,p_name=>'dy_call_phone'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#call-tele'
,p_condition_element=>'P540_TELEPHONE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827162879735633016)
,p_event_id=>wwv_flow_imp.id(2827162363260633016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function() {',
'        $(''#call-tele'').click(function() {',
'          var PhoneNumber = apex.item("P540_TELEPHONE").getValue();',
'          PhoneNumber = PhoneNumber.replace(''Phone:'', '''');',
'          window.location.href = ''tel://'' + PhoneNumber;',
'        });',
'      });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827163295666633017)
,p_name=>'dy_call_phone_cell'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#call-cell'
,p_condition_element=>'P540_CELL_PHONE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827163794846633017)
,p_event_id=>wwv_flow_imp.id(2827163295666633017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function() {',
'        $(''#call-cell'').click(function() {',
'          var PhoneNumber = apex.item("P540_CELL_PHONE").getValue();',
'          PhoneNumber = PhoneNumber.replace(''Phone:'', '''');',
'          window.location.href = ''tel://'' + PhoneNumber;',
'        });',
'      });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827164162533633018)
,p_name=>'dy_onchange_enable_disable'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P540_TELEPHONE'
,p_condition_element=>'P540_TELEPHONE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827164700330633018)
,p_event_id=>wwv_flow_imp.id(2827164162533633018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#call-tele'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827165164415633018)
,p_event_id=>wwv_flow_imp.id(2827164162533633018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#call-tele'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827165548908633019)
,p_name=>'dy_onchange_ed_cell'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P540_CELL_PHONE'
,p_condition_element=>'P540_CELL_PHONE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827166073857633019)
,p_event_id=>wwv_flow_imp.id(2827165548908633019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#call-cell'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827166599113633020)
,p_event_id=>wwv_flow_imp.id(2827165548908633019)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#call-cell'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827166973156633020)
,p_name=>'set_value_refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827151670474633002)
,p_condition_element=>'P540_INIT_ADD_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827167540984633020)
,p_event_id=>wwv_flow_imp.id(2827166973156633020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_ADD_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select 1,''(All Applicants Mode)'' from dual'
,p_attribute_07=>'P540_INIT_ADD_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827168029667633021)
,p_event_id=>wwv_flow_imp.id(2827166973156633020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863910630909988113)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827168362437633021)
,p_name=>'show_hide_qual'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827143001412632992)
,p_condition_element=>'P540_INIT_QUAL_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827168917759633022)
,p_event_id=>wwv_flow_imp.id(2827168362437633021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_QUAL_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select 1 ,''(All Applicants Mode)'' from dual'
,p_attribute_07=>'P540_INIT_QUAL_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827169391802633022)
,p_event_id=>wwv_flow_imp.id(2827168362437633021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863908739236988094)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827169819155633023)
,p_name=>'SET_VAL_show_ref'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827132661705632978)
,p_condition_element=>'P540_INIT_REF_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827170271502633023)
,p_event_id=>wwv_flow_imp.id(2827169819155633023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_REF_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select 1 ,''(All Applicants Mode)'' from dual'
,p_attribute_07=>'P540_INIT_REF_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827170762742633024)
,p_event_id=>wwv_flow_imp.id(2827169819155633023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863908547145988092)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827171239914633024)
,p_name=>'SET_VALUE_HOB'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827159613062633012)
,p_condition_element=>'P540_INIT_HOB_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827171650114633025)
,p_event_id=>wwv_flow_imp.id(2827171239914633024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_HOB_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT 1 ,''(All Applicants Mode)'' FROM DUAL'
,p_attribute_07=>'P540_INIT_HOB_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827172188051633025)
,p_event_id=>wwv_flow_imp.id(2827171239914633024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863702978862581984)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827172615200633025)
,p_name=>'show_value_emph'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827107967363632941)
,p_condition_element=>'P540_INIT_EMPH_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827173057368633026)
,p_event_id=>wwv_flow_imp.id(2827172615200633025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_EMPH_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select 1 ,''(All Applicants Mode)'' from dual'
,p_attribute_07=>'P540_INIT_EMPH_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827173610216633027)
,p_event_id=>wwv_flow_imp.id(2827172615200633025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863908693345988093)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827173962880633027)
,p_name=>'SET_VALUE_APPL'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2827122090327632963)
,p_condition_element=>'P540_INIT_APPL_SEARCH'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827174492971633027)
,p_event_id=>wwv_flow_imp.id(2827173962880633027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P540_INIT_APPL_SEARCH,P540_ALL_APPLICANTS_MODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT 1,''(All Applicants Mode)'' FROM DUAL'
,p_attribute_07=>'P540_INIT_APPL_SEARCH'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827175002309633028)
,p_event_id=>wwv_flow_imp.id(2827173962880633027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5863908475642988091)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827161598963633014)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_PWD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P540_PASSWORD_CONFIRM = :P540_PASSWORD then     ',
'    update HR_APL_INDIVIDUAL',
'    set PASSWORD =:P540_PASSWORD',
'    where upper(EMAIL)=upper(:P540_EMAIL)',
'    and :P540_PASSWORD is not null',
'    and :P540_EMAIL  is not null;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Process successfully executed.'
,p_internal_uid=>2711377465107319309
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827161168240633014)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_PHOTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update HR_APL_INDIVIDUAL',
'set photo= null,',
'mimetype = null,',
'filename=null,',
'LAST_UPDATE_PHOTO=null',
'where id= :P540_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2827068617799632876)
,p_process_success_message=>'Profile photo removed.'
,p_internal_uid=>2711377034384319309
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827160811787633014)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_SIGNATURE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update HR_APL_INDIVIDUAL',
'set sig_photo= null,',
'sig_mimetype = null,',
'sig_filename=null,',
'sig_LAST_UPDATE_PHOTO=null',
'where id= :P540_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2827098082801632927)
,p_process_success_message=>'Profile signature removed.'
,p_internal_uid=>2711376677931319309
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827090747379632916)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5864140184938218134)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form FrmApplicant'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2711306613523319211
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827161992326633015)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gen_number'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_R NUMBER:=0;',
'  V_unique boolean:= false;',
'  v_count number := 0;',
'  v_NUMBER_PREFIX varchar2(50);',
'  ',
'BEGIN',
'  if :P540_APPLICANT_NO is null then',
'        V_R:=pkg_global_fnts.get_system_no_appl(''EMP_COMPANY_NO_APPL'',:APP_ORG_ID);',
'',
'        begin',
'        ',
'        select NUMBER_PREFIX into v_NUMBER_PREFIX',
'        from HR_SYS_NUMBER',
'        WHERE ORG_ID =:APP_ORG_ID',
'        AND trim(NUMBER_NAME) = ''EMP_COMPANY_NO_APPL'';',
'        ',
'        exception',
'            when no_data_found then',
'                V_NUMBER_PREFIX := ''APPL-'';',
'        end; ',
'',
'        ',
'        while (v_unique = false)',
'            loop',
'                ',
'            V_R :=V_R + 1;',
'            ',
'            if v_NUMBER_PREFIX is null then ',
'        ',
'                SELECT count(1) into v_count from hr_apl_individual a where applicant_no =  to_char(V_R) ',
'                    and exists (select 1 from hr_apl_indsecurity b where a.id=b.applicant_id and  org_id=:APP_ORG_ID);',
'            else',
'                SELECT count(1) into v_count from hr_apl_individual a where applicant_no = v_NUMBER_PREFIX||TO_CHAR(V_R) ',
'                and exists (select 1 from hr_apl_indsecurity b where a.id=b.applicant_id and  org_id=:APP_ORG_ID);',
'            end if;',
'            ',
'            if v_count = 0 then',
'                ',
'                v_unique := true;',
'                ',
'                exit;',
'                ',
'            end if;',
'            ',
'            end loop;',
'        ',
'        if v_NUMBER_PREFIX is null then ',
'            update hr_apl_individual',
'            set APPLICANT_NO = V_R',
'            where id= :P540_ID;',
'        else',
'             update hr_apl_individual',
'            set APPLICANT_NO =v_NUMBER_PREFIX||TO_CHAR(V_R)',
'            where id= :P540_ID;',
'            ',
'        end if;',
'',
'      begin ',
'        UPDATE HR_SYS_NUMBER',
'        SET NUMBER_VALUE = V_R',
'        WHERE ORG_ID =:APP_ORG_ID',
'        AND NUMBER_NAME = ''EMP_COMPANY_NO_APPL'';',
'        ',
'        ',
'        exception    ',
'            when others then null;',
'        end;',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2711377858470319310
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827097354377632926)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5902390807395854926)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Companies Apply I can Apply to - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2711313220521319221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2912651531886222143)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET_CV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    UPDATE HR_APL_INDIVIDUAL',
'    SET  CV_UPLOAD = NULL ,',
'        CV_FILENAME = NULL ,',
'        CV_MIMETYPE = NULL ,',
'        CV_LAST_UPDATE	 = NULL ',
'    WHERE ID = :P540_ID;',
'',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2912651433935222142)
,p_internal_uid=>2796867398029908438
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827091209798632917)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5864140184938218134)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form FrmApplicant'
,p_internal_uid=>2711307075942319212
);
wwv_flow_imp.component_end;
end;
/
