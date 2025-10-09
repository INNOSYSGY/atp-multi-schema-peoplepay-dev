prompt --application/pages/page_01400
begin
--   Manifest
--     PAGE: 01400
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
 p_id=>1400
,p_name=>'frmAdhocDepatmentPosting'
,p_alias=>'FRMADHOCDEPATMENTPOSTING'
,p_step_title=>'Departmental Income Posting'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295437519995187)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1239750864703687619)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1366937392924786079)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4336472568069942095)
,p_plug_name=>'Manual Form Entries'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'TABLE'
,p_query_table=>'PA_PCF_ADHOCPAYMENT'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4336462643487834376)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  PAYROLL_LAST_CHANGE_BY Pay_Change_by,',
'  PAYROLL_LAST_CHANGE_DATE Pay_Change_Date,',
'  apex_util.get_since(last_changed_date) updated',
'from  PA_PCF_ADHOCPAYMENT',
'where  id = :P1400_ID_1'))
,p_display_when_condition=>':P1400_ID_1 is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1400_ID_1'
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
 p_id=>wwv_flow_imp.id(414450812596300646)
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
 p_id=>wwv_flow_imp.id(414451249468300647)
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
 p_id=>wwv_flow_imp.id(414451620647300648)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(414451996505300649)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(414452424448300650)
,p_query_column_id=>5
,p_column_alias=>'PAY_CHANGE_BY'
,p_column_display_sequence=>70
,p_column_heading=>'Pay Change By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(414452769669300651)
,p_query_column_id=>6
,p_column_alias=>'PAY_CHANGE_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Pay Change Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(414453219869300652)
,p_query_column_id=>7
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4337042944502518579)
,p_plug_name=>'Listing of Payroll entries'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_ADHOCPAYMENT.ID as ID,',
'orgdtl_id,',
'    PA_PCF_ADHOCPAYMENT.EMP_ID as EMP_ID,',
'    PA_PCF_ADHOCPAYMENT.EMPENT_ID as EMPENT_ID,',
'    PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    PA_PCF_ADHOCPAYMENT.QUANTITY as QUANTITY,',
'    PA_PCF_ADHOCPAYMENT.RATE as RATE,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID as AMOUNT_PAID,',
'    PA_PCF_ADHOCPAYMENT.START_PERIOD_PAID as START_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.END_PERIOD_PAID as END_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.PAY_STATUS as PAY_STATUS,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID_INC as AMOUNT_PAID_INC,',
'    PA_PCF_ADHOCPAYMENT.INCREASE_ID as INCREASE_ID,',
'    PA_PCF_ADHOCPAYMENT.BACKUP_EARN_PRD as BACKUP_EARN_PRD,',
'    PA_PCF_ADHOCPAYMENT.PAY_OPTION as PAY_OPTION,',
'    PA_PCF_ADHOCPAYMENT.IS_SUPPLEMENTAL as IS_SUPPLEMENTAL,',
'    PA_PCF_ADHOCPAYMENT.ENTERED_BY as ENTERED_BY,',
'    PA_PCF_ADHOCPAYMENT.ENTRY_DATE as ENTRY_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    PA_PCF_ADHOCPAYMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    BY_PASS_COMPUTATION, REMARKS, PA_PCF_ADHOCPAYMENT.EMPENT_ID ENT_LINK, PA_PCF_ADHOCPAYMENT.EMP_ID EMP_LINK',
'from PA_PCF_ADHOCPAYMENT PA_PCF_ADHOCPAYMENT join PA_PCF_EARNINGPERIOD V ON V.ID=PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type           ',
'           )',
'and PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID=:P1400_EARNINGS_PERIOD_ID',
'and upper(PA_PCF_ADHOCPAYMENT.entered_by)= case when :APP_MY_POSTING_ONLY=1 then upper(:APP_USER) ELSE upper(PA_PCF_ADHOCPAYMENT.entered_by) END'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Payroll entries'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(604601948256058314)
,p_name=>'EMP_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Link'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(4124982147168555032)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853893589149985114)
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
 p_id=>wwv_flow_imp.id(4357064618212926993)
,p_name=>'ENT_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENT_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Entitlement'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:1284:P1284_ID:&EMPENT_ID.'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
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
 p_id=>wwv_flow_imp.id(4357064677731926994)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(4357064805997926995)
,p_name=>'BY_PASS_COMPUTATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'By Pass Computation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(4357064922600926996)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(4357065005501926997)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(4357065079643926998)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4357065182089926999)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4357065337385927000)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(4357065400354927001)
,p_name=>'IS_SUPPLEMENTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_SUPPLEMENTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Is Supplemental'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(4357065539263927002)
,p_name=>'PAY_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(4357065634085927003)
,p_name=>'BACKUP_EARN_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BACKUP_EARN_PRD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Backup Earn Prd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(4357065671611927004)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(4357065774557927005)
,p_name=>'AMOUNT_PAID_INC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID_INC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid Inc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(4357065868520927006)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(4357066028687927007)
,p_name=>'END_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Period Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(4357066059546927008)
,p_name=>'START_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Period Paid'
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
 p_id=>wwv_flow_imp.id(4357066190331927009)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D000'
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
 p_id=>wwv_flow_imp.id(4357268470277089960)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D000'
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
 p_id=>wwv_flow_imp.id(4357268612533089961)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(4357268740817089962)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853992524515144148)
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
 p_id=>wwv_flow_imp.id(4357268810600089963)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853985770403144138)
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
 p_id=>wwv_flow_imp.id(4357268857414089964)
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
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853988260722144141)
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
 p_id=>wwv_flow_imp.id(4357269186813089967)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Edit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_link_target=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:1400:P1400_ID_1,P1400_EARNINGS_PERIOD_ID:&ID.,&EARNINGS_PERIOD_ID.'
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
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4357269262202089968)
,p_internal_uid=>4135866705620478274
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
 p_id=>wwv_flow_imp.id(4357060278639925837)
,p_interactive_grid_id=>wwv_flow_imp.id(4357269262202089968)
,p_static_id=>'750764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4357060065429925837)
,p_report_id=>wwv_flow_imp.id(4357060278639925837)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(605109842644987828)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(604601948256058314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4127260269095537274)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(4124982147168555032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357038004696925777)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(4357064618212926993)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357038879758925779)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(4357064677731926994)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357039829101925781)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(4357064805997926995)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357040737210925784)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(4357064922600926996)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357041616143925786)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(4357065005501926997)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357042454874925788)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(4357065079643926998)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357043388796925791)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4357065182089926999)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357044251464925793)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4357065337385927000)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357045164322925796)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4357065400354927001)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357046072303925798)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4357065539263927002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357047015228925800)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4357065634085927003)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357047934960925803)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4357065671611927004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357048753961925805)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4357065774557927005)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357049682880925807)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4357065868520927006)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357050639736925810)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4357066028687927007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357051528336925812)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4357066059546927008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357052404127925815)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4357066190331927009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357053282769925817)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4357268470277089960)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357054249395925820)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4357268612533089961)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357055061822925823)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4357268740817089962)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357055965500925825)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4357268810600089963)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357056853220925828)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4357268857414089964)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357059566724925836)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4357269186813089967)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4432136256819678909)
,p_view_id=>wwv_flow_imp.id(4357060065429925837)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(4357066190331927009)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4444311396347697272)
,p_interactive_grid_id=>wwv_flow_imp.id(4357269262202089968)
,p_name=>'Departmental'
,p_static_id=>'872523'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4444311183137697272)
,p_report_id=>wwv_flow_imp.id(4444311396347697272)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4214511386803308709)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(4124982147168555032)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444289122404697212)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(4357064618212926993)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444289997466697214)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(4357064677731926994)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444290946809697216)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(4357064805997926995)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444291854918697219)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(4357064922600926996)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444292733851697221)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(4357065005501926997)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444293572582697223)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(4357065079643926998)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444294506504697226)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(4357065182089926999)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444295369172697228)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4357065337385927000)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444296282030697231)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4357065400354927001)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444297190011697233)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4357065539263927002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444298132936697235)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4357065634085927003)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444299052668697238)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4357065671611927004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444299871669697240)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4357065774557927005)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444300800588697242)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4357065868520927006)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444301757444697245)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4357066028687927007)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444302646044697247)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4357066059546927008)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444303521835697250)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4357066190331927009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444304400477697252)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4357268470277089960)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444305367103697255)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4357268612533089961)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444306179530697258)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4357268740817089962)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444307083208697260)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4357268810600089963)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444307970928697263)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4357268857414089964)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4444310684432697271)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4357269186813089967)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4519387374527450344)
,p_view_id=>wwv_flow_imp.id(4444311183137697272)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(4357066190331927009)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4511472742146027060)
,p_plug_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>51
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",POST_SEQUENCE,UNIT_OF_MEASURE,WORKACTIVITY_ID,',
' "EMP_ID",',
' EMPENT_ID,',
'"QUANTITY",',
'"RATE",',
'"AMOUNT_PAID",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"LAST_CHANGED_DATE",',
'"LAST_CHANGED_BY",',
'BY_PASS_COMPUTATION, orgdtl_id,',
'REMARKS, EMPENT_ID Link',
'from "PA_PCF_ADHOCPAYMENT" x',
'where EARNINGS_PERIOD_ID=:P1400_EARNINGS_PERIOD_ID',
'and NVL(x.orgdtl_id,:P1400_WORK_UNIT) =nvl(:P1400_WORK_UNIT, x.orgdtl_id)',
'and upper(X.entered_by)= case when :APP_MY_POSTING_ONLY=1 then upper(:APP_USER) ELSE upper(X.entered_by) END'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4109669844355038898)
,p_name=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_OF_MEASURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853928037640092868)
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
 p_id=>wwv_flow_imp.id(4109670034393038899)
,p_name=>'WORKACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Job Work Task'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3442391021564841081)
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
 p_id=>wwv_flow_imp.id(4301023688163651367)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853893589149985114)
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
 p_id=>wwv_flow_imp.id(4381929094838463415)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Link'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_ID:&LINK.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1285',
'AND CAN_VIEW=''Y'''))
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4511471171213027044)
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
 p_id=>wwv_flow_imp.id(4511471216880027045)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4511471464065027047)
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
 p_id=>wwv_flow_imp.id(4511471526512027048)
,p_name=>'BY_PASS_COMPUTATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'By Pass'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844225131839162058)
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
 p_id=>wwv_flow_imp.id(4511471624086027049)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed by'
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
 p_id=>wwv_flow_imp.id(4511471754444027050)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last changed date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(4511471878212027051)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(4511471980861027052)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered by'
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
 p_id=>wwv_flow_imp.id(4511472013271027053)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
 p_id=>wwv_flow_imp.id(4511472130930027054)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
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
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4511472215758027055)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(4511472329698027056)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853985770403144138)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4511472416410027057)
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
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where org_id=:APP_ORG_ID             ',
'        order by 1'))
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
,p_readonly_condition=>'P1400_EMP_ID'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4511472532441027058)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4523878917839158854)
,p_name=>'POST_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST_SEQUENCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Post Sequence'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4511472603371027059)
,p_internal_uid=>4290070046789415365
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4510589717812353648)
,p_interactive_grid_id=>wwv_flow_imp.id(4511472603371027059)
,p_static_id=>'18204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4510589610160353637)
,p_report_id=>wwv_flow_imp.id(4510589717812353648)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4111997593810345705)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4109669844355038898)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4111998468692345712)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(4109670034393038899)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>79.7917
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4303385192551951843)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(4301023688163651367)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4357345369519533670)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(4381929094838463415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4460039067149663386)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(4523878917839158854)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510581962510351776)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4511471216880027045)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510583841113353468)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(4511471464065027047)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510584390478353469)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4511471526512027048)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510584822040353470)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4511471624086027049)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510585311621353471)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4511471754444027050)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>172
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510585850314353479)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4511471878212027051)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510586387434353479)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4511471980861027052)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510586864904353481)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4511472013271027053)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510587373878353485)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4511472130930027054)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510587887633353486)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4511472215758027055)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510588341761353506)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4511472329698027056)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510588898854353560)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4511472416410027057)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>294
,p_break_order=>5
,p_break_is_enabled=>false
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4510589259342353570)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4511472532441027058)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(4513544577142045078)
,p_view_id=>wwv_flow_imp.id(4510589610160353637)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(4511472013271027053)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4760131036055329268)
,p_plug_name=>'Generate Post Option'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_query_num_rows=>15
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4429966588677268627)
,p_plug_name=>'Create Quick Payroll Entries By Employees'
,p_parent_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4473054293744534424)
,p_plug_name=>'Create Quick Payroll Entries By Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414455889611300660)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1366937392924786079)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1400_RETURN_PAGE.:&SESSION.::&DEBUG.:&P1400_RETURN_PAGE.:P&P1400_RETURN_PAGE._ID:&P1400_PAY_BATCH.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414477206408300730)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P1400_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414477578105300730)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_button_name=>'CREATE_ENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P1400_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414478052966300731)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_button_name=>'GENERATE_EMPLOYEES_EX'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generation Categories'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:RP,79:P79_EARNINGS_PERIOD_ID,P79_END_PERIOD_PAID,P79_START_PERIOD_PAID,P79_RETURN,P79_ORGDTL_ID:&P1400_EARNINGS_PERIOD_ID.,&P1400_END_PERIOD_PAID.,&P1400_START_PERIOD_PAID.,1400,&P1400_WORK_UNIT.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414437943550300598)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'REPROCESS_EARNINGS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reprocess Earnings'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PCF_ADHOCPAYMENT',
'where EARNINGs_PERIOD_ID = :P1400_EARNINGS_PERIOD_ID',
'and pay_status=''N'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414476029240300727)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(4511472742146027060)
,p_button_name=>'ADD_ENTITLEMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Entitlement'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:RP,1285:P1285_SOURCE_LOAD:1400'
,p_button_condition=>'PKG_SECURITY.GET_REGION_ACCESS(''FRMEMPENTITLEMENT'')>0'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414438260811300600)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'CREATE_F'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PCF_ADHOCPAYMENT',
'where ID= :P1400_ID_1',
'and pay_status=''N'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414438706383300600)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PCF_ADHOCPAYMENT',
'where ID= :P1400_ID_1',
'and pay_status=''N'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414439128385300601)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PCF_ADHOCPAYMENT',
'where ID= :P1400_ID_1',
'and pay_status=''N'''))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414439505511300602)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1400_ID_1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(414439892235300603)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PCF_ADHOCPAYMENT',
'where ID= :P1400_ID_1',
'and pay_status=''N'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(414522931403300858)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:1400:P1400_EARNINGS_PERIOD_ID,P1400_EMP_ID_F:&P1400_EARNINGS_PERIOD_ID.,&P1400_EMP_ID_F.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(414438706383300600)
,p_branch_sequence=>33
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(414522494596300857)
,p_branch_name=>'ADD_FORM_ENTRY'
,p_branch_action=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.:1400:P1400_WORK_UNIT,P1400_EARNINGS_PERIOD_ID:&POST_WORK_UNIT.,&P1400_POST_EARN_PRD.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(414439892235300603)
,p_branch_sequence=>43
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(414523295482300859)
,p_branch_name=>'Go To Page 1400'
,p_branch_action=>'f?p=&APP_ID.:1400:&SESSION.::&DEBUG.::P1400_ID_1:&P1400_ID_1.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>53
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(412089646285489010)
,p_name=>'P1400_EPFLAG'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(604618650488058399)
,p_name=>'P1400_NEW'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''!! This User is in View My Entries Only Mode !!'' a',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'u-color-4-text'
,p_begin_on_new_line=>'N'
,p_display_when=>'APP_MY_POSTING_ONLY'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(605125991471177906)
,p_name=>'P1400_POST_EARN_PRD'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :POST_EARN_PRD',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1207044263757915478)
,p_name=>'P1400_END_PAID_FOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_prompt=>'End Paid For'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select END_PAID_FOR',
'from pa_pcf_earningperiod',
'where id = :P1400_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(1209150343850215645)
,p_name=>'P1400_WORK_UNIT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_item_default=>'select null'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description||',
'(select '' (Emp Cnt: ''||count(1)||'')'' from hr_rcm_employee x where x.orgdtl_id = m.id and (x.date_Separated is null or x.date_separated > current_date) ) A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id ',
'join hr_hcf_orgstructurehd oh on oh.id = m.org_structure_id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and pkg_global_fnts.fn_sharereforg(n.org_id) = :APP_ORG_SHR_DED',
'and exists(select 1',
'            from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'            where  t.id = m.id',
'            and m.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, m.id, k.org_structure_id)       ',
'        ) ',
'and exists(select 1',
'           from hr_rcm_employee emp join pa_pcf_earningperiod earn on (emp.payment_type = earn.payment_type and emp.employment_class_id = earn.employment_class_id  and emp.org_id = earn.org_id  and emp.compute_gross = earn.compute_gross)',
'           where emp.orgdtl_id = m.id',
'           and earn.org_id= :APP_ORG_ID',
'           AND (date_separated is null or date_separated > trunc(current_date)-30)   ',
'        )        ',
'ORDER BY unit_name        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'APP_ORG_SHR_DED, APP_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>100
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
 p_id=>wwv_flow_imp.id(1209188321786215790)
,p_name=>'P1400_EARN_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_prompt=>'Earnings ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4109724205741039124)
,p_name=>'P1400_POST_COUNTER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4111096783017025005)
,p_name=>'P1400_JOB_TASK'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_prompt=>'Job Task'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACTIVITY_CODE||'' ''||description LABEL, ID',
'FROM PA_PCF_WORKACTIVITY',
'WHERE DATE_EFFECTIVE <=:P1400_START_PERIOD_PAID',
'and (end_date is null or end_date >= trunc(current_date))',
'and DATE_EFFECTIVE <= trunc(current_date)',
'AND ORG_ID=:APP_ORG_SHR_DED'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--No Job--'
,p_lov_cascade_parent_items=>'P1400_START_PERIOD_PAID'
,p_ajax_items_to_submit=>'P1400_START_PERIOD_PAID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159008573307617305)
,p_name=>'P1400_EARNINGS_PERIOD_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Earnings Period'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'        from VW_EARNNOTPAID a',
'        where exists (select 1',
'                      from vw_useraccess x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and upper(x.payment_type)=upper(a.payment_type))',
'        and exists (select 1',
'                    from hr_rcm_employee w',
'                    where w.org_id=a.org_id',
'                    and w.employment_class_id=a.employment_class_id',
'                    and upper(w.payment_type)=upper(a.payment_type)     ',
'                    and upper(w.compute_gross) = upper(a.compute_gross)',
'                    and (w.date_Separated is null or w.date_separated > current_date)',
'                    and w.orgdtl_id = nvl(:P1400_WORK_UNIT, w.orgdtl_id )',
'                    )                   ',
'        order by start_date desc'))
,p_lov_cascade_parent_items=>'P1400_WORK_UNIT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(4159010168394617307)
,p_name=>'P1400_PAY_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_prompt=>'Pay Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_grid_column_css_classes=>'display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159045885467617445)
,p_name=>'P1400_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :APP_MY_POSTING_ONLY = 1  THEN '' Records are only my entries,'' else '' Records are entries by all users for my department,'' end msg',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159046631227617447)
,p_name=>'P1400_START_PAID_FOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1239750864703687619)
,p_prompt=>'Start Paid For'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(4159047064987617448)
,p_name=>'P1400_END_PERIOD_PAID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159048270142617449)
,p_name=>'P1400_START_PERIOD_PAID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159097221149804788)
,p_name=>'P1400_RETURN_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4159097307859804789)
,p_name=>'P1400_PAY_BATCH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4367545881163900350)
,p_name=>'P1400_QUANTITY'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423402724405724382)
,p_name=>'P1400_RATE_DISPLAY'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Rate'
,p_format_mask=>'999G999G999G999G990D000'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RATE',
'FROM PA_PCF_ADHOCPAYMENT',
'WHERE ID=:P1400_ID_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423985524933017464)
,p_name=>'P1400_REMARKS_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>1000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423985888628017465)
,p_name=>'P1400_END_PERIOD_PAID_F'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'End Period Paid'
,p_source=>'END_PERIOD_PAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Represents the End Period for which the additional income belongs to. Ensure these dates are accurate when dealing with Prior periods payments.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423986331639017465)
,p_name=>'P1400_START_PERIOD_PAID_F'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Start Period Paid'
,p_source=>'START_PERIOD_PAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Represents the Start Period for which the additional income belongs to. Ensure these dates are accurate when dealing with Prior periods payments.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423987083056017466)
,p_name=>'P1400_AMOUNT_PAID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_default=>'0'
,p_prompt=>'Amount Paid'
,p_format_mask=>'999G999G999G999G990D000'
,p_source=>'AMOUNT_PAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423987476221017467)
,p_name=>'P1400_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_default=>'0'
,p_prompt=>'Rate'
,p_format_mask=>'999G999G999G999G990D000'
,p_source=>'RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423987862155017469)
,p_name=>'P1400_QUANTITY_F'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423988713616017470)
,p_name=>'P1400_BY_PASS_COMPUTATION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_default=>'N'
,p_prompt=>'By Pass Computation'
,p_source=>'BY_PASS_COMPUTATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Set to yes to make the computer accept an inputted amount paid instead of computing quantity times the rate.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423989511047017471)
,p_name=>'P1400_EMPENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Additional Income'
,p_source=>'EMPENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1400_ID IS NULL then',
'return ',
'        ''SELECT DESCRIPTION, A.ADD_INCOME_ID',
'        from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code = b.id',
'        where a.emp_id=:P1400_EMP_ID_F',
'        and a.admin_status in (''''MAN'''', ''''BOTH'''')      ',
'        order by 1'';',
'',
'else',
' return ''SELECT DESCRIPTION, A.ADD_INCOME_ID',
'        from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code=b.id',
'        where a.emp_id=:P1400_EMP_ID_F',
'        and a.admin_status in (''''MAN'''', ''''BOTH'''') ',
'        order by 1'';',
'',
'end if;'))
,p_lov_cascade_parent_items=>'P1400_EMP_ID_F'
,p_ajax_items_to_submit=>'P1400_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423989919615017472)
,p_name=>'P1400_EMP_ID_F'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_default=>'&P1400_EMP_ID.'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1400_ID is null then',
'',
'return',
'        ''SELECT  EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' a,X.ID b',
'        FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_END_PAID_FOR,''''DD-MON-YYYY''''))) X  ',
'        where X.AVL_Earn_prd = :P1400_POST_EARN_PRD',
'        and date_employed <= to_date(:P1400_END_PAID_FOR,''''DD-MON-YYYY'''')',
'        and ORGDTL_ID= NVL(:P1400_WORK_UNIT, ORGDTL_ID)',
'        order by EMPLOYEE'';         ',
'',
'else',
'',
'return',
'       ''SELECT  EMP_COMPANY_NO||''''--(''''||EMPLOYEE||'''')'''' a,X.ID b',
'        FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_END_PAID_FOR,''''DD-MON-YYYY''''))) X  ',
'        where X.AVL_Earn_prd = :P1400_POST_EARN_PRD          ',
'        and ORGDTL_ID= NVL(:P1400_WORK_UNIT, ORGDTL_ID)',
'        order by EMPLOYEE'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_ID,P1400_WORK_UNIT'
,p_ajax_items_to_submit=>'P1400_END_PAID_FOR,P1400_POST_EARN_PRD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>200
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
 p_id=>wwv_flow_imp.id(4423990656456017472)
,p_name=>'P1400_EARNINGS_PERIOD_DIS_F'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4423991045383017473)
,p_name=>'P1400_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4426741269057535958)
,p_name=>'P1400_POST_SEQUENCE_F'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_item_source_plug_id=>wwv_flow_imp.id(4336472568069942095)
,p_prompt=>'Post Sequence'
,p_source=>'POST_SEQUENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4429744321124479934)
,p_name=>'P1400_BYPASS_COMPUTE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>'N'
,p_prompt=>'Bypass Compute'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4429744371754479935)
,p_name=>'P1400_AMOUNT_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>'0'
,p_prompt=>'Rate Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4429745518806479946)
,p_name=>'P1400_QUANTITY_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4429758554443480001)
,p_name=>'P1400_BYPASS_COMPUTE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_item_default=>'N'
,p_prompt=>'Bypass Compute'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4429758718428480002)
,p_name=>'P1400_AMOUNT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_item_default=>'0'
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4435770955321163220)
,p_name=>'P1400_START_PAID_FOR_OLD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select START_PAID_FOR',
'from pa_pcf_earningperiod',
'where id = :P1400_EARNINGS_PERIOD_Id'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521091002433586409)
,p_name=>'P1400_END_PERIOD_PAID_OLD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521094336033586436)
,p_name=>'P1400_ID_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521094663649586437)
,p_name=>'P1400_ID_PREV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521095063561586437)
,p_name=>'P1400_ID_NEXT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521095500440586437)
,p_name=>'P1400_IS_SUPPLEMENTAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521095930254586438)
,p_name=>'P1400_PAY_OPTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521096278976586438)
,p_name=>'P1400_BACKUP_EARN_PRD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521096717716586439)
,p_name=>'P1400_INCREASE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521097150093586439)
,p_name=>'P1400_AMOUNT_PAID_INC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521097503755586439)
,p_name=>'P1400_PAY_STATUS_OLD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521098667648586441)
,p_name=>'P1400_EMP_ENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_prompt=>'Employee Entitlement'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, A.ADD_INCOME_ID',
'from VW_EMPENTITLECUR a join pa_pcf_incomecode b on a.income_code=b.id',
'where a.admin_status=''MAN''',
'and a.emp_id=:P1400_EMP_ID',
'and B.org_id= :APP_ORG_SHR_DED',
'and not exists (select 1',
'                from PA_PCF_ADHOCPAYMENT c',
'                where a.ADD_INCOME_ID=c.EMPENT_ID',
'                and EARNINGS_PERIOD_ID=:P1400_EARNINGS_PERIOD_ID',
'                )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_EMP_ID'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID_OLD,P1400_EMP_ID,P1400_START_PAID_FOR_OLD'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521099065200586443)
,p_name=>'P1400_EMP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMP_COMPANY_NO||''--(''||EMPLOYEE||'')'' a,X.ID b',
'        FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_START_PAID_FOR,''DD-MON-YYYY''))) X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID  and x.compute_gross_emp=z.compute_gross)',
'where z.id=(:P1400_EARNINGS_PERIOD_ID)',
'and x.ORGDTL_ID = nvl(:P1400_WORK_UNIT, x.ORGDTL_ID)',
'and not exists (select 1',
'                from pa_pcf_adhocpayment y',
'                where EMPENT_ID = ALL (select ID',
'                                    from HR_RCM_EMPENTITLE',
'                                    where emp_id=x.id) ',
'and EARNINGS_PERIOD_ID =:P1400_EARNINGS_PERIOD_ID)',
'order by EMPLOYEE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_START_PAID_FOR,P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521099456794586443)
,p_name=>'P1400_EARNINGS_PERIOD_DIS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521099921952586443)
,p_name=>'P1400_EARNINGS_PERIOD_ID_OLD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>'&P1400_EARNINGS_PERIOD_ID.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521100345903586443)
,p_name=>'P1400_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521112699590586437)
,p_name=>'P1400_POST_OPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4760131036055329268)
,p_item_default=>'BY_EMPLOYEE'
,p_prompt=>'Post Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:By Employees;BY_EMPLOYEE,By Entitlement;BY_ENTITLEMENT,Task/Job Work;BY_JOB_WORK'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521134014638586533)
,p_name=>'P1400_EMPLOYEE_ENT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_prompt=>'Employees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMP_COMPANY_NO||''--(''||EMPLOYEE||'')'' a,X.ID b',
'      FROM table(pkg_global_fnts.Get_availemployee(to_date(:P1400_START_PAID_FOR,''DD-MON-YYYY''))) X join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID  and'
||' x.compute_gross_emp=z.compute_gross)',
'      where z.id=:P1400_EARNINGS_PERIOD_ID',
'      and x.ORGDTL_ID = nvl(:P1400_WORK_UNIT, x.ORGDTL_ID)',
'      and exists (select 1',
'              from hr_rcm_employee y join HR_RCM_EMPENTITLE w on y.id=w.emp_id',
'               where w.emp_id = x.id ',
'               --  AND QUICK_ENTRY=1',
'               AND ADMIN_STATUS IN (''MAN'',''BOTH'')',
'               and org_id =:APP_ORG_ID',
'               And w.INCOME_CODE_ID = to_number(:P1400_ENTITLEMENTS_ENT)',
'               )',
'       and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=x.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'      order by EMPLOYEE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1400_START_PAID_FOR,P1400_EARNINGS_PERIOD_ID,P1400_WORK_UNIT,P1400_ENTITLEMENTS_ENT'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521134400262586533)
,p_name=>'P1400_ENTITLEMENTS_ENT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1400_EMP_ID.'
,p_prompt=>'Entitlements'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1400_POST_OPTION = ''BY_ENTITLEMENT'' then',
'return',
'        ''SELECT DISTINCT DESCRIPTION||''''(''''||B.ACCOUNT_CODE||'''')'''' DESCRIPTION, B.ID',
'        from pa_pcf_incomecode b ',
'        where B.ORG_ID =:APP_ORG_SHR_DED',
'        and TRUNC(b.START_DATE) <= TRUNC(current_date)',
'        and (trunc(b.end_date) is null or b.end_date >= trunc(current_date))',
'        and exists(select 1',
'                   from hr_rcm_empentitle x JOIN hr_rcm_employee y on y.id=x.emp_id',
'                   join pa_pcf_earningperiod c on ( c.payment_type = y.payment_type and c.employment_class_id = y.employment_class_id',
'                                                    and c.compute_gross = y.compute_gross and c.org_id = y.org_id)',
'                   where b.id = x.income_code_id',
'                   and orgdtl_id = nvl(:P1400_WORK_UNIT, orgdtl_id)',
'                   and c.id = :P1400_EARNINGS_PERIOD_ID)    ',
'        and not exists (select 1',
'                        from PA_PCF_WORKACTIVITY_DTL wktdtl',
'                        where wktdtl.income_code_id = b.id)   ',
'       order by 1'';',
'',
'else',
'return',
'        ''SELECT DISTINCT DESCRIPTION||''''(''''||B.ACCOUNT_CODE||'''')'''' DESCRIPTION, B.ID',
'        from pa_pcf_incomecode b ',
'        where B.ORG_ID =:APP_ORG_SHR_DED',
'        and TRUNC(b.START_DATE) <= TRUNC(current_date)',
'        and (trunc(b.end_date) is null or b.end_date >= trunc(current_date))',
'        and exists(select 1',
'                   from hr_rcm_empentitle x JOIN hr_rcm_employee y on y.id=x.emp_id',
'                   join pa_pcf_earningperiod c on ( c.payment_type = y.payment_type and c.employment_class_id = y.employment_class_id',
'                                                    and c.compute_gross = y.compute_gross and c.org_id = y.org_id)',
'                   where b.id = x.income_code_id',
'                    and orgdtl_id = nvl(:P1400_WORK_UNIT, orgdtl_id)',
'                   and c.id = :P1400_EARNINGS_PERIOD_ID)',
'        and exists (select 1',
'                    from PA_PCF_WORKACTIVITY wk join PA_PCF_WORKACTIVITY_DTL wkdtl on wk.id = wkdtl.workactivity_id',
'                    where  wkdtl.income_code_id  = b.id',
'                    and  wk.id  = :P1400_JOB_TASK ',
'                    )                ',
'        order by 1'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1400_POST_OPTION,P1400_JOB_TASK,P1400_WORK_UNIT'
,p_ajax_items_to_submit=>'P1400_EARNINGS_PERIOD_ID,P1400_POST_OPTION,P1400_JOB_TASK'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4521134751350586537)
,p_name=>'P1400_EARNINGS_PERIOD_ENT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_prompt=>'Earnings Period'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523940901037159120)
,p_name=>'P1400_REMARKS_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523941036936159121)
,p_name=>'P1400_POST_SEQUENCE_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4429966588677268627)
,p_item_default=>'P1400_POST_COUNTER'
,p_item_default_type=>'ITEM'
,p_prompt=>'Post Sequence'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Use Post Sequence to assign values in batches.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523954412685159179)
,p_name=>'P1400_REMARKS'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523954476650159180)
,p_name=>'P1400_POST_SEQUENCE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(4473054293744534424)
,p_item_default=>'P1400_POST_COUNTER'
,p_item_default_type=>'ITEM'
,p_prompt=>'Post Sequence'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(414492658195300791)
,p_validation_name=>'chk_null_job'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P1400_PAY_OPTION =''BY_JOB_WORK'' AND :P1400_JOB_TASK IS NULL then',
'        return ''You must select a Job task before selecting an entitlement.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_ENT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(414492299793300790)
,p_validation_name=>'chk_by_pass_remarks'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if (:P1400_BYPASS_COMPUTE =''Y'' OR :P1400_BYPASS_COMPUTE_1 =''Y'') AND (:P1400_REMARKS is null or :P1400_REMARKS_1 is null ) then',
'        return ''You must enter a remark for the reason you are by passing the rate!'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_ENT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414493440299300793)
,p_name=>'populate_period_date'
,p_event_sequence=>9
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414493828542300795)
,p_event_id=>wwv_flow_imp.id(414493440299300793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_END_PERIOD_PAID_OLD,P1400_START_PAID_FOR_OLD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT start_date,end_date, START_PAID_FOR',
'FROM PA_PCF_EARNINGPERIOD',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1400_EARNINGS_PERIOD_ID_OLD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414494189211300796)
,p_name=>'SET_VALUE_AMOUNT'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EMPENT_ID'
,p_condition_element=>'P1400_EMPENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414494675120300798)
,p_event_id=>wwv_flow_imp.id(414494189211300796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_RATE,P1400_QUANTITY_F'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  case when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y'' then  case when income_code =''NR'' then pkg_global_fnts.Fn_Daily(e.ID, to_date(:P1400_START_PERIOD_PAID_F), to_date(:P1400_START_PERIOD_PAID_F)) * Hourly_Rate_Multiplier ',
'                                                                                                               else  PKG_GLOBAL_FNTS.FN_HOURLYRATE(to_number(E.id), to_date(:P1400_START_PERIOD_PAID_F)) * Hourly_Rate_Multiplier end',
'             when b.USE_STANDARD_HOURS=''Y'' and compute_gross !=''DAILY_RATE''  then PKG_GLOBAL_FNTS.FN_HOURLYRATE(to_number(E.id),to_date(:P1400_START_PERIOD_PAID_F)) * Hourly_Rate_Multiplier',
'                   else a.AMOUNT  end AMT ',
', CASE WHEN B.USE_STANDARD_HOURS=''Y''  AND compute_gross !=''DAILY_RATE'' and b.income_code=''NR'' THEN TO_NUMBER(RULE_VALUE)    ',
'      when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y''  AND b.income_code=''NR'' and payment_type=''FORTNIGHTLY'' then 10',
'       when compute_gross =''DAILY_RATE'' and b.USE_STANDARD_HOURS=''Y''  AND b.income_code=''NR'' and payment_type=''WEEKLY'' then 5',
'ELSE 0 END QTY',
'from hr_rcm_employee e join  hr_rcm_empentitle a on e.id=a.emp_id',
'JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'join hr_rcm_emprule c on c.emp_id=e.id',
'WHERE A.ID=:P1400_EMPENT_ID',
'and a.quick_entry=1',
'AND  UPPER(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(RULE_OPTION,''TABLE_VALUE''))=''STANDARD_HOURS''',
'AND (to_date(:P1400_START_PERIOD_PAID_F) BETWEEN TRUNC(C.START_DATE) AND TRUNC(C.END_DATE)',
'    OR  (TRUNC(C.START_DATE) <= TRUNC(current_date)',
'    and trunc(C.end_date) is null or C.end_date >= trunc(current_date)))',
'    '))
,p_attribute_07=>'P1400_EMPENT_ID,P1400_START_PERIOD_PAID_F'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414495153013300798)
,p_name=>'comp_amt'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_triggering_element=>'QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414495626490300800)
,p_event_id=>wwv_flow_imp.id(414495153013300798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :QUANTITY * replace(replace(:RATE,''$'',''''),'','','''')  a',
'from dual'))
,p_attribute_07=>'QUANTITY,RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414495980416300800)
,p_name=>'COMP_AMT_2'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_triggering_element=>'RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414496543305300801)
,p_event_id=>wwv_flow_imp.id(414495980416300800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT_PAID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :QUANTITY * replace(replace(:RATE,''$'',''''),'','','''')  a',
'from dual'))
,p_attribute_07=>'QUANTITY,RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414496947199300802)
,p_name=>'dy_quickentry_postby_entitlement'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(414477578105300730)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414497442436300803)
,p_event_id=>wwv_flow_imp.id(414496947199300802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'enf+bypass_remarks'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remarks = document.getElementById(''P1400_REMARKS'');',
'var bypass_compute_Y = document.getElementById(''P1400_BYPASS_COMPUTE_Y'').checked;',
'',
'if(remarks.value === '''' && bypass_compute_Y){',
'    apex.message.clearErrors();',
'',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: ["page"],',
'        message: "You must enter a remark for the reason you are by passing the rate!",',
'        unsafe: false',
'    }',
'    ]);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414497881418300805)
,p_event_id=>wwv_flow_imp.id(414496947199300802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'    v_sqlcode varchar2(25);',
'   v_sqlerrm varchar2(2000); v_quick_post number(1):=0;',
'',
'BEGIN',
'',
' if not (:P1400_BYPASS_COMPUTE_1 =''Y'' AND  :P1400_REMARKS_1 is null) then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1400_EMPLOYEE_ENT);',
'',
'  ',
'          select  quick_post into  v_quick_post',
'          from pa_pcf_earningperiod',
'          where id =  :P1400_EARNINGS_PERIOD_ID;',
'  ',
'FOR i IN 1..l_selected.COUNT',
'',
'LOOP',
'   ',
'   BEGIN',
'        INSERT INTO PA_PCF_ADHOCPAYMENT (WORKACTIVITY_ID, REMARKS, POST_SEQUENCE, quantity, RATE, amount_paid,by_pass_computation,  EMP_ID, EMPENT_ID, ',
'         EARNINGS_PERIOD_ID, START_PERIOD_PAID, END_PERIOD_PAID)  ',
'      ',
'        select nvl(:P1400_JOB_TASK,0), :P1400_REMARKS, :P1400_POST_SEQUENCE, case when USE_STANDARD_HOURS=''Y'' and v_quick_post = 1 then qty else to_number(:P1400_QUANTITY) end , ',
'        case WHEN :P1400_BYPASS_COMPUTE = ''Y'' then TO_NUMBER(:P1400_AMOUNT) ELSE  RATE END,  to_number(:P1400_AMOUNT),',
'        :P1400_BYPASS_COMPUTE,l_selected(i), entitle_id, :P1400_EARNINGS_PERIOD_ID, :P1400_START_PERIOD_PAID, :P1400_END_PERIOD_PAID',
'        from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID ,null,:P1400_ENTITLEMENTS_ENT,  :APP_ORG_ID, l_selected(i)))',
'        x join hr_rcm_empentitle y on y.id=x.entitle_id',
'        join pa_pcf_incomecode w on w.id = y.income_code_id;   ',
'',
'exception',
'  when others then ',
'      v_sqlcode := sqlcode;',
'      v_sqlerrm := sqlerrm;',
'      pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating on page 1400 by entitlements'' ,''page 1400'',NULL);                                        ',
'end;',
'  END LOOP;  ',
'commit;',
'',
'    :P1400_JOB_TASK := NULL;',
'    :P1400_ENTITLEMENTS_ENT := NULL;',
'    :P1400_EMPLOYEE_ENT := NULL;',
'    :P1400_BYPASS_COMPUTE := NULL;',
'END IF;',
'',
'end;'))
,p_attribute_02=>'P1400_JOB_TASK,P1400_EARNINGS_PERIOD_ID,P1400_ENTITLEMENTS_ENT,P1400_REMARKS,P1400_START_PERIOD_PAID,P1400_END_PERIOD_PAID,P1400_AMOUNT,P1400_BYPASS_COMPUTE,P1400_POST_SEQUENCE,P1400_QUANTITY,P1400_EMPLOYEE_ENT'
,p_attribute_03=>'P1400_JOB_TASK ,P1400_ENTITLEMENTS_ENT ,P1400_EMPLOYEE_ENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'| Column 1 | Column 2 | Column 3 |',
'| -------- | -------- | -------- |',
'| Text     | Text     | Text     |',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414498423902300807)
,p_event_id=>wwv_flow_imp.id(414496947199300802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414498784811300807)
,p_name=>'dy_quickentry_postby_emp'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(414477206408300730)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414499348007300808)
,p_event_id=>wwv_flow_imp.id(414498784811300807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'enf+bypass_remarks'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remarks = document.getElementById(''P1400_REMARKS_1'');',
'var bypass_compute_Y = document.getElementById(''P1400_BYPASS_COMPUTE_1_Y'').checked;',
'',
'if(remarks.value === '''' && bypass_compute_Y){',
'    apex.message.clearErrors();',
'',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: ["page"],',
'        message: "You must enter a remark for the reason you are by passing the rate!",',
'        unsafe: false',
'    }',
'    ]);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414499829764300810)
,p_event_id=>wwv_flow_imp.id(414498784811300807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  L_Selected Apex_Application_Global.Vc_Arr2;',
'     v_sqlcode varchar2(25);',
'   v_sqlerrm varchar2(2000); ',
'   v_quick_post number(1):=0;',
'',
'Begin',
'',
' if not (:P1400_BYPASS_COMPUTE_1 =''Y'' AND  :P1400_REMARKS_1 is null) then',
'',
'     L_Selected := Apex_Util.String_To_Table(:P1400_EMP_ENT);',
'',
'        select  quick_post into  v_quick_post',
'        from pa_pcf_earningperiod',
'        where id =  :P1400_EARNINGS_PERIOD_ID;',
'     ',
'      For I In 1..L_Selected.Count',
'      Loop',
'      begin',
'     execute immediate ''ALTER SESSION SET NLS_DATE_FORMAT = ''''DD-MON-YYYY'''''';',
'        Insert Into PA_PCF_ADHOCPAYMENT(REMARKS, POST_SEQUENCE, RATE, QUANTITY,AMOUNT_PAID,',
'                                        by_pass_computation, EMP_ID, EMPENT_ID, EARNINGS_PERIOD_ID, ',
'                                        START_PERIOD_PAID, END_PERIOD_PAID )',
'',
'        select :P1400_REMARKS_1, :P1400_POST_SEQUENCE_1, case WHEN :P1400_BYPASS_COMPUTE_1 = ''Y'' then TO_NUMBER(:P1400_AMOUNT_1) ELSE  RATE END, case when USE_STANDARD_HOURS=''Y'' and v_quick_post =1 then qty else to_number(:P1400_QUANTITY_1) end , ',
'         RATE * case when USE_STANDARD_HOURS=''Y'' then qty else to_number(:P1400_QUANTITY_1) end ,  :P1400_BYPASS_COMPUTE_1, :P1400_EMP_ID,  L_Selected(I), :P1400_EARNINGS_PERIOD_ID, ',
'               :P1400_START_PERIOD_PAID, :P1400_END_PERIOD_PAID',
'        from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID , ',
'                                                    L_Selected(I), ',
'                                                    null,',
'                                                    :APP_ORG_ID, ',
'                                                    :P1400_EMP_ID)) x join hr_rcm_empentitle y on y.id=x.entitle_id',
'         join pa_pcf_incomecode w on w.id = y.income_code_id;     ',
'      ',
'       exception',
'      when others then ',
'          v_sqlcode := sqlcode;',
'          v_sqlerrm := sqlerrm;',
'          pkg_biz_rules.log_message(v_sqlcode ,v_sqlerrm ,''error occurred while generating on page 1400 by employee'' ,''page 1400'',NULL);                                        ',
'    end;',
'    commit;',
'      End Loop;  ',
'',
'        :P1400_EMP_ENT:=Null;',
'        :P1400_QUANTITY_1 :=1;',
'        :P1400_BYPASS_COMPUTE_1 := ''N'';',
'        :P1400_AMOUNT_1 := 0;',
'        :P1400_REMARKS_1:=Null;',
'        :P1400_POST_SEQUENCE_1:=Null;     ',
'',
'END IF;',
'',
'End;',
''))
,p_attribute_02=>'P1400_BYPASS_COMPUTE_1,P1400_AMOUNT_1,P1400_REMARKS_1,P1400_POST_SEQUENCE_1,P1400_EMP_ID,P1400_EARNINGS_PERIOD_ID,P1400_START_PERIOD_PAID,P1400_END_PERIOD_PAID,P1400_EMP_ENT,P1400_QUANTITY_1'
,p_attribute_03=>'P1400_EMP_ENT,P1400_QUANTITY_1,P1400_BYPASS_COMPUTE_1 ,P1400_AMOUNT_1 ,P1400_REMARKS_1,,P1400_POST_SEQUENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'| Column 1 | Column 2 | Column 3 |',
'| -------- | -------- | -------- |',
'| Text     | Text     | Text     |',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414500342043300811)
,p_event_id=>wwv_flow_imp.id(414498784811300807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded selected entitlements for the current employee'' );',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414500839671300812)
,p_event_id=>wwv_flow_imp.id(414498784811300807)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414501173651300813)
,p_name=>'dy_showhide_regions'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_POST_OPTION'
,p_condition_element=>'P1400_POST_OPTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'BY_ENTITLEMENT,BY_JOB_WORK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(412089784088489012)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'set_ent_earn'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_EARNINGS_PERIOD_ENT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EARN_DESCRIPTION',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1400_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414501753816300814)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414477206408300730)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414502231225300815)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473054293744534424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414502716647300816)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414477578105300730)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414503216920300817)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4429966588677268627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414503664278300818)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4429966588677268627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414504243718300819)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4429966588677268627)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414504667021300820)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473054293744534424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414505206871300821)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473054293744534424)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414505731476300823)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414506202735300823)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>'show_entitle_btn'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414477578105300730)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414506669113300825)
,p_event_id=>wwv_flow_imp.id(414501173651300813)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'hide_Emp_btn'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414477206408300730)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414507064700300826)
,p_name=>'dy_enable_disable'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_BYPASS_COMPUTE'
,p_condition_element=>'P1400_BYPASS_COMPUTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414507635314300827)
,p_event_id=>wwv_flow_imp.id(414507064700300826)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414508063321300828)
,p_event_id=>wwv_flow_imp.id(414507064700300826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414508530868300828)
,p_name=>'dy_enable_disable_1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_BYPASS_COMPUTE_1'
,p_condition_element=>'P1400_BYPASS_COMPUTE_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414509031152300830)
,p_event_id=>wwv_flow_imp.id(414508530868300828)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414509521161300831)
,p_event_id=>wwv_flow_imp.id(414508530868300828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414509926129300831)
,p_name=>'dy_setvalue'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1400_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414510385545300833)
,p_event_id=>wwv_flow_imp.id(414509926129300831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_PAY_STATUS, P1400_START_PERIOD_PAID, P1400_START_PAID_FOR, P1400_END_PERIOD_PAID, P1400_EARNINGS_PERIOD_DIS, P1400_EARN_ID,  P1400_START_PERIOD_PAID_F, P1400_END_PERIOD_PAID_F, P1400_END_PAID_FOR, P1400_EARNINGS_PERIOD_DIS_F'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Earn_pay_status, start_date, start_paid_for, end_date, EARN_DESCRIPTION,id, start_date STDATE,  ',
'end_date ENDDATE, END_paid_for, EARN_DESCRIPTION form',
'from VW_EARNALL',
'where id=:P1400_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1400_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414511412743300835)
,p_event_id=>wwv_flow_imp.id(414509926129300831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select id INTO :POST_EARN_PRD',
'    from VW_EARNALL',
'    where id = :P1400_EARNINGS_PERIOD_ID;',
'',
'END;'))
,p_attribute_02=>'P1400_EARNINGS_PERIOD_ID,POST_EARN_PRD'
,p_attribute_03=>'POST_EARN_PRD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414510953478300834)
,p_event_id=>wwv_flow_imp.id(414509926129300831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414511824197300835)
,p_name=>'disable_whateverthefuck'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_triggering_element=>'BY_PASS_COMPUTATION'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'BY_PASS_COMPUTATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414512353747300836)
,p_event_id=>wwv_flow_imp.id(414511824197300835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414512807549300837)
,p_event_id=>wwv_flow_imp.id(414511824197300835)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414513251622300838)
,p_name=>'set_rate'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_triggering_element=>'BY_PASS_COMPUTATION'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'BY_PASS_COMPUTATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414513657775300839)
,p_event_id=>wwv_flow_imp.id(414513251622300838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select rate',
'    from table(pKG_GENERATORS.gen_Adhocposting(:P1400_START_PERIOD_PAID,:EMPENT_ID, null, :APP_ORG_ID, :EMP_ID));'))
,p_attribute_07=>'EMP_ID,EMPENT_ID,P1400_START_PERIOD_PAID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414514067948300840)
,p_name=>'show_hide_job'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_POST_OPTION'
,p_condition_element=>'P1400_POST_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BY_JOB_WORK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414514606835300841)
,p_event_id=>wwv_flow_imp.id(414514067948300840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_JOB_TASK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414515148069300842)
,p_event_id=>wwv_flow_imp.id(414514067948300840)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_JOB_TASK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414515514138300843)
,p_name=>'refresh_entries'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(414478052966300731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414515966062300844)
,p_event_id=>wwv_flow_imp.id(414515514138300843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414516447998300844)
,p_name=>'REFRESH_POSTED'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_WORK_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414517027302300845)
,p_event_id=>wwv_flow_imp.id(414516447998300844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(424516611801842413)
,p_event_id=>wwv_flow_imp.id(414516447998300844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'assign_work_unit'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'POST_WORK_UNIT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null ',
'from dual'))
,p_attribute_07=>'POST_WORK_UNIT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414517416433300846)
,p_name=>'show_hide_generate_ex'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1400_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414517939265300847)
,p_event_id=>wwv_flow_imp.id(414517416433300846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414478052966300731)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414518456038300848)
,p_event_id=>wwv_flow_imp.id(414517416433300846)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(414478052966300731)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414518822423300849)
,p_name=>'COMPUTE_AMOUNT'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_QUANTITY_F'
,p_condition_element=>'P1400_QUANTITY_F'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414519322786300850)
,p_event_id=>wwv_flow_imp.id(414518822423300849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_PAID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1400_QUANTITY_F * REPLACE(:P1400_RATE,'','','''')'
,p_attribute_07=>'P1400_QUANTITY_F,P1400_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' IF nvl(:P1400_BY_PASS_COMPUTATION,''N'') =''N'' AND :P1400_QUANTITY_F = 1 THEN',
'     RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' ELSIF nvl(:P1400_BY_PASS_COMPUTATION,''N'') =''N'' AND :P1400_QUANTITY_F != 1 THEN',
'      RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' ELSE',
'     RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414519692283300851)
,p_name=>'COMPUTE_AMOUNT'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_RATE'
,p_condition_element=>'P1400_QUANTITY_F'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414520185270300852)
,p_event_id=>wwv_flow_imp.id(414519692283300851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_AMOUNT_PAID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P1400_QUANTITY_F * REPLACE(:P1400_RATE,'','','''')'
,p_attribute_07=>'P1400_QUANTITY_F,P1400_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' IF nvl(:P1400_BY_PASS_COMPUTATION,''N'') =''N'' AND :P1400_QUANTITY_F = 1 THEN',
'     RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' ELSIF nvl(:P1400_BY_PASS_COMPUTATION,''N'') =''N'' AND :P1400_QUANTITY_F != 1 THEN',
'      RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' ELSE',
'     RETURN :P1400_QUANTITY_F * :P1400_RATE;',
' END IF;',
'END;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414520565576300853)
,p_name=>'REFRESH_LISTING'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414521061780300854)
,p_event_id=>wwv_flow_imp.id(414520565576300853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4337042944502518579)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(414521543178300855)
,p_name=>'fresh_earn_form'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1400_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(414522007828300856)
,p_event_id=>wwv_flow_imp.id(414521543178300855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1400_EARNINGS_PERIOD_DIS_F'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414449697795300641)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4336472568069942095)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Automatic Row Processing'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>193047141213688947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414476491248300728)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4511472742146027060)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Entries with quantity or Rate (Check By Pass to exclude system rates) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>193073934666689034
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414493009718300792)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COUNT_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P1400_POST_COUNTER := :P1400_POST_COUNTER +1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_ENT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>193090453136689098
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414450112622300642)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4336472568069942095)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Show_adhoc_from_data'
,p_internal_uid=>193047556040688948
);
wwv_flow_imp.component_end;
end;
/
