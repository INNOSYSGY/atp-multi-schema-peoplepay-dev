prompt --application/pages/page_01334
begin
--   Manifest
--     PAGE: 01334
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
 p_id=>1334
,p_name=>'rptResponsibilityUsers'
,p_step_title=>'Listing Responsibility Users With Pages Access'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888520595948027)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3198011793190154966)
,p_plug_name=>'Listing of Responsibility Assigned to Users'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct A.USER_DETAIL_ID as USER_DETAIL_ID,',
'    A.RESPONSIBILITY_ID as RESPONSIBILITY_ID,',
'    A.EFFECTIVE_FROM as EFFECTIVE_FROM,',
'    A.EFFECTIVE_TO as EFFECTIVE_TO,',
'    A.CREATED_BY as CREATED_BY,',
'    A.CREATION_DATE as CREATION_DATE,',
'    A.LAST_UPDATED_BY as LAST_UPDATED_BY,',
'    A.LAST_UPDATE_DATE as LAST_UPDATE_DATE,',
'    A.USER_ID as USER_ID,',
'    A.REMARKS as REMARKS,',
'    A.ORG_ID as ORG_ID,',
'    A.PAYMENT_TYPE AS PAYMENT_TYPE,',
'    A.EMPLOYMENT_CLASS_ID AS EMPLOYMENT_CLASS_ID,     ',
'(SELECT X.page_title||'': ''||W.WEBPAGE_ID',
'FROM TBLPAGELIST w join APEX_APPLICATION_PAGES x on w.webpage_id=x.page_id',
'WHERE w.PAGE_ID= C.PAGE_ID and application_id = :APP_ID) as PAGE_ID',
' FROM TBLUSERDETAIL  A JOIN TBLRESPONSIBILITY B ON A.RESPONSIBILITY_ID=B.RESPONSIBILITY_ID',
' JOIN TBLRESPONSIBILITYORGPAGE C ON  C.RESPONSIBILITY_ID=b.RESPONSIBILITY_ID',
' WHERE EXISTS (SELECT 1',
'              FROM APEX_APPLICATION_PAGES F  JOIN TBLPAGELIST H ON F.PAGE_ID=H.WEBPAGE_ID ',
'              WHERE H.PAGE_ID=C.PAGE_ID',
'              and workspace =apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'              AND UPPER(page_name)!=''LISTS'')'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3198011704060154966)
,p_name=>'Listing of Responsibility assigned to Users'
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
,p_internal_uid=>129031195609057329
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316807511382838955)
,p_db_column_name=>'USER_DETAIL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'USER_DETAIL_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316807185004838955)
,p_db_column_name=>'RESPONSIBILITY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Responsibility'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'RESPONSIBILITY_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3279337422602873589)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316806770349838954)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_FROM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316806360154838954)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316805942602838953)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316805574895838953)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316805162735838953)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316804719605838952)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316804320354838952)
,p_db_column_name=>'USER_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'User'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'USER_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3279335616876873588)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316803938247838952)
,p_db_column_name=>'REMARKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316803575796838951)
,p_db_column_name=>'ORG_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3316800405655838944)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316803142721838951)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316802720064838950)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3316815439810867496)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3316807924628838956)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3198010194064154780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'PAGE_ID:RESPONSIBILITY_ID:USER_ID:ORG_ID:EMPLOYMENT_CLASS_ID:PAYMENT_TYPE:EFFECTIVE_FROM:EFFECTIVE_TO:'
,p_break_on=>'RESPONSIBILITY_ID:USER_ID:0:0:0:0'
,p_break_enabled_on=>'RESPONSIBILITY_ID:USER_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3316801971631838947)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3198011793190154966)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
