prompt --application/pages/page_02018
begin
--   Manifest
--     PAGE: 02018
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
 p_id=>2018
,p_name=>'rptReleaseExecution'
,p_step_title=>'Listing of Release Executions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3546746441632000326)
,p_plug_name=>'Listing Release Executions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "RELEASE_EXECUTION"."ID" "ID", ',
'(SELECT SOFTWARE_NAME||'':- ''||RELEASE_NAME||''(Version:''||VERSION_NO||'')'' a',
'FROM RELEASE_HEAD',
'WHERE ID= "RELEASE_EXECUTION"."RELEASE_HD_ID") "RELEASE_HD_ID",   ',
'   "RELEASE_EXECUTION"."DATE_EXECUTED" "DATE_EXECUTED", ',
'(SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a',
'FROM VW_AVAILSNREMPLOYEE',
'where id= "RELEASE_EXECUTION"."EXECUTED_BY") "EXECUTED_BY", ',
'   "RELEASE_EXECUTION"."RELEASE_REMARKS" "RELEASE_REMARKS", ',
'   "RELEASE_EXECUTION"."ENTERED_BY" "ENTERED_BY", ',
'   "RELEASE_EXECUTION"."ENTRY_DATE" "ENTRY_DATE", ',
'   "RELEASE_EXECUTION"."LAST_CHANGED_BY" "LAST_CHANGED_BY", ',
'   "RELEASE_EXECUTION"."LAST_CHANGED_DATE" "LAST_CHANGED_DATE"',
'FROM ',
'   "RELEASE_EXECUTION"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3546746339440000326)
,p_name=>'Listing Release Executions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
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
,p_owner=>'PPLERP'
,p_internal_uid=>106092826706987243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611428487692108402)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:2019:&SESSION.::&DEBUG.:RP:P2019_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611427712097108396)
,p_db_column_name=>'DATE_EXECUTED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Executed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EXECUTED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611427303846108394)
,p_db_column_name=>'EXECUTED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Executed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EXECUTED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611426893517108393)
,p_db_column_name=>'RELEASE_REMARKS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Release Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELEASE_REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611426559183108393)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611426107937108393)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611425691402108392)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611425319886108392)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611424901086108391)
,p_db_column_name=>'RELEASE_HD_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Release'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELEASE_HD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3546745041286000200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414146'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:RELEASE_HD_ID:DATE_EXECUTED:EXECUTED_BY:RELEASE_REMARKS:LAST_CHANGED_BY:LAST_CHANGED_DATE'
,p_break_on=>'CUSTOMER_ID:0:0:0:0:0'
,p_break_enabled_on=>'CUSTOMER_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3611474474280277147)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3588136548683379500)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611423733081108388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3546746441632000326)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611424075682108389)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3546746441632000326)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2019:&SESSION.::&DEBUG.:2019::'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3611422658584108387)
,p_computation_sequence=>1
,p_computation_item=>'P2019_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
