prompt --application/pages/page_01481
begin
--   Manifest
--     PAGE: 01481
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1481
,p_name=>'rptOutStandingWkFlw'
,p_step_title=>'Listing of Outstanding Workflow Notification'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806580230187387816)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697658248020464731)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3758278651168981225)
,p_plug_name=>'Listing of Outstanding Workflows'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'from (select NOTIFICATION_DETAIL_ID,A.USER_NAME "SEND BY", (Select Wfl_Status_Description',
'from TBLWORKFLOWSTATUS ',
'where Wfl_Status_Id= NOTIFICATION_TYPE) NOTIFICATION_TYPE,',
'INITCAP(A.DESCRIPTION) DESCRIP,',
'SUBSTR(APP_URL_LINK,1,4)||:APP_ID||'':''|| ',
'substr(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1)',
'      ,INSTR(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1),'':'',1,1)+1',
'      ,  length(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))))||'':''||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),LENGTH(APP_URL_LINK)) APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY",a.Notification_Id',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE Exists (Select 1',
'              FROM TBLFORWARDLIST C JOIN TBLUSER D ON C.FORWARD_TO=D.USER_ID',
'              JOIN TBLWORKFLOWSTAGELIST  M ON M.STAGE_ID=C.STAGE_ID',
'              JOIN TBLWORKFLOWDTL N ON M.STAGE_ID=N.STAGE_ID',
'              JOIN APEX_APPLICATION_PAGES Q ON Q.PAGE_ID=N.WEBPAGE_ID',
'              WHERE (C.FORWORD_LIST_ID=B.FORWARD_LIST_ID OR C.FORWARD_TO=B.FORWARD_TO_USER)            ',
'              AND APPLICATION_ID=:APP_ID)',
'and B.NOTIFICATION_USER_STATUS=''ACTIVE''',
'and EFFECTIVE_TO<trunc(current_date)',
'',
'UNION',
'',
'SELECT  NOTIFICATION_DETAIL_ID,A.USER_NAME "SEND BY", NOTIFICATION_TYPE, ',
'INITCAP(A.DESCRIPTION) DESCRIP,',
'SUBSTR(APP_URL_LINK,1,4)||:APP_ID||'':''|| ',
'substr(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1)',
'      ,INSTR(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2)-1),'':'',1,1)+1',
'      ,  length(SUBSTRB(APP_URL_LINK,1,INSTR(APP_URL_LINK,'':'',1,2))))||'':''||:APP_SESSION||SUBSTRB(APP_URL_LINK,INSTR(APP_URL_LINK,''::''),LENGTH(APP_URL_LINK)) APP_URL_LINK,',
'A.EFFECTIVE_FROM, ',
'A.EFFECTIVE_TO,',
'B.LAST_UPDATED_BY "FORWARD ON BY",a.Notification_Id',
'From Tblnotificationhead A Join Tblnotificationdetail B On A.Notification_Id=B.Notification_Id',
'WHERE NOTIFICATION_USER_STATUS=''ACTIVE''',
'and EFFECTIVE_TO<trunc(current_date)',
'AND MANUAL=1',
')',
'order by Notification_Id desc'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3758278462743981224)
,p_name=>'Listing of Outstanding Workflows'
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
,p_owner=>'PUR_INV'
,p_internal_uid=>116244632084764276
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832692966389353573)
,p_db_column_name=>'NOTIFICATION_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Notification Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_DETAIL_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832692502332353571)
,p_db_column_name=>'SEND BY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Send By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEND BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832692099509353571)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_TYPE'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832691702745353571)
,p_db_column_name=>'DESCRIP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descrip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832691338742353569)
,p_db_column_name=>'APP_URL_LINK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'View'
,p_column_link=>'#APP_URL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'STRING'
,p_static_id=>'APP_URL_LINK'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832691010096353568)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832690613476353567)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832690233106353567)
,p_db_column_name=>'FORWARD ON BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Forward On By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FORWARD ON BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3832689815847353567)
,p_db_column_name=>'NOTIFICATION_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Notification Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOTIFICATION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3758277462772981218)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'418336'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'APP_URL_LINK:SEND BY:NOTIFICATION_TYPE:DESCRIP:EFFECTIVE_FROM:EFFECTIVE_TO:FORWARD ON BY:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832689066060353564)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3758278651168981225)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
