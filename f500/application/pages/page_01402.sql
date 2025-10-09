prompt --application/pages/page_01402
begin
--   Manifest
--     PAGE: 01402
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
 p_id=>1402
,p_name=>'frmGenerateLeave'
,p_step_title=>'Generate Leave'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696840333518752316)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694087305891731093)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.id,',
'    a.emp_id,',
'    a.leave_type_id,',
'    a.quantity,',
'    a.working_days,',
'    a.max_accumulation,',
'    a.accumulative,',
'    a.reduce_sal_overspent,',
'    a.start_date,',
'    a.end_date,',
'    a.entry_date,',
'    a.entered_by,',
'    a.last_changed_by,',
'    a.last_changed_date,',
'    a.machine_insert,',
'    a.machine_update,',
'    a.migrate_pk,',
'    a.allow_leave_overdraft,',
'    a.leave_rate,',
'    a.leave_earn',
'FROM  hr_rcm_empleaveentitle a join hr_rcm_employee b on b.id = a.emp_id',
'where upper(b.payment_type) = :P1402_PAYMENT_FREQUENCY',
'and employment_class_id = :P1402_EMPLOYMENT_CLASS',
'and b.org_id = :APP_ORG_ID',
'AND A.start_date= :P1402_DATE_EFFECTIVE',
'AND trunc(a.entry_date) = :P1402_EXECUTE_ON'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1402_PAYMENT_FREQUENCY,P1402_EMPLOYMENT_CLASS,P1402_DATE_EFFECTIVE,P1402_EXECUTE_ON'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3693062929061170312)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_detail_link=>'f?p=&APP_ID.:1284:&SESSION.::&DEBUG.:RP,1284:P1284_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>72942434025232828
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062818002170311)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062677323170310)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062632138170309)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3853934195792092883)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062557943170308)
,p_db_column_name=>'QUANTITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062403836170307)
,p_db_column_name=>'WORKING_DAYS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Working Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062318795170306)
,p_db_column_name=>'MAX_ACCUMULATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Max Accumulation'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062201245170305)
,p_db_column_name=>'ACCUMULATIVE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Accumulative'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693062093259170304)
,p_db_column_name=>'REDUCE_SAL_OVERSPENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reduce Sal Overspent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061969125170303)
,p_db_column_name=>'START_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061957314170302)
,p_db_column_name=>'END_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061825319170301)
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
 p_id=>wwv_flow_imp.id(3693061747176170300)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061620564170299)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061485134170298)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061388643170297)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061346767170296)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061216109170295)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061114756170294)
,p_db_column_name=>'ALLOW_LEAVE_OVERDRAFT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Allow Leave Overdraft'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693061008462170293)
,p_db_column_name=>'LEAVE_RATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Leave Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3693060910732170292)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Leave Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3693004380293250616)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'730010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:LEAVE_TYPE_ID:QUANTITY:WORKING_DAYS:MAX_ACCUMULATION:ACCUMULATIVE:REDUCE_SAL_OVERSPENT:START_DATE:END_DATE:ALLOW_LEAVE_OVERDRAFT:LEAVE_RATE:LEAVE_EARN:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694087383643731094)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(3742928133070324572)
,p_plug_name=>'Generate Leave Entitlements'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"LEAVE_TYPE_ID",',
'"QUANTITY",',
'"WORKING_DAYS",',
'"MAX_ACCUMULATION",',
'"ACCUMULATIVE",',
'"REDUCE_SAL_OVERSPENT"',
'from "#OWNER#"."TMP_PMG_EMPLVEENT"',
''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3833307381392011858)
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
 p_id=>wwv_flow_imp.id(3833307485700011859)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3833307533357011860)
,p_name=>'REDUCE_SAL_OVERSPENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REDUCE_SAL_OVERSPENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reduce sal overspent'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;1,No;0'
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
 p_id=>wwv_flow_imp.id(3833307661688011861)
,p_name=>'ACCUMULATIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCUMULATIVE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Accumulative'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;1,No;0'
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
 p_id=>wwv_flow_imp.id(3833307819092011862)
,p_name=>'MAX_ACCUMULATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_ACCUMULATION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max accumulation'
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
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3854223576379725113)
,p_name=>'WORKING_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKING_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Working days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3854223635630725114)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3854223732233725115)
,p_name=>'LEAVE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853934195792092883)
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
 p_id=>wwv_flow_imp.id(3854223916291725116)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3854223950233725117)
,p_internal_uid=>20017772494874146
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
 p_id=>wwv_flow_imp.id(3833296174515011540)
,p_interactive_grid_id=>wwv_flow_imp.id(3854223950233725117)
,p_static_id=>'18213'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3833296023057011538)
,p_report_id=>wwv_flow_imp.id(3833296174515011540)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833287701803010787)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3833307485700011859)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833292693443011489)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3833307533357011860)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833293211021011494)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3833307661688011861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833293633849011496)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3833307819092011862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833294124863011499)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3854223576379725113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833294701189011504)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3854223635630725114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833295200143011508)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3854223732233725115)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3833295618970011528)
,p_view_id=>wwv_flow_imp.id(3833296023057011538)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3854223916291725116)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3742918845563227865)
,p_plug_name=>'Position Selector'
,p_parent_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_region_template_options=>'#DEFAULT#:::t-Region--accent2::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3757203967087621379)
,p_plug_name=>'Exclusions'
,p_parent_plug_id=>wwv_flow_imp.id(3742918845563227865)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833328682976050411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833329035577050413)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit and Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3833315591759050385)
,p_branch_action=>'f?p=&APP_ID.:1402:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(571187443713953011)
,p_name=>'P1402_NEW'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_item_default=>'Click Add Row to Configure Leave Types, save the data entered in grid before generating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3693063037570170313)
,p_name=>'P1402_EXECUTE_ON'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'Execute On'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(3833318238664050392)
,p_name=>'P1402_POSITION_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3742918845563227865)
,p_prompt=>'Position'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||(select JOB_CODE from HR_HCF_JOB where ID=A.job_id)||'' (''||initcap(unit_name)||'') At ''||LOCATION_code a, a.id b',
'from HR_HCF_POSITION A',
'JOIN HR_HCF_WORKLOCATION b on b.id=a.DEF_WORK_LOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=A.ORGDTL_ID',
'where B.org_id=:P1402_ORGANISATION',
'and exists (select 1',
'              from hr_rcm_employee d',
'              where a.id=d.position_id',
'              and payment_type=:P1402_PAYMENT_FREQUENCY',
'              and employment_class_id  =:P1402_EMPLOYMENT_CLASS',
'              )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1402_ORGANISATION,P1402_PAYMENT_FREQUENCY,P1402_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833324650563050403)
,p_name=>'P1402_YRS_OF_SERVICE1'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_item_default=>'0'
,p_prompt=>'and'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Zero means years of service is not applicable.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833325598846050404)
,p_name=>'P1402_YRS_OF_SERVICE'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_item_default=>'0'
,p_prompt=>'Yrs Of Service between'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Zero means years of service is not applicable.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833325929676050405)
,p_name=>'P1402_ALL_POSITION_LOCATION'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'All Positions'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3833326289156050405)
,p_name=>'P1402_DATE_EFFECTIVE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'Date Created'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3833326686415050406)
,p_name=>'P1402_EMPLOYMENT_CLASS'
,p_is_required=>true
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) X',
'WHERE exists (select 1',
'             FROM VW_USERACCESS A',
'             where x.ID=a.employment_class_id',
'             AND ORG_ID=:P1402_ORGANISATION)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_lov_cascade_parent_items=>'P1402_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833327075791050406)
,p_name=>'P1402_PAYMENT_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,PAYMENT_TYPE B',
'FROM VW_USERACCESS',
'WHERE ORG_ID=:P1402_ORGANISATION',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_lov_cascade_parent_items=>'P1402_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833327517549050409)
,p_name=>'P1402_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3833332936552050424)
,p_name=>'P1402_EXCLUSION'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3757203967087621379)
,p_prompt=>'Select Employees to Exclude'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp No.: ''||Emp_company_no||'')'' Employee,id',
'from VW_AVAILEMPLOYEE a',
'where a.position_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P1402_POSITION_LOCATION,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(50) path ''/'')',
')',
'OR',
'(',
' upper(payment_type)= :P1402_PAYMENT_FREQUENCY',
'AND employment_class_id = :P1402_EMPLOYMENT_CLASS',
'and org_id= :P1402_ORGANISATION',
'and date_employed <=:P1402_DATE_EFFECTIVE',
'and pkg_global_fnts.fn_calcage(date_employed, trunc(current_date)) between :P1402_YRS_OF_SERVICE and :P1402_YRS_OF_SERVICE1); '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1402_POSITION_LOCATION,P1402_PAYMENT_FREQUENCY,P1402_EMPLOYMENT_CLASS,P1402_ORGANISATION,P1402_DATE_EFFECTIVE,P1402_YRS_OF_SERVICE,P1402_YRS_OF_SERVICE1'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3852152981343449974)
,p_name=>'P1402_UPDATE_EXISTING'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(3742928133070324572)
,p_prompt=>'Update Existing'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3833317070225050390)
,p_name=>'show_hide_button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1402_YRS_OF_SERVICE1'
,p_condition_element=>'P1402_YRS_OF_SERVICE1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833316613033050388)
,p_event_id=>wwv_flow_imp.id(3833317070225050390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742918845563227865)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833316122045050386)
,p_event_id=>wwv_flow_imp.id(3833317070225050390)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742918845563227865)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3833306629820011851)
,p_name=>'show_hide_leave'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1402_EMPLOYMENT_CLASS'
,p_condition_element=>'P1402_EMPLOYMENT_CLASS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833306518332011849)
,p_event_id=>wwv_flow_imp.id(3833306629820011851)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833329035577050413)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3833306598905011850)
,p_event_id=>wwv_flow_imp.id(3833306629820011851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833329035577050413)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3713170784184103895)
,p_name=>'sho_hide_submit'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1402_ALL_POSITION_LOCATION'
,p_condition_element=>'P1402_ALL_POSITION_LOCATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713170926972103896)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833329035577050413)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713171388510103901)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3757203967087621379)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713171071598103898)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742918845563227865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713171305104103900)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742918845563227865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713170979694103897)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3833329035577050413)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3713171178353103899)
,p_event_id=>wwv_flow_imp.id(3713170784184103895)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3757203967087621379)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3833317453691050390)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_rejected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
'IF :P1402_ALL_POSITION_LOCATION is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1402_POSITION_LOCATION);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	insert into tmp_genpositionlocation(position_ID) ',
'        values(l_selected(i));',
'  END LOOP;  ',
'',
'BEGIN',
'  l_rejected := APEX_UTIL.STRING_TO_TABLE(:P1401_EXCLUSION);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	insert into TMP_EMP(emp_id)',
'        values(l_rejected(i));',
'  end loop;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'END;',
'',
'end if;',
'',
'',
'pkg_generators.sp_QuickGenerateLv',
'                (',
'                    :P1402_PAYMENT_FREQUENCY',
'                    ,:P1402_EMPLOYMENT_CLASS',
'                    ,:P1402_ORGANISATION',
'                    ,:P1402_DATE_EFFECTIVE',
'                    ,:P1402_ALL_POSITION_LOCATION',
'                    ,:P1402_UPDATE_EXISTING',
'                );',
'',
'',
'  :P1402_POSITION_LOCATION:=null;',
'  :P1402_EXCLUSION:=null;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3833329035577050413)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P1402_ORGANISATION is not null and :P1402_YRS_OF_SERVICE = 0 and :P1402_YRS_OF_SERVICE1 = 0 then',
'  return TRUE;',
'else',
'  return FALSE;',
'end if;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Successful generation of Leave entitlements'
,p_internal_uid=>3190122903911442122
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3833317849529050391)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data_yrs_srv'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'',
'if :P1402_ORGANISATION is not null and to_number(:P1402_YRS_OF_SERVICE) > 0 and to_number(:P1402_YRS_OF_SERVICE1) > 0 then',
'',
'pkg_generators.sp_QuickGenerateLvYrsSRV',
'                (',
'                    :P1402_PAYMENT_FREQUENCY',
'                    ,:P1402_EMPLOYMENT_CLASS',
'                    ,:P1402_ORGANISATION',
'                    ,:P1402_DATE_EFFECTIVE',
'                    ,:P1402_YRS_OF_SERVICE',
'                    ,:P1402_YRS_OF_SERVICE1',
'                    ,:P1402_UPDATE_EXISTING',
'                );',
'',
'execute immediate ''truncate table tmp_pmg_emplveent'';',
'end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3833329035577050413)
,p_process_success_message=>'Successful generation of Leave entitlements'
,p_internal_uid=>3190123299749442123
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3833307252247011857)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3742928133070324572)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Generate Leave Entitlements (Click Add Row to Configure Leave Types) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3190112702467403589
);
wwv_flow_imp.component_end;
end;
/
