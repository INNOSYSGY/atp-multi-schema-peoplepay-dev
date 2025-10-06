prompt --application/pages/page_01388
begin
--   Manifest
--     PAGE: 01388
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1388
,p_name=>'rptWorkFlowTransaction'
,p_step_title=>'Listing of WorkFlow Transaction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169966386970023930)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3215106772381242162)
,p_plug_name=>'Listing of Work Flow Transactions  (NB. Only transaction involved in workflow will be displayed)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "TRANSACTION_TYPE_ID", TRANSACTION_TYPE_ID ID,',
'"TRANSACTION_CODE",',
'"TRANSACTION_DESCRIPTION",',
'"CREATED_BY",',
'"CREATION_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGE_DATE",',
'"PRIORITY",',
'"START_DATE",',
'"END_DATE"',
'from "TBLTRANSACTIONTYPE" r',
'WHERE EXISTS (SELECT 1',
'              FROM TBLWORKFLOWDTL M JOIN TBLWORKFLOWSTATUS  N ON M.ID=N.WORKFLOW_DTL_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=m.WEBPAGE_ID   ',
'              WHERE  R.TRANSACTION_TYPE_ID = N.TRANSACTION_TYPE_ID',
'              AND APPLICATION_ID=:APP_ID',
'              )',
'',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3215106592518242158)
,p_name=>'Listing of Work Flow Transactions'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1389:&SESSION.::&DEBUG.::P1389_TRANSACTION_TYPE_ID:#TRANSACTION_TYPE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>131724714287062542
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305070782804997923)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305070385195997923)
,p_db_column_name=>'TRANSACTION_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Transaction Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305069955575997921)
,p_db_column_name=>'TRANSACTION_DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Transaction Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305069531543997921)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305069204392997920)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305068799065997920)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305068370789997919)
,p_db_column_name=>'LAST_CHANGE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Change Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305067995868997919)
,p_db_column_name=>'PRIORITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Priority'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PRIORITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305067593407997918)
,p_db_column_name=>'START_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305067197283997917)
,p_db_column_name=>'END_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3305071125177997923)
,p_db_column_name=>'ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3215105181745241737)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'417645'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'TRANSACTION_DESCRIPTION:CREATED_BY:CREATION_DATE:LAST_CHANGED_BY:LAST_CHANGE_DATE:PRIORITY:START_DATE:END_DATE:ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3305065982111997915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3215106772381242162)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3305066374124997915)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3215106772381242162)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1389:&SESSION.::&DEBUG.:1389::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
