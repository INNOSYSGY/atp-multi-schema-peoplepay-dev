prompt --application/pages/page_01361
begin
--   Manifest
--     PAGE: 01361
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
 p_id=>1361
,p_name=>'rptProcessLog'
,p_step_title=>'Listing of Process Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475973010841706787)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3470914819605131617)
,p_plug_name=>'Logs of System Processes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_APU_PROCESSFEEDBACKLOG.ID as ID,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_TYPE as PROCESS_TYPE,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_NAME as PROCESS_NAME,',
'    HR_APU_PROCESSFEEDBACKLOG.EMP_ID as EMP_ID,',
'    HR_APU_PROCESSFEEDBACKLOG.MESSAGE as MESSAGE,',
'    HR_APU_PROCESSFEEDBACKLOG.LOG_DATE as LOG_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.AFFECTED_TABLE as AFFECTED_TABLE,',
'    HR_APU_PROCESSFEEDBACKLOG.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    HR_APU_PROCESSFEEDBACKLOG.EXECTIME_STAMP as EXECTIME_STAMP,',
'    HR_APU_PROCESSFEEDBACKLOG.PAYROLL_RUN_NUMBER as PAYROLL_RUN_NUMBER,',
'    HR_APU_PROCESSFEEDBACKLOG.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_APU_PROCESSFEEDBACKLOG.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_APU_PROCESSFEEDBACKLOG.ENTERED_BY as ENTERED_BY,',
'    HR_APU_PROCESSFEEDBACKLOG.ENTRY_DATE as ENTRY_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_APU_PROCESSFEEDBACKLOG.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_APU_PROCESSFEEDBACKLOG.PROCESS_ID as PROCESS_ID ',
' from HR_APU_PROCESSFEEDBACKLOG HR_APU_PROCESSFEEDBACKLOG',
'where org_id=:APP_ORG_ID',
'AND PROCESS_TYPE =:P1361_PROCESS_TYPE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1361_PROCESS_TYPE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3470914729404131617)
,p_name=>'Logs of System Processes'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>133142372101590351
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585221992549193543)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585221502107193543)
,p_db_column_name=>'PROCESS_TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Process Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585221123202193542)
,p_db_column_name=>'PROCESS_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Process Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585220749664193542)
,p_db_column_name=>'EMP_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585220381995193542)
,p_db_column_name=>'MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Message Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585219976277193542)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LOG_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585219512864193541)
,p_db_column_name=>'AFFECTED_TABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Affected Table'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AFFECTED_TABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585219106705193541)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ern Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585218735266193541)
,p_db_column_name=>'EXECTIME_STAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Exectime Stamp'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'EXECTIME_STAMP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585218325812193541)
,p_db_column_name=>'PAYROLL_RUN_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Run'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_RUN_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585217937131193541)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585217560647193540)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585217125366193540)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585216704479193540)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585216330771193540)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585215934700193539)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3585215542825193539)
,p_db_column_name=>'PROCESS_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Proc ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3470912610302126440)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'188419'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PAYROLL_RUN_NUMBER:PROCESS_TYPE:PROCESS_NAME:MESSAGE:EARNINGS_PERIOD_ID:AFFECTED_TABLE:EXECTIME_STAMP:LAST_CHANGED_BY:PROCESS_ID:ID:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'ASC'
,p_break_on=>'PROCESS_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'PROCESS_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3585214763691193539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3470914819605131617)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3630750090401838277)
,p_name=>'P1361_PROCESS_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3470914819605131617)
,p_prompt=>'Process Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT   PROCESS_TYPE, PROCESS_TYPE A',
' from HR_APU_PROCESSFEEDBACKLOG ',
'where org_id=:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp.component_end;
end;
/
